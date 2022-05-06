; ModuleID = '/llk/IR/drivers/mtd/nand/ecc.c_pt.bc'
source_filename = "../drivers/mtd/nand/ecc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_init_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_init_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_init_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_cleanup_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_cleanup_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_cleanup_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_prepare_io_req:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_prepare_io_req\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_prepare_io_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_finish_io_req:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_finish_io_req\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_finish_io_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_get_small_page_ooblayout:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_get_small_page_ooblayout\22\09\09\09\09\09"
module asm "__kstrtabns_nand_get_small_page_ooblayout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_get_large_page_ooblayout:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_get_large_page_ooblayout\22\09\09\09\09\09"
module asm "__kstrtabns_nand_get_large_page_ooblayout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_get_large_page_hamming_ooblayout:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_get_large_page_hamming_ooblayout\22\09\09\09\09\09"
module asm "__kstrtabns_nand_get_large_page_hamming_ooblayout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_nand_ecc_user_config:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_nand_ecc_user_config\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_nand_ecc_user_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_is_strong_enough:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_is_strong_enough\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_is_strong_enough:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_init_req_tweaking:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_init_req_tweaking\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_init_req_tweaking:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_cleanup_req_tweaking:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_cleanup_req_tweaking\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_cleanup_req_tweaking:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_tweak_req:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_tweak_req\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_tweak_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_restore_req:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_restore_req\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_restore_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_get_sw_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_get_sw_engine\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_get_sw_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_get_on_die_hw_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_get_on_die_hw_engine\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_get_on_die_hw_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.5 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.5 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_ecc_engine_ops = type { ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.nand_ecc_req_tweak_ctx = type { %struct.nand_page_io_req, ptr, i32, i32, ptr, ptr, i8, i8 }
%struct.nand_page_io_req = type { i32, %struct.nand_pos, i32, i32, %union.anon.6, i32, i32, %union.anon.7, i32 }
%struct.nand_pos = type { i32, i32, i32, i32, i32 }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%struct.mtd_oob_region = type { i32, i32 }

@__kstrtab_nand_ecc_init_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_init_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_init_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_init_ctx to i32), ptr @__kstrtab_nand_ecc_init_ctx, ptr @__kstrtabns_nand_ecc_init_ctx }, section "___ksymtab+nand_ecc_init_ctx", align 4
@__kstrtab_nand_ecc_cleanup_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_cleanup_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_cleanup_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_cleanup_ctx to i32), ptr @__kstrtab_nand_ecc_cleanup_ctx, ptr @__kstrtabns_nand_ecc_cleanup_ctx }, section "___ksymtab+nand_ecc_cleanup_ctx", align 4
@__kstrtab_nand_ecc_prepare_io_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_prepare_io_req = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_prepare_io_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_prepare_io_req to i32), ptr @__kstrtab_nand_ecc_prepare_io_req, ptr @__kstrtabns_nand_ecc_prepare_io_req }, section "___ksymtab+nand_ecc_prepare_io_req", align 4
@__kstrtab_nand_ecc_finish_io_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_finish_io_req = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_finish_io_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_finish_io_req to i32), ptr @__kstrtab_nand_ecc_finish_io_req, ptr @__kstrtabns_nand_ecc_finish_io_req }, section "___ksymtab+nand_ecc_finish_io_req", align 4
@nand_ooblayout_sp_ops = internal constant %struct.mtd_ooblayout_ops { ptr @nand_ooblayout_ecc_sp, ptr @nand_ooblayout_free_sp }, align 4
@__kstrtab_nand_get_small_page_ooblayout = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_get_small_page_ooblayout = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_get_small_page_ooblayout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_get_small_page_ooblayout to i32), ptr @__kstrtab_nand_get_small_page_ooblayout, ptr @__kstrtabns_nand_get_small_page_ooblayout }, section "___ksymtab_gpl+nand_get_small_page_ooblayout", align 4
@nand_ooblayout_lp_ops = internal constant %struct.mtd_ooblayout_ops { ptr @nand_ooblayout_ecc_lp, ptr @nand_ooblayout_free_lp }, align 4
@__kstrtab_nand_get_large_page_ooblayout = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_get_large_page_ooblayout = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_get_large_page_ooblayout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_get_large_page_ooblayout to i32), ptr @__kstrtab_nand_get_large_page_ooblayout, ptr @__kstrtabns_nand_get_large_page_ooblayout }, section "___ksymtab_gpl+nand_get_large_page_ooblayout", align 4
@nand_ooblayout_lp_hamming_ops = internal constant %struct.mtd_ooblayout_ops { ptr @nand_ooblayout_ecc_lp_hamming, ptr @nand_ooblayout_free_lp_hamming }, align 4
@__kstrtab_nand_get_large_page_hamming_ooblayout = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_get_large_page_hamming_ooblayout = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_get_large_page_hamming_ooblayout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_get_large_page_hamming_ooblayout to i32), ptr @__kstrtab_nand_get_large_page_hamming_ooblayout, ptr @__kstrtabns_nand_get_large_page_hamming_ooblayout }, section "___ksymtab_gpl+nand_get_large_page_hamming_ooblayout", align 4
@.str = private unnamed_addr constant [18 x i8] c"nand-ecc-maximize\00", align 1
@__kstrtab_of_get_nand_ecc_user_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_nand_ecc_user_config = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_nand_ecc_user_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_nand_ecc_user_config to i32), ptr @__kstrtab_of_get_nand_ecc_user_config, ptr @__kstrtabns_of_get_nand_ecc_user_config }, section "___ksymtab+of_get_nand_ecc_user_config", align 4
@__kstrtab_nand_ecc_is_strong_enough = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_is_strong_enough = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_is_strong_enough = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_is_strong_enough to i32), ptr @__kstrtab_nand_ecc_is_strong_enough, ptr @__kstrtabns_nand_ecc_is_strong_enough }, section "___ksymtab+nand_ecc_is_strong_enough", align 4
@__kstrtab_nand_ecc_init_req_tweaking = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_init_req_tweaking = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_init_req_tweaking = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_init_req_tweaking to i32), ptr @__kstrtab_nand_ecc_init_req_tweaking, ptr @__kstrtabns_nand_ecc_init_req_tweaking }, section "___ksymtab_gpl+nand_ecc_init_req_tweaking", align 4
@__kstrtab_nand_ecc_cleanup_req_tweaking = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_cleanup_req_tweaking = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_cleanup_req_tweaking = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_cleanup_req_tweaking to i32), ptr @__kstrtab_nand_ecc_cleanup_req_tweaking, ptr @__kstrtabns_nand_ecc_cleanup_req_tweaking }, section "___ksymtab_gpl+nand_ecc_cleanup_req_tweaking", align 4
@__kstrtab_nand_ecc_tweak_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_tweak_req = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_tweak_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_tweak_req to i32), ptr @__kstrtab_nand_ecc_tweak_req, ptr @__kstrtabns_nand_ecc_tweak_req }, section "___ksymtab_gpl+nand_ecc_tweak_req", align 4
@__kstrtab_nand_ecc_restore_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_restore_req = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_restore_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_restore_req to i32), ptr @__kstrtab_nand_ecc_restore_req, ptr @__kstrtabns_nand_ecc_restore_req }, section "___ksymtab_gpl+nand_ecc_restore_req", align 4
@__kstrtab_nand_ecc_get_sw_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_get_sw_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_get_sw_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_get_sw_engine to i32), ptr @__kstrtab_nand_ecc_get_sw_engine, ptr @__kstrtabns_nand_ecc_get_sw_engine }, section "___ksymtab+nand_ecc_get_sw_engine", align 4
@__kstrtab_nand_ecc_get_on_die_hw_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_get_on_die_hw_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_get_on_die_hw_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_get_on_die_hw_engine to i32), ptr @__kstrtab_nand_ecc_get_on_die_hw_engine, ptr @__kstrtabns_nand_ecc_get_on_die_hw_engine }, section "___ksymtab+nand_ecc_get_on_die_hw_engine", align 4
@__UNIQUE_ID_file176 = internal constant [40 x i8] c"nandcore.file=drivers/mtd/nand/nandcore\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [21 x i8] c"nandcore.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author178 = internal constant [58 x i8] c"nandcore.author=Miquel Raynal <miquel.raynal@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description179 = internal constant [40 x i8] c"nandcore.description=Generic ECC engine\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"nand-no-ecc-engine\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"nand-use-soft-ecc-engine\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"nand-ecc-engine\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"nand-ecc-algo\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"hamming\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bch\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"nand-ecc-placement\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"oob\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"interleaved\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"nand-ecc-strength\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"nand-ecc-step-size\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author178, ptr @__UNIQUE_ID_description179, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__ksymtab_nand_ecc_cleanup_ctx, ptr @__ksymtab_nand_ecc_cleanup_req_tweaking, ptr @__ksymtab_nand_ecc_finish_io_req, ptr @__ksymtab_nand_ecc_get_on_die_hw_engine, ptr @__ksymtab_nand_ecc_get_sw_engine, ptr @__ksymtab_nand_ecc_init_ctx, ptr @__ksymtab_nand_ecc_init_req_tweaking, ptr @__ksymtab_nand_ecc_is_strong_enough, ptr @__ksymtab_nand_ecc_prepare_io_req, ptr @__ksymtab_nand_ecc_restore_req, ptr @__ksymtab_nand_ecc_tweak_req, ptr @__ksymtab_nand_get_large_page_hamming_ooblayout, ptr @__ksymtab_nand_get_large_page_ooblayout, ptr @__ksymtab_nand_get_small_page_ooblayout, ptr @__ksymtab_of_get_nand_ecc_user_config], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_init_ctx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #12
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = phi i32 [ %10, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nand_ecc_cleanup_ctx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nand_ecc_engine_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void %8(ptr noundef %0) #12
  br label %11

11:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_prepare_io_req(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.nand_ecc_engine_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 %9(ptr noundef %0, ptr noundef %1) #12
  br label %13

13:                                               ; preds = %11, %6, %2
  %14 = phi i32 [ %12, %11 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_finish_io_req(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.nand_ecc_engine_ops, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 %9(ptr noundef %0, ptr noundef %1) #12
  br label %13

13:                                               ; preds = %11, %6, %2
  %14 = phi i32 [ %12, %11 ], [ 0, %6 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nand_get_small_page_ooblayout() #1 {
  ret ptr @nand_ooblayout_sp_ops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nand_get_large_page_ooblayout() #1 {
  ret ptr @nand_ooblayout_lp_ops
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nand_get_large_page_hamming_ooblayout() #1 {
  ret ptr @nand_ooblayout_lp_hamming_ops
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_get_nand_ecc_user_config(ptr nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef null) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef null) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false) #12, !annotation !8
  %15 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6) #12
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr %6, align 4
  %18 = select i1 %16, ptr %17, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #12
  call void @of_node_put(ptr noundef %18) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = icmp eq ptr %18, %8
  %22 = select i1 %21, i32 4, i32 3
  br label %23

23:                                               ; preds = %20, %14, %11, %1
  %24 = phi i32 [ 1, %1 ], [ 2, %11 ], [ %22, %20 ], [ 0, %14 ]
  %25 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2
  store i32 %24, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !8
  %26 = call i32 @of_property_read_string(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull %5) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load ptr, ptr %5, align 4
  %30 = call i32 @strcasecmp(ptr noundef %29, ptr noundef nonnull @.str.5) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = call i32 @strcasecmp(ptr noundef %29, ptr noundef nonnull @.str.6) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = call i32 @strcasecmp(ptr noundef %29, ptr noundef nonnull @.str.7) #12
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 3, i32 0
  br label %39

39:                                               ; preds = %35, %32, %28, %23
  %40 = phi i32 [ 0, %23 ], [ 1, %28 ], [ 2, %32 ], [ %38, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %41 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 2
  store i32 %40, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4, !annotation !8
  %42 = call i32 @of_property_read_string(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef nonnull %4) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 4
  %46 = call i32 @strcasecmp(ptr noundef %45, ptr noundef nonnull @.str.9) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = call i32 @strcasecmp(ptr noundef %45, ptr noundef nonnull @.str.10) #12
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 2, i32 0
  br label %52

52:                                               ; preds = %48, %44, %39
  %53 = phi i32 [ 0, %39 ], [ 1, %44 ], [ %51, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %54 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 1
  store i32 %53, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %55 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #12
  %56 = call i32 @llvm.smin.i32(i32 %55, i32 0) #12
  %57 = load i32, ptr %3, align 4
  %58 = icmp slt i32 %55, 0
  %59 = select i1 %58, i32 %56, i32 %57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 3
  store i32 %59, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !8
  %64 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #12
  %65 = call i32 @llvm.smin.i32(i32 %64, i32 0) #12
  %66 = load i32, ptr %2, align 4
  %67 = icmp slt i32 %64, 0
  %68 = select i1 %67, i32 %65, i32 %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 4
  store i32 %68, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %63
  %73 = call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef null) #12
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, 1
  store i32 %78, ptr %76, align 4
  br label %79

79:                                               ; preds = %75, %72
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nand_ecc_is_strong_enough(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %11
  %15 = udiv i32 %14, %3
  %16 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, %11
  %19 = udiv i32 %18, %7
  %20 = icmp sge i32 %15, %19
  %21 = icmp uge i32 %13, %17
  %22 = select i1 %20, i1 %21, i1 false
  br label %23

23:                                               ; preds = %9, %5, %1
  %24 = phi i1 [ %22, %9 ], [ true, %5 ], [ true, %1 ]
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_init_req_tweaking(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 1
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nand_device, ptr %1, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %4, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ %5, %2 ]
  %12 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.nand_device, ptr %1, i32 0, i32 1, i32 2
  %17 = load i32, ptr %16, align 8
  store i32 %17, ptr %12, align 4
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi i32 [ %17, %15 ], [ %13, %10 ]
  %20 = add i32 %19, %11
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #13
  %22 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 4
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %4, align 4
  %26 = getelementptr i8, ptr %21, i32 %25
  %27 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 5
  store ptr %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i32 [ 0, %24 ], [ -12, %18 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nand_ecc_cleanup_req_tweaking(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nand_ecc_tweak_req(ptr nocapture noundef %0, ptr nocapture noundef %1) #5 {
  %3 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %0, ptr noundef align 4 dereferenceable(52) %1, i32 52, i1 false)
  %5 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 6
  store i8 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 7
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds %struct.nand_page_io_req, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_device, ptr %4, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  store i8 1, ptr %5, align 4
  %13 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = load i32, ptr %9, align 4
  %15 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 4
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %17, i8 -1, i32 %20, i1 false)
  br label %21

21:                                               ; preds = %12, %2
  %22 = getelementptr inbounds %struct.nand_page_io_req, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nand_device, ptr %4, i32 0, i32 1, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  store i8 1, ptr %6, align 1
  %28 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 5
  store i32 0, ptr %28, align 4
  %29 = load i32, ptr %24, align 8
  %30 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 7
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %32, i8 -1, i32 %35, i1 false)
  br label %36

36:                                               ; preds = %27, %21
  %37 = load i32, ptr %0, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i8, ptr %5, align 4, !range !9
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nand_page_io_req, ptr %0, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %44, i32 %46
  %48 = getelementptr inbounds %struct.nand_page_io_req, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %7, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %47, ptr align 1 %49, i32 %50, i1 false)
  br label %51

51:                                               ; preds = %42, %39
  %52 = load i8, ptr %6, align 1, !range !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nand_page_io_req, ptr %0, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i8, ptr %56, i32 %58
  %60 = getelementptr inbounds %struct.nand_page_io_req, ptr %0, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %22, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %59, ptr align 1 %61, i32 %62, i1 false)
  br label %63

63:                                               ; preds = %54, %51, %36
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nand_ecc_restore_req(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #5 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nand_page_io_req, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nand_page_io_req, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = getelementptr inbounds %struct.nand_page_io_req, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %11, ptr align 1 %16, i32 %18, i1 false)
  br label %19

19:                                               ; preds = %9, %5
  %20 = getelementptr inbounds %struct.nand_ecc_req_tweak_ctx, ptr %0, i32 0, i32 7
  %21 = load i8, ptr %20, align 1, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nand_page_io_req, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nand_page_io_req, ptr %1, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nand_page_io_req, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = getelementptr inbounds %struct.nand_page_io_req, ptr %0, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %25, ptr align 1 %30, i32 %32, i1 false)
  br label %33

33:                                               ; preds = %23, %19, %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(52) %1, ptr noundef align 4 dereferenceable(52) %0, i32 52, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nand_ecc_get_sw_engine(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ %3, %1 ]
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call ptr @nand_ecc_sw_hamming_get_engine() #12
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %12, %11 ], [ null, %8 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_ecc_sw_hamming_get_engine() local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @nand_ecc_get_on_die_hw_engine(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 4
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nand_ooblayout_ecc_sp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %7
  store i32 0, ptr %2, align 4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 16
  %13 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  br i1 %12, label %14, label %15

14:                                               ; preds = %9
  store i32 4, ptr %13, align 4
  br label %23

15:                                               ; preds = %9
  store i32 3, ptr %13, align 4
  br label %23

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  store i32 6, ptr %2, align 4
  %21 = add i32 %5, -4
  %22 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %16, %15, %14, %3
  %24 = phi i32 [ -34, %3 ], [ -34, %16 ], [ 0, %14 ], [ 0, %15 ], [ 0, %20 ]
  ret i32 %24
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nand_ooblayout_free_sp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 8, ptr %12, align 4
  br label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 2, ptr %14, align 4
  %15 = icmp eq i32 %1, 0
  %16 = select i1 %15, i32 3, i32 6
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i32 [ 8, %11 ], [ %16, %13 ]
  store i32 %18, ptr %2, align 4
  br label %19

19:                                               ; preds = %17, %9, %3
  %20 = phi i32 [ -34, %3 ], [ -34, %9 ], [ 0, %17 ]
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nand_ooblayout_ecc_lp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = icmp ne i32 %5, 0
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %12, %5
  store i32 %13, ptr %2, align 4
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi i32 [ 0, %9 ], [ -34, %3 ]
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nand_ooblayout_free_lp(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 -2, %7
  %11 = add i32 %10, %9
  %12 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  store i32 2, ptr %2, align 4
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ -34, %3 ]
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nand_ooblayout_ecc_lp_hamming(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %18 [
    i32 64, label %11
    i32 128, label %10
  ]

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi i32 [ 80, %10 ], [ 40, %7 ]
  store i32 %12, ptr %2, align 4
  %13 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %5, ptr %13, align 4
  %14 = add i32 %12, %5
  %15 = load i32, ptr %8, align 4
  %16 = icmp ugt i32 %14, %15
  %17 = select i1 %16, i32 -34, i32 0
  br label %18

18:                                               ; preds = %11, %7, %3
  %19 = phi i32 [ -34, %3 ], [ -22, %7 ], [ %17, %11 ]
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nand_ooblayout_free_lp_hamming(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %1, 1
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %23 [
    i32 64, label %11
    i32 128, label %10
  ]

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi i32 [ 80, %10 ], [ 40, %7 ]
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  store i32 2, ptr %2, align 4
  %15 = add nsw i32 %12, -2
  br label %20

16:                                               ; preds = %11
  %17 = add i32 %12, %5
  store i32 %17, ptr %2, align 4
  %18 = load i32, ptr %8, align 4
  %19 = sub i32 %18, %17
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi i32 [ %15, %14 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %7, %3
  %24 = phi i32 [ -34, %3 ], [ -22, %7 ], [ 0, %20 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

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
