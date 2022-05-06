; ModuleID = '/llk/IR/drivers/soc/sunxi/sunxi_sram.c_pt.bc'
source_filename = "../drivers/soc/sunxi/sunxi_sram.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunxi_sram_claim:\09\09\09\09\09"
module asm "\09.asciz \09\22sunxi_sram_claim\22\09\09\09\09\09"
module asm "__kstrtabns_sunxi_sram_claim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunxi_sram_release:\09\09\09\09\09"
module asm "\09.asciz \09\22sunxi_sram_release\22\09\09\09\09\09"
module asm "__kstrtabns_sunxi_sram_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_sram_desc = type { %struct.sunxi_sram_data, i8 }
%struct.sunxi_sram_data = type { ptr, i8, i8, i8, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sunxi_sram_func = type { ptr, i8, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sunxi_sramc_variant = type { i32 }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }

@base = internal unnamed_addr global ptr null, align 4
@sram_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_sunxi_sram_claim = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunxi_sram_claim = external dso_local constant [0 x i8], align 1
@__ksymtab_sunxi_sram_claim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunxi_sram_claim to i32), ptr @__kstrtab_sunxi_sram_claim, ptr @__kstrtabns_sunxi_sram_claim }, section "___ksymtab+sunxi_sram_claim", align 4
@__kstrtab_sunxi_sram_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunxi_sram_release = external dso_local constant [0 x i8], align 1
@__ksymtab_sunxi_sram_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunxi_sram_release to i32), ptr @__kstrtab_sunxi_sram_release, ptr @__kstrtabns_sunxi_sram_release }, section "___ksymtab+sunxi_sram_release", align 4
@__initcall__kmod_sunxi_sram__202_414_sunxi_sram_driver_init6 = internal global ptr @sunxi_sram_driver_init, section ".initcall6.init", align 4
@sunxi_sram_driver = internal global %struct.platform_driver { ptr @sunxi_sram_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_sram_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sunxi_sram_driver_exit = internal global ptr @sunxi_sram_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author203 = internal constant [67 x i8] c"sunxi_sram.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description204 = internal constant [62 x i8] c"sunxi_sram.description=Allwinner sunXi SRAM Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file205 = internal constant [45 x i8] c"sunxi_sram.file=drivers/soc/sunxi/sunxi_sram\00", section ".modinfo", align 1
@__UNIQUE_ID_license206 = internal constant [23 x i8] c"sunxi_sram.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"allwinner,sram\00", align 1
@sunxi_sram_dt_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-sram-a3-a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sram_a3_a4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-sram-c1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sram_c1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-sram-d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sram_d }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-sram-c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_sram_c }, %struct.of_device_id zeroinitializer], align 4
@sun4i_a10_sram_a3_a4 = internal global %struct.sunxi_sram_desc { %struct.sunxi_sram_data { ptr @.str.1, i8 4, i8 4, i8 2, ptr @.compoundliteral, %struct.list_head zeroinitializer }, i8 0 }, align 4
@sun4i_a10_sram_c1 = internal global %struct.sunxi_sram_desc { %struct.sunxi_sram_data { ptr @.str.4, i8 0, i8 0, i8 31, ptr @.compoundliteral.6, %struct.list_head zeroinitializer }, i8 0 }, align 4
@sun4i_a10_sram_d = internal global %struct.sunxi_sram_desc { %struct.sunxi_sram_data { ptr @.str.7, i8 4, i8 0, i8 1, ptr @.compoundliteral.9, %struct.list_head zeroinitializer }, i8 0 }, align 4
@sun50i_a64_sram_c = internal global %struct.sunxi_sram_desc { %struct.sunxi_sram_data { ptr @.str.10, i8 4, i8 24, i8 1, ptr @.compoundliteral.12, %struct.list_head zeroinitializer }, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"A3-A4\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"emac\00", align 1
@.compoundliteral = internal global [3 x %struct.sunxi_sram_func] [%struct.sunxi_sram_func { ptr @.str.2, i8 0, i32 0 }, %struct.sunxi_sram_func { ptr @.str.3, i8 1, i32 1 }, %struct.sunxi_sram_func zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"C1\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ve\00", align 1
@.compoundliteral.6 = internal global [3 x %struct.sunxi_sram_func] [%struct.sunxi_sram_func { ptr @.str.2, i8 0, i32 0 }, %struct.sunxi_sram_func { ptr @.str.5, i8 1, i32 2147483647 }, %struct.sunxi_sram_func zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"usb-otg\00", align 1
@.compoundliteral.9 = internal global [3 x %struct.sunxi_sram_func] [%struct.sunxi_sram_func { ptr @.str.2, i8 0, i32 0 }, %struct.sunxi_sram_func { ptr @.str.8, i8 1, i32 1 }, %struct.sunxi_sram_func zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"de2\00", align 1
@.compoundliteral.12 = internal global [3 x %struct.sunxi_sram_func] [%struct.sunxi_sram_func { ptr @.str.2, i8 1, i32 0 }, %struct.sunxi_sram_func { ptr @.str.11, i8 0, i32 1 }, %struct.sunxi_sram_func zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"sunxi-sram\00", align 1
@sunxi_sram_dt_match = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-sram-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-sram-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h616-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h616_sramc_variant }, %struct.of_device_id zeroinitializer], align 4
@sram_dev = internal unnamed_addr global ptr null, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"sram\00", align 1
@sunxi_sram_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sunxi_sram_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sunxi_sram_emac_clock_regmap = internal global %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @sunxi_sram_regmap_accessible_reg, ptr @sunxi_sram_regmap_accessible_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 52, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"Allwinner sunXi SRAM\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"--------------------\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"sram@%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"\09section@%04x\09(%s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"\09\09%s%c\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@sun4i_a10_sramc_variant = internal constant %struct.sunxi_sramc_variant zeroinitializer, align 4
@sun8i_h3_sramc_variant = internal constant %struct.sunxi_sramc_variant { i32 1 }, align 4
@sun50i_a64_sramc_variant = internal constant %struct.sunxi_sramc_variant { i32 1 }, align 4
@sun50i_h616_sramc_variant = internal constant %struct.sunxi_sramc_variant { i32 2 }, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author203, ptr @__UNIQUE_ID_description204, ptr @__UNIQUE_ID_file205, ptr @__UNIQUE_ID_license206, ptr @__exitcall_sunxi_sram_driver_exit, ptr @__initcall__kmod_sunxi_sram__202_414_sunxi_sram_driver_init6, ptr @__ksymtab_sunxi_sram_claim, ptr @__ksymtab_sunxi_sram_release, ptr @sunxi_sram_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sunxi_sram_claim(ptr noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr @base, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %3 to i32
  br label %59

7:                                                ; preds = %1
  %8 = icmp eq ptr %3, null
  br i1 %8, label %59, label %9

9:                                                ; preds = %7
  %10 = icmp eq ptr %0, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %59, label %15

15:                                               ; preds = %11
  %16 = call fastcc ptr @sunxi_sram_of_parse(ptr noundef nonnull %13, ptr noundef nonnull %2)
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %59

20:                                               ; preds = %15
  call void @_raw_spin_lock(ptr noundef nonnull @sram_lock) #6
  %21 = getelementptr inbounds %struct.sunxi_sram_desc, ptr %16, i32 0, i32 1
  %22 = load i8, ptr %21, align 4, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %25 = load i16, ptr @sram_lock, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr @sram_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %59

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.sunxi_sram_data, ptr %16, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nsw i32 -1, %30
  %32 = getelementptr inbounds %struct.sunxi_sram_data, ptr %16, i32 0, i32 3
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  %35 = add nuw nsw i32 %30, %34
  %36 = sub nsw i32 32, %35
  %37 = lshr i32 -1, %36
  %38 = and i32 %37, %31
  %39 = load ptr, ptr @base, align 4
  %40 = getelementptr inbounds %struct.sunxi_sram_data, ptr %16, i32 0, i32 1
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = getelementptr i8, ptr %39, i32 %42
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %45 = xor i32 %38, -1
  %46 = and i32 %44, %45
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !16
  call void @arm_heavy_mb() #6
  %47 = load i32, ptr %2, align 4
  %48 = load i8, ptr %28, align 1
  %49 = zext i8 %48 to i32
  %50 = shl i32 %47, %49
  %51 = and i32 %50, %38
  %52 = or i32 %51, %46
  %53 = load ptr, ptr @base, align 4
  %54 = load i8, ptr %40, align 4
  %55 = zext i8 %54 to i32
  %56 = getelementptr i8, ptr %53, i32 %55
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %52) #6, !srcloc !17
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %57 = load i16, ptr @sram_lock, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr @sram_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %59

59:                                               ; preds = %27, %24, %18, %11, %9, %7, %5
  %60 = phi i32 [ %6, %5 ], [ %19, %18 ], [ -16, %24 ], [ 0, %27 ], [ -517, %7 ], [ -22, %11 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @sunxi_sram_of_parse(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !8
  %4 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = inttoptr i32 %4 to ptr
  br label %50

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4
  %10 = call zeroext i1 @of_device_is_available(ptr noundef %9) #6
  br i1 %10, label %11, label %47

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %3, align 4
  %15 = call ptr @of_match_node(ptr noundef nonnull @sunxi_sram_dt_ids, ptr noundef %14) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.of_device_id, ptr %15, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %47, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sunxi_sram_data, ptr %19, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %47, label %26

26:                                               ; preds = %21
  %27 = trunc i32 %13 to i8
  br label %28

28:                                               ; preds = %35, %26
  %29 = phi ptr [ %23, %26 ], [ %36, %35 ]
  %30 = getelementptr inbounds %struct.sunxi_sram_func, ptr %29, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, %27
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = icmp eq ptr %1, null
  br i1 %34, label %44, label %39

35:                                               ; preds = %28
  %36 = getelementptr %struct.sunxi_sram_func, ptr %29, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %28

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.sunxi_sram_func, ptr %29, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %1, align 4
  %42 = load ptr, ptr %29, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %33
  %45 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %45) #6
  %46 = load ptr, ptr %18, align 4
  br label %50

47:                                               ; preds = %39, %35, %21, %17, %11, %8
  %48 = phi ptr [ inttoptr (i32 -16 to ptr), %8 ], [ inttoptr (i32 -22 to ptr), %11 ], [ inttoptr (i32 -22 to ptr), %17 ], [ inttoptr (i32 -22 to ptr), %39 ], [ inttoptr (i32 -22 to ptr), %21 ], [ inttoptr (i32 -22 to ptr), %35 ]
  %49 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %49) #6
  br label %50

50:                                               ; preds = %47, %44, %6
  %51 = phi ptr [ %7, %6 ], [ %46, %44 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  ret ptr %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sunxi_sram_release(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @sunxi_sram_of_parse(ptr noundef nonnull %5, ptr noundef null)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  tail call void @_raw_spin_lock(ptr noundef nonnull @sram_lock) #6
  %11 = getelementptr inbounds %struct.sunxi_sram_desc, ptr %8, i32 0, i32 1
  store i8 0, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !10
  %12 = load i16, ptr @sram_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @sram_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %14

14:                                               ; preds = %10, %7, %3, %1
  %15 = phi i32 [ 0, %10 ], [ -22, %3 ], [ -22, %1 ], [ -22, %7 ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sunxi_sram_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_sram_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sunxi_sram_driver_exit() #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_sram_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_sram_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  store ptr %2, ptr @sram_dev, align 4
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  store ptr %6, ptr @base, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %25

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @of_platform_populate(ptr noundef %12, ptr noundef null, ptr noundef null, ptr noundef %2) #6
  %14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 292, ptr noundef null, ptr noundef null, ptr noundef nonnull @sunxi_sram_fops) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %3, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load ptr, ptr @base, align 4
  %21 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %20, ptr noundef nonnull @sunxi_sram_emac_clock_regmap, ptr noundef null, ptr noundef null) #6
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %23 = ptrtoint ptr %21 to i32
  %24 = select i1 %22, i32 %23, i32 0
  br label %25

25:                                               ; preds = %19, %16, %10, %8, %1
  %26 = phi i32 [ %9, %8 ], [ -22, %1 ], [ -12, %10 ], [ 0, %16 ], [ %24, %19 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_sram_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @sunxi_sram_show, ptr noundef %4) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_sram_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.16) #6
  %3 = load ptr, ptr @sram_dev, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %59, %2
  %9 = phi ptr [ %63, %59 ], [ %6, %2 ]
  %10 = tail call ptr @__of_get_address(ptr noundef nonnull %9, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #6
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %12) #6
  %13 = tail call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef null) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %59, label %15

15:                                               ; preds = %56, %8
  %16 = phi ptr [ %57, %56 ], [ %13, %8 ]
  %17 = tail call ptr @of_match_node(ptr noundef nonnull @sunxi_sram_dt_ids, ptr noundef nonnull %16) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %56, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.of_device_id, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @__of_get_address(ptr noundef nonnull %16, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #6
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %24, ptr noundef %25) #6
  %26 = load ptr, ptr @base, align 4
  %27 = getelementptr inbounds %struct.sunxi_sram_data, ptr %21, i32 0, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = getelementptr i8, ptr %26, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %32 = getelementptr inbounds %struct.sunxi_sram_data, ptr %21, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = lshr i32 %31, %34
  %36 = getelementptr inbounds %struct.sunxi_sram_data, ptr %21, i32 0, i32 3
  %37 = load i8, ptr %36, align 2
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 32, %38
  %40 = lshr i32 -1, %39
  %41 = and i32 %40, %35
  %42 = getelementptr inbounds %struct.sunxi_sram_data, ptr %21, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %46, %19
  %47 = phi ptr [ %54, %46 ], [ %44, %19 ]
  %48 = phi ptr [ %53, %46 ], [ %43, %19 ]
  %49 = getelementptr inbounds %struct.sunxi_sram_func, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %41
  %52 = select i1 %51, i32 42, i32 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %47, i32 noundef %52) #6
  %53 = getelementptr %struct.sunxi_sram_func, ptr %48, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %46

56:                                               ; preds = %46, %19, %15
  %57 = tail call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef nonnull %16) #6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %15

59:                                               ; preds = %56, %8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.20) #6
  %60 = load ptr, ptr @sram_dev, align 4
  %61 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 25
  %62 = load ptr, ptr %61, align 8
  %63 = tail call ptr @of_get_next_child(ptr noundef %62, ptr noundef nonnull %9) #6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %8

65:                                               ; preds = %59, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @sunxi_sram_regmap_accessible_reg(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %0) #6
  %4 = icmp ult i32 %1, 48
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = shl i32 %6, 2
  %8 = add i32 %7, 48
  %9 = icmp uge i32 %8, %1
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i1 [ false, %2 ], [ %9, %5 ]
  ret i1 %11
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
!10 = !{i64 2149014980}
!11 = !{i64 2149010804}
!12 = !{i64 2149010879, i64 2149010906, i64 2149010953, i64 2149010975, i64 2149011003, i64 2149011023}
!13 = !{i64 2149037983}
!14 = !{i64 3888653}
!15 = !{i64 2152163220}
!16 = !{i64 2152163450}
!17 = !{i64 3888235}
!18 = !{i64 2152159058}
