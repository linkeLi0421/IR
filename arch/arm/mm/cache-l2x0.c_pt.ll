; ModuleID = '/llk/IR/arch/arm/mm/cache-l2x0.c_pt.bc'
source_filename = "../arch/arm/mm/cache-l2x0.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.l2c_init_data = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.outer_cache_fns }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.l2x0_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@l2x0_base = internal unnamed_addr global ptr null, align 4
@l2c210_data = internal constant %struct.l2c_init_data { ptr @.str.10, i32 8192, i32 1, ptr null, ptr @l2c_enable, ptr null, ptr @l2c_save, ptr @l2c_configure, ptr @l2c_unlock, %struct.outer_cache_fns { ptr @l2c210_inv_range, ptr @l2c210_clean_range, ptr @l2c210_flush_range, ptr @l2c210_flush_all, ptr @l2c_disable, ptr @l2c210_sync, ptr @l2c_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@l2c220_data = internal constant %struct.l2c_init_data { ptr @.str.11, i32 8192, i32 1, ptr null, ptr @l2c220_enable, ptr null, ptr @l2c_save, ptr @l2c_configure, ptr @l2c220_unlock, %struct.outer_cache_fns { ptr @l2c220_inv_range, ptr @l2c220_clean_range, ptr @l2c220_flush_range, ptr @l2c220_flush_all, ptr @l2c_disable, ptr @l2c220_sync, ptr @l2c_resume, ptr null, ptr null } }, align 4
@l2c310_init_fns = internal constant %struct.l2c_init_data { ptr @.str.12, i32 8192, i32 8, ptr null, ptr @l2c310_enable, ptr @l2c310_fixup, ptr @l2c310_save, ptr @l2c310_configure, ptr @l2c310_unlock, %struct.outer_cache_fns { ptr @l2c210_inv_range, ptr @l2c210_clean_range, ptr @l2c210_flush_range, ptr @l2c210_flush_all, ptr @l2c310_disable, ptr @l2c210_sync, ptr @l2c310_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@l2x0_ids = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,l210-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_l2c210_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,l220-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_l2c220_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,pl310-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_l2c310_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm11351-a2-pl310-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_bcm_l2x0_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,aurora-outer-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_aurora_with_outer_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,aurora-system-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_aurora_no_outer_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,tauros3-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_tauros3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bcm,bcm11351-a2-pl310-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_bcm_l2x0_data }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@l2x0_saved_regs = dso_local global %struct.l2x0_regs zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"arm,pl310-cache\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"arm,io-coherent\00", align 1
@of_l2c310_coherent_data = internal constant %struct.l2c_init_data { ptr @.str.91, i32 8192, i32 8, ptr @l2c310_of_parse, ptr @l2c310_enable, ptr @l2c310_fixup, ptr @l2c310_save, ptr @l2c310_configure, ptr @l2c310_unlock, %struct.outer_cache_fns { ptr @l2c210_inv_range, ptr @l2c210_clean_range, ptr @l2c210_flush_range, ptr @l2c210_flush_all, ptr @l2c310_disable, ptr null, ptr @l2c310_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"\014L2C: platform modifies aux control register: 0x%08x -> 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [97 x i8] c"\011L2C: platform provided aux values match the hardware, so have no effect.  Please remove them.\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"cache-unified\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"\013L2C: device tree omits to specify unified cache\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"cache-level\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"\013L2C: device tree omits to specify cache-level\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\013L2C: device tree specifies invalid cache level\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"arm,outer-sync-disable\00", align 1
@cache_id_part_number_from_dt = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"L2C-210\00", align 1
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@l2x0_data = internal unnamed_addr global ptr null, align 4
@sync_reg_offset = internal unnamed_addr global i32 1840, align 4
@l2x0_way_mask = internal unnamed_addr global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"L2C-220\00", align 1
@l2x0_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@l2x0_size = internal unnamed_addr global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"L2C-310\00", align 1
@l2x0_bresp_disable = internal unnamed_addr global i1 false, align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"\016L2C-310 enabling early BRESP for Cortex-A9\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"\014L2C-310 early BRESP only supported with Cortex-A9\0A\00", align 1
@l2x0_flz_disable = internal unnamed_addr global i1 false, align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"\013L2C-310: full line of zeros enabled in Cortex-A9 but not L2C-310 - invalid\0A\00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"\013L2C-310: enabling full line of zeros but not enabled in Cortex-A9\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"\016L2C-310 full line of zeros enabled for Cortex-A9\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"\013L2C-310: disabling Cortex-A9 specific feature bits\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"\016L2C-310 %s%s prefetch enabled, offset %u lines\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.23 = private unnamed_addr constant [62 x i8] c"\016L2C-310 dynamic clock gating %sabled, standby mode %sabled\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"arm/l2x0:starting\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"588369\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"727915\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"752271\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"753970\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"769419\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"\016L2C-310 errat%s\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"um\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"\01c %s\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"\01c enabled\0A\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"\011L2C: platform provided aux values permit register corruption.\0A\00", align 1
@.str.38 = private unnamed_addr constant [68 x i8] c"\014L2C: DT/platform modifies aux control register: 0x%08x -> 0x%08x\0A\00", align 1
@.str.39 = private unnamed_addr constant [58 x i8] c"\014L2C: DT/platform tries to modify or specify cache size\0A\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"\016L2C: disabling outer sync\0A\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"\016%s cache controller enabled, %d ways, %d kB\0A\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"\016%s: CACHE_ID 0x%08x, AUX_CTRL 0x%08x\0A\00", align 1
@of_l2c210_data = internal constant %struct.l2c_init_data { ptr @.str.10, i32 8192, i32 1, ptr @l2x0_of_parse, ptr @l2c_enable, ptr null, ptr @l2c_save, ptr @l2c_configure, ptr @l2c_unlock, %struct.outer_cache_fns { ptr @l2c210_inv_range, ptr @l2c210_clean_range, ptr @l2c210_flush_range, ptr @l2c210_flush_all, ptr @l2c_disable, ptr @l2c210_sync, ptr @l2c_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@of_l2c220_data = internal constant %struct.l2c_init_data { ptr @.str.11, i32 8192, i32 1, ptr @l2x0_of_parse, ptr @l2c220_enable, ptr null, ptr @l2c_save, ptr @l2c_configure, ptr @l2c220_unlock, %struct.outer_cache_fns { ptr @l2c220_inv_range, ptr @l2c220_clean_range, ptr @l2c220_flush_range, ptr @l2c220_flush_all, ptr @l2c_disable, ptr @l2c220_sync, ptr @l2c_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@of_l2c310_data = internal constant %struct.l2c_init_data { ptr @.str.12, i32 8192, i32 8, ptr @l2c310_of_parse, ptr @l2c310_enable, ptr @l2c310_fixup, ptr @l2c310_save, ptr @l2c310_configure, ptr @l2c310_unlock, %struct.outer_cache_fns { ptr @l2c210_inv_range, ptr @l2c210_clean_range, ptr @l2c210_flush_range, ptr @l2c210_flush_all, ptr @l2c310_disable, ptr @l2c210_sync, ptr @l2c310_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@of_bcm_l2x0_data = internal constant %struct.l2c_init_data { ptr @.str.85, i32 8192, i32 8, ptr @l2c310_of_parse, ptr @l2c310_enable, ptr null, ptr @l2c310_save, ptr @l2c310_configure, ptr @l2c310_unlock, %struct.outer_cache_fns { ptr @bcm_inv_range, ptr @bcm_clean_range, ptr @bcm_flush_range, ptr @l2c210_flush_all, ptr @l2c310_disable, ptr @l2c210_sync, ptr @l2c310_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@of_aurora_with_outer_data = internal constant %struct.l2c_init_data { ptr @.str.86, i32 4096, i32 4, ptr @aurora_of_parse, ptr @l2c_enable, ptr @aurora_fixup, ptr @aurora_save, ptr @l2c_configure, ptr @l2c_unlock, %struct.outer_cache_fns { ptr @aurora_inv_range, ptr @aurora_clean_range, ptr @aurora_flush_range, ptr @aurora_flush_all, ptr @aurora_disable, ptr @aurora_cache_sync, ptr @l2c_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@of_aurora_no_outer_data = internal constant %struct.l2c_init_data { ptr @.str.86, i32 4096, i32 4, ptr @aurora_of_parse, ptr @aurora_enable_no_outer, ptr @aurora_fixup, ptr @aurora_save, ptr @l2c_configure, ptr @l2c_unlock, %struct.outer_cache_fns { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @l2c_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@of_tauros3_data = internal constant %struct.l2c_init_data { ptr @.str.90, i32 8192, i32 8, ptr null, ptr @l2c_enable, ptr null, ptr @tauros3_save, ptr @tauros3_configure, ptr @l2c_unlock, %struct.outer_cache_fns { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @l2c_resume, ptr null, ptr null } }, section ".init.rodata", align 4
@.str.43 = private unnamed_addr constant [16 x i8] c"arm,tag-latency\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"arm,data-latency\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"arm,dirty-latency\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"arm,parity-enable\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"arm,parity-disable\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"arm,shared-override\00", align 1
@.str.49 = private unnamed_addr constant [55 x i8] c"\013l2x0 of: cache setting yield too high associativity\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"\013l2x0 of: %d calculated, max 8\0A\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"cache-size\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"cache-sets\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"cache-block-size\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"cache-line-size\00", align 1
@.str.55 = private unnamed_addr constant [81 x i8] c"\014L2C OF: no cache block/line size given: falling back to default size %d bytes\0A\00", align 1
@.str.56 = private unnamed_addr constant [88 x i8] c"\014L2C OF: DT supplied line size %d bytes does not match hardware line size of %d bytes\0A\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"\013L2C OF: set size %dKB is too large\0A\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"\016L2C OF: override cache size: %d bytes (%dKB)\0A\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"\016L2C OF: override line size: %d bytes\0A\00", align 1
@.str.60 = private unnamed_addr constant [46 x i8] c"\016L2C OF: override way size: %d bytes (%dKB)\0A\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"\016L2C OF: override associativity: %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [54 x i8] c"\013L2C OF: cache way size illegal: %dKB is not mapped\0A\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"arm,filter-ranges\00", align 1
@.str.64 = private unnamed_addr constant [69 x i8] c"\013L2C-310 OF cache associativity %d invalid, only 8 or 16 permitted\0A\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"arm,early-bresp-disable\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"arm,full-line-zero-disable\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"arm,double-linefill\00", align 1
@.str.68 = private unnamed_addr constant [60 x i8] c"\013L2C-310 OF arm,double-linefill property value is missing\0A\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"arm,double-linefill-incr\00", align 1
@.str.70 = private unnamed_addr constant [65 x i8] c"\013L2C-310 OF arm,double-linefill-incr property value is missing\0A\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"arm,double-linefill-wrap\00", align 1
@.str.72 = private unnamed_addr constant [65 x i8] c"\013L2C-310 OF arm,double-linefill-wrap property value is missing\0A\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"arm,prefetch-drop\00", align 1
@.str.74 = private unnamed_addr constant [58 x i8] c"\013L2C-310 OF arm,prefetch-drop property value is missing\0A\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"arm,prefetch-offset\00", align 1
@.str.76 = private unnamed_addr constant [60 x i8] c"\013L2C-310 OF arm,prefetch-offset property value is missing\0A\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"prefetch-data\00", align 1
@.str.78 = private unnamed_addr constant [54 x i8] c"\013L2C-310 OF prefetch-data property value is missing\0A\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"prefetch-instr\00", align 1
@.str.80 = private unnamed_addr constant [55 x i8] c"\013L2C-310 OF prefetch-instr property value is missing\0A\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"arm,dynamic-clock-gating\00", align 1
@.str.82 = private unnamed_addr constant [72 x i8] c"\013L2C-310 OF dynamic-clock-gating property value is missing or invalid\0A\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"arm,standby-mode\00", align 1
@.str.84 = private unnamed_addr constant [64 x i8] c"\013L2C-310 OF standby-mode property value is missing or invalid\0A\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"BCM-L2C-310\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"Aurora\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"cache-id-part\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"wt-override\00", align 1
@l2_wt_override = internal unnamed_addr global i32 0, align 4
@.str.89 = private unnamed_addr constant [19 x i8] c"marvell,ecc-enable\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"Tauros3\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"L2C-310 Coherent\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @l2x0_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  store ptr %0, ptr @l2x0_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #10, !srcloc !8
  %5 = and i32 %4, 960
  %6 = icmp eq i32 %5, 128
  %7 = select i1 %6, ptr @l2c220_data, ptr @l2c210_data
  %8 = icmp eq i32 %5, 192
  %9 = select i1 %8, ptr @l2c310_init_fns, ptr %7
  %10 = getelementptr inbounds %struct.l2c_init_data, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr @l2x0_base, align 4
  tail call void %11(ptr noundef %14) #10
  br label %15

15:                                               ; preds = %13, %3
  %16 = tail call fastcc i32 @__l2c_init(ptr noundef nonnull %9, i32 noundef %1, i32 noundef %2, i32 noundef %4, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @__l2c_init(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 section ".init.text" {
  %6 = alloca %struct.outer_cache_fns, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #10
  %7 = tail call ptr @kmemdup(ptr noundef %0, i32 noundef 72, i32 noundef 3264) #10
  store ptr %7, ptr @l2x0_data, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %99, label %9

9:                                                ; preds = %5
  %10 = and i32 %2, %1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  br label %14

14:                                               ; preds = %12, %9
  %15 = load ptr, ptr @l2x0_base, align 4
  %16 = getelementptr i8, ptr %15, i32 260
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !8
  %18 = and i32 %17, %2
  %19 = or i32 %18, %1
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %17, i32 noundef %19) #12
  br label %23

23:                                               ; preds = %21, %14
  %24 = and i32 %3, 960
  %25 = add nsw i32 %24, -64
  %26 = lshr exact i32 %25, 6
  switch i32 %26, label %47 [
    i32 2, label %27
    i32 0, label %38
    i32 1, label %38
    i32 3, label %41
  ]

27:                                               ; preds = %23
  %28 = xor i32 %2, -1
  %29 = or i32 %28, %1
  %30 = and i32 %29, 983040
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #12
  br label %34

34:                                               ; preds = %32, %27
  %35 = and i32 %19, 65536
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 8, i32 16
  br label %47

38:                                               ; preds = %23, %23
  %39 = lshr i32 %19, 13
  %40 = and i32 %39, 15
  br label %47

41:                                               ; preds = %23
  %42 = lshr i32 %19, 13
  %43 = and i32 %42, 15
  %44 = add nuw nsw i32 %43, 1
  %45 = lshr i32 %44, 2
  %46 = shl nuw nsw i32 2, %45
  br label %47

47:                                               ; preds = %41, %38, %34, %23
  %48 = phi i32 [ %46, %41 ], [ %40, %38 ], [ %37, %34 ], [ 8, %23 ]
  %49 = shl nsw i32 -1, %48
  %50 = xor i32 %49, -1
  store i32 %50, ptr @l2x0_way_mask, align 4
  %51 = lshr i32 %19, 17
  %52 = and i32 %51, 7
  %53 = getelementptr inbounds %struct.l2c_init_data, ptr %0, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = shl i32 %54, %52
  %56 = mul i32 %55, %48
  store i32 %56, ptr @l2x0_size, align 4
  %57 = getelementptr inbounds %struct.l2c_init_data, ptr %0, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %57, i32 28, i1 false)
  %58 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %59 = getelementptr inbounds %struct.outer_cache_fns, ptr %6, i32 0, i32 7
  store ptr %58, ptr %59, align 4
  %60 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 8), align 4
  %61 = getelementptr inbounds %struct.outer_cache_fns, ptr %6, i32 0, i32 8
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.l2c_init_data, ptr %0, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %47
  %66 = load ptr, ptr @l2x0_base, align 4
  call void %63(ptr noundef %66, i32 noundef %3, ptr noundef nonnull %6) #10
  br label %67

67:                                               ; preds = %65, %47
  br i1 %4, label %68, label %71

68:                                               ; preds = %67
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  %70 = getelementptr inbounds %struct.outer_cache_fns, ptr %6, i32 0, i32 5
  store ptr null, ptr %70, align 4
  br label %71

71:                                               ; preds = %68, %67
  %72 = load ptr, ptr @l2x0_base, align 4
  %73 = getelementptr i8, ptr %72, i32 256
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #10, !srcloc !8
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  store i32 %19, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %78 = getelementptr inbounds %struct.l2c_init_data, ptr %0, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr @l2x0_base, align 4
  %81 = getelementptr inbounds %struct.l2c_init_data, ptr %0, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  call void %79(ptr noundef %80, i32 noundef %82) #10
  br label %83

83:                                               ; preds = %77, %71
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) @outer_cache, ptr noundef nonnull align 4 dereferenceable(36) %6, i32 36, i1 false)
  %84 = getelementptr inbounds %struct.l2c_init_data, ptr %0, i32 0, i32 6
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr @l2x0_base, align 4
  call void %85(ptr noundef %88) #10
  br label %89

89:                                               ; preds = %87, %83
  %90 = load ptr, ptr @l2x0_base, align 4
  %91 = getelementptr i8, ptr %90, i32 260
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #10, !srcloc !8
  %93 = load ptr, ptr %0, align 4
  %94 = load i32, ptr @l2x0_size, align 4
  %95 = lshr i32 %94, 10
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %93, i32 noundef %48, i32 noundef %95) #12
  %97 = load ptr, ptr %0, align 4
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %97, i32 noundef %3, i32 noundef %92) #12
  br label %99

99:                                               ; preds = %89, %5
  %100 = phi i32 [ 0, %89 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #10
  ret i32 %100
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @l2x0_of_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 2, ptr %6, align 4
  %7 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @l2x0_ids, ptr noundef null) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %92, label %9

9:                                                ; preds = %2
  %10 = call i32 @of_address_to_resource(ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull %5) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %92

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 1, %13
  %17 = add i32 %16, %15
  %18 = call ptr @ioremap(i32 noundef %13, i32 noundef %17) #10
  store ptr %18, ptr @l2x0_base, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %92, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr %5, align 4
  store i32 %21, ptr @l2x0_saved_regs, align 4
  %22 = call ptr @of_match_node(ptr noundef nonnull @l2x0_ids, ptr noundef nonnull %7) #10
  %23 = getelementptr inbounds %struct.of_device_id, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @of_device_is_compatible(ptr noundef nonnull %7, ptr noundef nonnull @.str) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef null) #10
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr %24, ptr @of_l2c310_coherent_data
  br label %31

31:                                               ; preds = %27, %20
  %32 = phi ptr [ %24, %20 ], [ %30, %27 ]
  %33 = load ptr, ptr @l2x0_base, align 4
  %34 = getelementptr i8, ptr %33, i32 260
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !8
  %36 = and i32 %35, %1
  %37 = or i32 %36, %0
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %35, i32 noundef %37) #12
  br label %47

41:                                               ; preds = %31
  %42 = icmp ne i32 %1, -1
  %43 = icmp ne i32 %0, 0
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %47

47:                                               ; preds = %45, %41, %39
  %48 = call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, ptr noundef null) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %52

52:                                               ; preds = %50, %47
  %53 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.6, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #10
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, ptr %6, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %62

62:                                               ; preds = %60, %57
  %63 = call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.9, ptr noundef null) #10
  %64 = icmp ne ptr %63, null
  %65 = getelementptr inbounds %struct.l2c_init_data, ptr %32, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr @l2x0_base, align 4
  call void %66(ptr noundef %69) #10
  br label %70

70:                                               ; preds = %68, %62
  %71 = load ptr, ptr @l2x0_base, align 4
  %72 = getelementptr i8, ptr %71, i32 256
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #10, !srcloc !8
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.l2c_init_data, ptr %32, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call void %78(ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  br label %81

81:                                               ; preds = %80, %76, %70
  %82 = load i32, ptr @cache_id_part_number_from_dt, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load ptr, ptr @l2x0_base, align 4
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #10, !srcloc !8
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i32 [ %86, %84 ], [ %82, %81 ]
  %89 = load i32, ptr %3, align 4
  %90 = load i32, ptr %4, align 4
  %91 = call fastcc i32 @__l2c_init(ptr noundef %32, i32 noundef %89, i32 noundef %90, i32 noundef %88, i1 noundef zeroext %64) #11
  br label %92

92:                                               ; preds = %87, %12, %9, %2
  %93 = phi i32 [ %91, %87 ], [ -19, %2 ], [ -19, %9 ], [ -12, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #10
  ret i32 %93
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c_enable(ptr noundef %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 8), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void %3(ptr noundef nonnull @l2x0_saved_regs) #10
  br label %10

6:                                                ; preds = %2
  %7 = load ptr, ptr @l2x0_data, align 4
  %8 = getelementptr inbounds %struct.l2c_init_data, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0) #10
  br label %10

10:                                               ; preds = %6, %5
  %11 = load ptr, ptr @l2x0_data, align 4
  %12 = getelementptr inbounds %struct.l2c_init_data, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0, i32 noundef %1) #10
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !10
  %15 = getelementptr i8, ptr %0, i32 1916
  %16 = load i32, ptr @l2x0_way_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %16) #10, !srcloc !11
  %17 = load i32, ptr @l2x0_way_mask, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !8
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %21, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !8
  %23 = and i32 %22, %17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21, %10
  %26 = load i32, ptr @sync_reg_offset, align 4
  %27 = getelementptr i8, ptr %0, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #10, !srcloc !11
  %28 = load i32, ptr @sync_reg_offset, align 4
  %29 = getelementptr i8, ptr %0, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !8
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %33, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !8
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %33

37:                                               ; preds = %33, %25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #10, !srcloc !14
  %38 = getelementptr i8, ptr %0, i32 256
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #10, !srcloc !8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void %42(i32 noundef 1, i32 noundef 256) #10
  br label %46

45:                                               ; preds = %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 1) #10, !srcloc !11
  br label %46

46:                                               ; preds = %45, %44, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c_save(ptr nocapture noundef readnone %0) #5 {
  %2 = load ptr, ptr @l2x0_base, align 4
  %3 = getelementptr i8, ptr %2, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  store i32 %4, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c_configure(ptr noundef %0) #5 {
  %2 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %0, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %5 = icmp eq i32 %4, %2
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void %7(i32 noundef %2, i32 noundef 260) #10
  br label %11

10:                                               ; preds = %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %2) #10, !srcloc !11
  br label %11

11:                                               ; preds = %10, %9, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c_unlock(ptr noundef %0, i32 noundef %1) #6 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 2304
  %6 = getelementptr i8, ptr %0, i32 2308
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ 0, %4 ], [ %12, %7 ]
  %9 = shl i32 %8, 3
  %10 = getelementptr i8, ptr %5, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #10, !srcloc !11
  %11 = getelementptr i8, ptr %6, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #10, !srcloc !11
  %12 = add nuw i32 %8, 1
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c210_inv_range(i32 noundef %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr @l2x0_base, align 4
  %4 = and i32 %0, 31
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = and i32 %0, -32
  %8 = getelementptr i8, ptr %3, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #10, !srcloc !11
  %9 = add i32 %7, 32
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ %0, %2 ]
  %12 = and i32 %1, 31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = and i32 %1, -32
  %16 = getelementptr i8, ptr %3, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #10, !srcloc !11
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i32 [ %15, %14 ], [ %1, %10 ]
  %19 = getelementptr i8, ptr %3, i32 1904
  %20 = icmp ult i32 %11, %18
  br i1 %20, label %21, label %25

21:                                               ; preds = %21, %17
  %22 = phi i32 [ %23, %21 ], [ %11, %17 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %22) #10, !srcloc !11
  %23 = add i32 %22, 32
  %24 = icmp ult i32 %23, %18
  br i1 %24, label %21, label %25

25:                                               ; preds = %21, %17
  %26 = load i32, ptr @sync_reg_offset, align 4
  %27 = getelementptr i8, ptr %3, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c210_clean_range(i32 noundef %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr @l2x0_base, align 4
  %4 = and i32 %0, -32
  %5 = getelementptr i8, ptr %3, i32 1968
  %6 = icmp ult i32 %4, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %7, %2
  %8 = phi i32 [ %9, %7 ], [ %4, %2 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %8) #10, !srcloc !11
  %9 = add i32 %8, 32
  %10 = icmp ult i32 %9, %1
  br i1 %10, label %7, label %11

11:                                               ; preds = %7, %2
  %12 = load i32, ptr @sync_reg_offset, align 4
  %13 = getelementptr i8, ptr %3, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c210_flush_range(i32 noundef %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr @l2x0_base, align 4
  %4 = and i32 %0, -32
  %5 = getelementptr i8, ptr %3, i32 2032
  %6 = icmp ult i32 %4, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %7, %2
  %8 = phi i32 [ %9, %7 ], [ %4, %2 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %8) #10, !srcloc !11
  %9 = add i32 %8, 32
  %10 = icmp ult i32 %9, %1
  br i1 %10, label %7, label %11

11:                                               ; preds = %7, %2
  %12 = load i32, ptr @sync_reg_offset, align 4
  %13 = getelementptr i8, ptr %3, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c210_flush_all() #5 {
  %1 = load ptr, ptr @l2x0_base, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !15
  %3 = and i32 %2, 128
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !16

5:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-l2x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 228, 0\0A.popsection", ""() #10, !srcloc !17
  unreachable

6:                                                ; preds = %0
  %7 = getelementptr i8, ptr %1, i32 2044
  %8 = load i32, ptr @l2x0_way_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %8) #10, !srcloc !11
  %9 = load i32, ptr @l2x0_way_mask, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !8
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %13, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !8
  %15 = and i32 %14, %9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13

17:                                               ; preds = %13, %6
  %18 = load i32, ptr @sync_reg_offset, align 4
  %19 = getelementptr i8, ptr %1, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c_disable() #5 {
  %1 = load ptr, ptr @l2x0_base, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3), align 4
  tail call void %2() #10
  %3 = getelementptr i8, ptr %1, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void %7(i32 noundef 0, i32 noundef 256) #10
  br label %11

10:                                               ; preds = %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #10, !srcloc !11
  br label %11

11:                                               ; preds = %10, %9, %0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c210_sync() #5 {
  %1 = load ptr, ptr @l2x0_base, align 4
  %2 = load i32, ptr @sync_reg_offset, align 4
  %3 = getelementptr i8, ptr %1, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c_resume() #5 {
  %1 = load ptr, ptr @l2x0_base, align 4
  %2 = getelementptr i8, ptr %1, i32 256
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !8
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load ptr, ptr @l2x0_data, align 4
  %8 = getelementptr inbounds %struct.l2c_init_data, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  tail call void @l2c_enable(ptr noundef %1, i32 noundef %9)
  br label %10

10:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c220_enable(ptr noundef %0, i32 noundef %1) #5 {
  %3 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %4 = or i32 %3, 67108864
  store i32 %4, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  tail call void @l2c_enable(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c220_unlock(ptr noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr i8, ptr %0, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %5 = and i32 %4, 67108864
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i32 %1, 0
  %8 = or i1 %7, %6
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 2304
  %11 = getelementptr i8, ptr %0, i32 2308
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i32 [ 0, %9 ], [ %17, %12 ]
  %14 = shl i32 %13, 3
  %15 = getelementptr i8, ptr %10, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #10, !srcloc !11
  %16 = getelementptr i8, ptr %11, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #10, !srcloc !11
  %17 = add nuw i32 %13, 1
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %12

19:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c220_inv_range(i32 noundef %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr @l2x0_base, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  %5 = or i32 %1, %0
  %6 = and i32 %5, 31
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = and i32 %0, 31
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = and i32 %0, -32
  %13 = getelementptr i8, ptr %3, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #10, !srcloc !11
  %14 = add i32 %12, 32
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %14, %11 ], [ %0, %8 ]
  %17 = and i32 %1, 31
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = and i32 %1, -32
  %21 = getelementptr i8, ptr %3, i32 2032
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !8
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %25, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %25

29:                                               ; preds = %25, %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #10, !srcloc !11
  br label %30

30:                                               ; preds = %29, %15, %2
  %31 = phi i32 [ %20, %29 ], [ %1, %15 ], [ %1, %2 ]
  %32 = phi i32 [ %16, %29 ], [ %16, %15 ], [ %0, %2 ]
  %33 = getelementptr i8, ptr %3, i32 1904
  %34 = icmp ult i32 %32, %31
  br i1 %34, label %35, label %62

35:                                               ; preds = %59, %30
  %36 = phi i32 [ %55, %59 ], [ %32, %30 ]
  %37 = phi i32 [ %60, %59 ], [ %4, %30 ]
  %38 = sub i32 %31, %36
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 4096) #10
  %40 = add i32 %39, %36
  %41 = icmp ult i32 %36, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %51, %35
  %43 = phi i32 [ %52, %51 ], [ %36, %35 ]
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #10, !srcloc !8
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %47, %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #10, !srcloc !8
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %47

51:                                               ; preds = %47, %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %43) #10, !srcloc !11
  %52 = add i32 %43, 32
  %53 = icmp ult i32 %52, %40
  br i1 %53, label %42, label %54

54:                                               ; preds = %51, %35
  %55 = phi i32 [ %36, %35 ], [ %52, %51 ]
  %56 = icmp ult i32 %40, %31
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %37) #10
  %58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i32 [ %58, %57 ], [ %37, %54 ]
  %61 = icmp ult i32 %55, %31
  br i1 %61, label %35, label %62

62:                                               ; preds = %59, %30
  %63 = phi i32 [ %4, %30 ], [ %60, %59 ]
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #10, !srcloc !8
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %67, %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #10, !srcloc !8
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %67

71:                                               ; preds = %67, %62
  %72 = getelementptr i8, ptr %3, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 0) #10, !srcloc !11
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #10, !srcloc !8
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %76, %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #10, !srcloc !8
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %76

80:                                               ; preds = %76, %71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %63) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c220_clean_range(i32 noundef %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr @l2x0_base, align 4
  %4 = and i32 %0, -32
  %5 = sub i32 %1, %4
  %6 = load i32, ptr @l2x0_size, align 4
  %7 = icmp ult i32 %5, %6
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  br i1 %7, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %3, i32 1980
  %11 = load i32, ptr @l2x0_way_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %11) #10, !srcloc !11
  %12 = load i32, ptr @l2x0_way_mask, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !8
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %16, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !8
  %18 = and i32 %17, %12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %9
  %21 = getelementptr i8, ptr %3, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #10, !srcloc !11
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !8
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %78, label %25

25:                                               ; preds = %25, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %78, label %25

29:                                               ; preds = %2
  %30 = getelementptr i8, ptr %3, i32 1968
  %31 = icmp ult i32 %4, %1
  br i1 %31, label %32, label %59

32:                                               ; preds = %56, %29
  %33 = phi i32 [ %52, %56 ], [ %4, %29 ]
  %34 = phi i32 [ %57, %56 ], [ %8, %29 ]
  %35 = sub i32 %1, %33
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 4096) #10
  %37 = add i32 %36, %33
  %38 = icmp ult i32 %33, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %48, %32
  %40 = phi i32 [ %49, %48 ], [ %33, %32 ]
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !8
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %44, %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !8
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %44

48:                                               ; preds = %44, %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %40) #10, !srcloc !11
  %49 = add i32 %40, 32
  %50 = icmp ult i32 %49, %37
  br i1 %50, label %39, label %51

51:                                               ; preds = %48, %32
  %52 = phi i32 [ %33, %32 ], [ %49, %48 ]
  %53 = icmp ult i32 %37, %1
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %34) #10
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i32 [ %55, %54 ], [ %34, %51 ]
  %58 = icmp ult i32 %52, %1
  br i1 %58, label %32, label %59

59:                                               ; preds = %56, %29
  %60 = phi i32 [ %8, %29 ], [ %57, %56 ]
  %61 = getelementptr i8, ptr %3, i32 2032
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #10, !srcloc !8
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %65, %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #10, !srcloc !8
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %65

69:                                               ; preds = %65, %59
  %70 = getelementptr i8, ptr %3, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #10, !srcloc !11
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #10, !srcloc !8
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %74, %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #10, !srcloc !8
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %74

78:                                               ; preds = %74, %69, %25, %20
  %79 = phi i32 [ %8, %20 ], [ %60, %69 ], [ %60, %74 ], [ %8, %25 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %79) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c220_flush_range(i32 noundef %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr @l2x0_base, align 4
  %4 = and i32 %0, -32
  %5 = sub i32 %1, %4
  %6 = load i32, ptr @l2x0_size, align 4
  %7 = icmp ult i32 %5, %6
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  br i1 %7, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %3, i32 2044
  %11 = load i32, ptr @l2x0_way_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %11) #10, !srcloc !11
  %12 = load i32, ptr @l2x0_way_mask, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !8
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %16, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !8
  %18 = and i32 %17, %12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %9
  %21 = getelementptr i8, ptr %3, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #10, !srcloc !11
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !8
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %77, label %25

25:                                               ; preds = %25, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %77, label %25

29:                                               ; preds = %2
  %30 = getelementptr i8, ptr %3, i32 2032
  %31 = icmp ult i32 %4, %1
  br i1 %31, label %32, label %59

32:                                               ; preds = %56, %29
  %33 = phi i32 [ %52, %56 ], [ %4, %29 ]
  %34 = phi i32 [ %57, %56 ], [ %8, %29 ]
  %35 = sub i32 %1, %33
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 4096) #10
  %37 = add i32 %36, %33
  %38 = icmp ult i32 %33, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %48, %32
  %40 = phi i32 [ %49, %48 ], [ %33, %32 ]
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !8
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %44, %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !8
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %44

48:                                               ; preds = %44, %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %40) #10, !srcloc !11
  %49 = add i32 %40, 32
  %50 = icmp ult i32 %49, %37
  br i1 %50, label %39, label %51

51:                                               ; preds = %48, %32
  %52 = phi i32 [ %33, %32 ], [ %49, %48 ]
  %53 = icmp ult i32 %37, %1
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %34) #10
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i32 [ %55, %54 ], [ %34, %51 ]
  %58 = icmp ult i32 %52, %1
  br i1 %58, label %32, label %59

59:                                               ; preds = %56, %29
  %60 = phi i32 [ %8, %29 ], [ %57, %56 ]
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !8
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %64, %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !8
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %64

68:                                               ; preds = %64, %59
  %69 = getelementptr i8, ptr %3, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #10, !srcloc !11
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #10, !srcloc !8
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %73, %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #10, !srcloc !8
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %73

77:                                               ; preds = %73, %68, %25, %20
  %78 = phi i32 [ %8, %20 ], [ %60, %68 ], [ %60, %73 ], [ %8, %25 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %78) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c220_flush_all() #5 {
  %1 = load ptr, ptr @l2x0_base, align 4
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  %3 = getelementptr i8, ptr %1, i32 2044
  %4 = load i32, ptr @l2x0_way_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %4) #10, !srcloc !11
  %5 = load i32, ptr @l2x0_way_mask, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %7 = and i32 %6, %5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %11 = and i32 %10, %5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %0
  %14 = getelementptr i8, ptr %1, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #10, !srcloc !11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !8
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %18, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c220_sync() #5 {
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  %2 = load ptr, ptr @l2x0_base, align 4
  %3 = getelementptr i8, ptr %2, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #10, !srcloc !11
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @l2c310_enable(ptr noundef %0, i32 noundef %1) #0 section ".init.text" {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #10, !srcloc !8
  %4 = and i32 %3, 63
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #13, !srcloc !19
  %6 = and i32 %5, -16711696
  %7 = icmp eq i32 %6, 1090568336
  %8 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %9 = icmp ugt i32 %4, 3
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  br i1 %7, label %11, label %16

11:                                               ; preds = %10
  %12 = load i1, ptr @l2x0_bresp_disable, align 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = or i32 %8, 1073741824
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %24

16:                                               ; preds = %11, %10
  %17 = and i32 %8, 1073741824
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  %21 = and i32 %8, -1073741825
  br label %22

22:                                               ; preds = %19, %16, %2
  %23 = phi i32 [ %21, %19 ], [ %8, %16 ], [ %8, %2 ]
  br i1 %7, label %24, label %52

24:                                               ; preds = %22, %13
  %25 = phi i32 [ %14, %13 ], [ %23, %22 ]
  %26 = load i1, ptr @l2x0_flz_disable, align 1
  br i1 %26, label %52, label %27

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %0, i32 260
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #10, !srcloc !8
  %30 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1\09@ get AUXCR", "=r"() #13, !srcloc !20
  %31 = and i32 %30, 8
  %32 = icmp ne i32 %31, 0
  %33 = and i32 %29, 1
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %38

38:                                               ; preds = %36, %27
  %39 = and i32 %25, 1
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = select i1 %41, i1 true, i1 %32
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %45

45:                                               ; preds = %43, %38
  %46 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %47 = icmp ne ptr %46, null
  %48 = select i1 %40, i1 true, i1 %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = or i32 %25, 1
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %59

52:                                               ; preds = %24, %22
  %53 = phi i32 [ %25, %24 ], [ %23, %22 ]
  %54 = and i32 %53, 1073741825
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  %58 = and i32 %53, -1073741826
  br label %59

59:                                               ; preds = %56, %52, %49, %45
  %60 = phi i32 [ %58, %56 ], [ %53, %52 ], [ %25, %45 ], [ %50, %49 ]
  %61 = or i32 %60, 67108864
  store i32 %61, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  tail call void @l2c_enable(ptr noundef %0, i32 noundef %1)
  %62 = getelementptr i8, ptr %0, i32 260
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #10, !srcloc !8
  %64 = and i32 %63, 805306368
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %59
  %67 = getelementptr i8, ptr %0, i32 3936
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #10, !srcloc !8
  %69 = and i32 %63, 536870912
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, ptr @.str.21, ptr @.str.20
  %72 = and i32 %63, 268435456
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, ptr @.str.21, ptr @.str.22
  %75 = and i32 %68, 31
  %76 = add nuw nsw i32 %75, 1
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %71, ptr noundef nonnull %74, i32 noundef %76) #12
  br label %78

78:                                               ; preds = %66, %59
  %79 = icmp ugt i32 %4, 4
  br i1 %79, label %80, label %90

80:                                               ; preds = %78
  %81 = getelementptr i8, ptr %0, i32 3968
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #10, !srcloc !8
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, ptr @.str.25, ptr @.str.24
  %86 = and i32 %82, 1
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, ptr @.str.25, ptr @.str.24
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull %85, ptr noundef nonnull %88) #12
  br label %90

90:                                               ; preds = %80, %78
  %91 = and i32 %63, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = tail call i32 @__cpuhp_setup_state(i32 noundef 120, ptr noundef nonnull @.str.26, i1 noundef zeroext true, ptr noundef nonnull @l2c310_starting_cpu, ptr noundef nonnull @l2c310_dying_cpu, i1 noundef zeroext false) #10
  br label %95

95:                                               ; preds = %93, %90
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @l2c310_fixup(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef %2) #0 section ".init.text" {
  %4 = alloca [8 x ptr], align 4
  %5 = and i32 %1, 63
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !9
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, @l2c210_inv_range
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  store ptr @l2c310_inv_range_erratum, ptr %2, align 4
  %11 = getelementptr inbounds %struct.outer_cache_fns, ptr %2, i32 0, i32 2
  store ptr @l2c310_flush_range_erratum, ptr %11, align 4
  store ptr @.str.27, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = phi i32 [ 1, %10 ], [ 0, %7 ], [ 0, %3 ]
  %14 = and i32 %1, 62
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.outer_cache_fns, ptr %2, i32 0, i32 3
  store ptr @l2c310_flush_all_erratum, ptr %17, align 4
  %18 = add nuw nsw i32 %13, 1
  %19 = getelementptr [8 x ptr], ptr %4, i32 0, i32 %13
  store ptr @.str.28, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %18, %16 ], [ %13, %12 ]
  %22 = add nsw i32 %5, -5
  %23 = icmp ult i32 %22, 3
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %26 = and i32 %25, 1073741824
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = and i32 %25, -1073741825
  store i32 %29, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %30 = add nuw nsw i32 %21, 1
  %31 = getelementptr [8 x ptr], ptr %4, i32 0, i32 %21
  store ptr @.str.29, ptr %31, align 4
  br label %32

32:                                               ; preds = %28, %24, %20
  %33 = phi i32 [ %21, %20 ], [ %30, %28 ], [ %21, %24 ]
  %34 = icmp eq i32 %5, 5
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  store i32 1856, ptr @sync_reg_offset, align 4
  %36 = add nuw nsw i32 %33, 1
  %37 = getelementptr [8 x ptr], ptr %4, i32 0, i32 %33
  store ptr @.str.30, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %36, %35 ], [ %33, %32 ]
  %40 = getelementptr [8 x ptr], ptr %4, i32 0, i32 %39
  store ptr @.str.31, ptr %40, align 4
  %41 = icmp eq i32 %39, 0
  %42 = select i1 %41, ptr @.str.34, ptr @.str.33
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %42) #12
  br label %44

44:                                               ; preds = %44, %38
  %45 = phi i32 [ 0, %38 ], [ %49, %44 ]
  %46 = getelementptr [8 x ptr], ptr %4, i32 0, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %47) #12
  %49 = add nuw nsw i32 %45, 1
  %50 = icmp eq i32 %45, %39
  br i1 %50, label %51, label %44

51:                                               ; preds = %44
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @l2c310_save(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr @l2x0_base, align 4
  %3 = getelementptr i8, ptr %2, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  store i32 %4, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %5 = getelementptr i8, ptr %0, i32 264
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !8
  store i32 %6, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 2), align 4
  %7 = getelementptr i8, ptr %0, i32 268
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !8
  store i32 %8, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 3), align 4
  %9 = getelementptr i8, ptr %0, i32 3076
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !8
  store i32 %10, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 5), align 4
  %11 = getelementptr i8, ptr %0, i32 3072
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !8
  store i32 %12, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 4), align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #10, !srcloc !8
  %14 = and i32 %13, 63
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = getelementptr i8, ptr %0, i32 3936
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !8
  store i32 %18, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %19 = icmp eq i32 %14, 4
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 3968
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !8
  store i32 %22, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 7), align 4
  br label %23

23:                                               ; preds = %20, %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c310_configure(ptr noundef %0) #5 {
  %2 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %0, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %5 = icmp eq i32 %4, %2
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void %7(i32 noundef %2, i32 noundef 260) #10
  br label %11

10:                                               ; preds = %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %2) #10, !srcloc !11
  br label %11

11:                                               ; preds = %10, %9, %1
  %12 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 2), align 4
  %13 = getelementptr i8, ptr %0, i32 264
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !8
  %15 = icmp eq i32 %14, %12
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void %17(i32 noundef %12, i32 noundef 264) #10
  br label %21

20:                                               ; preds = %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #10, !srcloc !11
  br label %21

21:                                               ; preds = %20, %19, %11
  %22 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 3), align 4
  %23 = getelementptr i8, ptr %0, i32 268
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !8
  %25 = icmp eq i32 %24, %22
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void %27(i32 noundef %22, i32 noundef 268) #10
  br label %31

30:                                               ; preds = %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #10, !srcloc !11
  br label %31

31:                                               ; preds = %30, %29, %21
  %32 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 5), align 4
  %33 = getelementptr i8, ptr %0, i32 3076
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #10, !srcloc !8
  %35 = icmp eq i32 %34, %32
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void %37(i32 noundef %32, i32 noundef 3076) #10
  br label %41

40:                                               ; preds = %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %32) #10, !srcloc !11
  br label %41

41:                                               ; preds = %40, %39, %31
  %42 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 4), align 4
  %43 = getelementptr i8, ptr %0, i32 3072
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !8
  %45 = icmp eq i32 %44, %42
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void %47(i32 noundef %42, i32 noundef 3072) #10
  br label %51

50:                                               ; preds = %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %42) #10, !srcloc !11
  br label %51

51:                                               ; preds = %50, %49, %41
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #10, !srcloc !8
  %53 = and i32 %52, 63
  %54 = icmp ugt i32 %53, 3
  br i1 %54, label %55, label %77

55:                                               ; preds = %51
  %56 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %57 = getelementptr i8, ptr %0, i32 3936
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #10, !srcloc !8
  %59 = icmp eq i32 %58, %56
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void %61(i32 noundef %56, i32 noundef 3936) #10
  br label %65

64:                                               ; preds = %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %56) #10, !srcloc !11
  br label %65

65:                                               ; preds = %64, %63, %55
  %66 = icmp ugt i32 %53, 4
  br i1 %66, label %67, label %77

67:                                               ; preds = %65
  %68 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 7), align 4
  %69 = getelementptr i8, ptr %0, i32 3968
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #10, !srcloc !8
  %71 = icmp eq i32 %70, %68
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call void %73(i32 noundef %68, i32 noundef 3968) #10
  br label %77

76:                                               ; preds = %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %68) #10, !srcloc !11
  br label %77

77:                                               ; preds = %76, %75, %67, %65, %51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c310_unlock(ptr noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr i8, ptr %0, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %5 = and i32 %4, 67108864
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i32 %1, 0
  %8 = or i1 %7, %6
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 2304
  %11 = getelementptr i8, ptr %0, i32 2308
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i32 [ 0, %9 ], [ %17, %12 ]
  %14 = shl i32 %13, 3
  %15 = getelementptr i8, ptr %10, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #10, !srcloc !11
  %16 = getelementptr i8, ptr %11, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #10, !srcloc !11
  %17 = add nuw i32 %13, 1
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %12

19:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c310_disable() #5 {
  %1 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %2 = and i32 %1, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1\09@ get AUXCR", "=r"() #13, !srcloc !20
  %6 = and i32 %5, -15
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 1\09@ set AUXCR", "r"(i32 %6) #10, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !22
  br label %7

7:                                                ; preds = %4, %0
  %8 = load ptr, ptr @l2x0_base, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3), align 4
  tail call void %9() #10
  %10 = getelementptr i8, ptr %8, i32 256
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void %14(i32 noundef 0, i32 noundef 256) #10
  br label %18

17:                                               ; preds = %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #10, !srcloc !11
  br label %18

18:                                               ; preds = %17, %16, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c310_resume() #5 {
  %1 = load ptr, ptr @l2x0_base, align 4
  %2 = getelementptr i8, ptr %1, i32 256
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !8
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load ptr, ptr @l2x0_data, align 4
  %8 = getelementptr inbounds %struct.l2c_init_data, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  tail call void @l2c_enable(ptr noundef %1, i32 noundef %9) #10
  br label %10

10:                                               ; preds = %6, %0
  %11 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1\09@ get AUXCR", "=r"() #13, !srcloc !20
  %16 = or i32 %15, 14
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 1\09@ set AUXCR", "r"(i32 %16) #10, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !22
  br label %17

17:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2c310_starting_cpu(i32 noundef %0) #5 {
  %2 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1\09@ get AUXCR", "=r"() #13, !srcloc !20
  %3 = or i32 %2, 14
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 1\09@ set AUXCR", "r"(i32 %3) #10, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2c310_dying_cpu(i32 noundef %0) #5 {
  %2 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1\09@ get AUXCR", "=r"() #13, !srcloc !20
  %3 = and i32 %2, -15
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 1\09@ set AUXCR", "r"(i32 %3) #10, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c310_inv_range_erratum(i32 noundef %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr @l2x0_base, align 4
  %4 = or i32 %1, %0
  %5 = and i32 %4, 31
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  %9 = getelementptr i8, ptr %3, i32 3904
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !8
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void %13(i32 noundef 3, i32 noundef 3904) #10
  br label %17

16:                                               ; preds = %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 3) #10, !srcloc !11
  br label %17

17:                                               ; preds = %16, %15, %7
  %18 = and i32 %0, 31
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = and i32 %0, -32
  %22 = getelementptr i8, ptr %3, i32 1968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #10, !srcloc !11
  %23 = getelementptr i8, ptr %3, i32 1904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #10, !srcloc !11
  %24 = add i32 %21, 32
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %24, %20 ], [ %0, %17 ]
  %27 = and i32 %1, 31
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = and i32 %1, -32
  %31 = getelementptr i8, ptr %3, i32 1968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #10, !srcloc !11
  %32 = getelementptr i8, ptr %3, i32 1904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #10, !srcloc !11
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i32 [ %30, %29 ], [ %1, %25 ]
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void %38(i32 noundef 0, i32 noundef 3904) #10
  br label %42

41:                                               ; preds = %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #10, !srcloc !11
  br label %42

42:                                               ; preds = %41, %40, %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %8) #10
  br label %43

43:                                               ; preds = %42, %2
  %44 = phi i32 [ %34, %42 ], [ %1, %2 ]
  %45 = phi i32 [ %26, %42 ], [ %0, %2 ]
  %46 = getelementptr i8, ptr %3, i32 1904
  %47 = icmp ult i32 %45, %44
  br i1 %47, label %48, label %52

48:                                               ; preds = %48, %43
  %49 = phi i32 [ %50, %48 ], [ %45, %43 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %49) #10, !srcloc !11
  %50 = add i32 %49, 32
  %51 = icmp ult i32 %50, %44
  br i1 %51, label %48, label %52

52:                                               ; preds = %48, %43
  %53 = load i32, ptr @sync_reg_offset, align 4
  %54 = getelementptr i8, ptr %3, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c310_flush_range_erratum(i32 noundef %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr @l2x0_base, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  %5 = icmp ult i32 %0, %1
  br i1 %5, label %6, label %45

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %3, i32 3904
  %8 = getelementptr i8, ptr %3, i32 1968
  %9 = getelementptr i8, ptr %3, i32 1904
  br label %10

10:                                               ; preds = %42, %6
  %11 = phi i32 [ %0, %6 ], [ %30, %42 ]
  %12 = phi i32 [ %4, %6 ], [ %43, %42 ]
  %13 = sub i32 %1, %11
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 4096)
  %15 = add i32 %14, %11
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !8
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %23, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void %19(i32 noundef 3, i32 noundef 3904) #10
  br label %23

22:                                               ; preds = %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 3) #10, !srcloc !11
  br label %23

23:                                               ; preds = %22, %21, %10
  %24 = icmp ult i32 %11, %15
  br i1 %24, label %25, label %29

25:                                               ; preds = %25, %23
  %26 = phi i32 [ %27, %25 ], [ %11, %23 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %26) #10, !srcloc !11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %26) #10, !srcloc !11
  %27 = add i32 %26, 32
  %28 = icmp ult i32 %27, %15
  br i1 %28, label %25, label %29

29:                                               ; preds = %25, %23
  %30 = phi i32 [ %11, %23 ], [ %27, %25 ]
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void %34(i32 noundef 0, i32 noundef 3904) #10
  br label %38

37:                                               ; preds = %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #10, !srcloc !11
  br label %38

38:                                               ; preds = %37, %36, %29
  %39 = icmp ult i32 %15, %1
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %12) #10
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %41, %40 ], [ %12, %38 ]
  %44 = icmp ult i32 %30, %1
  br i1 %44, label %10, label %45

45:                                               ; preds = %42, %2
  %46 = phi i32 [ %4, %2 ], [ %43, %42 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %46) #10
  %47 = load i32, ptr @sync_reg_offset, align 4
  %48 = getelementptr i8, ptr %3, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2c310_flush_all_erratum() #5 {
  %1 = load ptr, ptr @l2x0_base, align 4
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  %3 = getelementptr i8, ptr %1, i32 3904
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void %7(i32 noundef 3, i32 noundef 3904) #10
  br label %11

10:                                               ; preds = %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 3) #10, !srcloc !11
  br label %11

11:                                               ; preds = %10, %9, %0
  %12 = getelementptr i8, ptr %1, i32 2044
  %13 = load i32, ptr @l2x0_way_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %13) #10, !srcloc !11
  %14 = load i32, ptr @l2x0_way_mask, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !8
  %16 = and i32 %15, %14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %18, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !8
  %20 = and i32 %19, %14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18, %11
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void %26(i32 noundef 0, i32 noundef 3904) #10
  br label %30

29:                                               ; preds = %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #10, !srcloc !11
  br label %30

30:                                               ; preds = %29, %28, %22
  %31 = load i32, ptr @sync_reg_offset, align 4
  %32 = getelementptr i8, ptr %1, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #10, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @l2x0_of_parse(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 section ".init.text" {
  %4 = alloca [2 x i32], align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #10
  %9 = load i32, ptr %5, align 4
  %10 = icmp eq i32 %9, 0
  %11 = shl i32 %9, 6
  %12 = add i32 %11, -64
  %13 = select i1 %10, i32 0, i32 448
  %14 = select i1 %10, i32 0, i32 %12
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef nonnull %4, i32 noundef 2, i32 noundef 0) #10
  %16 = load i32, ptr %4, align 8
  %17 = icmp ne i32 %16, 0
  %18 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = select i1 %17, i1 %20, i1 false
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = or i32 %13, 63
  %24 = add i32 %16, -1
  %25 = shl i32 %19, 3
  %26 = add i32 %25, -8
  %27 = or i32 %14, %24
  %28 = or i32 %27, %26
  br label %29

29:                                               ; preds = %22, %3
  %30 = phi i32 [ %23, %22 ], [ %13, %3 ]
  %31 = phi i32 [ %28, %22 ], [ %14, %3 ]
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #10
  %33 = load i32, ptr %6, align 4
  %34 = icmp eq i32 %33, 0
  %35 = or i32 %30, 3584
  %36 = shl i32 %33, 9
  %37 = add i32 %36, -512
  %38 = select i1 %34, i32 %30, i32 %35
  %39 = select i1 %34, i32 0, i32 %37
  %40 = or i32 %39, %31
  %41 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef null) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = and i32 %38, -2097153
  %45 = or i32 %40, 2097152
  br label %51

46:                                               ; preds = %29
  %47 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef null) #10
  %48 = icmp eq ptr %47, null
  %49 = and i32 %38, -2097153
  %50 = select i1 %48, i32 %38, i32 %49
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i32 [ %44, %43 ], [ %50, %46 ]
  %53 = phi i32 [ %45, %43 ], [ %40, %46 ]
  %54 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef null) #10
  %55 = icmp eq ptr %54, null
  %56 = and i32 %52, -4194305
  %57 = or i32 %53, 4194304
  %58 = select i1 %55, i32 %52, i32 %56
  %59 = select i1 %55, i32 %53, i32 %57
  %60 = call fastcc i32 @l2x0_cache_size_of_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i32 noundef 262144) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %51
  %63 = load i32, ptr %7, align 4
  %64 = icmp ugt i32 %63, 8
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #12
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %63) #12
  br label %72

68:                                               ; preds = %62
  %69 = or i32 %58, 122880
  %70 = shl nuw nsw i32 %63, 13
  %71 = or i32 %70, %59
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i32 [ %58, %65 ], [ %69, %68 ]
  %74 = phi i32 [ %59, %65 ], [ %71, %68 ]
  %75 = xor i32 %73, -1
  %76 = load i32, ptr %1, align 4
  %77 = and i32 %76, %75
  %78 = or i32 %77, %74
  store i32 %78, ptr %1, align 4
  %79 = load i32, ptr %2, align 4
  %80 = and i32 %79, %75
  store i32 %80, ptr %2, align 4
  br label %81

81:                                               ; preds = %72, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @l2x0_cache_size_of_parse(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 section ".init.text" {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 0, ptr %9, align 4
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #10
  %11 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #10
  %12 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #10
  %13 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef nonnull %9, i32 noundef 1, i32 noundef 0) #10
  %14 = load i32, ptr %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = load i32, ptr %7, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %68

19:                                               ; preds = %5
  %20 = load i32, ptr %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, ptr %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 %23, ptr %9, align 4
  br label %28

26:                                               ; preds = %22
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef 32) #12
  store i32 32, ptr %9, align 4
  br label %34

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %23, %25 ], [ %20, %19 ]
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %29, i32 noundef 32) #12
  %33 = load i32, ptr %9, align 4
  br label %34

34:                                               ; preds = %31, %28, %26
  %35 = phi i32 [ 32, %26 ], [ %33, %31 ], [ 32, %28 ]
  %36 = load i32, ptr %7, align 4
  %37 = mul i32 %35, %36
  %38 = load i32, ptr %6, align 4
  %39 = udiv i32 %38, %37
  store i32 %39, ptr %3, align 4
  %40 = icmp ugt i32 %37, %4
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %37) #12
  br label %68

43:                                               ; preds = %34
  %44 = lshr i32 %38, 10
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %38, i32 noundef %44) #12
  %46 = load i32, ptr %9, align 4
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %46) #12
  %48 = lshr i32 %37, 10
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %37, i32 noundef %48) #12
  %50 = load i32, ptr %3, align 4
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %50) #12
  %52 = icmp ult i32 %37, 1024
  %53 = call i32 @llvm.ctlz.i32(i32 %48, i1 false) #10, !range !23
  %54 = sub nsw i32 31, %53
  %55 = select i1 %52, i32 -1, i32 %54
  %56 = add nsw i32 %55, -10
  %57 = icmp ult i32 %56, -6
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %37) #12
  br label %68

60:                                               ; preds = %43
  %61 = shl nuw nsw i32 %55, 17
  %62 = add nsw i32 %61, -393216
  %63 = load i32, ptr %1, align 4
  %64 = and i32 %63, -917505
  %65 = or i32 %64, %62
  store i32 %65, ptr %1, align 4
  %66 = load i32, ptr %2, align 4
  %67 = and i32 %66, -917505
  store i32 %67, ptr %2, align 4
  br label %68

68:                                               ; preds = %60, %58, %41, %5
  %69 = phi i32 [ -22, %41 ], [ -22, %58 ], [ 0, %60 ], [ -19, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @l2c310_of_parse(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 section ".init.text" {
  %4 = alloca [3 x i32], align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca [2 x i32], align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull %5, i32 noundef 3, i32 noundef 0) #10
  %10 = load i32, ptr %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %11, i1 %14, i1 false
  %16 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %15, i1 %18, i1 false
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = shl i32 %10, 4
  %22 = add i32 %21, -16
  %23 = shl i32 %13, 8
  %24 = add i32 %23, -256
  %25 = or i32 %24, %22
  %26 = add i32 %17, -1
  %27 = or i32 %25, %26
  store i32 %27, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 2), align 4
  br label %28

28:                                               ; preds = %20, %3
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef nonnull %4, i32 noundef 3, i32 noundef 0) #10
  %30 = load i32, ptr %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %31, i1 %34, i1 false
  %36 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %35, i1 %38, i1 false
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = shl i32 %30, 4
  %42 = add i32 %41, -16
  %43 = shl i32 %33, 8
  %44 = add i32 %43, -256
  %45 = or i32 %44, %42
  %46 = add i32 %37, -1
  %47 = or i32 %45, %46
  store i32 %47, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 3), align 4
  br label %48

48:                                               ; preds = %40, %28
  %49 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.63, ptr noundef nonnull %6, i32 noundef 2, i32 noundef 0) #10
  %50 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load i32, ptr %6, align 8
  %55 = add i32 %51, 1048575
  %56 = add i32 %55, %54
  %57 = and i32 %56, -1048576
  store i32 %57, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 5), align 4
  %58 = and i32 %54, -1048576
  %59 = or i32 %58, 1
  store i32 %59, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 4), align 4
  br label %60

60:                                               ; preds = %53, %48
  %61 = call fastcc i32 @l2x0_cache_size_of_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, i32 noundef 524288) #11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %60
  %64 = load i32, ptr %7, align 4
  switch i32 %64, label %76 [
    i32 16, label %65
    i32 8, label %71
  ]

65:                                               ; preds = %63
  %66 = load i32, ptr %1, align 4
  %67 = and i32 %66, -122881
  %68 = or i32 %67, 65536
  store i32 %68, ptr %1, align 4
  %69 = load i32, ptr %2, align 4
  %70 = and i32 %69, -122881
  store i32 %70, ptr %2, align 4
  br label %78

71:                                               ; preds = %63
  %72 = load i32, ptr %1, align 4
  %73 = and i32 %72, -122881
  store i32 %73, ptr %1, align 4
  %74 = load i32, ptr %2, align 4
  %75 = and i32 %74, -122881
  store i32 %75, ptr %2, align 4
  br label %78

76:                                               ; preds = %63
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %64) #12
  br label %78

78:                                               ; preds = %76, %71, %65, %60
  %79 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef null) #10
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %1, align 4
  %83 = or i32 %82, 4194304
  store i32 %83, ptr %1, align 4
  %84 = load i32, ptr %2, align 4
  %85 = and i32 %84, -4194305
  store i32 %85, ptr %2, align 4
  br label %86

86:                                               ; preds = %81, %78
  %87 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef null) #10
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr %1, align 4
  %91 = or i32 %90, 2097152
  br label %98

92:                                               ; preds = %86
  %93 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef null) #10
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %1, align 4
  %97 = and i32 %96, -2097153
  br label %98

98:                                               ; preds = %95, %89
  %99 = phi i32 [ %97, %95 ], [ %91, %89 ]
  store i32 %99, ptr %1, align 4
  %100 = load i32, ptr %2, align 4
  %101 = and i32 %100, -2097153
  store i32 %101, ptr %2, align 4
  br label %102

102:                                              ; preds = %98, %92
  %103 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef null) #10
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  store i1 true, ptr @l2x0_bresp_disable, align 1
  br label %106

106:                                              ; preds = %105, %102
  %107 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.66, ptr noundef null) #10
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  store i1 true, ptr @l2x0_flz_disable, align 1
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %112 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #10
  %113 = call i32 @llvm.smin.i32(i32 %112, i32 0) #10
  switch i32 %113, label %121 [
    i32 0, label %114
    i32 -22, label %123
  ]

114:                                              ; preds = %110
  %115 = load i32, ptr %8, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = or i32 %111, 1073741824
  br label %123

119:                                              ; preds = %114
  %120 = and i32 %111, -1073741825
  br label %123

121:                                              ; preds = %110
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #12
  br label %123

123:                                              ; preds = %121, %119, %117, %110
  %124 = phi i32 [ %118, %117 ], [ %120, %119 ], [ %111, %121 ], [ %111, %110 ]
  %125 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.69, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #10
  %126 = call i32 @llvm.smin.i32(i32 %125, i32 0) #10
  switch i32 %126, label %134 [
    i32 0, label %127
    i32 -22, label %136
  ]

127:                                              ; preds = %123
  %128 = load i32, ptr %8, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = or i32 %124, 8388608
  br label %136

132:                                              ; preds = %127
  %133 = and i32 %124, -8388609
  br label %136

134:                                              ; preds = %123
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #12
  br label %136

136:                                              ; preds = %134, %132, %130, %123
  %137 = phi i32 [ %131, %130 ], [ %133, %132 ], [ %124, %134 ], [ %124, %123 ]
  %138 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.71, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #10
  %139 = call i32 @llvm.smin.i32(i32 %138, i32 0) #10
  switch i32 %139, label %147 [
    i32 0, label %140
    i32 -22, label %149
  ]

140:                                              ; preds = %136
  %141 = load i32, ptr %8, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = or i32 %137, 134217728
  br label %149

145:                                              ; preds = %140
  %146 = and i32 %137, -134217729
  br label %149

147:                                              ; preds = %136
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #12
  br label %149

149:                                              ; preds = %147, %145, %143, %136
  %150 = phi i32 [ %146, %145 ], [ %144, %143 ], [ %137, %147 ], [ %137, %136 ]
  %151 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #10
  %152 = call i32 @llvm.smin.i32(i32 %151, i32 0) #10
  switch i32 %152, label %160 [
    i32 0, label %153
    i32 -22, label %162
  ]

153:                                              ; preds = %149
  %154 = load i32, ptr %8, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = or i32 %150, 16777216
  br label %162

158:                                              ; preds = %153
  %159 = and i32 %150, -16777217
  br label %162

160:                                              ; preds = %149
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #12
  br label %162

162:                                              ; preds = %160, %158, %156, %149
  %163 = phi i32 [ %157, %156 ], [ %159, %158 ], [ %150, %160 ], [ %150, %149 ]
  %164 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.75, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #10
  %165 = call i32 @llvm.smin.i32(i32 %164, i32 0) #10
  switch i32 %165, label %171 [
    i32 0, label %166
    i32 -22, label %173
  ]

166:                                              ; preds = %162
  %167 = and i32 %163, -32
  %168 = load i32, ptr %8, align 4
  %169 = and i32 %168, 31
  %170 = or i32 %169, %167
  br label %173

171:                                              ; preds = %162
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #12
  br label %173

173:                                              ; preds = %171, %166, %162
  %174 = phi i32 [ %170, %166 ], [ %163, %171 ], [ %163, %162 ]
  %175 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #10
  %176 = call i32 @llvm.smin.i32(i32 %175, i32 0) #10
  switch i32 %176, label %193 [
    i32 0, label %177
    i32 -22, label %195
  ]

177:                                              ; preds = %173
  %178 = load i32, ptr %8, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = or i32 %174, 268435456
  %182 = load i32, ptr %1, align 4
  %183 = or i32 %182, 268435456
  br label %188

184:                                              ; preds = %177
  %185 = and i32 %174, -268435457
  %186 = load i32, ptr %1, align 4
  %187 = and i32 %186, -268435457
  br label %188

188:                                              ; preds = %184, %180
  %189 = phi i32 [ %187, %184 ], [ %183, %180 ]
  %190 = phi i32 [ %185, %184 ], [ %181, %180 ]
  store i32 %189, ptr %1, align 4
  %191 = load i32, ptr %2, align 4
  %192 = and i32 %191, -268435457
  store i32 %192, ptr %2, align 4
  br label %195

193:                                              ; preds = %173
  %194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #12
  br label %195

195:                                              ; preds = %193, %188, %173
  %196 = phi i32 [ %190, %188 ], [ %174, %193 ], [ %174, %173 ]
  %197 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.79, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #10
  %198 = call i32 @llvm.smin.i32(i32 %197, i32 0) #10
  switch i32 %198, label %215 [
    i32 0, label %199
    i32 -22, label %217
  ]

199:                                              ; preds = %195
  %200 = load i32, ptr %8, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %199
  %203 = or i32 %196, 536870912
  %204 = load i32, ptr %1, align 4
  %205 = or i32 %204, 536870912
  br label %210

206:                                              ; preds = %199
  %207 = and i32 %196, -536870913
  %208 = load i32, ptr %1, align 4
  %209 = and i32 %208, -536870913
  br label %210

210:                                              ; preds = %206, %202
  %211 = phi i32 [ %209, %206 ], [ %205, %202 ]
  %212 = phi i32 [ %207, %206 ], [ %203, %202 ]
  store i32 %211, ptr %1, align 4
  %213 = load i32, ptr %2, align 4
  %214 = and i32 %213, -536870913
  store i32 %214, ptr %2, align 4
  br label %217

215:                                              ; preds = %195
  %216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #12
  br label %217

217:                                              ; preds = %215, %210, %195
  %218 = phi i32 [ %212, %210 ], [ %196, %215 ], [ %196, %195 ]
  store i32 %218, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %219 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 7), align 4
  %220 = or i32 %219, 3
  %221 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.81, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #10
  %222 = call i32 @llvm.smin.i32(i32 %221, i32 0) #10
  switch i32 %222, label %228 [
    i32 0, label %223
    i32 -22, label %230
  ]

223:                                              ; preds = %217
  %224 = load i32, ptr %8, align 4
  %225 = icmp eq i32 %224, 0
  %226 = and i32 %220, -3
  %227 = select i1 %225, i32 %226, i32 %220
  br label %230

228:                                              ; preds = %217
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #12
  br label %230

230:                                              ; preds = %228, %223, %217
  %231 = phi i32 [ %220, %228 ], [ %227, %223 ], [ %220, %217 ]
  %232 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #10
  %233 = call i32 @llvm.smin.i32(i32 %232, i32 0) #10
  switch i32 %233, label %239 [
    i32 0, label %234
    i32 -22, label %241
  ]

234:                                              ; preds = %230
  %235 = load i32, ptr %8, align 4
  %236 = icmp eq i32 %235, 0
  %237 = and i32 %231, -2
  %238 = select i1 %236, i32 %237, i32 %231
  br label %241

239:                                              ; preds = %230
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #12
  br label %241

241:                                              ; preds = %239, %234, %230
  %242 = phi i32 [ %231, %239 ], [ %238, %234 ], [ %231, %230 ]
  store i32 %242, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 7), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_inv_range(i32 noundef %0, i32 noundef %1) #5 {
  %3 = icmp ult i32 %0, 1073741824
  br i1 %3, label %4, label %5, !prof !16

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-l2x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1611, 0\0A.popsection", ""() #10, !srcloc !24
  unreachable

5:                                                ; preds = %2
  %6 = icmp ugt i32 %1, %0
  br i1 %6, label %7, label %45, !prof !25

7:                                                ; preds = %5
  %8 = icmp ugt i32 %0, -1073741825
  %9 = add i32 %0, 1073741824
  %10 = xor i32 %0, -2147483648
  %11 = select i1 %8, i32 %10, i32 %9
  %12 = icmp ugt i32 %1, -1073741825
  %13 = add i32 %1, 1073741824
  %14 = xor i32 %1, -2147483648
  %15 = select i1 %12, i32 %14, i32 %13
  %16 = icmp ult i32 %1, -1073741824
  %17 = or i1 %8, %16
  br i1 %17, label %18, label %44, !prof !26

18:                                               ; preds = %7
  %19 = load ptr, ptr @l2x0_base, align 4
  %20 = and i32 %11, 31
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = and i32 %11, -32
  %24 = getelementptr i8, ptr %19, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #10, !srcloc !11
  %25 = add i32 %23, 32
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %25, %22 ], [ %11, %18 ]
  %28 = and i32 %15, 31
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = and i32 %15, -32
  %32 = getelementptr i8, ptr %19, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #10, !srcloc !11
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i32 [ %31, %30 ], [ %15, %26 ]
  %35 = getelementptr i8, ptr %19, i32 1904
  %36 = icmp ult i32 %27, %34
  br i1 %36, label %37, label %41

37:                                               ; preds = %37, %33
  %38 = phi i32 [ %39, %37 ], [ %27, %33 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %38) #10, !srcloc !11
  %39 = add i32 %38, 32
  %40 = icmp ult i32 %39, %34
  br i1 %40, label %37, label %41

41:                                               ; preds = %37, %33
  %42 = load i32, ptr @sync_reg_offset, align 4
  %43 = getelementptr i8, ptr %19, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #10, !srcloc !11
  br label %45

44:                                               ; preds = %7
  tail call void @l2c210_inv_range(i32 noundef %11, i32 noundef -1)
  tail call void @l2c210_inv_range(i32 noundef 1073741824, i32 noundef %15)
  br label %45

45:                                               ; preds = %44, %41, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_clean_range(i32 noundef %0, i32 noundef %1) #5 {
  %3 = icmp ult i32 %0, 1073741824
  br i1 %3, label %4, label %5, !prof !16

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-l2x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1638, 0\0A.popsection", ""() #10, !srcloc !27
  unreachable

5:                                                ; preds = %2
  %6 = icmp ugt i32 %1, %0
  br i1 %6, label %7, label %33, !prof !25

7:                                                ; preds = %5
  %8 = icmp ugt i32 %0, -1073741825
  %9 = add i32 %0, 1073741824
  %10 = xor i32 %0, -2147483648
  %11 = select i1 %8, i32 %10, i32 %9
  %12 = icmp ugt i32 %1, -1073741825
  %13 = add i32 %1, 1073741824
  %14 = xor i32 %1, -2147483648
  %15 = select i1 %12, i32 %14, i32 %13
  %16 = icmp ult i32 %1, -1073741824
  %17 = or i1 %8, %16
  %18 = load ptr, ptr @l2x0_base, align 4
  %19 = and i32 %11, -32
  %20 = getelementptr i8, ptr %18, i32 1968
  br i1 %17, label %21, label %30, !prof !26

21:                                               ; preds = %7
  %22 = icmp ult i32 %19, %15
  br i1 %22, label %23, label %27

23:                                               ; preds = %23, %21
  %24 = phi i32 [ %25, %23 ], [ %19, %21 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %24) #10, !srcloc !11
  %25 = add i32 %24, 32
  %26 = icmp ult i32 %25, %15
  br i1 %26, label %23, label %27

27:                                               ; preds = %23, %21
  %28 = load i32, ptr @sync_reg_offset, align 4
  %29 = getelementptr i8, ptr %18, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #10, !srcloc !11
  br label %33

30:                                               ; preds = %30, %7
  %31 = phi i32 [ %32, %30 ], [ %19, %7 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %31) #10, !srcloc !11
  %32 = add i32 %31, 32
  br label %30

33:                                               ; preds = %27, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm_flush_range(i32 noundef %0, i32 noundef %1) #5 {
  %3 = icmp ult i32 %0, 1073741824
  br i1 %3, label %4, label %5, !prof !16

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mm/cache-l2x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1665, 0\0A.popsection", ""() #10, !srcloc !28
  unreachable

5:                                                ; preds = %2
  %6 = icmp ugt i32 %1, %0
  br i1 %6, label %7, label %39, !prof !25

7:                                                ; preds = %5
  %8 = sub i32 %1, %0
  %9 = load i32, ptr @l2x0_size, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 3), align 4
  tail call void %12() #10
  br label %39

13:                                               ; preds = %7
  %14 = icmp ugt i32 %0, -1073741825
  %15 = add i32 %0, 1073741824
  %16 = xor i32 %0, -2147483648
  %17 = select i1 %14, i32 %16, i32 %15
  %18 = icmp ugt i32 %1, -1073741825
  %19 = add i32 %1, 1073741824
  %20 = xor i32 %1, -2147483648
  %21 = select i1 %18, i32 %20, i32 %19
  %22 = icmp ult i32 %1, -1073741824
  %23 = or i1 %14, %22
  %24 = load ptr, ptr @l2x0_base, align 4
  %25 = and i32 %17, -32
  %26 = getelementptr i8, ptr %24, i32 2032
  br i1 %23, label %27, label %36, !prof !26

27:                                               ; preds = %13
  %28 = icmp ult i32 %25, %21
  br i1 %28, label %29, label %33

29:                                               ; preds = %29, %27
  %30 = phi i32 [ %31, %29 ], [ %25, %27 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %30) #10, !srcloc !11
  %31 = add i32 %30, 32
  %32 = icmp ult i32 %31, %21
  br i1 %32, label %29, label %33

33:                                               ; preds = %29, %27
  %34 = load i32, ptr @sync_reg_offset, align 4
  %35 = getelementptr i8, ptr %24, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #10, !srcloc !11
  br label %39

36:                                               ; preds = %36, %13
  %37 = phi i32 [ %38, %36 ], [ %25, %13 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %37) #10, !srcloc !11
  %38 = add i32 %37, 32
  br label %36

39:                                               ; preds = %33, %11, %5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @aurora_of_parse(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 section ".init.text" {
  %4 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.87, ptr noundef nonnull @cache_id_part_number_from_dt, i32 noundef 1, i32 noundef 0) #10
  %5 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.88, ptr noundef null) #10
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  store i32 %7, ptr @l2_wt_override, align 4
  %8 = select i1 %6, i32 402653186, i32 402653184
  %9 = select i1 %6, i32 402653187, i32 402653184
  %10 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.89, ptr noundef null) #10
  %11 = icmp eq ptr %10, null
  %12 = or i32 %9, 1048576
  %13 = or i32 %8, 1048576
  %14 = select i1 %11, i32 %8, i32 %13
  %15 = select i1 %11, i32 %9, i32 %12
  %16 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef null) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = or i32 %15, 2097152
  %20 = or i32 %14, 2097152
  br label %26

21:                                               ; preds = %3
  %22 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef null) #10
  %23 = icmp eq ptr %22, null
  %24 = or i32 %15, 2097152
  %25 = select i1 %23, i32 %15, i32 %24
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i32 [ %20, %18 ], [ %14, %21 ]
  %28 = phi i32 [ %19, %18 ], [ %25, %21 ]
  %29 = xor i32 %28, -1
  %30 = load i32, ptr %1, align 4
  %31 = and i32 %30, %29
  %32 = or i32 %31, %27
  store i32 %32, ptr %1, align 4
  %33 = load i32, ptr %2, align 4
  %34 = and i32 %33, %29
  store i32 %34, ptr %2, align 4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal void @aurora_fixup(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #9 section ".init.text" {
  store i32 1792, ptr @sync_reg_offset, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aurora_save(ptr noundef %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 256
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !8
  store i32 %3, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 8), align 4
  %4 = getelementptr i8, ptr %0, i32 260
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !8
  store i32 %5, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aurora_inv_range(i32 noundef %0, i32 noundef %1) #5 {
  %3 = and i32 %0, -32
  %4 = add i32 %1, 31
  %5 = and i32 %4, -32
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load ptr, ptr @l2x0_base, align 4
  %9 = getelementptr i8, ptr %8, i32 1824
  %10 = getelementptr i8, ptr %8, i32 1908
  %11 = getelementptr i8, ptr %8, i32 1792
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i32 [ %3, %7 ], [ %18, %12 ]
  %14 = add i32 %13, 1024
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %5) #10
  %16 = add i32 %13, 4096
  %17 = and i32 %16, -4096
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %17) #10
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %13) #10, !srcloc !11
  %20 = add i32 %18, -32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %20) #10, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %19) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #10, !srcloc !11
  %21 = icmp ult i32 %18, %5
  br i1 %21, label %12, label %22

22:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aurora_clean_range(i32 noundef %0, i32 noundef %1) #5 {
  %3 = load i32, ptr @l2_wt_override, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %2
  %6 = and i32 %0, -32
  %7 = add i32 %1, 31
  %8 = and i32 %7, -32
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = load ptr, ptr @l2x0_base, align 4
  %12 = getelementptr i8, ptr %11, i32 1824
  %13 = getelementptr i8, ptr %11, i32 1972
  %14 = getelementptr i8, ptr %11, i32 1792
  br label %15

15:                                               ; preds = %15, %10
  %16 = phi i32 [ %6, %10 ], [ %21, %15 ]
  %17 = add i32 %16, 1024
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %8) #10
  %19 = add i32 %16, 4096
  %20 = and i32 %19, -4096
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 %20) #10
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %16) #10, !srcloc !11
  %23 = add i32 %21, -32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %23) #10, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %22) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #10, !srcloc !11
  %24 = icmp ult i32 %21, %8
  br i1 %24, label %15, label %25

25:                                               ; preds = %15, %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aurora_flush_range(i32 noundef %0, i32 noundef %1) #5 {
  %3 = load i32, ptr @l2_wt_override, align 4
  %4 = icmp eq i32 %3, 0
  %5 = and i32 %0, -32
  %6 = add i32 %1, 31
  %7 = and i32 %6, -32
  %8 = icmp ult i32 %5, %7
  br i1 %4, label %25, label %9

9:                                                ; preds = %2
  br i1 %8, label %10, label %41

10:                                               ; preds = %9
  %11 = load ptr, ptr @l2x0_base, align 4
  %12 = getelementptr i8, ptr %11, i32 1824
  %13 = getelementptr i8, ptr %11, i32 1908
  %14 = getelementptr i8, ptr %11, i32 1792
  br label %15

15:                                               ; preds = %15, %10
  %16 = phi i32 [ %5, %10 ], [ %21, %15 ]
  %17 = add i32 %16, 1024
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %7) #10
  %19 = add i32 %16, 4096
  %20 = and i32 %19, -4096
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 %20) #10
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %16) #10, !srcloc !11
  %23 = add i32 %21, -32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %23) #10, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %22) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #10, !srcloc !11
  %24 = icmp ult i32 %21, %7
  br i1 %24, label %15, label %41

25:                                               ; preds = %2
  br i1 %8, label %26, label %41

26:                                               ; preds = %25
  %27 = load ptr, ptr @l2x0_base, align 4
  %28 = getelementptr i8, ptr %27, i32 1824
  %29 = getelementptr i8, ptr %27, i32 2036
  %30 = getelementptr i8, ptr %27, i32 1792
  br label %31

31:                                               ; preds = %31, %26
  %32 = phi i32 [ %5, %26 ], [ %37, %31 ]
  %33 = add i32 %32, 1024
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %7) #10
  %35 = add i32 %32, 4096
  %36 = and i32 %35, -4096
  %37 = tail call i32 @llvm.umin.i32(i32 %34, i32 %36) #10
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %32) #10, !srcloc !11
  %39 = add i32 %37, -32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %39) #10, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %38) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #10, !srcloc !11
  %40 = icmp ult i32 %37, %7
  br i1 %40, label %31, label %41

41:                                               ; preds = %31, %25, %15, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aurora_flush_all() #5 {
  %1 = load ptr, ptr @l2x0_base, align 4
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  %3 = getelementptr i8, ptr %1, i32 2044
  %4 = load i32, ptr @l2x0_way_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %4) #10, !srcloc !11
  %5 = load i32, ptr @l2x0_way_mask, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %7 = and i32 %6, %5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %11 = and i32 %10, %5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %2) #10
  %14 = getelementptr i8, ptr %1, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #10, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aurora_disable() #5 {
  %1 = load ptr, ptr @l2x0_base, align 4
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @l2x0_lock) #10
  %3 = getelementptr i8, ptr %1, i32 2044
  %4 = load i32, ptr @l2x0_way_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %4) #10, !srcloc !11
  %5 = load i32, ptr @l2x0_way_mask, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %7 = and i32 %6, %5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !13
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %11 = and i32 %10, %5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %0
  %14 = getelementptr i8, ptr %1, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #10, !srcloc !11
  %15 = getelementptr i8, ptr %1, i32 256
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void %19(i32 noundef 0, i32 noundef 256) #10
  br label %23

22:                                               ; preds = %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #10, !srcloc !11
  br label %23

23:                                               ; preds = %22, %21, %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @l2x0_lock, i32 noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aurora_cache_sync() #5 {
  %1 = load ptr, ptr @l2x0_base, align 4
  %2 = getelementptr i8, ptr %1, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #10, !srcloc !11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @aurora_enable_no_outer(ptr noundef %0, i32 noundef %1) #0 section ".init.text" {
  %3 = tail call i32 asm sideeffect "mrc p15, 1, $0, c15, c2, 0", "=r"() #10, !srcloc !30
  %4 = or i32 %3, 256
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c2, 0", "r"(i32 %4) #10, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !32
  tail call void @l2c_enable(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tauros3_save(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr @l2x0_base, align 4
  %3 = getelementptr i8, ptr %2, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  store i32 %4, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %5 = getelementptr i8, ptr %0, i32 2080
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !8
  store i32 %6, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 9), align 4
  %7 = getelementptr i8, ptr %0, i32 3936
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !8
  store i32 %8, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tauros3_configure(ptr noundef %0) #5 {
  %2 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 1), align 4
  %3 = getelementptr i8, ptr %0, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !8
  %5 = icmp eq i32 %4, %2
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void %7(i32 noundef %2, i32 noundef 260) #10
  br label %11

10:                                               ; preds = %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %2) #10, !srcloc !11
  br label %11

11:                                               ; preds = %10, %9, %1
  %12 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 9), align 4
  %13 = getelementptr i8, ptr %0, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #10, !srcloc !11
  %14 = load i32, ptr getelementptr inbounds (%struct.l2x0_regs, ptr @l2x0_saved_regs, i32 0, i32 6), align 4
  %15 = getelementptr i8, ptr %0, i32 3936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #10, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

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
!8 = !{i64 3690915}
!9 = !{!"auto-init"}
!10 = !{i64 662509, i64 662570}
!11 = !{i64 3690497}
!12 = !{i64 2152728627}
!13 = !{i64 2152728469}
!14 = !{i64 665526}
!15 = !{i64 665241}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2152733100, i64 2152733589, i64 2152733137, i64 2152733193, i64 2152733227, i64 2152733251, i64 2152733292, i64 2152733313, i64 2152733341, i64 2152733375}
!18 = !{i64 2152730554}
!19 = !{i64 2152713250}
!20 = !{i64 5218344}
!21 = !{i64 5218478}
!22 = !{i64 2152703813}
!23 = !{i32 0, i32 33}
!24 = !{i64 2152790753, i64 2152791243, i64 2152790790, i64 2152790846, i64 2152790880, i64 2152790904, i64 2152790945, i64 2152790966, i64 2152790994, i64 2152791028}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{!"branch_weights", i32 4001, i32 1}
!27 = !{i64 2152791965, i64 2152792455, i64 2152792002, i64 2152792058, i64 2152792092, i64 2152792116, i64 2152792157, i64 2152792178, i64 2152792206, i64 2152792240}
!28 = !{i64 2152793177, i64 2152793667, i64 2152793214, i64 2152793270, i64 2152793304, i64 2152793328, i64 2152793369, i64 2152793390, i64 2152793418, i64 2152793452}
!29 = !{i64 2152788335}
!30 = !{i64 40612}
!31 = !{i64 40712}
!32 = !{i64 2152789219}
