; ModuleID = '/llk/IR/drivers/media/dvb-frontends/dib0070.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dib0070.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib0070_ctrl_agc_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22dib0070_ctrl_agc_filter\22\09\09\09\09\09"
module asm "__kstrtabns_dib0070_ctrl_agc_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib0070_get_rf_output:\09\09\09\09\09"
module asm "\09.asciz \09\22dib0070_get_rf_output\22\09\09\09\09\09"
module asm "__kstrtabns_dib0070_get_rf_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib0070_set_rf_output:\09\09\09\09\09"
module asm "\09.asciz \09\22dib0070_set_rf_output\22\09\09\09\09\09"
module asm "__kstrtabns_dib0070_set_rf_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib0070_wbd_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22dib0070_wbd_offset\22\09\09\09\09\09"
module asm "__kstrtabns_dib0070_wbd_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib0070_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dib0070_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dib0070_attach:\09\09\09\09\09"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dib0070_tuning = type { i32, i8, i8, i8, i8, i8, i8, i16 }
%struct.dib0070_lna_match = type { i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.dib0070_state = type { ptr, ptr, ptr, i16, i8, i32, i32, i8, i16, i8, i8, i16, ptr, ptr, i8, [2 x i16], [2 x %struct.i2c_msg], [3 x i8], [2 x i8], %struct.mutex }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dib0070_config = type { i8, ptr, ptr, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, ptr, i8 }
%struct.dib0070_wbd_gain_cfg = type { i16, i16 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [42 x i8] c"parm=debug:turn on debugging (default: 0)\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [49 x i8] c"\017dib0070: %s: vga filter register is set to %x\0A\00", align 1
@__func__.dib0070_ctrl_agc_filter = private unnamed_addr constant [24 x i8] c"dib0070_ctrl_agc_filter\00", align 1
@__kstrtab_dib0070_ctrl_agc_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib0070_ctrl_agc_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_dib0070_ctrl_agc_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib0070_ctrl_agc_filter to i32), ptr @__kstrtab_dib0070_ctrl_agc_filter, ptr @__kstrtabns_dib0070_ctrl_agc_filter }, section "___ksymtab+dib0070_ctrl_agc_filter", align 4
@__kstrtab_dib0070_get_rf_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib0070_get_rf_output = external dso_local constant [0 x i8], align 1
@__ksymtab_dib0070_get_rf_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib0070_get_rf_output to i32), ptr @__kstrtab_dib0070_get_rf_output, ptr @__kstrtabns_dib0070_get_rf_output }, section "___ksymtab+dib0070_get_rf_output", align 4
@__kstrtab_dib0070_set_rf_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib0070_set_rf_output = external dso_local constant [0 x i8], align 1
@__ksymtab_dib0070_set_rf_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib0070_set_rf_output to i32), ptr @__kstrtab_dib0070_set_rf_output, ptr @__kstrtabns_dib0070_set_rf_output }, section "___ksymtab+dib0070_set_rf_output", align 4
@__kstrtab_dib0070_wbd_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib0070_wbd_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_dib0070_wbd_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib0070_wbd_offset to i32), ptr @__kstrtab_dib0070_wbd_offset, ptr @__kstrtabns_dib0070_wbd_offset }, section "___ksymtab+dib0070_wbd_offset", align 4
@dib0070_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"&state->i2c_buffer_lock\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\016dib0070: DiB0070: successfully identified\0A\00", align 1
@dib0070_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"DiBcom DiB0070\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 45000000, i32 860000000, i32 1000, i32 0, i32 0, i32 0 }, ptr @dib0070_release, ptr @dib0070_wakeup, ptr @dib0070_sleep, ptr null, ptr null, ptr @dib0070_tune, ptr null, ptr null, ptr @dib0070_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_dib0070_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib0070_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dib0070_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib0070_attach to i32), ptr @__kstrtab_dib0070_attach, ptr @__kstrtabns_dib0070_attach }, section "___ksymtab+dib0070_attach", align 4
@__UNIQUE_ID_author251 = internal constant [55 x i8] c"author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [58 x i8] c"description=Driver for the DiBcom 0070 base-band RF Tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"\017dib0070: %s: could not acquire lock\0A\00", align 1
@__func__.dib0070_write_reg = private unnamed_addr constant [18 x i8] c"dib0070_write_reg\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\014dib0070: DiB0070 I2C write failed\0A\00", align 1
@__func__.dib0070_read_reg = private unnamed_addr constant [17 x i8] c"dib0070_read_reg\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\014dib0070: DiB0070 I2C read failed\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"\017dib0070: %s: Revision: %x\0A\00", align 1
@__func__.dib0070_reset = private unnamed_addr constant [14 x i8] c"dib0070_reset\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"\017dib0070: %s: Error: this driver is not to be used meant for P1D or earlier\0A\00", align 1
@dib0070_p1f_defaults = internal unnamed_addr constant [34 x i16] [i16 7, i16 2, i16 8, i16 0, i16 0, i16 0, i16 0, i16 2, i16 256, i16 3, i16 13, i16 3456, i16 1, i16 0, i16 4, i16 17, i16 0, i16 259, i16 0, i16 0, i16 3, i16 22, i16 68, i16 48, i16 2047, i16 6, i16 27, i16 16658, i16 -256, i16 -16257, i16 0, i16 384, i16 18555, i16 0], align 2
@.str.8 = private unnamed_addr constant [31 x i8] c"\017dib0070: %s: CTRL_LO5: 0x%x\0A\00", align 1
@__func__.dib0070_set_ctrl_lo5 = private unnamed_addr constant [21 x i8] c"dib0070_set_ctrl_lo5\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"\017dib0070: %s: Gain: %d, WBDOffset (3.3V) = %hd\0A\00", align 1
@__func__.dib0070_wbd_offset_calibration = private unnamed_addr constant [31 x i8] c"dib0070_wbd_offset_calibration\00", align 1
@dib0070s_tuning_table = internal constant [7 x %struct.dib0070_tuning] [%struct.dib0070_tuning { i32 570000, i8 2, i8 1, i8 3, i8 6, i8 6, i8 2, i16 18432 }, %struct.dib0070_tuning { i32 700000, i8 2, i8 0, i8 2, i8 4, i8 2, i8 2, i16 18432 }, %struct.dib0070_tuning { i32 863999, i8 2, i8 1, i8 2, i8 4, i8 2, i8 2, i16 18432 }, %struct.dib0070_tuning { i32 1500000, i8 0, i8 1, i8 1, i8 2, i8 2, i8 4, i16 9216 }, %struct.dib0070_tuning { i32 1600000, i8 0, i8 1, i8 1, i8 2, i8 2, i8 4, i16 9216 }, %struct.dib0070_tuning { i32 2000000, i8 0, i8 1, i8 1, i8 2, i8 2, i8 4, i16 9216 }, %struct.dib0070_tuning { i32 -1, i8 0, i8 0, i8 8, i8 1, i8 2, i8 1, i16 -28672 }], align 4
@dib0070_lna = internal constant [13 x %struct.dib0070_lna_match] [%struct.dib0070_lna_match { i32 180000, i8 0 }, %struct.dib0070_lna_match { i32 188000, i8 1 }, %struct.dib0070_lna_match { i32 196400, i8 2 }, %struct.dib0070_lna_match { i32 250000, i8 3 }, %struct.dib0070_lna_match { i32 550000, i8 2 }, %struct.dib0070_lna_match { i32 650000, i8 3 }, %struct.dib0070_lna_match { i32 750000, i8 5 }, %struct.dib0070_lna_match { i32 850000, i8 6 }, %struct.dib0070_lna_match { i32 864000, i8 7 }, %struct.dib0070_lna_match { i32 1500000, i8 0 }, %struct.dib0070_lna_match { i32 1600000, i8 1 }, %struct.dib0070_lna_match { i32 2000000, i8 3 }, %struct.dib0070_lna_match { i32 -1, i8 7 }], align 4
@dib0070_tuning_table = internal constant [8 x %struct.dib0070_tuning] [%struct.dib0070_tuning { i32 115000, i8 1, i8 0, i8 7, i8 24, i8 2, i8 1, i16 -28672 }, %struct.dib0070_tuning { i32 179500, i8 1, i8 0, i8 3, i8 16, i8 2, i8 1, i16 -28672 }, %struct.dib0070_tuning { i32 189999, i8 1, i8 1, i8 3, i8 16, i8 2, i8 1, i16 -28672 }, %struct.dib0070_tuning { i32 250000, i8 1, i8 0, i8 6, i8 12, i8 2, i8 1, i16 -28672 }, %struct.dib0070_tuning { i32 569999, i8 2, i8 1, i8 5, i8 6, i8 2, i8 2, i16 18432 }, %struct.dib0070_tuning { i32 699999, i8 2, i8 0, i8 1, i8 4, i8 2, i8 2, i16 18432 }, %struct.dib0070_tuning { i32 863999, i8 2, i8 1, i8 1, i8 4, i8 2, i8 2, i16 18432 }, %struct.dib0070_tuning { i32 -1, i8 0, i8 1, i8 0, i8 2, i8 2, i8 4, i16 9216 }], align 4
@dib0070_lna_flip_chip = internal constant [12 x %struct.dib0070_lna_match] [%struct.dib0070_lna_match { i32 180000, i8 0 }, %struct.dib0070_lna_match { i32 188000, i8 1 }, %struct.dib0070_lna_match { i32 196400, i8 2 }, %struct.dib0070_lna_match { i32 250000, i8 3 }, %struct.dib0070_lna_match { i32 550000, i8 0 }, %struct.dib0070_lna_match { i32 590000, i8 1 }, %struct.dib0070_lna_match { i32 666000, i8 3 }, %struct.dib0070_lna_match { i32 864000, i8 5 }, %struct.dib0070_lna_match { i32 1500000, i8 0 }, %struct.dib0070_lna_match { i32 1600000, i8 1 }, %struct.dib0070_lna_match { i32 2000000, i8 3 }, %struct.dib0070_lna_match { i32 -1, i8 7 }], align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"\017dib0070: %s: Tuning for Band: %d (%d kHz)\0A\00", align 1
@__func__.dib0070_tune_digital = private unnamed_addr constant [21 x i8] c"dib0070_tune_digital\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"\017dib0070: %s: REFDIV: %u, FREF: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"\017dib0070: %s: FBDIV: %d, Rest: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"\017dib0070: %s: Num: %u, Den: %u, SD: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\017dib0070: %s: HFDIV code: %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"\017dib0070: %s: VCO = %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"\017dib0070: %s: VCOF: ((%u*%d) << 1))\0A\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"\017dib0070: %s: CAPTRIM=%d; ADC = %hd (ADC) & %dmV\0A\00", align 1
@__func__.dib0070_captrim = private unnamed_addr constant [16 x i8] c"dib0070_captrim\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"\017dib0070: %s: CAPTRIM=%d is closer to target (%hd/%hd)\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_dib0070_attach, ptr @__ksymtab_dib0070_ctrl_agc_filter, ptr @__ksymtab_dib0070_get_rf_output, ptr @__ksymtab_dib0070_set_rf_output, ptr @__ksymtab_dib0070_wbd_offset, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dib0070_ctrl_agc_filter(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 27, i16 noundef zeroext -256)
  %8 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 26, i16 noundef zeroext 0)
  br label %29

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 27, i16 noundef zeroext 16658)
  %11 = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dib0070_config, ptr %12, i32 0, i32 14
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %9
  %17 = zext i8 %14 to i16
  %18 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 26, i16 noundef zeroext %17)
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr inbounds %struct.dib0070_config, ptr %22, i32 0, i32 14
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib0070_ctrl_agc_filter, i32 noundef %25) #9
  br label %29

27:                                               ; preds = %9
  %28 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 26, i16 noundef zeroext 9)
  br label %29

29:                                               ; preds = %27, %21, %16, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib0070_write_reg(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 19
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib0070_write_reg) #9
  br label %34

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 17
  store i8 %1, ptr %13, align 4
  %14 = lshr i16 %2, 8
  %15 = trunc i16 %14 to i8
  %16 = getelementptr %struct.dib0070_state, ptr %0, i32 0, i32 17, i32 1
  store i8 %15, ptr %16, align 1
  %17 = trunc i16 %2 to i8
  %18 = getelementptr %struct.dib0070_state, ptr %0, i32 0, i32 17, i32 2
  store i8 %17, ptr %18, align 2
  %19 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 16
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %19, i8 0, i32 12, i1 false)
  %20 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %19, align 4
  %24 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 16, i32 0, i32 1
  store i16 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 16, i32 0, i32 3
  store ptr %13, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 16, i32 0, i32 2
  store i16 3, ptr %26, align 4
  %27 = load ptr, ptr %0, align 4
  %28 = tail call i32 @i2c_transfer(ptr noundef %27, ptr noundef %19, i32 noundef 1) #10
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %32, label %30

30:                                               ; preds = %12
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %32

32:                                               ; preds = %30, %12
  %33 = phi i32 [ -121, %30 ], [ 0, %12 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %34

34:                                               ; preds = %32, %10, %7
  %35 = phi i32 [ %33, %32 ], [ -22, %10 ], [ -22, %7 ]
  ret i32 %35
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @dib0070_get_rf_output(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %3, i8 noundef zeroext 7)
  %5 = lshr i16 %4, 11
  %6 = trunc i16 %5 to i8
  %7 = and i8 %6, 3
  ret i8 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dib0070_read_reg(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 19
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib0070_read_reg) #9
  br label %43

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 17
  store i8 %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 16
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %13, i8 0, i32 24, i1 false)
  %14 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %13, align 4
  %18 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 16, i32 0, i32 1
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 16, i32 0, i32 3
  store ptr %12, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 16, i32 0, i32 2
  store i16 1, ptr %20, align 4
  %21 = load i8, ptr %15, align 4
  %22 = zext i8 %21 to i16
  %23 = getelementptr %struct.dib0070_state, ptr %0, i32 0, i32 16, i32 1
  store i16 %22, ptr %23, align 4
  %24 = getelementptr %struct.dib0070_state, ptr %0, i32 0, i32 16, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.dib0070_state, ptr %0, i32 0, i32 18
  %26 = getelementptr %struct.dib0070_state, ptr %0, i32 0, i32 16, i32 1, i32 3
  store ptr %25, ptr %26, align 4
  %27 = getelementptr %struct.dib0070_state, ptr %0, i32 0, i32 16, i32 1, i32 2
  store i16 2, ptr %27, align 4
  %28 = load ptr, ptr %0, align 4
  %29 = tail call i32 @i2c_transfer(ptr noundef %28, ptr noundef %13, i32 noundef 2) #10
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %33, label %31

31:                                               ; preds = %11
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %41

33:                                               ; preds = %11
  %34 = load i8, ptr %25, align 1
  %35 = zext i8 %34 to i16
  %36 = shl nuw i16 %35, 8
  %37 = getelementptr %struct.dib0070_state, ptr %0, i32 0, i32 18, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i16
  %40 = or i16 %36, %39
  br label %41

41:                                               ; preds = %33, %31
  %42 = phi i16 [ 0, %31 ], [ %40, %33 ]
  tail call void @mutex_unlock(ptr noundef %3) #10
  br label %43

43:                                               ; preds = %41, %9, %6
  %44 = phi i16 [ %42, %41 ], [ 0, %9 ], [ 0, %6 ]
  ret i16 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dib0070_set_rf_output(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %4, i8 noundef zeroext 7)
  %6 = and i16 %5, -6145
  %7 = tail call i8 @llvm.umin.i8(i8 %1, i8 3)
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i8 1, i8 %7
  %10 = zext i8 %9 to i16
  %11 = shl nuw nsw i16 %10, 11
  %12 = or i16 %6, %11
  %13 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 7, i16 noundef zeroext %12)
  ret i32 %13
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @dib0070_wbd_offset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib0070_state, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dib0070_config, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = udiv i32 %11, 1000000
  %13 = trunc i32 %12 to i16
  br label %14

14:                                               ; preds = %14, %9
  %15 = phi ptr [ %18, %14 ], [ %7, %9 ]
  %16 = load i16, ptr %15, align 2
  %17 = icmp ult i16 %16, %13
  %18 = getelementptr %struct.dib0070_wbd_gain_cfg, ptr %15, i32 1
  br i1 %17, label %14, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, ptr %15, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = trunc i16 %21 to i8
  %23 = getelementptr inbounds %struct.dib0070_state, ptr %3, i32 0, i32 14
  store i8 %22, ptr %23, align 4
  %24 = and i16 %21, 255
  %25 = zext i16 %24 to i32
  %26 = add nsw i32 %25, -6
  br label %29

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.dib0070_state, ptr %3, i32 0, i32 14
  store i8 6, ptr %28, align 4
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi i32 [ 0, %27 ], [ %26, %19 ]
  %31 = getelementptr %struct.dib0070_state, ptr %3, i32 0, i32 15, i32 %30
  %32 = load i16, ptr %31, align 2
  ret i16 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dib0070_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 100) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %186, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dib0070_state, ptr %5, i32 0, i32 2
  store ptr %2, ptr %8, align 8
  store ptr %1, ptr %5, align 8
  %9 = getelementptr inbounds %struct.dib0070_state, ptr %5, i32 0, i32 1
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dib0070_state, ptr %5, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @dib0070_attach.__key) #10
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %5, ptr %11, align 4
  %12 = load ptr, ptr %8, align 8
  %13 = getelementptr inbounds %struct.dib0070_config, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %9, align 4
  %16 = tail call i32 %14(ptr noundef %15, i32 noundef 0) #10
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds %struct.dib0070_config, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %7
  %22 = load ptr, ptr %9, align 4
  %23 = tail call i32 %19(ptr noundef %22, i32 noundef 1) #10
  tail call void @msleep(i32 noundef 10) #10
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds %struct.dib0070_config, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %9, align 4
  %28 = tail call i32 %26(ptr noundef %27, i32 noundef 0) #10
  tail call void @msleep(i32 noundef 10) #10
  br label %29

29:                                               ; preds = %21, %7
  %30 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef nonnull %5, i8 noundef zeroext 34) #10
  %31 = and i16 %30, 512
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef nonnull %5, i8 noundef zeroext 31) #10
  %35 = lshr i16 %34, 8
  %36 = trunc i16 %35 to i8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i8 [ %36, %33 ], [ 2, %29 ]
  %39 = getelementptr inbounds %struct.dib0070_state, ptr %5, i32 0, i32 4
  store i8 %38, ptr %39, align 2
  %40 = load i32, ptr @debug, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = zext i8 %38 to i32
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib0070_reset, i32 noundef %43) #9
  %45 = load i8, ptr %39, align 2
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i8 [ %45, %42 ], [ %38, %37 ]
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %182, label %52

52:                                               ; preds = %49
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dib0070_reset) #9
  br label %182

54:                                               ; preds = %70, %46
  %55 = phi ptr [ %71, %70 ], [ getelementptr inbounds ([34 x i16], ptr @dib0070_p1f_defaults, i32 0, i32 1), %46 ]
  %56 = phi i16 [ %72, %70 ], [ 7, %46 ]
  %57 = getelementptr i16, ptr %55, i32 1
  %58 = load i16, ptr %55, align 2
  br label %59

59:                                               ; preds = %59, %54
  %60 = phi i16 [ %56, %54 ], [ %68, %59 ]
  %61 = phi i16 [ %58, %54 ], [ %67, %59 ]
  %62 = phi ptr [ %57, %54 ], [ %64, %59 ]
  %63 = trunc i16 %61 to i8
  %64 = getelementptr i16, ptr %62, i32 1
  %65 = load i16, ptr %62, align 2
  %66 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext %63, i16 noundef zeroext %65) #10
  %67 = add i16 %61, 1
  %68 = add i16 %60, -1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %59

70:                                               ; preds = %59
  %71 = getelementptr i16, ptr %62, i32 2
  %72 = load i16, ptr %64, align 2
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %54

74:                                               ; preds = %70
  %75 = load ptr, ptr %8, align 8
  %76 = getelementptr inbounds %struct.dib0070_config, ptr %75, i32 0, i32 9
  %77 = load i8, ptr %76, align 2
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = zext i8 %77 to i16
  br label %86

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.dib0070_config, ptr %75, i32 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = icmp ugt i32 %83, 23999
  %85 = select i1 %84, i16 1, i16 2
  br label %86

86:                                               ; preds = %81, %79
  %87 = phi i16 [ %80, %79 ], [ %85, %81 ]
  %88 = getelementptr inbounds %struct.dib0070_config, ptr %75, i32 0, i32 5
  %89 = load i8, ptr %88, align 4
  %90 = zext i8 %89 to i16
  %91 = shl nuw nsw i16 %90, 3
  %92 = or i16 %91, %87
  %93 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext 16, i16 noundef zeroext %92) #10
  %94 = load ptr, ptr %8, align 8
  %95 = getelementptr inbounds %struct.dib0070_config, ptr %94, i32 0, i32 7
  %96 = load i8, ptr %95, align 4
  %97 = shl i8 %96, 5
  %98 = zext i8 %97 to i16
  %99 = or i16 %98, 256
  %100 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext 31, i16 noundef zeroext %99) #10
  %101 = load ptr, ptr %8, align 8
  %102 = getelementptr inbounds %struct.dib0070_config, ptr %101, i32 0, i32 8
  %103 = load i8, ptr %102, align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %86
  %106 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %5, i8 noundef zeroext 2) #10
  %107 = or i16 %106, 32
  %108 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext 2, i16 noundef zeroext %107) #10
  br label %109

109:                                              ; preds = %105, %86
  %110 = load i8, ptr %39, align 2
  %111 = icmp eq i8 %110, 2
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load ptr, ptr %11, align 4
  %114 = load i32, ptr @debug, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dib0070_set_ctrl_lo5, i32 noundef 5858) #9
  br label %118

118:                                              ; preds = %116, %112
  %119 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %113, i8 noundef zeroext 21, i16 noundef zeroext 5858) #10
  br label %140

120:                                              ; preds = %109
  %121 = load ptr, ptr %8, align 8
  %122 = getelementptr inbounds %struct.dib0070_config, ptr %121, i32 0, i32 12
  %123 = load i8, ptr %122, align 1
  %124 = getelementptr inbounds %struct.dib0070_config, ptr %121, i32 0, i32 11
  %125 = load i8, ptr %124, align 4
  %126 = load ptr, ptr %11, align 4
  %127 = zext i8 %125 to i16
  %128 = shl i16 %127, 14
  %129 = zext i8 %123 to i16
  %130 = shl nuw nsw i16 %129, 6
  %131 = or i16 %130, %128
  %132 = or i16 %131, 5669
  %133 = load i32, ptr @debug, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %120
  %136 = zext i16 %132 to i32
  %137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dib0070_set_ctrl_lo5, i32 noundef %136) #9
  br label %138

138:                                              ; preds = %135, %120
  %139 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %126, i8 noundef zeroext 21, i16 noundef zeroext %132) #10
  br label %140

140:                                              ; preds = %138, %118
  %141 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext 1, i16 noundef zeroext 27848) #10
  %142 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %5, i8 noundef zeroext 32) #10
  %143 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext 24, i16 noundef zeroext 2047) #10
  %144 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext 32, i16 noundef zeroext 18555) #10
  %145 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext 15, i16 noundef zeroext 28032) #10
  tail call void @msleep(i32 noundef 9) #10
  %146 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %5, i8 noundef zeroext 25) #10
  %147 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext 32, i16 noundef zeroext %142) #10
  %148 = zext i16 %146 to i32
  %149 = mul nuw nsw i32 %148, 144
  %150 = udiv i32 %149, 33
  %151 = add nuw nsw i32 %150, 1
  %152 = lshr i32 %151, 1
  %153 = trunc i32 %152 to i16
  %154 = getelementptr %struct.dib0070_state, ptr %5, i32 0, i32 15, i32 0
  store i16 %153, ptr %154, align 2
  %155 = load i32, ptr @debug, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %140
  %158 = and i32 %152, 65535
  %159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dib0070_wbd_offset_calibration, i32 noundef 6, i32 noundef %158) #9
  br label %160

160:                                              ; preds = %157, %140
  %161 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %5, i8 noundef zeroext 32) #10
  %162 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext 24, i16 noundef zeroext 2047) #10
  %163 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext 32, i16 noundef zeroext 18555) #10
  %164 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext 15, i16 noundef zeroext 28544) #10
  tail call void @msleep(i32 noundef 9) #10
  %165 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %5, i8 noundef zeroext 25) #10
  %166 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %5, i8 noundef zeroext 32, i16 noundef zeroext %161) #10
  %167 = zext i16 %165 to i32
  %168 = mul nuw nsw i32 %167, 144
  %169 = udiv i32 %168, 33
  %170 = add nuw nsw i32 %169, 1
  %171 = lshr i32 %170, 1
  %172 = trunc i32 %171 to i16
  %173 = getelementptr %struct.dib0070_state, ptr %5, i32 0, i32 15, i32 1
  store i16 %172, ptr %173, align 4
  %174 = load i32, ptr @debug, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %160
  %177 = and i32 %171, 65535
  %178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dib0070_wbd_offset_calibration, i32 noundef 7, i32 noundef %177) #9
  br label %179

179:                                              ; preds = %176, %160
  %180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  %181 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %181, ptr noundef nonnull align 4 dereferenceable(220) @dib0070_ops, i32 220, i1 false)
  br label %183

182:                                              ; preds = %52, %49
  tail call void @kfree(ptr noundef nonnull %5) #10
  br label %183

183:                                              ; preds = %182, %179
  %184 = phi ptr [ null, %182 ], [ %5, %179 ]
  %185 = phi ptr [ null, %182 ], [ %0, %179 ]
  store ptr %184, ptr %11, align 4
  br label %186

186:                                              ; preds = %183, %3
  %187 = phi ptr [ null, %3 ], [ %185, %183 ]
  ret ptr %187
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dib0070_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib0070_wakeup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib0070_state, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dib0070_config, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef 0) #10
  br label %11

11:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib0070_sleep(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib0070_state, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dib0070_config, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef 1) #10
  br label %11

11:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib0070_tune(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib0070_state, ptr %3, i32 0, i32 5
  store i32 10, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  br label %6

6:                                                ; preds = %398, %1
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %5, align 4
  %10 = icmp ult i32 %9, 170001000
  br i1 %10, label %22, label %11

11:                                               ; preds = %6
  %12 = icmp ult i32 %9, 250001000
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = icmp ult i32 %9, 863001000
  br i1 %14, label %22, label %15

15:                                               ; preds = %13
  %16 = icmp ult i32 %9, 2000001000
  %17 = select i1 %16, i32 1, i32 8
  br label %22

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dib0070_config, ptr %20, i32 0, i32 4
  br label %27

22:                                               ; preds = %15, %13, %6
  %23 = phi i32 [ 2, %13 ], [ %17, %15 ], [ 32, %6 ]
  %24 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dib0070_config, ptr %25, i32 0, i32 3
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi ptr [ %20, %18 ], [ %25, %22 ]
  %29 = phi i1 [ true, %18 ], [ false, %22 ]
  %30 = phi i32 [ 4, %18 ], [ %23, %22 ]
  %31 = phi ptr [ %21, %18 ], [ %26, %22 ]
  %32 = udiv i32 %9, 1000
  %33 = load i32, ptr %31, align 4
  %34 = add i32 %33, %32
  %35 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %34
  br i1 %37, label %63, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 4
  %40 = load i8, ptr %39, align 2
  %41 = icmp eq i8 %40, 2
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.dib0070_config, ptr %28, i32 0, i32 10
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, ptr @dib0070_lna, ptr @dib0070_lna_flip_chip
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi ptr [ @dib0070_lna, %38 ], [ %46, %42 ]
  %49 = phi ptr [ @dib0070s_tuning_table, %38 ], [ @dib0070_tuning_table, %42 ]
  br label %50

50:                                               ; preds = %50, %47
  %51 = phi ptr [ %49, %47 ], [ %54, %50 ]
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %34, %52
  %54 = getelementptr %struct.dib0070_tuning, ptr %51, i32 1
  br i1 %53, label %50, label %55

55:                                               ; preds = %55, %50
  %56 = phi ptr [ %59, %55 ], [ %48, %50 ]
  %57 = load i32, ptr %56, align 4
  %58 = icmp ugt i32 %34, %57
  %59 = getelementptr %struct.dib0070_lna_match, ptr %56, i32 1
  br i1 %58, label %55, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 12
  store ptr %51, ptr %61, align 4
  %62 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 13
  store ptr %56, ptr %62, align 4
  br label %63

63:                                               ; preds = %60, %27
  %64 = load i32, ptr %8, align 4
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %217

66:                                               ; preds = %63
  %67 = load i32, ptr @debug, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dib0070_tune_digital, i32 noundef %30, i32 noundef %34) #9
  %71 = load i32, ptr %35, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = phi i32 [ %71, %69 ], [ %36, %66 ]
  %74 = icmp eq i32 %73, %34
  br i1 %74, label %395, label %75

75:                                               ; preds = %72
  store i32 %34, ptr %35, align 4
  %76 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 12
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.dib0070_tuning, ptr %77, i32 0, i32 2
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i16
  %81 = shl i16 %80, 11
  %82 = getelementptr inbounds %struct.dib0070_tuning, ptr %77, i32 0, i32 3
  %83 = load i8, ptr %82, align 2
  %84 = zext i8 %83 to i16
  %85 = shl nuw nsw i16 %84, 7
  %86 = or i16 %85, %81
  %87 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 11
  store i16 %86, ptr %87, align 2
  %88 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 23, i16 noundef zeroext 48) #10
  %89 = shl i32 %34, 1
  %90 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.dib0070_config, ptr %91, i32 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 9999
  %95 = select i1 %29, i32 %94, i32 %93
  %96 = udiv i32 %95, 10000
  %97 = and i32 %96, 255
  %98 = udiv i32 %93, %97
  %99 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 4
  %100 = load i8, ptr %99, align 2
  %101 = icmp eq i8 %100, 2
  br i1 %101, label %102, label %113

102:                                              ; preds = %75
  %103 = load ptr, ptr %76, align 4
  %104 = getelementptr inbounds %struct.dib0070_tuning, ptr %103, i32 0, i32 4
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = mul i32 %89, %106
  %108 = getelementptr inbounds %struct.dib0070_tuning, ptr %103, i32 0, i32 5
  %109 = load i8, ptr %108, align 4
  %110 = zext i8 %109 to i32
  %111 = udiv i32 %107, %110
  %112 = udiv i32 %111, %98
  br label %116

113:                                              ; preds = %75
  %114 = lshr i32 %98, 1
  %115 = udiv i32 %34, %114
  br label %116

116:                                              ; preds = %113, %102
  %117 = phi i32 [ %115, %113 ], [ %112, %102 ]
  %118 = phi i32 [ %89, %113 ], [ %111, %102 ]
  %119 = mul i32 %117, %98
  %120 = sub i32 %118, %119
  %121 = icmp ult i32 %120, 100
  br i1 %121, label %133, label %122

122:                                              ; preds = %116
  %123 = icmp ult i32 %120, 200
  br i1 %123, label %133, label %124

124:                                              ; preds = %122
  %125 = add i32 %98, -100
  %126 = icmp ugt i32 %120, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = add i32 %117, 1
  br label %133

129:                                              ; preds = %124
  %130 = add i32 %98, -200
  %131 = tail call i32 @llvm.umin.i32(i32 %120, i32 %130) #10
  %132 = mul i32 %131, 6528
  br label %133

133:                                              ; preds = %129, %127, %122, %116
  %134 = phi i32 [ %128, %127 ], [ %117, %116 ], [ %117, %122 ], [ %117, %129 ]
  %135 = phi i32 [ 0, %127 ], [ 0, %116 ], [ 1305600, %122 ], [ %132, %129 ]
  %136 = udiv i32 %98, 10
  %137 = udiv i32 %135, %136
  %138 = icmp ugt i32 %136, %135
  br i1 %138, label %142, label %139

139:                                              ; preds = %133
  %140 = load i16, ptr %87, align 2
  %141 = or i16 %140, 20480
  store i16 %141, ptr %87, align 2
  br label %142

142:                                              ; preds = %139, %133
  %143 = phi i32 [ 255, %139 ], [ 1, %133 ]
  %144 = trunc i32 %134 to i16
  %145 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 17, i16 noundef zeroext %144) #10
  %146 = shl nuw nsw i32 %143, 8
  %147 = or i32 %146, %97
  %148 = trunc i32 %147 to i16
  %149 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 18, i16 noundef zeroext %148) #10
  %150 = trunc i32 %137 to i16
  %151 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 19, i16 noundef zeroext %150) #10
  %152 = load i8, ptr %99, align 2
  %153 = icmp eq i8 %152, 2
  br i1 %153, label %154, label %170

154:                                              ; preds = %142
  %155 = icmp eq i32 %30, 8
  %156 = load ptr, ptr %2, align 4
  %157 = load i32, ptr @debug, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %155, label %159, label %165

159:                                              ; preds = %154
  br i1 %158, label %162, label %160

160:                                              ; preds = %159
  %161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dib0070_set_ctrl_lo5, i32 noundef 5858) #9
  br label %162

162:                                              ; preds = %160, %159
  %163 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %156, i8 noundef zeroext 21, i16 noundef zeroext 5858) #10
  %164 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 29, i16 noundef zeroext -1) #10
  br label %170

165:                                              ; preds = %154
  br i1 %158, label %168, label %166

166:                                              ; preds = %165
  %167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dib0070_set_ctrl_lo5, i32 noundef 22245) #9
  br label %168

168:                                              ; preds = %166, %165
  %169 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %156, i8 noundef zeroext 21, i16 noundef zeroext 22245) #10
  br label %170

170:                                              ; preds = %168, %162, %142
  %171 = load ptr, ptr %76, align 4
  %172 = getelementptr inbounds %struct.dib0070_tuning, ptr %171, i32 0, i32 7
  %173 = load i16, ptr %172, align 2
  %174 = or i16 %173, 123
  %175 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 32, i16 noundef zeroext %174) #10
  %176 = load i32, ptr @debug, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %395, label %178

178:                                              ; preds = %170
  %179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dib0070_tune_digital, i32 noundef %97, i32 noundef %98) #9
  %180 = load i32, ptr @debug, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %395, label %182

182:                                              ; preds = %178
  %183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dib0070_tune_digital, i32 noundef %134, i32 noundef %137) #9
  %184 = load i32, ptr @debug, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %395, label %186

186:                                              ; preds = %182
  %187 = and i32 %137, 65535
  %188 = load i16, ptr %87, align 2
  %189 = lshr i16 %188, 12
  %190 = and i16 %189, 1
  %191 = zext i16 %190 to i32
  %192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dib0070_tune_digital, i32 noundef %187, i32 noundef %143, i32 noundef %191) #9
  %193 = load i32, ptr @debug, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %395, label %195

195:                                              ; preds = %186
  %196 = load ptr, ptr %76, align 4
  %197 = getelementptr inbounds %struct.dib0070_tuning, ptr %196, i32 0, i32 3
  %198 = load i8, ptr %197, align 2
  %199 = zext i8 %198 to i32
  %200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.dib0070_tune_digital, i32 noundef %199) #9
  %201 = load i32, ptr @debug, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %395, label %203

203:                                              ; preds = %195
  %204 = load ptr, ptr %76, align 4
  %205 = getelementptr inbounds %struct.dib0070_tuning, ptr %204, i32 0, i32 2
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dib0070_tune_digital, i32 noundef %207) #9
  %209 = load i32, ptr @debug, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %395, label %211

211:                                              ; preds = %203
  %212 = load ptr, ptr %76, align 4
  %213 = getelementptr inbounds %struct.dib0070_tuning, ptr %212, i32 0, i32 4
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i32
  %216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dib0070_tune_digital, i32 noundef %215, i32 noundef %34) #9
  br label %395

217:                                              ; preds = %63
  %218 = add i32 %64, -11
  %219 = icmp ult i32 %218, 4
  br i1 %219, label %220, label %296

220:                                              ; preds = %217
  switch i32 %64, label %398 [
    i32 11, label %221
    i32 12, label %229
    i32 13, label %240
    i32 14, label %287
  ]

221:                                              ; preds = %220
  %222 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 15, i16 noundef zeroext -4848) #10
  %223 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 23, i16 noundef zeroext 52) #10
  %224 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 24, i16 noundef zeroext 50) #10
  %225 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 10
  store i8 64, ptr %225, align 1
  %226 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 9
  store i8 64, ptr %226, align 4
  %227 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 7
  store i8 64, ptr %227, align 4
  %228 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 8
  store i16 3000, ptr %228, align 2
  br label %395

229:                                              ; preds = %220
  %230 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 7
  %231 = load i8, ptr %230, align 4
  %232 = sdiv i8 %231, 2
  store i8 %232, ptr %230, align 4
  %233 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 11
  %234 = load i16, ptr %233, align 2
  %235 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 9
  %236 = load i8, ptr %235, align 4
  %237 = sext i8 %236 to i16
  %238 = or i16 %234, %237
  %239 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 20, i16 noundef zeroext %238) #10
  br label %395

240:                                              ; preds = %220
  %241 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %7, i8 noundef zeroext 25) #10
  %242 = load i32, ptr @debug, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %252, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 9
  %246 = load i8, ptr %245, align 4
  %247 = sext i8 %246 to i32
  %248 = zext i16 %241 to i32
  %249 = mul nuw nsw i32 %248, 1800
  %250 = lshr i32 %249, 10
  %251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.dib0070_captrim, i32 noundef %247, i32 noundef %248, i32 noundef %250) #9
  br label %252

252:                                              ; preds = %244, %240
  %253 = icmp ugt i16 %241, 399
  %254 = add i16 %241, -400
  %255 = sub i16 400, %241
  %256 = select i1 %253, i16 %254, i16 %255
  %257 = zext i16 %256 to i32
  %258 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 8
  %259 = load i16, ptr %258, align 2
  %260 = zext i16 %259 to i32
  %261 = icmp ult i16 %256, %259
  br i1 %261, label %265, label %262

262:                                              ; preds = %252
  %263 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 9
  %264 = load i8, ptr %263, align 4
  br label %277

265:                                              ; preds = %252
  %266 = load i32, ptr @debug, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 9
  %270 = load i8, ptr %269, align 4
  %271 = sext i8 %270 to i32
  %272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dib0070_captrim, i32 noundef %271, i32 noundef %257, i32 noundef %260) #9
  br label %273

273:                                              ; preds = %268, %265
  store i16 %256, ptr %258, align 2
  %274 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 9
  %275 = load i8, ptr %274, align 4
  %276 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 10
  store i8 %275, ptr %276, align 1
  br label %277

277:                                              ; preds = %273, %262
  %278 = phi i8 [ %264, %262 ], [ %275, %273 ]
  %279 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 7
  %280 = load i8, ptr %279, align 4
  %281 = sub i8 0, %280
  %282 = select i1 %253, i8 %281, i8 %280
  %283 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 9
  %284 = add i8 %282, %278
  store i8 %284, ptr %283, align 4
  %285 = icmp sgt i8 %280, 0
  %286 = select i1 %285, i32 12, i32 14
  br label %395

287:                                              ; preds = %220
  %288 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 11
  %289 = load i16, ptr %288, align 2
  %290 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 10
  %291 = load i8, ptr %290, align 1
  %292 = sext i8 %291 to i16
  %293 = or i16 %289, %292
  %294 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 20, i16 noundef zeroext %293) #10
  %295 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 24, i16 noundef zeroext 2047) #10
  br label %395

296:                                              ; preds = %217
  switch i32 %64, label %404 [
    i32 15, label %297
    i32 16, label %360
  ]

297:                                              ; preds = %296
  %298 = getelementptr inbounds %struct.dib0070_config, ptr %28, i32 0, i32 13
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %323, label %301

301:                                              ; preds = %297
  %302 = udiv i32 %34, 1000
  br label %303

303:                                              ; preds = %303, %301
  %304 = phi ptr [ %308, %303 ], [ %299, %301 ]
  %305 = load i16, ptr %304, align 2
  %306 = zext i16 %305 to i32
  %307 = icmp ugt i32 %302, %306
  %308 = getelementptr %struct.dib0070_wbd_gain_cfg, ptr %304, i32 1
  br i1 %307, label %303, label %309

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, ptr %304, i32 0, i32 1
  %311 = load i16, ptr %310, align 2
  %312 = shl i16 %311, 9
  %313 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 12
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.dib0070_tuning, ptr %314, i32 0, i32 6
  %316 = load i8, ptr %315, align 1
  %317 = zext i8 %316 to i16
  %318 = or i16 %312, %317
  %319 = or i16 %318, 28800
  %320 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 15, i16 noundef zeroext %319) #10
  %321 = load i16, ptr %310, align 2
  %322 = trunc i16 %321 to i8
  br label %331

323:                                              ; preds = %297
  %324 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 12
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr inbounds %struct.dib0070_tuning, ptr %325, i32 0, i32 6
  %327 = load i8, ptr %326, align 1
  %328 = zext i8 %327 to i16
  %329 = or i16 %328, 31872
  %330 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 15, i16 noundef zeroext %329) #10
  br label %331

331:                                              ; preds = %323, %309
  %332 = phi i8 [ 6, %323 ], [ %322, %309 ]
  %333 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 14
  store i8 %332, ptr %333, align 4
  %334 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 6, i16 noundef zeroext 16383) #10
  %335 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 12
  %336 = load ptr, ptr %335, align 4
  %337 = getelementptr inbounds %struct.dib0070_tuning, ptr %336, i32 0, i32 1
  %338 = load i8, ptr %337, align 4
  %339 = zext i8 %338 to i16
  %340 = shl i16 %339, 11
  %341 = getelementptr inbounds %struct.dib0070_state, ptr %7, i32 0, i32 13
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.dib0070_lna_match, ptr %342, i32 0, i32 1
  %344 = load i8, ptr %343, align 4
  %345 = zext i8 %344 to i16
  %346 = shl nuw nsw i16 %345, 3
  %347 = or i16 %340, %346
  %348 = or i16 %347, 1795
  %349 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 7, i16 noundef zeroext %348) #10
  %350 = load ptr, ptr %341, align 4
  %351 = getelementptr inbounds %struct.dib0070_lna_match, ptr %350, i32 0, i32 1
  %352 = load i8, ptr %351, align 4
  %353 = zext i8 %352 to i16
  %354 = shl i16 %353, 10
  %355 = or i16 %354, 511
  %356 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 8, i16 noundef zeroext %355) #10
  %357 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 13, i16 noundef zeroext 3456) #10
  %358 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 24, i16 noundef zeroext 2047) #10
  %359 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %7, i8 noundef zeroext 23, i16 noundef zeroext 51) #10
  br label %395

360:                                              ; preds = %296
  %361 = load ptr, ptr %2, align 4
  %362 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %361, i8 noundef zeroext 2) #10
  %363 = and i16 %362, 16383
  %364 = getelementptr inbounds %struct.dib0070_state, ptr %361, i32 0, i32 1
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.dvb_frontend, ptr %365, i32 0, i32 8, i32 7
  %367 = load i32, ptr %366, align 4
  %368 = icmp ugt i32 %367, 7000999
  br i1 %368, label %379, label %369

369:                                              ; preds = %360
  %370 = icmp ugt i32 %367, 6000999
  br i1 %370, label %371, label %373

371:                                              ; preds = %369
  %372 = or i16 %363, 16384
  br label %379

373:                                              ; preds = %369
  %374 = icmp ugt i32 %367, 5000999
  br i1 %374, label %375, label %377

375:                                              ; preds = %373
  %376 = or i16 %363, -32768
  br label %379

377:                                              ; preds = %373
  %378 = or i16 %362, -16384
  br label %379

379:                                              ; preds = %377, %375, %371, %360
  %380 = phi i16 [ %372, %371 ], [ %376, %375 ], [ %378, %377 ], [ %363, %360 ]
  %381 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %361, i8 noundef zeroext 2, i16 noundef zeroext %380) #10
  %382 = load ptr, ptr %364, align 4
  %383 = getelementptr inbounds %struct.dvb_frontend, ptr %382, i32 0, i32 8, i32 15
  %384 = load i32, ptr %383, align 4
  %385 = icmp eq i32 %384, 8
  br i1 %385, label %386, label %395

386:                                              ; preds = %379
  %387 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %361, i8 noundef zeroext 23) #10
  %388 = and i16 %387, -4
  %389 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %361, i8 noundef zeroext 23, i16 noundef zeroext %388) #10
  %390 = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %361, i8 noundef zeroext 1) #10
  %391 = and i16 %390, 511
  %392 = or i16 %391, 30720
  %393 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %361, i8 noundef zeroext 1, i16 noundef zeroext %392) #10
  %394 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %361, i8 noundef zeroext 23, i16 noundef zeroext %387) #10
  br label %395

395:                                              ; preds = %386, %379, %331, %287, %277, %229, %221, %211, %203, %195, %186, %182, %178, %170, %72
  %396 = phi i32 [ 16, %331 ], [ 11, %170 ], [ 11, %178 ], [ 11, %186 ], [ 11, %182 ], [ 11, %195 ], [ 11, %211 ], [ 11, %203 ], [ 16, %72 ], [ 13, %229 ], [ 15, %287 ], [ 12, %221 ], [ %286, %277 ], [ 19, %379 ], [ 19, %386 ]
  %397 = phi i8 [ 10, %331 ], [ 10, %170 ], [ 10, %178 ], [ 10, %186 ], [ 10, %182 ], [ 10, %195 ], [ 10, %211 ], [ 10, %203 ], [ 50, %72 ], [ 15, %229 ], [ 0, %287 ], [ 20, %221 ], [ 0, %277 ], [ 10, %379 ], [ 10, %386 ]
  store i32 %396, ptr %8, align 4
  br label %398

398:                                              ; preds = %395, %220
  %399 = phi i8 [ %397, %395 ], [ 0, %220 ]
  %400 = udiv i8 %399, 10
  %401 = zext i8 %400 to i32
  tail call void @msleep(i32 noundef %401) #10
  %402 = load i32, ptr %4, align 4
  %403 = icmp eq i32 %402, 19
  br i1 %403, label %404, label %6

404:                                              ; preds = %398, %296
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dib0070_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %6, 1000
  store i32 %7, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
