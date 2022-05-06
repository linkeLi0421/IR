; ModuleID = '/llk/IR/drivers/mtd/nand/raw/atmel/pmecc.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/atmel/pmecc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pmecc_create_user:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pmecc_create_user\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pmecc_create_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pmecc_destroy_user:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pmecc_destroy_user\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pmecc_destroy_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pmecc_correct_sector:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pmecc_correct_sector\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pmecc_correct_sector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pmecc_correct_erased_chunks:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pmecc_correct_erased_chunks\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pmecc_correct_erased_chunks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pmecc_get_generated_eccbytes:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pmecc_get_generated_eccbytes\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pmecc_get_generated_eccbytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pmecc_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pmecc_reset\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pmecc_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pmecc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pmecc_enable\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pmecc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pmecc_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pmecc_disable\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pmecc_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pmecc_wait_rdy:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pmecc_wait_rdy\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pmecc_wait_rdy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_atmel_pmecc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_atmel_pmecc_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_atmel_pmecc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atmel_pmecc_caps = type { ptr, i32, i32, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.atmel_pmecc_user_req = type { i32, i32, %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32, i32, i32 }
%struct.atmel_pmecc = type { ptr, ptr, %struct.anon.5, %struct.mutex }
%struct.anon.5 = type { ptr, ptr }
%struct.atmel_pmecc_user = type { %struct.atmel_pmecc_user_conf_cache, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atmel_pmecc_user_conf_cache = type { i32, i32, i32, i32 }
%struct.atmel_pmecc_gf_tables = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_atmel_pmecc_create_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pmecc_create_user = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pmecc_create_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pmecc_create_user to i32), ptr @__kstrtab_atmel_pmecc_create_user, ptr @__kstrtabns_atmel_pmecc_create_user }, section "___ksymtab_gpl+atmel_pmecc_create_user", align 4
@__kstrtab_atmel_pmecc_destroy_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pmecc_destroy_user = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pmecc_destroy_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pmecc_destroy_user to i32), ptr @__kstrtab_atmel_pmecc_destroy_user, ptr @__kstrtabns_atmel_pmecc_destroy_user }, section "___ksymtab_gpl+atmel_pmecc_destroy_user", align 4
@__kstrtab_atmel_pmecc_correct_sector = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pmecc_correct_sector = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pmecc_correct_sector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pmecc_correct_sector to i32), ptr @__kstrtab_atmel_pmecc_correct_sector, ptr @__kstrtabns_atmel_pmecc_correct_sector }, section "___ksymtab_gpl+atmel_pmecc_correct_sector", align 4
@__kstrtab_atmel_pmecc_correct_erased_chunks = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pmecc_correct_erased_chunks = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pmecc_correct_erased_chunks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pmecc_correct_erased_chunks to i32), ptr @__kstrtab_atmel_pmecc_correct_erased_chunks, ptr @__kstrtabns_atmel_pmecc_correct_erased_chunks }, section "___ksymtab_gpl+atmel_pmecc_correct_erased_chunks", align 4
@__kstrtab_atmel_pmecc_get_generated_eccbytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pmecc_get_generated_eccbytes = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pmecc_get_generated_eccbytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pmecc_get_generated_eccbytes to i32), ptr @__kstrtab_atmel_pmecc_get_generated_eccbytes, ptr @__kstrtabns_atmel_pmecc_get_generated_eccbytes }, section "___ksymtab_gpl+atmel_pmecc_get_generated_eccbytes", align 4
@__kstrtab_atmel_pmecc_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pmecc_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pmecc_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pmecc_reset to i32), ptr @__kstrtab_atmel_pmecc_reset, ptr @__kstrtabns_atmel_pmecc_reset }, section "___ksymtab_gpl+atmel_pmecc_reset", align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Bad ECC operation!\00", align 1
@__kstrtab_atmel_pmecc_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pmecc_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pmecc_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pmecc_enable to i32), ptr @__kstrtab_atmel_pmecc_enable, ptr @__kstrtabns_atmel_pmecc_enable }, section "___ksymtab_gpl+atmel_pmecc_enable", align 4
@__kstrtab_atmel_pmecc_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pmecc_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pmecc_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pmecc_disable to i32), ptr @__kstrtab_atmel_pmecc_disable, ptr @__kstrtabns_atmel_pmecc_disable }, section "___ksymtab_gpl+atmel_pmecc_disable", align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Timeout while waiting for PMECC ready.\0A\00", align 1
@__kstrtab_atmel_pmecc_wait_rdy = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pmecc_wait_rdy = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pmecc_wait_rdy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pmecc_wait_rdy to i32), ptr @__kstrtab_atmel_pmecc_wait_rdy, ptr @__kstrtabns_atmel_pmecc_wait_rdy }, section "___ksymtab_gpl+atmel_pmecc_wait_rdy", align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"ecc-engine\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"atmel,has-pmecc\00", align 1
@at91sam9g45_caps = internal global %struct.atmel_pmecc_caps { ptr @atmel_pmecc_strengths, i32 5, i32 140, i8 0 }, align 4
@atmel_pmecc_legacy_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_caps }, %struct.of_device_id zeroinitializer], align 4
@__kstrtab_devm_atmel_pmecc_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_atmel_pmecc_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_atmel_pmecc_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_atmel_pmecc_get to i32), ptr @__kstrtab_devm_atmel_pmecc_get, ptr @__kstrtabns_devm_atmel_pmecc_get }, section "___ksymtab+devm_atmel_pmecc_get", align 4
@__initcall__kmod_atmel_pmecc__176_1010_atmel_pmecc_driver_init6 = internal global ptr @atmel_pmecc_driver_init, section ".initcall6.init", align 4
@atmel_pmecc_driver = internal global %struct.platform_driver { ptr @atmel_pmecc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_pmecc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_atmel_pmecc_driver_exit = internal global ptr @atmel_pmecc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file177 = internal constant [56 x i8] c"atmel_pmecc.file=drivers/mtd/nand/raw/atmel/atmel-pmecc\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [24 x i8] c"atmel_pmecc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author179 = internal constant [72 x i8] c"atmel_pmecc.author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description180 = internal constant [44 x i8] c"atmel_pmecc.description=PMECC engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias181 = internal constant [39 x i8] c"atmel_pmecc.alias=platform:atmel_pmecc\00", section ".modinfo", align 1
@pmecc_gf_tables_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pmecc_gf_tables_lock, i64 12), ptr getelementptr (i8, ptr @pmecc_gf_tables_lock, i64 12) } }, align 4
@pmecc_gf_tables_512 = internal unnamed_addr global ptr null, align 4
@pmecc_gf_tables_1024 = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"PMECC: Timeout to calculate error location.\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"devm_atmel_pmecc_put\00", align 1
@atmel_pmecc_strengths = internal constant [6 x i32] [i32 2, i32 4, i32 8, i32 12, i32 24, i32 32], align 4
@sama5d4_caps = internal global %struct.atmel_pmecc_caps { ptr @atmel_pmecc_strengths, i32 5, i32 140, i8 1 }, align 4
@sama5d2_caps = internal global %struct.atmel_pmecc_caps { ptr @atmel_pmecc_strengths, i32 6, i32 172, i8 1 }, align 4
@atmel_pmecc_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"&pmecc->lock\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"atmel-pmecc\00", align 1
@atmel_pmecc_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-pmecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-pmecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d4_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pmecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d2_caps }, %struct.of_device_id zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"Invalid caps\0A\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias181, ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_description180, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__exitcall_atmel_pmecc_driver_exit, ptr @__initcall__kmod_atmel_pmecc__176_1010_atmel_pmecc_driver_init6, ptr @__ksymtab_atmel_pmecc_correct_erased_chunks, ptr @__ksymtab_atmel_pmecc_correct_sector, ptr @__ksymtab_atmel_pmecc_create_user, ptr @__ksymtab_atmel_pmecc_destroy_user, ptr @__ksymtab_atmel_pmecc_disable, ptr @__ksymtab_atmel_pmecc_enable, ptr @__ksymtab_atmel_pmecc_get_generated_eccbytes, ptr @__ksymtab_atmel_pmecc_reset, ptr @__ksymtab_atmel_pmecc_wait_rdy, ptr @__ksymtab_devm_atmel_pmecc_get, ptr @atmel_pmecc_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @atmel_pmecc_create_user(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %227, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %227, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %1, i32 0, i32 2
  %11 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %1, i32 0, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %227, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %1, i32 0, i32 2, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, -1
  %18 = add i32 %16, %12
  %19 = icmp sgt i32 %18, %7
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %227, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %1, i32 0, i32 2, i32 2
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %227 [
    i32 0, label %24
    i32 512, label %30
    i32 1024, label %30
  ]

24:                                               ; preds = %21
  %25 = load i32, ptr %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %227

27:                                               ; preds = %24
  %28 = icmp ugt i32 %3, 512
  %29 = select i1 %28, i32 1024, i32 512
  store i32 %29, ptr %22, align 4
  br label %30

30:                                               ; preds = %27, %21, %21
  %31 = phi i32 [ %23, %21 ], [ %23, %21 ], [ %29, %27 ]
  %32 = freeze i32 %3
  %33 = freeze i32 %31
  %34 = udiv i32 %32, %33
  %35 = mul i32 %34, %33
  %36 = sub i32 %32, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %227

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.atmel_pmecc_user_req, ptr %1, i32 0, i32 2, i32 3
  store i32 %34, ptr %39, align 4
  %40 = shl nuw nsw i32 %31, 3
  %41 = tail call i32 @llvm.ctlz.i32(i32 %40, i1 false) #9, !range !8
  %42 = sub nuw nsw i32 32, %41
  %43 = getelementptr inbounds %struct.atmel_pmecc, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.atmel_pmecc_caps, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %227

48:                                               ; preds = %38
  %49 = load ptr, ptr %44, align 4
  %50 = load i32, ptr %10, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %67, %48
  %53 = phi i32 [ 0, %48 ], [ %68, %67 ]
  %54 = phi i32 [ 0, %48 ], [ %69, %67 ]
  %55 = phi i32 [ 0, %48 ], [ %70, %67 ]
  %56 = getelementptr i32, ptr %49, i32 %55
  %57 = load i32, ptr %56, align 4
  %58 = icmp slt i32 %57, %50
  %59 = select i1 %51, i1 %58, i1 false
  br i1 %59, label %67, label %60

60:                                               ; preds = %52
  %61 = mul i32 %57, %42
  %62 = add i32 %61, 7
  %63 = sdiv i32 %62, 8
  %64 = mul i32 %63, %34
  %65 = icmp sgt i32 %64, %12
  %66 = select i1 %65, i1 true, i1 %51
  br i1 %66, label %72, label %67

67:                                               ; preds = %60, %52
  %68 = phi i32 [ %53, %52 ], [ %57, %60 ]
  %69 = phi i32 [ %54, %52 ], [ %64, %60 ]
  %70 = add nuw nsw i32 %55, 1
  %71 = icmp eq i32 %70, %46
  br i1 %71, label %75, label %52

72:                                               ; preds = %60
  %73 = select i1 %65, i32 %54, i32 %64
  %74 = select i1 %65, i32 %53, i32 %57
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi i32 [ %73, %72 ], [ %69, %67 ]
  %77 = phi i32 [ %74, %72 ], [ %68, %67 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %227, label %79

79:                                               ; preds = %75
  store i32 %76, ptr %11, align 4
  store i32 %77, ptr %10, align 4
  %80 = icmp slt i32 %16, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %79
  %82 = sub i32 %7, %76
  store i32 %82, ptr %15, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = add i32 %77, 1
  %85 = shl i32 %84, 1
  %86 = add i32 %85, 63
  %87 = shl i32 %77, 2
  %88 = or i32 %87, 2
  %89 = add i32 %77, 4
  %90 = mul i32 %88, %89
  %91 = add i32 %86, %90
  %92 = and i32 %91, -4
  %93 = mul i32 %84, 12
  %94 = add i32 %92, %93
  %95 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %94, i32 noundef 3520) #10
  %96 = icmp eq ptr %95, null
  br i1 %96, label %227, label %97

97:                                               ; preds = %83
  %98 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %95, i32 0, i32 1
  store ptr %0, ptr %98, align 16
  %99 = getelementptr %struct.atmel_pmecc_user, ptr %95, i32 1
  %100 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %95, i32 0, i32 4
  store ptr %99, ptr %100, align 4
  %101 = load i32, ptr %10, align 4
  %102 = shl i32 %101, 1
  %103 = or i32 %102, 1
  %104 = getelementptr i16, ptr %99, i32 %103
  %105 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %95, i32 0, i32 5
  store ptr %104, ptr %105, align 32
  %106 = getelementptr i16, ptr %104, i32 %103
  %107 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %95, i32 0, i32 6
  store ptr %106, ptr %107, align 4
  %108 = load i32, ptr %10, align 4
  %109 = add i32 %108, 1
  %110 = getelementptr i16, ptr %106, i32 %109
  %111 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %95, i32 0, i32 7
  store ptr %110, ptr %111, align 8
  %112 = shl i32 %108, 1
  %113 = or i32 %112, 1
  %114 = add i32 %108, 2
  %115 = mul i32 %113, %114
  %116 = getelementptr i16, ptr %110, i32 %115
  %117 = ptrtoint ptr %116 to i32
  %118 = add i32 %117, 3
  %119 = and i32 %118, -4
  %120 = inttoptr i32 %119 to ptr
  %121 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %95, i32 0, i32 8
  store ptr %120, ptr %121, align 4
  %122 = load i32, ptr %10, align 4
  %123 = getelementptr i32, ptr %120, i32 %122
  %124 = getelementptr i32, ptr %123, i32 1
  %125 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %95, i32 0, i32 9
  store ptr %124, ptr %125, align 16
  %126 = getelementptr i32, ptr %124, i32 %122
  %127 = getelementptr i32, ptr %126, i32 1
  %128 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %95, i32 0, i32 10
  store ptr %127, ptr %128, align 4
  tail call void @mutex_lock(ptr noundef nonnull @pmecc_gf_tables_lock) #9
  %129 = load i32, ptr %22, align 4
  %130 = icmp eq i32 %129, 512
  %131 = select i1 %130, ptr @pmecc_gf_tables_512, ptr @pmecc_gf_tables_1024
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %178

134:                                              ; preds = %97
  %135 = select i1 %130, i32 8219, i32 17475
  %136 = select i1 %130, i32 8192, i32 16384
  %137 = shl nuw nsw i32 %136, 2
  %138 = or i32 %137, 8
  %139 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %138, i32 noundef 3520) #10
  %140 = icmp eq ptr %139, null
  br i1 %140, label %176, label %141

141:                                              ; preds = %134
  %142 = getelementptr %struct.atmel_pmecc_gf_tables, ptr %139, i32 1
  store ptr %142, ptr %139, align 64
  %143 = getelementptr i16, ptr %142, i32 %136
  %144 = getelementptr inbounds %struct.atmel_pmecc_gf_tables, ptr %139, i32 0, i32 1
  store ptr %143, ptr %144, align 4
  %145 = tail call i32 @llvm.ctlz.i32(i32 %135, i1 true) #9, !range !8
  %146 = lshr i32 -2147483648, %145
  %147 = add nsw i32 %136, -1
  %148 = icmp eq i32 %146, %136
  br i1 %148, label %149, label %169

149:                                              ; preds = %141
  store i16 1, ptr %142, align 8
  %150 = getelementptr i16, ptr %143, i32 1
  store i16 0, ptr %150, align 2
  br label %151

151:                                              ; preds = %156, %149
  %152 = phi i32 [ 0, %149 ], [ %154, %156 ]
  %153 = phi i32 [ 1, %149 ], [ %161, %156 ]
  %154 = add nuw i32 %152, 1
  %155 = icmp eq i32 %154, %147
  br i1 %155, label %170, label %156

156:                                              ; preds = %151
  %157 = shl i32 %153, 1
  %158 = and i32 %157, %136
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, i32 0, i32 %135
  %161 = xor i32 %160, %157
  %162 = load ptr, ptr %139, align 64
  %163 = trunc i32 %161 to i16
  %164 = getelementptr i16, ptr %162, i32 %154
  store i16 %163, ptr %164, align 2
  %165 = trunc i32 %154 to i16
  %166 = load ptr, ptr %144, align 4
  %167 = getelementptr i16, ptr %166, i32 %161
  store i16 %165, ptr %167, align 2
  %168 = icmp eq i32 %161, 1
  br i1 %168, label %169, label %151

169:                                              ; preds = %156, %141
  tail call void @kfree(ptr noundef nonnull %139) #9
  br label %176

170:                                              ; preds = %151
  %171 = load ptr, ptr %139, align 64
  %172 = getelementptr i16, ptr %171, i32 %147
  store i16 1, ptr %172, align 2
  %173 = load ptr, ptr %144, align 4
  store i16 0, ptr %173, align 2
  %174 = icmp ugt ptr %139, inttoptr (i32 -4096 to ptr)
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  store ptr %139, ptr %131, align 4
  br label %178

176:                                              ; preds = %169, %134
  %177 = phi ptr [ inttoptr (i32 -22 to ptr), %169 ], [ inttoptr (i32 -12 to ptr), %134 ]
  tail call void @mutex_unlock(ptr noundef nonnull @pmecc_gf_tables_lock) #9
  br label %181

178:                                              ; preds = %175, %170, %97
  %179 = phi ptr [ %132, %97 ], [ %139, %170 ], [ %139, %175 ]
  tail call void @mutex_unlock(ptr noundef nonnull @pmecc_gf_tables_lock) #9
  %180 = icmp ugt ptr %179, inttoptr (i32 -4096 to ptr)
  br i1 %180, label %181, label %183

181:                                              ; preds = %178, %176
  %182 = phi ptr [ %177, %176 ], [ %179, %178 ]
  tail call void @kfree(ptr noundef nonnull %95) #9
  br label %227

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %95, i32 0, i32 2
  store ptr %179, ptr %184, align 4
  %185 = load i32, ptr %11, align 4
  %186 = load i32, ptr %39, align 4
  %187 = sdiv i32 %185, %186
  %188 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %95, i32 0, i32 3
  store i32 %187, ptr %188, align 8
  %189 = load ptr, ptr %43, align 4
  %190 = getelementptr inbounds %struct.atmel_pmecc_caps, ptr %189, i32 0, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %183
  %194 = load ptr, ptr %189, align 4
  %195 = load i32, ptr %10, align 4
  br label %196

196:                                              ; preds = %201, %193
  %197 = phi i32 [ 0, %193 ], [ %202, %201 ]
  %198 = getelementptr i32, ptr %194, i32 %197
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, %195
  br i1 %200, label %204, label %201

201:                                              ; preds = %196
  %202 = add nuw nsw i32 %197, 1
  %203 = icmp eq i32 %202, %191
  br i1 %203, label %204, label %196

204:                                              ; preds = %201, %196, %183
  %205 = phi i32 [ 0, %183 ], [ %197, %196 ], [ %191, %201 ]
  %206 = load i32, ptr %39, align 4
  %207 = icmp eq i32 %206, 0
  %208 = tail call i32 @llvm.ctlz.i32(i32 %206, i1 false) #9, !range !8
  %209 = mul nsw i32 %208, -256
  %210 = add nsw i32 %209, 7936
  %211 = select i1 %207, i32 -256, i32 %210
  %212 = or i32 %211, %205
  store i32 %212, ptr %95, align 64
  %213 = load i32, ptr %22, align 4
  %214 = icmp eq i32 %213, 1024
  br i1 %214, label %215, label %217

215:                                              ; preds = %204
  %216 = or i32 %212, 16
  store i32 %216, ptr %95, align 64
  br label %217

217:                                              ; preds = %215, %204
  %218 = load i32, ptr %6, align 4
  %219 = add i32 %218, -1
  %220 = getelementptr inbounds %struct.atmel_pmecc_user_conf_cache, ptr %95, i32 0, i32 1
  store i32 %219, ptr %220, align 4
  %221 = load i32, ptr %15, align 4
  %222 = getelementptr inbounds %struct.atmel_pmecc_user_conf_cache, ptr %95, i32 0, i32 2
  store i32 %221, ptr %222, align 8
  %223 = load i32, ptr %11, align 4
  %224 = add i32 %221, -1
  %225 = add i32 %224, %223
  %226 = getelementptr inbounds %struct.atmel_pmecc_user_conf_cache, ptr %95, i32 0, i32 3
  store i32 %225, ptr %226, align 4
  br label %227

227:                                              ; preds = %217, %181, %83, %75, %38, %30, %24, %21, %14, %9, %5, %2
  %228 = phi ptr [ %182, %181 ], [ %95, %217 ], [ inttoptr (i32 -12 to ptr), %83 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -22 to ptr), %5 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %14 ], [ inttoptr (i32 -22 to ptr), %24 ], [ inttoptr (i32 -22 to ptr), %30 ], [ inttoptr (i32 -22 to ptr), %75 ], [ inttoptr (i32 -22 to ptr), %21 ], [ inttoptr (i32 -22 to ptr), %38 ]
  ret ptr %228
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atmel_pmecc_destroy_user(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atmel_pmecc_correct_sector(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 -512, i32 -1024
  %11 = select i1 %9, i32 512, i32 1024
  %12 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = shl nuw i32 1, %1
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %539, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.atmel_pmecc, ptr %6, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = and i32 %7, 7
  %24 = getelementptr i32, ptr %22, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %19
  %28 = shl i32 %1, 6
  %29 = add i32 %28, 576
  %30 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 4
  br label %31

31:                                               ; preds = %51, %27
  %32 = phi ptr [ %6, %27 ], [ %52, %51 ]
  %33 = phi i32 [ 0, %27 ], [ %49, %51 ]
  %34 = getelementptr inbounds %struct.atmel_pmecc, ptr %32, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = shl nuw i32 %33, 1
  %37 = and i32 %36, -4
  %38 = add i32 %29, %37
  %39 = getelementptr i8, ptr %35, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !9
  %41 = and i32 %33, 1
  %42 = icmp eq i32 %41, 0
  %43 = lshr i32 %40, 16
  %44 = select i1 %42, i32 %40, i32 %43
  %45 = trunc i32 %44 to i16
  %46 = load ptr, ptr %30, align 4
  %47 = or i32 %36, 1
  %48 = getelementptr i16, ptr %46, i32 %47
  store i16 %45, ptr %48, align 2
  %49 = add nuw nsw i32 %33, 1
  %50 = icmp eq i32 %49, %25
  br i1 %50, label %53, label %51

51:                                               ; preds = %31
  %52 = load ptr, ptr %5, align 4
  br label %31

53:                                               ; preds = %31
  %54 = load i32, ptr %0, align 4
  %55 = load ptr, ptr %5, align 4
  %56 = getelementptr inbounds %struct.atmel_pmecc, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = and i32 %54, 7
  %60 = getelementptr i32, ptr %58, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %54, 16
  br label %63

63:                                               ; preds = %53, %19
  %64 = phi i32 [ %62, %53 ], [ %8, %19 ]
  %65 = phi i32 [ %61, %53 ], [ %25, %19 ]
  %66 = icmp eq i32 %64, 0
  %67 = select i1 %66, i32 13, i32 14
  %68 = shl nsw i32 -1, %67
  %69 = xor i32 %68, -1
  %70 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.atmel_pmecc_gf_tables, ptr %71, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i16, ptr %78, i32 1
  %80 = shl i32 %65, 1
  %81 = shl i32 %65, 2
  %82 = add i32 %81, -2
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 %79, i8 0, i32 %82, i1 false) #9
  %83 = icmp sgt i32 %80, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %106, %63
  %85 = phi i32 [ %107, %106 ], [ 1, %63 ]
  %86 = getelementptr i16, ptr %76, i32 %85
  %87 = getelementptr i16, ptr %78, i32 %85
  br label %90

88:                                               ; preds = %106, %63
  %89 = icmp slt i32 %65, 1
  br i1 %89, label %132, label %109

90:                                               ; preds = %103, %84
  %91 = phi i32 [ 0, %84 ], [ %104, %103 ]
  %92 = load i16, ptr %86, align 2
  %93 = sext i16 %92 to i32
  %94 = shl nuw i32 1, %91
  %95 = and i32 %94, %93
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %90
  %98 = mul i32 %91, %85
  %99 = getelementptr i16, ptr %72, i32 %98
  %100 = load i16, ptr %99, align 2
  %101 = load i16, ptr %87, align 2
  %102 = xor i16 %101, %100
  store i16 %102, ptr %87, align 2
  br label %103

103:                                              ; preds = %97, %90
  %104 = add nuw nsw i32 %91, 1
  %105 = icmp eq i32 %104, %67
  br i1 %105, label %106, label %90

106:                                              ; preds = %103
  %107 = add nuw nsw i32 %85, 2
  %108 = icmp slt i32 %107, %80
  br i1 %108, label %84, label %88

109:                                              ; preds = %126, %88
  %110 = phi i32 [ %129, %126 ], [ 1, %88 ]
  %111 = phi i32 [ %130, %126 ], [ 2, %88 ]
  %112 = getelementptr i16, ptr %78, i32 %110
  %113 = load i16, ptr %112, align 2
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %109
  %116 = sext i16 %113 to i32
  %117 = getelementptr i16, ptr %74, i32 %116
  %118 = load i16, ptr %117, align 2
  %119 = sext i16 %118 to i32
  %120 = shl nsw i32 %119, 1
  %121 = srem i32 %120, %69
  %122 = shl i32 %121, 16
  %123 = ashr exact i32 %122, 16
  %124 = getelementptr i16, ptr %72, i32 %123
  %125 = load i16, ptr %124, align 2
  br label %126

126:                                              ; preds = %115, %109
  %127 = phi i16 [ %125, %115 ], [ 0, %109 ]
  %128 = getelementptr i16, ptr %78, i32 %111
  store i16 %127, ptr %128, align 2
  %129 = add i32 %110, 1
  %130 = shl i32 %129, 1
  %131 = icmp sgt i32 %129, %65
  br i1 %131, label %132, label %109

132:                                              ; preds = %126, %88
  %133 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 6
  %134 = load ptr, ptr %133, align 4
  %135 = load ptr, ptr %77, align 4
  %136 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 8
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 9
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 10
  %141 = load ptr, ptr %140, align 4
  %142 = load i32, ptr %0, align 4
  %143 = and i32 %142, 16
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %144, i32 8191, i32 16383
  %146 = load ptr, ptr %5, align 4
  %147 = getelementptr inbounds %struct.atmel_pmecc, ptr %146, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = load ptr, ptr %148, align 4
  %150 = and i32 %142, 7
  %151 = getelementptr i32, ptr %149, i32 %150
  %152 = load i32, ptr %151, align 4
  %153 = shl i32 %152, 1
  %154 = or i32 %153, 1
  %155 = load ptr, ptr %70, align 4
  %156 = getelementptr inbounds %struct.atmel_pmecc_gf_tables, ptr %155, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = load ptr, ptr %155, align 4
  %159 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 7
  %160 = load ptr, ptr %159, align 4
  store i32 -1, ptr %137, align 4
  %161 = shl i32 %154, 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 %160, i8 0, i32 %161, i1 false) #9
  store i16 1, ptr %160, align 2
  store i32 1, ptr %139, align 4
  store i16 0, ptr %134, align 2
  %162 = load i32, ptr %137, align 4
  %163 = shl i32 %162, 1
  %164 = ashr exact i32 %163, 1
  store i32 %164, ptr %141, align 4
  %165 = getelementptr i32, ptr %137, i32 1
  store i32 0, ptr %165, align 4
  %166 = getelementptr i16, ptr %160, i32 %154
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 %166, i8 0, i32 %161, i1 false) #9
  store i16 1, ptr %166, align 2
  %167 = getelementptr i16, ptr %135, i32 1
  %168 = load i16, ptr %167, align 2
  %169 = sext i16 %168 to i32
  %170 = getelementptr i32, ptr %139, i32 1
  store i32 %169, ptr %170, align 4
  %171 = getelementptr i16, ptr %134, i32 1
  store i16 0, ptr %171, align 2
  %172 = load i32, ptr %165, align 4
  %173 = shl i32 %172, 1
  %174 = ashr exact i32 %173, 1
  %175 = getelementptr i32, ptr %141, i32 1
  store i32 %174, ptr %175, align 4
  %176 = add i32 %152, 1
  %177 = mul i32 %154, %176
  %178 = getelementptr i16, ptr %160, i32 %177
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 %178, i8 0, i32 %161, i1 false) #9
  %179 = icmp slt i32 %152, 1
  br i1 %179, label %422, label %180

180:                                              ; preds = %132
  %181 = icmp sgt i32 %154, 0
  %182 = shl i32 %152, 3
  %183 = or i32 %182, 4
  %184 = shl i32 %152, 2
  %185 = or i32 %184, 2
  br label %186

186:                                              ; preds = %419, %180
  %187 = phi i32 [ 0, %180 ], [ %421, %419 ]
  %188 = phi i32 [ 0, %180 ], [ %361, %419 ]
  %189 = phi i32 [ 1, %180 ], [ %194, %419 ]
  %190 = mul i32 %187, %185
  %191 = add i32 %183, %190
  %192 = getelementptr i8, ptr %160, i32 %191
  %193 = shl i32 %189, 1
  %194 = add i32 %189, 1
  %195 = getelementptr i32, ptr %137, i32 %194
  store i32 %193, ptr %195, align 4
  %196 = getelementptr i32, ptr %139, i32 %189
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %186
  %200 = icmp sgt i32 %189, 0
  br i1 %200, label %255, label %273

201:                                              ; preds = %186
  %202 = add i32 %188, 1
  %203 = getelementptr i16, ptr %134, i32 %189
  %204 = load i16, ptr %203, align 2
  %205 = ashr i16 %204, 1
  %206 = xor i16 %205, -1
  %207 = sext i16 %206 to i32
  %208 = add i32 %152, %207
  %209 = sdiv i32 %208, 2
  %210 = and i32 %208, 1
  %211 = icmp eq i32 %210, 0
  %212 = select i1 %211, i32 1, i32 2
  %213 = add nsw i32 %212, %209
  %214 = icmp eq i32 %202, %213
  br i1 %214, label %220, label %215

215:                                              ; preds = %201
  %216 = icmp slt i16 %204, 0
  br i1 %216, label %252, label %217

217:                                              ; preds = %215
  %218 = mul i32 %189, %154
  %219 = mul i32 %194, %154
  br label %240

220:                                              ; preds = %201
  %221 = icmp slt i16 %204, -2
  br i1 %221, label %237, label %222

222:                                              ; preds = %220
  %223 = mul i32 %189, %154
  br label %224

224:                                              ; preds = %224, %222
  %225 = phi i32 [ 0, %222 ], [ %231, %224 ]
  %226 = add i32 %225, %223
  %227 = getelementptr i16, ptr %160, i32 %226
  %228 = load i16, ptr %227, align 2
  %229 = add i32 %225, %177
  %230 = getelementptr i16, ptr %160, i32 %229
  store i16 %228, ptr %230, align 2
  %231 = add nuw nsw i32 %225, 1
  %232 = load i16, ptr %203, align 2
  %233 = ashr i16 %232, 1
  %234 = add nsw i16 %233, 1
  %235 = sext i16 %234 to i32
  %236 = icmp slt i32 %225, %235
  br i1 %236, label %224, label %237

237:                                              ; preds = %224, %220
  %238 = phi i16 [ %204, %220 ], [ %232, %224 ]
  %239 = getelementptr i16, ptr %134, i32 %176
  store i16 %238, ptr %239, align 2
  br label %422

240:                                              ; preds = %240, %217
  %241 = phi i32 [ 0, %217 ], [ %247, %240 ]
  %242 = add i32 %241, %218
  %243 = getelementptr i16, ptr %160, i32 %242
  %244 = load i16, ptr %243, align 2
  %245 = add i32 %241, %219
  %246 = getelementptr i16, ptr %160, i32 %245
  store i16 %244, ptr %246, align 2
  %247 = add nuw nsw i32 %241, 1
  %248 = load i16, ptr %203, align 2
  %249 = ashr i16 %248, 1
  %250 = sext i16 %249 to i32
  %251 = icmp slt i32 %241, %250
  br i1 %251, label %240, label %252

252:                                              ; preds = %240, %215
  %253 = phi i16 [ %204, %215 ], [ %248, %240 ]
  %254 = getelementptr i16, ptr %134, i32 %194
  store i16 %253, ptr %254, align 2
  br label %360

255:                                              ; preds = %268, %199
  %256 = phi i32 [ %270, %268 ], [ -1, %199 ]
  %257 = phi i32 [ %269, %268 ], [ 0, %199 ]
  %258 = phi i32 [ %271, %268 ], [ 0, %199 ]
  %259 = getelementptr i32, ptr %139, i32 %258
  %260 = load i32, ptr %259, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %255
  %263 = getelementptr i32, ptr %141, i32 %258
  %264 = load i32, ptr %263, align 4
  %265 = icmp sgt i32 %264, %256
  %266 = select i1 %265, i32 %258, i32 %257
  %267 = tail call i32 @llvm.smax.i32(i32 %264, i32 %256) #9
  br label %268

268:                                              ; preds = %262, %255
  %269 = phi i32 [ %257, %255 ], [ %266, %262 ]
  %270 = phi i32 [ %256, %255 ], [ %267, %262 ]
  %271 = add nuw nsw i32 %258, 1
  %272 = icmp eq i32 %271, %189
  br i1 %272, label %273, label %255

273:                                              ; preds = %268, %199
  %274 = phi i32 [ 0, %199 ], [ %269, %268 ]
  %275 = getelementptr i32, ptr %137, i32 %189
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr i32, ptr %137, i32 %274
  %278 = load i32, ptr %277, align 4
  %279 = sub i32 %276, %278
  %280 = getelementptr i16, ptr %134, i32 %189
  %281 = load i16, ptr %280, align 2
  %282 = ashr i16 %281, 1
  %283 = sext i16 %282 to i32
  %284 = getelementptr i16, ptr %134, i32 %274
  %285 = load i16, ptr %284, align 2
  %286 = ashr i16 %285, 1
  %287 = sext i16 %286 to i32
  %288 = add i32 %279, %287
  %289 = icmp slt i32 %288, %283
  %290 = trunc i32 %288 to i16
  %291 = shl i16 %290, 1
  %292 = select i1 %289, i16 %281, i16 %291
  %293 = getelementptr i16, ptr %134, i32 %194
  store i16 %292, ptr %293, align 2
  br i1 %181, label %294, label %295

294:                                              ; preds = %273
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 %192, i8 0, i32 %185, i1 false) #9
  br label %295

295:                                              ; preds = %294, %273
  %296 = load i16, ptr %284, align 2
  %297 = icmp slt i16 %296, 0
  br i1 %297, label %303, label %298

298:                                              ; preds = %295
  %299 = mul i32 %274, %154
  %300 = getelementptr i32, ptr %139, i32 %274
  %301 = mul i32 %194, %154
  %302 = add i32 %279, %301
  br label %309

303:                                              ; preds = %340, %295
  %304 = load i16, ptr %280, align 2
  %305 = icmp slt i16 %304, 0
  br i1 %305, label %360, label %306

306:                                              ; preds = %303
  %307 = mul i32 %189, %154
  %308 = mul i32 %194, %154
  br label %346

309:                                              ; preds = %340, %298
  %310 = phi i16 [ %296, %298 ], [ %341, %340 ]
  %311 = phi i32 [ 0, %298 ], [ %342, %340 ]
  %312 = add i32 %311, %299
  %313 = getelementptr i16, ptr %160, i32 %312
  %314 = load i16, ptr %313, align 2
  %315 = sext i16 %314 to i32
  %316 = icmp eq i16 %314, 0
  br i1 %316, label %340, label %317

317:                                              ; preds = %309
  %318 = load i32, ptr %196, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %340, label %320

320:                                              ; preds = %317
  %321 = getelementptr i16, ptr %157, i32 %318
  %322 = load i16, ptr %321, align 2
  %323 = load i32, ptr %300, align 4
  %324 = getelementptr i16, ptr %157, i32 %323
  %325 = load i16, ptr %324, align 2
  %326 = getelementptr i16, ptr %157, i32 %315
  %327 = load i16, ptr %326, align 2
  %328 = sext i16 %322 to i32
  %329 = sext i16 %325 to i32
  %330 = sext i16 %327 to i32
  %331 = add nsw i32 %145, %328
  %332 = sub nsw i32 %331, %329
  %333 = add nsw i32 %332, %330
  %334 = urem i32 %333, %145
  %335 = getelementptr i16, ptr %158, i32 %334
  %336 = load i16, ptr %335, align 2
  %337 = add i32 %302, %311
  %338 = getelementptr i16, ptr %160, i32 %337
  store i16 %336, ptr %338, align 2
  %339 = load i16, ptr %284, align 2
  br label %340

340:                                              ; preds = %320, %317, %309
  %341 = phi i16 [ %310, %309 ], [ %310, %317 ], [ %339, %320 ]
  %342 = add nuw nsw i32 %311, 1
  %343 = ashr i16 %341, 1
  %344 = sext i16 %343 to i32
  %345 = icmp slt i32 %311, %344
  br i1 %345, label %309, label %303

346:                                              ; preds = %346, %306
  %347 = phi i32 [ 0, %306 ], [ %355, %346 ]
  %348 = add i32 %347, %307
  %349 = getelementptr i16, ptr %160, i32 %348
  %350 = load i16, ptr %349, align 2
  %351 = add i32 %347, %308
  %352 = getelementptr i16, ptr %160, i32 %351
  %353 = load i16, ptr %352, align 2
  %354 = xor i16 %353, %350
  store i16 %354, ptr %352, align 2
  %355 = add nuw nsw i32 %347, 1
  %356 = load i16, ptr %280, align 2
  %357 = ashr i16 %356, 1
  %358 = sext i16 %357 to i32
  %359 = icmp slt i32 %347, %358
  br i1 %359, label %346, label %360

360:                                              ; preds = %346, %303, %252
  %361 = phi i32 [ %202, %252 ], [ %188, %303 ], [ %188, %346 ]
  %362 = load i32, ptr %195, align 4
  %363 = shl i32 %362, 1
  %364 = getelementptr i16, ptr %134, i32 %194
  %365 = load i16, ptr %364, align 2
  %366 = sext i16 %365 to i32
  %367 = sub i32 %363, %366
  %368 = ashr i32 %367, 1
  %369 = getelementptr i32, ptr %141, i32 %194
  store i32 %368, ptr %369, align 4
  %370 = icmp slt i32 %189, %152
  br i1 %370, label %371, label %419

371:                                              ; preds = %360
  %372 = load i16, ptr %364, align 2
  %373 = icmp slt i16 %372, 0
  br i1 %373, label %419, label %374

374:                                              ; preds = %371
  %375 = mul i32 %194, %154
  %376 = or i32 %193, 1
  %377 = getelementptr i32, ptr %139, i32 %194
  %378 = getelementptr i16, ptr %135, i32 %376
  %379 = load i16, ptr %378, align 2
  %380 = sext i16 %379 to i32
  store i32 %380, ptr %377, align 4
  %381 = load i16, ptr %364, align 2
  %382 = icmp slt i16 %381, 2
  br i1 %382, label %419, label %383

383:                                              ; preds = %412, %374
  %384 = phi i32 [ %413, %412 ], [ %380, %374 ]
  %385 = phi i16 [ %414, %412 ], [ %381, %374 ]
  %386 = phi i32 [ %415, %412 ], [ 1, %374 ]
  %387 = add i32 %386, %375
  %388 = getelementptr i16, ptr %160, i32 %387
  %389 = load i16, ptr %388, align 2
  %390 = sext i16 %389 to i32
  %391 = icmp eq i16 %389, 0
  br i1 %391, label %412, label %392

392:                                              ; preds = %383
  %393 = sub i32 %376, %386
  %394 = getelementptr i16, ptr %135, i32 %393
  %395 = load i16, ptr %394, align 2
  %396 = icmp eq i16 %395, 0
  br i1 %396, label %412, label %397

397:                                              ; preds = %392
  %398 = sext i16 %395 to i32
  %399 = getelementptr i16, ptr %157, i32 %390
  %400 = load i16, ptr %399, align 2
  %401 = getelementptr i16, ptr %157, i32 %398
  %402 = load i16, ptr %401, align 2
  %403 = sext i16 %400 to i32
  %404 = sext i16 %402 to i32
  %405 = add nsw i32 %404, %403
  %406 = urem i32 %405, %145
  %407 = getelementptr i16, ptr %158, i32 %406
  %408 = load i16, ptr %407, align 2
  %409 = sext i16 %408 to i32
  %410 = xor i32 %384, %409
  store i32 %410, ptr %377, align 4
  %411 = load i16, ptr %364, align 2
  br label %412

412:                                              ; preds = %397, %392, %383
  %413 = phi i32 [ %410, %397 ], [ %384, %392 ], [ %384, %383 ]
  %414 = phi i16 [ %411, %397 ], [ %385, %392 ], [ %385, %383 ]
  %415 = add nuw nsw i32 %386, 1
  %416 = ashr i16 %414, 1
  %417 = sext i16 %416 to i32
  %418 = icmp slt i32 %386, %417
  br i1 %418, label %383, label %419, !llvm.loop !10

419:                                              ; preds = %412, %374, %371, %360
  %420 = icmp sgt i32 %194, %152
  %421 = add i32 %187, 1
  br i1 %420, label %422, label %186

422:                                              ; preds = %419, %237, %132
  %423 = load i32, ptr %0, align 4
  %424 = and i32 %423, 16
  %425 = icmp eq i32 %424, 0
  %426 = select i1 %425, i32 4096, i32 8192
  %427 = select i1 %425, i32 13, i32 14
  %428 = load ptr, ptr %5, align 4
  %429 = getelementptr inbounds %struct.atmel_pmecc, ptr %428, i32 0, i32 1
  %430 = load ptr, ptr %429, align 4
  %431 = load ptr, ptr %430, align 4
  %432 = and i32 %423, 7
  %433 = getelementptr i32, ptr %431, i32 %432
  %434 = load i32, ptr %433, align 4
  %435 = load ptr, ptr %159, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %436 = getelementptr inbounds %struct.atmel_pmecc, ptr %428, i32 0, i32 2, i32 1
  %437 = load ptr, ptr %436, align 4
  %438 = getelementptr i8, ptr %437, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %438, i32 1) #9, !srcloc !13
  %439 = add i32 %434, 1
  %440 = load ptr, ptr %133, align 4
  %441 = getelementptr i16, ptr %440, i32 %439
  %442 = load i16, ptr %441, align 2
  %443 = icmp slt i16 %442, 0
  br i1 %443, label %465, label %444

444:                                              ; preds = %422
  %445 = shl i32 %434, 1
  %446 = or i32 %445, 1
  %447 = mul i32 %446, %439
  br label %448

448:                                              ; preds = %448, %444
  %449 = phi i32 [ 0, %444 ], [ %458, %448 ]
  %450 = add i32 %449, %447
  %451 = getelementptr i16, ptr %435, i32 %450
  %452 = load i16, ptr %451, align 2
  %453 = sext i16 %452 to i32
  %454 = load ptr, ptr %436, align 4
  %455 = shl i32 %449, 2
  %456 = add nuw nsw i32 %455, 40
  %457 = getelementptr i8, ptr %454, i32 %456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %457, i32 %453) #9, !srcloc !13
  %458 = add nuw nsw i32 %449, 1
  %459 = load ptr, ptr %133, align 4
  %460 = getelementptr i16, ptr %459, i32 %439
  %461 = load i16, ptr %460, align 2
  %462 = ashr i16 %461, 1
  %463 = sext i16 %462 to i32
  %464 = icmp slt i32 %449, %463
  br i1 %464, label %448, label %465

465:                                              ; preds = %448, %422
  %466 = phi i32 [ -1, %422 ], [ %449, %448 ]
  %467 = shl i32 %466, 16
  %468 = xor i1 %425, true
  %469 = zext i1 %468 to i32
  %470 = or i32 %467, %469
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %471 = load ptr, ptr %436, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %471, i32 %470) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %472 = mul i32 %434, %427
  %473 = add i32 %472, %426
  %474 = load ptr, ptr %436, align 4
  %475 = getelementptr i8, ptr %474, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %475, i32 %473) #9, !srcloc !13
  %476 = tail call i64 @ktime_get() #9
  %477 = add i64 %476, 100000000
  br label %478

478:                                              ; preds = %484, %465
  %479 = load ptr, ptr %436, align 4
  %480 = getelementptr i8, ptr %479, i32 32
  %481 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %480) #9, !srcloc !9
  %482 = and i32 %481, 1
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %491

484:                                              ; preds = %478
  %485 = tail call i64 @ktime_get() #9
  %486 = icmp sgt i64 %485, %477
  br i1 %486, label %487, label %478

487:                                              ; preds = %484
  %488 = load ptr, ptr %436, align 4
  %489 = getelementptr i8, ptr %488, i32 32
  %490 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %489) #9, !srcloc !9
  br label %491

491:                                              ; preds = %487, %478
  %492 = phi i32 [ %490, %487 ], [ %481, %478 ]
  %493 = and i32 %492, 1
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %497

495:                                              ; preds = %491
  %496 = load ptr, ptr %428, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %496, ptr noundef nonnull @.str.6) #11
  br label %539

497:                                              ; preds = %491
  %498 = lshr i32 %492, 8
  %499 = and i32 %498, 31
  %500 = load ptr, ptr %133, align 4
  %501 = getelementptr i16, ptr %500, i32 %439
  %502 = load i16, ptr %501, align 2
  %503 = ashr i16 %502, 1
  %504 = sext i16 %503 to i32
  %505 = icmp eq i32 %499, %504
  br i1 %505, label %506, label %539

506:                                              ; preds = %497
  %507 = icmp slt i32 %466, 0
  br i1 %507, label %539, label %508

508:                                              ; preds = %506
  %509 = add i32 %11, %13
  %510 = icmp eq i32 %466, 0
  br i1 %510, label %539, label %511

511:                                              ; preds = %508
  %512 = getelementptr inbounds %struct.atmel_pmecc, ptr %6, i32 0, i32 2, i32 1
  %513 = getelementptr i8, ptr %3, i32 %10
  br label %514

514:                                              ; preds = %530, %511
  %515 = phi i32 [ 0, %511 ], [ %537, %530 ]
  %516 = load ptr, ptr %512, align 4
  %517 = shl i32 %515, 2
  %518 = load ptr, ptr %20, align 4
  %519 = getelementptr inbounds %struct.atmel_pmecc_caps, ptr %518, i32 0, i32 2
  %520 = load i32, ptr %519, align 4
  %521 = add i32 %520, %517
  %522 = getelementptr i8, ptr %516, i32 %521
  %523 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %522) #9, !srcloc !9
  %524 = add i32 %523, -1
  %525 = lshr i32 %524, 3
  %526 = and i32 %524, 7
  %527 = icmp ult i32 %525, %11
  br i1 %527, label %530, label %528

528:                                              ; preds = %514
  %529 = icmp slt i32 %525, %509
  br i1 %529, label %530, label %539

530:                                              ; preds = %528, %514
  %531 = phi ptr [ %2, %514 ], [ %513, %528 ]
  %532 = getelementptr i8, ptr %531, i32 %525
  %533 = shl nuw nsw i32 1, %526
  %534 = load i8, ptr %532, align 1
  %535 = trunc i32 %533 to i8
  %536 = xor i8 %534, %535
  store i8 %536, ptr %532, align 1
  %537 = add nuw nsw i32 %515, 1
  %538 = icmp eq i32 %537, %466
  br i1 %538, label %539, label %514

539:                                              ; preds = %530, %528, %508, %506, %497, %495, %4
  %540 = phi i32 [ 0, %4 ], [ %466, %506 ], [ -74, %497 ], [ -110, %495 ], [ 0, %508 ], [ -22, %528 ], [ %466, %530 ]
  ret i32 %540
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @atmel_pmecc_correct_erased_chunks(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_pmecc, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.atmel_pmecc_caps, ptr %5, i32 0, i32 3
  %7 = load i8, ptr %6, align 4, !range !16
  %8 = icmp ne i8 %7, 0
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atmel_pmecc_get_generated_eccbytes(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.atmel_pmecc, ptr %9, i32 0, i32 2
  %11 = shl i32 %1, 6
  %12 = add i32 %11, 64
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i32 [ 0, %7 ], [ %20, %13 ]
  %15 = load ptr, ptr %10, align 4
  %16 = add i32 %12, %14
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #9, !srcloc !17
  %19 = getelementptr i8, ptr %2, i32 %14
  store i8 %18, ptr %19, align 1
  %20 = add nuw nsw i32 %14, 1
  %21 = load i32, ptr %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %13, label %23

23:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atmel_pmecc_reset(ptr nocapture noundef readonly %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %2 = getelementptr inbounds %struct.atmel_pmecc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 32) #9, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atmel_pmecc_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt i32 %1, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #11
  br label %32

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.atmel_pmecc, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %9) #9
  %10 = load i32, ptr %0, align 4
  %11 = icmp eq i32 %1, 1
  %12 = select i1 %11, i32 4096, i32 1048576
  %13 = or i32 %10, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !20
  tail call void @arm_heavy_mb() #9
  %14 = getelementptr inbounds %struct.atmel_pmecc, ptr %4, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %16 = getelementptr inbounds %struct.atmel_pmecc_user_conf_cache, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %20 = getelementptr inbounds %struct.atmel_pmecc_user_conf_cache, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %14, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !23
  tail call void @arm_heavy_mb() #9
  %24 = getelementptr inbounds %struct.atmel_pmecc_user_conf_cache, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %28 = load ptr, ptr %14, align 4
  %29 = getelementptr i8, ptr %28, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 16) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !25
  tail call void @arm_heavy_mb() #9
  %30 = load ptr, ptr %14, align 4
  %31 = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 2) #9, !srcloc !13
  br label %32

32:                                               ; preds = %8, %6
  %33 = phi i32 [ -22, %6 ], [ 0, %8 ]
  ret i32 %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @atmel_pmecc_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %4 = getelementptr inbounds %struct.atmel_pmecc, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 1) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 32) #9, !srcloc !13
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.atmel_pmecc, ptr %9, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %10) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atmel_pmecc_wait_rdy(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i64 @ktime_get() #9
  %5 = add i64 %4, 100000000
  %6 = getelementptr inbounds %struct.atmel_pmecc, ptr %3, i32 0, i32 2
  br label %7

7:                                                ; preds = %13, %1
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %8, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !9
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = tail call i64 @ktime_get() #9
  %15 = icmp sgt i64 %14, %5
  br i1 %15, label %16, label %7

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !9
  br label %20

20:                                               ; preds = %16, %7
  %21 = phi i32 [ %19, %16 ], [ %10, %7 ]
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.3) #11
  br label %31

26:                                               ; preds = %20
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i8, ptr %27, i32 40
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !9
  %30 = getelementptr inbounds %struct.atmel_pmecc_user, ptr %0, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %24
  %32 = phi i32 [ -110, %24 ], [ 0, %26 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_atmel_pmecc_get(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !26
  %9 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %6, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #9
  %10 = icmp ne i32 %9, 0
  %11 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %12 = icmp eq ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = call ptr @of_find_device_by_node(ptr noundef nonnull %11) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_atmel_pmecc_put, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.7) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store ptr %19, ptr %22, align 4
  call void @devres_add(ptr noundef nonnull %0, ptr noundef nonnull %22) #9
  br label %28

25:                                               ; preds = %21, %17
  %26 = phi ptr [ inttoptr (i32 -517 to ptr), %17 ], [ inttoptr (i32 -12 to ptr), %21 ]
  %27 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  call void @put_device(ptr noundef %27) #9
  br label %28

28:                                               ; preds = %25, %24, %14
  %29 = phi ptr [ %19, %24 ], [ %26, %25 ], [ inttoptr (i32 -517 to ptr), %14 ]
  call void @of_node_put(ptr noundef nonnull %11) #9
  br label %47

30:                                               ; preds = %8
  %31 = getelementptr i8, ptr %0, i32 -16
  %32 = load ptr, ptr %5, align 8
  %33 = call ptr @of_find_property(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 8
  %37 = call ptr @of_match_node(ptr noundef nonnull @atmel_pmecc_legacy_match, ptr noundef %36) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.of_device_id, ptr %37, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr @at91sam9g45_caps, ptr %41
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi ptr [ @at91sam9g45_caps, %35 ], [ %43, %39 ]
  %46 = call fastcc ptr @atmel_pmecc_create(ptr noundef %31, ptr noundef nonnull %45, i32 noundef 1, i32 noundef 2)
  br label %47

47:                                               ; preds = %44, %30, %28, %4, %1
  %48 = phi ptr [ null, %4 ], [ inttoptr (i32 -22 to ptr), %1 ], [ null, %30 ], [ %29, %28 ], [ %46, %44 ]
  ret ptr %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @atmel_pmecc_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 36, i32 noundef 3520) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.atmel_pmecc, ptr %6, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  store ptr %5, ptr %6, align 4
  %10 = getelementptr inbounds %struct.atmel_pmecc, ptr %6, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef nonnull @atmel_pmecc_create.__key) #9
  %11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef %2) #9
  %12 = getelementptr inbounds %struct.atmel_pmecc, ptr %6, i32 0, i32 2
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %25, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef %3) #9
  %16 = getelementptr inbounds %struct.atmel_pmecc, ptr %6, i32 0, i32 2, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !27
  tail call void @arm_heavy_mb() #9
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr i8, ptr %19, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -1) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 1) #9, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 32) #9, !srcloc !13
  br label %25

25:                                               ; preds = %18, %14, %8, %4
  %26 = phi ptr [ %6, %18 ], [ inttoptr (i32 -12 to ptr), %4 ], [ %11, %8 ], [ %15, %14 ]
  ret ptr %26
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @atmel_pmecc_driver_init() #5 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_pmecc_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @atmel_pmecc_driver_exit() #5 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_pmecc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_atmel_pmecc_put(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr %3, align 4
  tail call void @put_device(ptr noundef %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pmecc_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #11
  br label %13

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @atmel_pmecc_create(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  br label %13

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %12, align 8
  br label %13

13:                                               ; preds = %11, %9, %5
  %14 = phi i32 [ %10, %9 ], [ 0, %11 ], [ -22, %5 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{i64 2423963}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = !{i64 2151905640}
!13 = !{i64 2423545}
!14 = !{i64 2151906248}
!15 = !{i64 2151906616}
!16 = !{i8 0, i8 2}
!17 = !{i64 2423743}
!18 = !{i64 2151921252}
!19 = !{i64 2151921737}
!20 = !{i64 2151923998}
!21 = !{i64 2151924340}
!22 = !{i64 2151924710}
!23 = !{i64 2151925080}
!24 = !{i64 2151925544}
!25 = !{i64 2151926029}
!26 = !{!"auto-init"}
!27 = !{i64 2151933264}
