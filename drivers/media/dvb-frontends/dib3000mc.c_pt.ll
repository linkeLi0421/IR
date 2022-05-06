; ModuleID = '/llk/IR/drivers/media/dvb-frontends/dib3000mc.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dib3000mc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mc_get_tuner_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mc_get_tuner_i2c_master\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mc_get_tuner_i2c_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mc_pid_control:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mc_pid_control\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mc_pid_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mc_pid_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mc_pid_parse\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mc_pid_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mc_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mc_set_config\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mc_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mc_i2c_enumeration:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mc_i2c_enumeration\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mc_i2c_enumeration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mc_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mc_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mc_attach:\09\09\09\09\09"
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
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.dib3000mc_state = type { %struct.dvb_frontend, ptr, i8, ptr, %struct.dibx000_i2c_master, i32, i32, i16, i8 }
%struct.dibx000_i2c_master = type { i16, i32, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, ptr, i8, i16, [34 x %struct.i2c_msg], [8 x i8], [2 x i8], %struct.mutex }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dib3000mc_config = type { ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8 }
%struct.dibx000_agc_config = type { i8, i16, i16, i16, i8, i16, i8, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.73 }
%struct.anon.73 = type { i16, i16, i16, i16 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [42 x i8] c"parm=debug:turn on debugging (default: 0)\00", section ".modinfo", align 1
@__param_str_buggy_sfn_workaround = internal constant [21 x i8] c"buggy_sfn_workaround\00", align 1
@buggy_sfn_workaround = internal global i32 0, align 4
@__param_buggy_sfn_workaround = internal constant %struct.kernel_param { ptr @__param_str_buggy_sfn_workaround, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @buggy_sfn_workaround } }, section "__param", align 4
@__UNIQUE_ID_buggy_sfn_workaroundtype251 = internal constant [34 x i8] c"parmtype=buggy_sfn_workaround:int\00", section ".modinfo", align 1
@__UNIQUE_ID_buggy_sfn_workaround252 = internal constant [73 x i8] c"parm=buggy_sfn_workaround:Enable work-around for buggy SFNs (default: 0)\00", section ".modinfo", align 1
@__kstrtab_dib3000mc_get_tuner_i2c_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mc_get_tuner_i2c_master = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mc_get_tuner_i2c_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mc_get_tuner_i2c_master to i32), ptr @__kstrtab_dib3000mc_get_tuner_i2c_master, ptr @__kstrtabns_dib3000mc_get_tuner_i2c_master }, section "___ksymtab+dib3000mc_get_tuner_i2c_master", align 4
@__kstrtab_dib3000mc_pid_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mc_pid_control = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mc_pid_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mc_pid_control to i32), ptr @__kstrtab_dib3000mc_pid_control, ptr @__kstrtabns_dib3000mc_pid_control }, section "___ksymtab+dib3000mc_pid_control", align 4
@__kstrtab_dib3000mc_pid_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mc_pid_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mc_pid_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mc_pid_parse to i32), ptr @__kstrtab_dib3000mc_pid_parse, ptr @__kstrtabns_dib3000mc_pid_parse }, section "___ksymtab+dib3000mc_pid_parse", align 4
@__kstrtab_dib3000mc_set_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mc_set_config = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mc_set_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mc_set_config to i32), ptr @__kstrtab_dib3000mc_set_config, ptr @__kstrtabns_dib3000mc_set_config }, section "___ksymtab+dib3000mc_set_config", align 4
@dib3000mc_i2c_enumeration.DIB3000MC_I2C_ADDRESS = internal unnamed_addr constant [4 x i8] c"\14\16\18\1A", align 1
@.str = private unnamed_addr constant [55 x i8] c"\017dib3000mc: %s: -E-  DiB3000P/MC #%d: not identified\0A\00", align 1
@__func__.dib3000mc_i2c_enumeration = private unnamed_addr constant [26 x i8] c"dib3000mc_i2c_enumeration\00", align 1
@__kstrtab_dib3000mc_i2c_enumeration = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mc_i2c_enumeration = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mc_i2c_enumeration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mc_i2c_enumeration to i32), ptr @__kstrtab_dib3000mc_i2c_enumeration, ptr @__kstrtabns_dib3000mc_i2c_enumeration }, section "___ksymtab+dib3000mc_i2c_enumeration", align 4
@dib3000mc_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"DiBcom 3000MC/P\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44250000, i32 867250000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @dib3000mc_release, ptr null, ptr @dib3000mc_init, ptr @dib3000mc_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dib3000mc_set_frontend, ptr @dib3000mc_fe_get_tune_settings, ptr @dib3000mc_get_frontend, ptr @dib3000mc_read_status, ptr @dib3000mc_read_ber, ptr @dib3000mc_read_signal_strength, ptr @dib3000mc_read_snr, ptr @dib3000mc_read_unc_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_dib3000mc_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mc_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mc_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mc_attach to i32), ptr @__kstrtab_dib3000mc_attach, ptr @__kstrtabns_dib3000mc_attach }, section "___ksymtab+dib3000mc_attach", align 4
@__UNIQUE_ID_author253 = internal constant [55 x i8] c"author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [61 x i8] c"description=Driver for the DiBcom 3000MC/P COFDM demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"\017dib3000mc: %s: i2c read error on %d\0A\00", align 1
@__func__.dib3000mc_read_word = private unnamed_addr constant [20 x i8] c"dib3000mc_read_word\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"\017dib3000mc: %s: -E-  DiB3000MC/P: wrong Vendor ID (read=0x%x)\0A\00", align 1
@__func__.dib3000mc_identify = private unnamed_addr constant [19 x i8] c"dib3000mc_identify\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\017dib3000mc: %s: -E-  DiB3000MC/P: wrong Device ID (%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\017dib3000mc: %s: -I-  found DiB3000MC/P: %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"\017dib3000mc: %s: -I-  Setting output mode for demod %p to %d\0A\00", align 1
@__func__.dib3000mc_set_output_mode = private unnamed_addr constant [26 x i8] c"dib3000mc_set_output_mode\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"\017dib3000mc: %s: Unhandled output_mode passed to be set for demod %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"\017dib3000mc: %s: timf: %d\0A\00", align 1
@__func__.dib3000mc_set_timing = private unnamed_addr constant [21 x i8] c"dib3000mc_set_timing\00", align 1
@impulse_noise_val = internal unnamed_addr constant [29 x i16] [i16 56, i16 1753, i16 16168, i16 1959, i16 14964, i16 406, i16 810, i16 1164, i16 16382, i16 2035, i16 11668, i16 118, i16 1341, i16 16376, i16 2019, i16 13088, i16 118, i16 1459, i16 16363, i16 2002, i16 13918, i16 118, i16 1164, i16 16382, i16 1459, i16 16363, i16 118, i16 0, i16 13], align 2
@.str.8 = private unnamed_addr constant [41 x i8] c"\017dib3000mc: %s: autosearch returns: %d\0A\00", align 1
@__func__.dib3000mc_set_frontend = private unnamed_addr constant [23 x i8] c"dib3000mc_set_frontend\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"\017dib3000mc: %s: SFN workaround is active\0A\00", align 1
@__func__.dib3000mc_tune = private unnamed_addr constant [15 x i8] c"dib3000mc_tune\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_buggy_sfn_workaround252, ptr @__UNIQUE_ID_buggy_sfn_workaroundtype251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_dib3000mc_attach, ptr @__ksymtab_dib3000mc_get_tuner_i2c_master, ptr @__ksymtab_dib3000mc_i2c_enumeration, ptr @__ksymtab_dib3000mc_pid_control, ptr @__ksymtab_dib3000mc_pid_parse, ptr @__ksymtab_dib3000mc_set_config, ptr @__param_buggy_sfn_workaround, ptr @__param_debug], section "llvm.metadata"
@switch.table.dib3000mc_get_frontend.10 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 7, i32 5], align 4
@switch.table.dib3000mc_set_channel_cfg = private unnamed_addr constant [6 x i8] c"\04\06\02\0A\02\0E", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dib3000mc_get_tuner_i2c_master(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib3000mc_state, ptr %4, i32 0, i32 4
  %6 = tail call ptr @dibx000_get_i2c_adapter(ptr noundef %5, i32 noundef 0, i32 noundef %1) #10
  ret ptr %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dibx000_get_i2c_adapter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dib3000mc_pid_control(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %8, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.dib3000mc_state, ptr %7, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = lshr i8 %10, 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 4) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %4
  %18 = icmp eq i32 %3, 0
  %19 = trunc i32 %2 to i16
  %20 = or i16 %19, 8192
  %21 = select i1 %18, i16 0, i16 %20
  %22 = trunc i32 %1 to i16
  %23 = add i16 %22, 212
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %25 = lshr i16 %23, 8
  %26 = trunc i16 %25 to i8
  store i8 %26, ptr %15, align 8
  %27 = trunc i16 %23 to i8
  %28 = getelementptr i8, ptr %15, i32 1
  store i8 %27, ptr %28, align 1
  %29 = lshr i16 %21, 8
  %30 = trunc i16 %29 to i8
  %31 = getelementptr i8, ptr %15, i32 2
  store i8 %30, ptr %31, align 2
  %32 = trunc i16 %21 to i8
  %33 = getelementptr i8, ptr %15, i32 3
  store i8 %32, ptr %33, align 1
  store ptr %15, ptr %24, align 4
  %34 = getelementptr inbounds %struct.dib3000mc_state, ptr %7, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %15) #10
  br label %37

37:                                               ; preds = %17, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dib3000mc_pid_parse(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %5, i16 noundef zeroext 206)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.dib3000mc_state, ptr %5, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = lshr i8 %9, 1
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %2
  %17 = trunc i32 %1 to i16
  %18 = shl i16 %17, 4
  %19 = and i16 %6, -17
  %20 = or i16 %19, %18
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store i8 0, ptr %14, align 8
  %22 = getelementptr i8, ptr %14, i32 1
  store i8 -50, ptr %22, align 1
  %23 = lshr i16 %20, 8
  %24 = trunc i16 %23 to i8
  %25 = getelementptr i8, ptr %14, i32 2
  store i8 %24, ptr %25, align 2
  %26 = trunc i16 %20 to i8
  %27 = getelementptr i8, ptr %14, i32 3
  store i8 %26, ptr %27, align 1
  store ptr %14, ptr %21, align 4
  %28 = getelementptr inbounds %struct.dib3000mc_state, ptr %5, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %3, i32 noundef 1) #10
  %31 = icmp eq i32 %30, 1
  %32 = select i1 %31, i32 0, i32 -121
  call void @kfree(ptr noundef nonnull %14) #10
  br label %33

33:                                               ; preds = %16, %2
  %34 = phi i32 [ %32, %16 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dib3000mc_read_word(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 16, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = lshr i8 %6, 1
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %8, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 2, ptr %13, align 4
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 4) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %20 = lshr i16 %1, 8
  %21 = trunc i16 %20 to i8
  %22 = or i8 %21, -128
  store i8 %22, ptr %15, align 8
  %23 = trunc i16 %1 to i8
  %24 = getelementptr i8, ptr %15, i32 1
  store i8 %23, ptr %24, align 1
  %25 = getelementptr i8, ptr %15, i32 2
  store i8 0, ptr %25, align 2
  %26 = getelementptr i8, ptr %15, i32 3
  store i8 0, ptr %26, align 1
  store ptr %15, ptr %19, align 4
  store ptr %25, ptr %18, align 4
  %27 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 2) #10
  %30 = icmp ne i32 %29, 2
  %31 = load i32, ptr @debug, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %37

34:                                               ; preds = %17
  %35 = zext i16 %1 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dib3000mc_read_word, i32 noundef %35) #12
  br label %37

37:                                               ; preds = %34, %17
  %38 = load i8, ptr %25, align 2
  %39 = zext i8 %38 to i16
  %40 = shl nuw i16 %39, 8
  %41 = load i8, ptr %26, align 1
  %42 = zext i8 %41 to i16
  %43 = or i16 %40, %42
  call void @kfree(ptr noundef nonnull %15) #10
  br label %44

44:                                               ; preds = %37, %2
  %45 = phi i16 [ %43, %37 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i16 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @dib3000mc_set_config(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dib3000mc_state, ptr %4, i32 0, i32 1
  store ptr %1, ptr %5, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dib3000mc_i2c_enumeration(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 4152) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %85, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.dib3000mc_state, ptr %8, i32 0, i32 3
  store ptr %0, ptr %11, align 8
  %12 = add i32 %1, -1
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %83

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dib3000mc_state, ptr %8, i32 0, i32 1
  %16 = getelementptr inbounds %struct.dib3000mc_state, ptr %8, i32 0, i32 2
  %17 = getelementptr inbounds i8, ptr %6, i32 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  br label %28

20:                                               ; preds = %59
  %21 = icmp sgt i32 %1, 0
  br i1 %21, label %22, label %83

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.dib3000mc_state, ptr %8, i32 0, i32 1
  %24 = getelementptr inbounds %struct.dib3000mc_state, ptr %8, i32 0, i32 2
  %25 = getelementptr inbounds i8, ptr %5, i32 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  br label %62

28:                                               ; preds = %59, %14
  %29 = phi i32 [ %12, %14 ], [ %60, %59 ]
  %30 = getelementptr %struct.dib3000mc_config, ptr %3, i32 %29
  store ptr %30, ptr %15, align 8
  %31 = getelementptr [4 x i8], ptr @dib3000mc_i2c_enumeration.DIB3000MC_I2C_ADDRESS, i32 0, i32 %29
  %32 = load i8, ptr %31, align 1
  store i8 %32, ptr %16, align 4
  %33 = call fastcc i32 @dib3000mc_identify(ptr noundef nonnull %8)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  store i8 %2, ptr %16, align 4
  %36 = call fastcc i32 @dib3000mc_identify(ptr noundef nonnull %8)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %83, label %41

41:                                               ; preds = %38
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dib3000mc_i2c_enumeration, i32 noundef %29) #12
  br label %83

43:                                               ; preds = %35, %28
  call fastcc void @dib3000mc_set_output_mode(ptr noundef nonnull %8, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  store i32 4, ptr %17, align 4, !annotation !8
  %44 = load i8, ptr %16, align 4
  %45 = lshr i8 %44, 1
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %6, align 4
  store i16 0, ptr %18, align 2
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %48 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3264, i32 noundef 4) #11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %43
  %51 = shl i8 %32, 3
  %52 = or i8 %51, 1
  store i8 4, ptr %48, align 8
  %53 = getelementptr i8, ptr %48, i32 1
  store i8 0, ptr %53, align 1
  %54 = lshr i8 %32, 5
  %55 = getelementptr i8, ptr %48, i32 2
  store i8 %54, ptr %55, align 2
  %56 = getelementptr i8, ptr %48, i32 3
  store i8 %52, ptr %56, align 1
  store ptr %48, ptr %19, align 4
  %57 = load ptr, ptr %11, align 8
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %6, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %48) #10
  br label %59

59:                                               ; preds = %50, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  store i8 %32, ptr %16, align 4
  %60 = add i32 %29, -1
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %28, label %20

62:                                               ; preds = %80, %22
  %63 = phi i32 [ 0, %22 ], [ %81, %80 ]
  %64 = getelementptr %struct.dib3000mc_config, ptr %3, i32 %63
  store ptr %64, ptr %23, align 8
  %65 = getelementptr [4 x i8], ptr @dib3000mc_i2c_enumeration.DIB3000MC_I2C_ADDRESS, i32 0, i32 %63
  %66 = load i8, ptr %65, align 1
  store i8 %66, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  store i32 4, ptr %25, align 4, !annotation !8
  %67 = lshr i8 %66, 1
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %5, align 4
  store i16 0, ptr %26, align 2
  %69 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %70 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3264, i32 noundef 4) #11
  %71 = icmp eq ptr %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %62
  %73 = shl i8 %66, 3
  store i8 4, ptr %70, align 8
  %74 = getelementptr i8, ptr %70, i32 1
  store i8 0, ptr %74, align 1
  %75 = lshr i8 %66, 5
  %76 = getelementptr i8, ptr %70, i32 2
  store i8 %75, ptr %76, align 2
  %77 = getelementptr i8, ptr %70, i32 3
  store i8 %73, ptr %77, align 1
  store ptr %70, ptr %27, align 4
  %78 = load ptr, ptr %11, align 8
  %79 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %70) #10
  br label %80

80:                                               ; preds = %72, %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call fastcc void @dib3000mc_set_output_mode(ptr noundef nonnull %8, i32 noundef 0)
  %81 = add nuw nsw i32 %63, 1
  %82 = icmp eq i32 %81, %1
  br i1 %82, label %83, label %62

83:                                               ; preds = %80, %41, %38, %20, %10
  %84 = phi i32 [ -19, %41 ], [ -19, %38 ], [ 0, %10 ], [ 0, %20 ], [ 0, %80 ]
  call void @kfree(ptr noundef nonnull %8) #10
  br label %85

85:                                               ; preds = %83, %4
  %86 = phi i32 [ -12, %4 ], [ %84, %83 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dib3000mc_identify(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %0, i16 noundef zeroext 1025)
  %3 = zext i16 %2 to i32
  %4 = icmp eq i16 %2, 435
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dib3000mc_identify, i32 noundef %3) #12
  br label %26

10:                                               ; preds = %1
  %11 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %0, i16 noundef zeroext 1026)
  %12 = zext i16 %11 to i32
  %13 = add i16 %11, -12291
  %14 = icmp ult i16 %13, -2
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dib3000mc_identify, i32 noundef %12) #12
  br label %26

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 7
  store i16 %11, ptr %21, align 8
  %22 = load i32, ptr @debug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dib3000mc_identify, i32 noundef %12) #12
  br label %26

26:                                               ; preds = %24, %20, %18, %15, %8, %5
  %27 = phi i32 [ -121, %8 ], [ -121, %5 ], [ -121, %18 ], [ -121, %15 ], [ 0, %24 ], [ 0, %20 ]
  ret i32 %27
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib3000mc_set_output_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %0, i16 noundef zeroext 206)
  %8 = and i16 %7, 16
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dib3000mc_set_output_mode, ptr noundef %0, i32 noundef %1) #12
  br label %13

13:                                               ; preds = %11, %2
  switch i32 %1, label %19 [
    i32 0, label %24
    i32 1, label %14
    i32 2, label %15
    i32 4, label %18
    i32 5, label %16
  ]

14:                                               ; preds = %13
  br label %24

15:                                               ; preds = %13
  br label %24

16:                                               ; preds = %13
  %17 = or i16 %8, 6
  br label %24

18:                                               ; preds = %13
  br label %24

19:                                               ; preds = %13
  %20 = load i32, ptr @debug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dib3000mc_set_output_mode, ptr noundef %0) #12
  br label %24

24:                                               ; preds = %22, %19, %18, %16, %15, %14, %13
  %25 = phi i16 [ 8192, %18 ], [ 10240, %16 ], [ 2048, %15 ], [ 0, %14 ], [ 0, %13 ], [ 0, %22 ], [ 0, %19 ]
  %26 = phi i8 [ 1, %18 ], [ 3, %16 ], [ 1, %15 ], [ 1, %14 ], [ 0, %13 ], [ 1, %22 ], [ 1, %19 ]
  %27 = phi i16 [ %8, %18 ], [ %17, %16 ], [ %8, %15 ], [ %8, %14 ], [ %8, %13 ], [ %8, %22 ], [ %8, %19 ]
  %28 = phi i8 [ 7, %18 ], [ 2, %16 ], [ 7, %15 ], [ 7, %14 ], [ 7, %13 ], [ 7, %22 ], [ 7, %19 ]
  %29 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.dib3000mc_config, ptr %30, i32 0, i32 10
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 0
  %34 = or i16 %27, 32
  %35 = select i1 %33, i16 %27, i16 %34
  %36 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %0, i16 noundef zeroext 244)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %37 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %37, align 4, !annotation !8
  %38 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 2
  %39 = load i8, ptr %38, align 4
  %40 = lshr i8 %39, 1
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %6, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3264, i32 noundef 4) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %24
  %47 = and i16 %36, 1792
  %48 = or i16 %47, %25
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store i8 0, ptr %44, align 8
  %50 = getelementptr i8, ptr %44, i32 1
  store i8 -12, ptr %50, align 1
  %51 = lshr exact i16 %48, 8
  %52 = trunc i16 %51 to i8
  %53 = getelementptr i8, ptr %44, i32 2
  store i8 %52, ptr %53, align 2
  %54 = trunc i16 %36 to i8
  %55 = getelementptr i8, ptr %44, i32 3
  store i8 %54, ptr %55, align 1
  store ptr %44, ptr %49, align 4
  %56 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %6, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %44) #10
  br label %59

59:                                               ; preds = %46, %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %60 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %60, align 4, !annotation !8
  %61 = load i8, ptr %38, align 4
  %62 = lshr i8 %61, 1
  %63 = zext i8 %62 to i16
  store i16 %63, ptr %5, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %64, align 2
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %66 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3264, i32 noundef 4) #11
  %67 = icmp eq ptr %66, null
  br i1 %67, label %79, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store i8 0, ptr %66, align 8
  %70 = getelementptr i8, ptr %66, i32 1
  store i8 -50, ptr %70, align 1
  %71 = lshr i16 %35, 8
  %72 = trunc i16 %71 to i8
  %73 = getelementptr i8, ptr %66, i32 2
  store i8 %72, ptr %73, align 2
  %74 = trunc i16 %35 to i8
  %75 = getelementptr i8, ptr %66, i32 3
  store i8 %74, ptr %75, align 1
  store ptr %66, ptr %69, align 4
  %76 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %66) #10
  br label %79

79:                                               ; preds = %68, %59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %80 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %80, align 4, !annotation !8
  %81 = load i8, ptr %38, align 4
  %82 = lshr i8 %81, 1
  %83 = zext i8 %82 to i16
  store i16 %83, ptr %4, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %84, align 2
  %85 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %86 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3264, i32 noundef 4) #11
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store i8 0, ptr %86, align 8
  %90 = getelementptr i8, ptr %86, i32 1
  store i8 -49, ptr %90, align 1
  %91 = getelementptr i8, ptr %86, i32 2
  store i8 %28, ptr %91, align 2
  %92 = getelementptr i8, ptr %86, i32 3
  store i8 0, ptr %92, align 1
  store ptr %86, ptr %89, align 4
  %93 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %94 = load ptr, ptr %93, align 8
  %95 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %86) #10
  br label %96

96:                                               ; preds = %88, %79
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %97 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %97, align 4, !annotation !8
  %98 = load i8, ptr %38, align 4
  %99 = lshr i8 %98, 1
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %3, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %101, align 2
  %102 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %103 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 3264, i32 noundef 4) #11
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store i8 4, ptr %103, align 8
  %107 = getelementptr i8, ptr %103, i32 1
  store i8 16, ptr %107, align 1
  %108 = getelementptr i8, ptr %103, i32 2
  store i8 0, ptr %108, align 2
  %109 = getelementptr i8, ptr %103, i32 3
  store i8 %26, ptr %109, align 1
  store ptr %103, ptr %106, align 4
  %110 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %111 = load ptr, ptr %110, align 8
  %112 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %103) #10
  br label %113

113:                                              ; preds = %105, %96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dib3000mc_attach(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 4152) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dib3000mc_state, ptr %6, i32 0, i32 1
  store ptr %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.dib3000mc_state, ptr %6, i32 0, i32 3
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.dib3000mc_state, ptr %6, i32 0, i32 2
  store i8 %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 3
  store ptr %6, ptr %12, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %13, ptr noundef nonnull align 4 dereferenceable(544) @dib3000mc_ops, i32 544, i1 false)
  %14 = tail call fastcc i32 @dib3000mc_identify(ptr noundef nonnull %6)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.dib3000mc_state, ptr %6, i32 0, i32 4
  %18 = load ptr, ptr %10, align 8
  %19 = load i8, ptr %11, align 4
  %20 = tail call i32 @dibx000_init_i2c_master(ptr noundef %17, i16 noundef zeroext 1, ptr noundef %18, i8 noundef zeroext %19) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %21 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %21, align 4, !annotation !8
  %22 = load i8, ptr %11, align 4
  %23 = lshr i8 %22, 1
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %4, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %25, align 2
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 4) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store i8 4, ptr %27, align 8
  %31 = getelementptr i8, ptr %27, i32 1
  store i8 13, ptr %31, align 1
  %32 = getelementptr i8, ptr %27, i32 2
  store i8 49, ptr %32, align 2
  %33 = getelementptr i8, ptr %27, i32 3
  store i8 48, ptr %33, align 1
  store ptr %27, ptr %30, align 4
  %34 = load ptr, ptr %10, align 8
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %27) #10
  br label %36

36:                                               ; preds = %29, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %38

37:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #10
  br label %38

38:                                               ; preds = %37, %36, %3
  %39 = phi ptr [ null, %37 ], [ %6, %36 ], [ null, %3 ]
  ret ptr %39
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibx000_init_i2c_master(ptr noundef, i16 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dib3000mc_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dib3000mc_state, ptr %3, i32 0, i32 4
  tail call void @dibx000_exit_i2c_master(ptr noundef %4) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mc_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca %struct.i2c_msg, align 4
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca %struct.i2c_msg, align 4
  %51 = alloca %struct.i2c_msg, align 4
  %52 = alloca %struct.i2c_msg, align 4
  %53 = alloca %struct.i2c_msg, align 4
  %54 = alloca %struct.i2c_msg, align 4
  %55 = alloca %struct.i2c_msg, align 4
  %56 = alloca %struct.i2c_msg, align 4
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = load ptr, ptr %60, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #10
  %62 = getelementptr inbounds i8, ptr %56, i32 4
  store i32 4, ptr %62, align 4, !annotation !8
  %63 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 2
  %64 = load i8, ptr %63, align 4
  %65 = lshr i8 %64, 1
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %56, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %67, align 2
  %68 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3264, i32 noundef 4) #11
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %1
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store i8 4, ptr %69, align 8
  %73 = getelementptr i8, ptr %69, i32 1
  store i8 3, ptr %73, align 1
  %74 = getelementptr i8, ptr %69, i32 2
  store i8 -128, ptr %74, align 2
  %75 = getelementptr i8, ptr %69, i32 3
  store i8 0, ptr %75, align 1
  store ptr %69, ptr %72, align 4
  %76 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %56, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %69) #10
  br label %79

79:                                               ; preds = %71, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #10
  %80 = getelementptr inbounds i8, ptr %55, i32 4
  store i32 4, ptr %80, align 4, !annotation !8
  %81 = load i8, ptr %63, align 4
  %82 = lshr i8 %81, 1
  %83 = zext i8 %82 to i16
  store i16 %83, ptr %55, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %84, align 2
  %85 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %86 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3264, i32 noundef 4) #11
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store i8 4, ptr %86, align 8
  %90 = getelementptr i8, ptr %86, i32 1
  store i8 3, ptr %90, align 1
  %91 = getelementptr i8, ptr %86, i32 2
  store i8 0, ptr %91, align 2
  %92 = getelementptr i8, ptr %86, i32 3
  store i8 0, ptr %92, align 1
  store ptr %86, ptr %89, align 4
  %93 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %94 = load ptr, ptr %93, align 8
  %95 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %55, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %86) #10
  br label %96

96:                                               ; preds = %88, %79
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #10
  %97 = getelementptr inbounds i8, ptr %54, i32 4
  store i32 4, ptr %97, align 4, !annotation !8
  %98 = load i8, ptr %63, align 4
  %99 = lshr i8 %98, 1
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %54, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %101, align 2
  %102 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %103 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 3264, i32 noundef 4) #11
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store i8 0, ptr %103, align 8
  %107 = getelementptr i8, ptr %103, i32 1
  store i8 -116, ptr %107, align 1
  %108 = getelementptr i8, ptr %103, i32 2
  store i8 0, ptr %108, align 2
  %109 = getelementptr i8, ptr %103, i32 3
  store i8 0, ptr %109, align 1
  store ptr %103, ptr %106, align 4
  %110 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %111 = load ptr, ptr %110, align 8
  %112 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %54, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %103) #10
  br label %113

113:                                              ; preds = %105, %96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #10
  %114 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 4, ptr %114, align 4, !annotation !8
  %115 = load i8, ptr %63, align 4
  %116 = lshr i8 %115, 1
  %117 = zext i8 %116 to i16
  store i16 %117, ptr %53, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %118, align 2
  %119 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %120 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %119, i32 noundef 3264, i32 noundef 4) #11
  %121 = icmp eq ptr %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store i8 4, ptr %120, align 8
  %124 = getelementptr i8, ptr %120, i32 1
  store i8 7, ptr %124, align 1
  %125 = getelementptr i8, ptr %120, i32 2
  store i8 0, ptr %125, align 2
  %126 = getelementptr i8, ptr %120, i32 3
  store i8 0, ptr %126, align 1
  store ptr %120, ptr %123, align 4
  %127 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %128 = load ptr, ptr %127, align 8
  %129 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %53, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %120) #10
  br label %130

130:                                              ; preds = %122, %113
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #10
  %131 = load ptr, ptr %59, align 8
  %132 = getelementptr inbounds %struct.dib3000mc_config, ptr %131, i32 0, i32 9
  %133 = load i8, ptr %132, align 1
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %204, label %135

135:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #10
  %136 = getelementptr inbounds i8, ptr %52, i32 4
  store i32 4, ptr %136, align 4, !annotation !8
  %137 = load i8, ptr %63, align 4
  %138 = lshr i8 %137, 1
  %139 = zext i8 %138 to i16
  store i16 %139, ptr %52, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  store i16 0, ptr %140, align 2
  %141 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %142 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %141, i32 noundef 3264, i32 noundef 4) #11
  %143 = icmp eq ptr %142, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  store i8 0, ptr %142, align 8
  %146 = getelementptr i8, ptr %142, i32 1
  store i8 -117, ptr %146, align 1
  %147 = getelementptr i8, ptr %142, i32 2
  store i8 0, ptr %147, align 2
  %148 = getelementptr i8, ptr %142, i32 3
  store i8 0, ptr %148, align 1
  store ptr %142, ptr %145, align 4
  %149 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %150 = load ptr, ptr %149, align 8
  %151 = call i32 @i2c_transfer(ptr noundef %150, ptr noundef nonnull %52, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %142) #10
  br label %152

152:                                              ; preds = %144, %135
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #10
  %153 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 4, ptr %153, align 4, !annotation !8
  %154 = load i8, ptr %63, align 4
  %155 = lshr i8 %154, 1
  %156 = zext i8 %155 to i16
  store i16 %156, ptr %51, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %157, align 2
  %158 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %159 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %158, i32 noundef 3264, i32 noundef 4) #11
  %160 = icmp eq ptr %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store i8 0, ptr %159, align 8
  %163 = getelementptr i8, ptr %159, i32 1
  store i8 -115, ptr %163, align 1
  %164 = getelementptr i8, ptr %159, i32 2
  store i8 0, ptr %164, align 2
  %165 = getelementptr i8, ptr %159, i32 3
  store i8 0, ptr %165, align 1
  store ptr %159, ptr %162, align 4
  %166 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %167 = load ptr, ptr %166, align 8
  %168 = call i32 @i2c_transfer(ptr noundef %167, ptr noundef nonnull %51, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %159) #10
  br label %169

169:                                              ; preds = %161, %152
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #10
  %170 = getelementptr inbounds i8, ptr %50, i32 4
  store i32 4, ptr %170, align 4, !annotation !8
  %171 = load i8, ptr %63, align 4
  %172 = lshr i8 %171, 1
  %173 = zext i8 %172 to i16
  store i16 %173, ptr %50, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  store i16 0, ptr %174, align 2
  %175 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %176 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %175, i32 noundef 3264, i32 noundef 4) #11
  %177 = icmp eq ptr %176, null
  br i1 %177, label %186, label %178

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  store i8 0, ptr %176, align 8
  %180 = getelementptr i8, ptr %176, i32 1
  store i8 -81, ptr %180, align 1
  %181 = getelementptr i8, ptr %176, i32 2
  store i8 0, ptr %181, align 2
  %182 = getelementptr i8, ptr %176, i32 3
  store i8 2, ptr %182, align 1
  store ptr %176, ptr %179, align 4
  %183 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %184 = load ptr, ptr %183, align 8
  %185 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %50, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %176) #10
  br label %186

186:                                              ; preds = %178, %169
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #10
  %187 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 4, ptr %187, align 4, !annotation !8
  %188 = load i8, ptr %63, align 4
  %189 = lshr i8 %188, 1
  %190 = zext i8 %189 to i16
  store i16 %190, ptr %49, align 4
  %191 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %191, align 2
  %192 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %193 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %192, i32 noundef 3264, i32 noundef 4) #11
  %194 = icmp eq ptr %193, null
  br i1 %194, label %203, label %195

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store i8 4, ptr %193, align 8
  %197 = getelementptr i8, ptr %193, i32 1
  store i8 8, ptr %197, align 1
  %198 = getelementptr i8, ptr %193, i32 2
  store i8 0, ptr %198, align 2
  %199 = getelementptr i8, ptr %193, i32 3
  store i8 0, ptr %199, align 1
  store ptr %193, ptr %196, align 4
  %200 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %201 = load ptr, ptr %200, align 8
  %202 = call i32 @i2c_transfer(ptr noundef %201, ptr noundef nonnull %49, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %193) #10
  br label %203

203:                                              ; preds = %195, %186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #10
  br label %273

204:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #10
  %205 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 4, ptr %205, align 4, !annotation !8
  %206 = load i8, ptr %63, align 4
  %207 = lshr i8 %206, 1
  %208 = zext i8 %207 to i16
  store i16 %208, ptr %48, align 4
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %209, align 2
  %210 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %211 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %210, i32 noundef 3264, i32 noundef 4) #11
  %212 = icmp eq ptr %211, null
  br i1 %212, label %221, label %213

213:                                              ; preds = %204
  %214 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store i8 0, ptr %211, align 8
  %215 = getelementptr i8, ptr %211, i32 1
  store i8 -117, ptr %215, align 1
  %216 = getelementptr i8, ptr %211, i32 2
  store i8 0, ptr %216, align 2
  %217 = getelementptr i8, ptr %211, i32 3
  store i8 1, ptr %217, align 1
  store ptr %211, ptr %214, align 4
  %218 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %219 = load ptr, ptr %218, align 8
  %220 = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %48, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %211) #10
  br label %221

221:                                              ; preds = %213, %204
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #10
  %222 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 4, ptr %222, align 4, !annotation !8
  %223 = load i8, ptr %63, align 4
  %224 = lshr i8 %223, 1
  %225 = zext i8 %224 to i16
  store i16 %225, ptr %47, align 4
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %226, align 2
  %227 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %228 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %227, i32 noundef 3264, i32 noundef 4) #11
  %229 = icmp eq ptr %228, null
  br i1 %229, label %238, label %230

230:                                              ; preds = %221
  %231 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store i8 0, ptr %228, align 8
  %232 = getelementptr i8, ptr %228, i32 1
  store i8 -115, ptr %232, align 1
  %233 = getelementptr i8, ptr %228, i32 2
  store i8 0, ptr %233, align 2
  %234 = getelementptr i8, ptr %228, i32 3
  store i8 0, ptr %234, align 1
  store ptr %228, ptr %231, align 4
  %235 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %236 = load ptr, ptr %235, align 8
  %237 = call i32 @i2c_transfer(ptr noundef %236, ptr noundef nonnull %47, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %228) #10
  br label %238

238:                                              ; preds = %230, %221
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #10
  %239 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 4, ptr %239, align 4, !annotation !8
  %240 = load i8, ptr %63, align 4
  %241 = lshr i8 %240, 1
  %242 = zext i8 %241 to i16
  store i16 %242, ptr %46, align 4
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %243, align 2
  %244 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %245 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %244, i32 noundef 3264, i32 noundef 4) #11
  %246 = icmp eq ptr %245, null
  br i1 %246, label %255, label %247

247:                                              ; preds = %238
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store i8 0, ptr %245, align 8
  %249 = getelementptr i8, ptr %245, i32 1
  store i8 -81, ptr %249, align 1
  %250 = getelementptr i8, ptr %245, i32 2
  store i8 0, ptr %250, align 2
  %251 = getelementptr i8, ptr %245, i32 3
  store i8 0, ptr %251, align 1
  store ptr %245, ptr %248, align 4
  %252 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %253 = load ptr, ptr %252, align 8
  %254 = call i32 @i2c_transfer(ptr noundef %253, ptr noundef nonnull %46, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %245) #10
  br label %255

255:                                              ; preds = %247, %238
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #10
  %256 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 4, ptr %256, align 4, !annotation !8
  %257 = load i8, ptr %63, align 4
  %258 = lshr i8 %257, 1
  %259 = zext i8 %258 to i16
  store i16 %259, ptr %45, align 4
  %260 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %260, align 2
  %261 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %262 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %261, i32 noundef 3264, i32 noundef 4) #11
  %263 = icmp eq ptr %262, null
  br i1 %263, label %272, label %264

264:                                              ; preds = %255
  %265 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store i8 4, ptr %262, align 8
  %266 = getelementptr i8, ptr %262, i32 1
  store i8 8, ptr %266, align 1
  %267 = getelementptr i8, ptr %262, i32 2
  store i8 1, ptr %267, align 2
  %268 = getelementptr i8, ptr %262, i32 3
  store i8 44, ptr %268, align 1
  store ptr %262, ptr %265, align 4
  %269 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %270 = load ptr, ptr %269, align 8
  %271 = call i32 @i2c_transfer(ptr noundef %270, ptr noundef nonnull %45, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %262) #10
  br label %272

272:                                              ; preds = %264, %255
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #10
  br label %273

273:                                              ; preds = %272, %203
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #10
  %274 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 4, ptr %274, align 4, !annotation !8
  %275 = load i8, ptr %63, align 4
  %276 = lshr i8 %275, 1
  %277 = zext i8 %276 to i16
  store i16 %277, ptr %44, align 4
  %278 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %278, align 2
  %279 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %280 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %279, i32 noundef 3264, i32 noundef 4) #11
  %281 = icmp eq ptr %280, null
  br i1 %281, label %290, label %282

282:                                              ; preds = %273
  %283 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store i8 4, ptr %280, align 8
  %284 = getelementptr i8, ptr %280, i32 1
  store i8 9, ptr %284, align 1
  %285 = getelementptr i8, ptr %280, i32 2
  store i8 0, ptr %285, align 2
  %286 = getelementptr i8, ptr %280, i32 3
  store i8 0, ptr %286, align 1
  store ptr %280, ptr %283, align 4
  %287 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %288 = load ptr, ptr %287, align 8
  %289 = call i32 @i2c_transfer(ptr noundef %288, ptr noundef nonnull %44, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %280) #10
  br label %290

290:                                              ; preds = %282, %273
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #10
  %291 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 4, ptr %291, align 4, !annotation !8
  %292 = load i8, ptr %63, align 4
  %293 = lshr i8 %292, 1
  %294 = zext i8 %293 to i16
  store i16 %294, ptr %43, align 4
  %295 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %295, align 2
  %296 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %297 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %296, i32 noundef 3264, i32 noundef 4) #11
  %298 = icmp eq ptr %297, null
  br i1 %298, label %307, label %299

299:                                              ; preds = %290
  %300 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store i8 4, ptr %297, align 8
  %301 = getelementptr i8, ptr %297, i32 1
  store i8 13, ptr %301, align 1
  %302 = getelementptr i8, ptr %297, i32 2
  store i8 49, ptr %302, align 2
  %303 = getelementptr i8, ptr %297, i32 3
  store i8 48, ptr %303, align 1
  store ptr %297, ptr %300, align 4
  %304 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %305 = load ptr, ptr %304, align 8
  %306 = call i32 @i2c_transfer(ptr noundef %305, ptr noundef nonnull %43, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %297) #10
  br label %307

307:                                              ; preds = %299, %290
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #10
  %308 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 4, ptr %308, align 4, !annotation !8
  %309 = load i8, ptr %63, align 4
  %310 = lshr i8 %309, 1
  %311 = zext i8 %310 to i16
  store i16 %311, ptr %42, align 4
  %312 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %312, align 2
  %313 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %314 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %313, i32 noundef 3264, i32 noundef 4) #11
  %315 = icmp eq ptr %314, null
  br i1 %315, label %324, label %316

316:                                              ; preds = %307
  %317 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store i8 0, ptr %314, align 8
  %318 = getelementptr i8, ptr %314, i32 1
  store i8 33, ptr %318, align 1
  %319 = getelementptr i8, ptr %314, i32 2
  store i8 0, ptr %319, align 2
  %320 = getelementptr i8, ptr %314, i32 3
  store i8 5, ptr %320, align 1
  store ptr %314, ptr %317, align 4
  %321 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %322 = load ptr, ptr %321, align 8
  %323 = call i32 @i2c_transfer(ptr noundef %322, ptr noundef nonnull %42, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %314) #10
  br label %324

324:                                              ; preds = %316, %307
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #10
  %325 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 4, ptr %325, align 4, !annotation !8
  %326 = load i8, ptr %63, align 4
  %327 = lshr i8 %326, 1
  %328 = zext i8 %327 to i16
  store i16 %328, ptr %41, align 4
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %329, align 2
  %330 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %331 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %330, i32 noundef 3264, i32 noundef 4) #11
  %332 = icmp eq ptr %331, null
  br i1 %332, label %341, label %333

333:                                              ; preds = %324
  %334 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store i8 0, ptr %331, align 8
  %335 = getelementptr i8, ptr %331, i32 1
  store i8 88, ptr %335, align 1
  %336 = getelementptr i8, ptr %331, i32 2
  store i8 4, ptr %336, align 2
  %337 = getelementptr i8, ptr %331, i32 3
  store i8 16, ptr %337, align 1
  store ptr %331, ptr %334, align 4
  %338 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %339 = load ptr, ptr %338, align 8
  %340 = call i32 @i2c_transfer(ptr noundef %339, ptr noundef nonnull %41, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %331) #10
  br label %341

341:                                              ; preds = %333, %324
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #10
  %342 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 4, ptr %342, align 4, !annotation !8
  %343 = load i8, ptr %63, align 4
  %344 = lshr i8 %343, 1
  %345 = zext i8 %344 to i16
  store i16 %345, ptr %40, align 4
  %346 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %346, align 2
  %347 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %348 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %347, i32 noundef 3264, i32 noundef 4) #11
  %349 = icmp eq ptr %348, null
  br i1 %349, label %358, label %350

350:                                              ; preds = %341
  %351 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store i8 0, ptr %348, align 8
  %352 = getelementptr i8, ptr %348, i32 1
  store i8 99, ptr %352, align 1
  %353 = getelementptr i8, ptr %348, i32 2
  store i8 2, ptr %353, align 2
  %354 = getelementptr i8, ptr %348, i32 3
  store i8 32, ptr %354, align 1
  store ptr %348, ptr %351, align 4
  %355 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %356 = load ptr, ptr %355, align 8
  %357 = call i32 @i2c_transfer(ptr noundef %356, ptr noundef nonnull %40, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %348) #10
  br label %358

358:                                              ; preds = %350, %341
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #10
  %359 = load ptr, ptr %59, align 8
  %360 = getelementptr inbounds %struct.dib3000mc_config, ptr %359, i32 0, i32 1
  %361 = load i8, ptr %360, align 4
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %363, label %381

363:                                              ; preds = %358
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  %364 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 4, ptr %364, align 4, !annotation !8
  %365 = load i8, ptr %63, align 4
  %366 = lshr i8 %365, 1
  %367 = zext i8 %366 to i16
  store i16 %367, ptr %39, align 4
  %368 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %368, align 2
  %369 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %370 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %369, i32 noundef 3264, i32 noundef 4) #11
  %371 = icmp eq ptr %370, null
  br i1 %371, label %380, label %372

372:                                              ; preds = %363
  %373 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store i8 0, ptr %370, align 8
  %374 = getelementptr i8, ptr %370, i32 1
  store i8 111, ptr %374, align 1
  %375 = getelementptr i8, ptr %370, i32 2
  store i8 0, ptr %375, align 2
  %376 = getelementptr i8, ptr %370, i32 3
  store i8 0, ptr %376, align 1
  store ptr %370, ptr %373, align 4
  %377 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %378 = load ptr, ptr %377, align 8
  %379 = call i32 @i2c_transfer(ptr noundef %378, ptr noundef nonnull %39, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %370) #10
  br label %380

380:                                              ; preds = %372, %363
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  br label %399

381:                                              ; preds = %358
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #10
  %382 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 4, ptr %382, align 4, !annotation !8
  %383 = load i8, ptr %63, align 4
  %384 = lshr i8 %383, 1
  %385 = zext i8 %384 to i16
  store i16 %385, ptr %38, align 4
  %386 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %386, align 2
  %387 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %388 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %387, i32 noundef 3264, i32 noundef 4) #11
  %389 = icmp eq ptr %388, null
  br i1 %389, label %398, label %390

390:                                              ; preds = %381
  %391 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store i8 0, ptr %388, align 8
  %392 = getelementptr i8, ptr %388, i32 1
  store i8 111, ptr %392, align 1
  %393 = getelementptr i8, ptr %388, i32 2
  store i8 0, ptr %393, align 2
  %394 = getelementptr i8, ptr %388, i32 3
  store i8 2, ptr %394, align 1
  store ptr %388, ptr %391, align 4
  %395 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %396 = load ptr, ptr %395, align 8
  %397 = call i32 @i2c_transfer(ptr noundef %396, ptr noundef nonnull %38, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %388) #10
  br label %398

398:                                              ; preds = %390, %381
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #10
  br label %399

399:                                              ; preds = %398, %380
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %400 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 4, ptr %400, align 4, !annotation !8
  %401 = load i8, ptr %63, align 4
  %402 = lshr i8 %401, 1
  %403 = zext i8 %402 to i16
  store i16 %403, ptr %37, align 4
  %404 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %404, align 2
  %405 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %406 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %405, i32 noundef 3264, i32 noundef 4) #11
  %407 = icmp eq ptr %406, null
  br i1 %407, label %416, label %408

408:                                              ; preds = %399
  %409 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store i8 0, ptr %406, align 8
  %410 = getelementptr i8, ptr %406, i32 1
  store i8 50, ptr %410, align 1
  %411 = getelementptr i8, ptr %406, i32 2
  store i8 -128, ptr %411, align 2
  %412 = getelementptr i8, ptr %406, i32 3
  store i8 0, ptr %412, align 1
  store ptr %406, ptr %409, align 4
  %413 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %414 = load ptr, ptr %413, align 8
  %415 = call i32 @i2c_transfer(ptr noundef %414, ptr noundef nonnull %37, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %406) #10
  br label %416

416:                                              ; preds = %408, %399
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  %417 = load ptr, ptr %59, align 8
  %418 = load ptr, ptr %417, align 4
  %419 = getelementptr inbounds %struct.dibx000_agc_config, ptr %418, i32 0, i32 1
  %420 = load i16, ptr %419, align 2
  %421 = and i16 %420, -261
  %422 = getelementptr inbounds %struct.dib3000mc_config, ptr %417, i32 0, i32 3
  %423 = load i8, ptr %422, align 2
  %424 = icmp eq i8 %423, 0
  %425 = select i1 %424, i16 256, i16 4
  %426 = or i16 %425, %421
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #10
  %427 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 4, ptr %427, align 4, !annotation !8
  %428 = load i8, ptr %63, align 4
  %429 = lshr i8 %428, 1
  %430 = zext i8 %429 to i16
  store i16 %430, ptr %36, align 4
  %431 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %431, align 2
  %432 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %433 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %432, i32 noundef 3264, i32 noundef 4) #11
  %434 = icmp eq ptr %433, null
  br i1 %434, label %444, label %435

435:                                              ; preds = %416
  %436 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store i8 0, ptr %433, align 8
  %437 = getelementptr i8, ptr %433, i32 1
  store i8 51, ptr %437, align 1
  %438 = select i1 %424, i8 -111, i8 -127
  %439 = getelementptr i8, ptr %433, i32 2
  store i8 %438, ptr %439, align 2
  %440 = getelementptr i8, ptr %433, i32 3
  store i8 -54, ptr %440, align 1
  store ptr %433, ptr %436, align 4
  %441 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %442 = load ptr, ptr %441, align 8
  %443 = call i32 @i2c_transfer(ptr noundef %442, ptr noundef nonnull %36, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %433) #10
  br label %444

444:                                              ; preds = %435, %416
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  %445 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 4, ptr %445, align 4, !annotation !8
  %446 = load i8, ptr %63, align 4
  %447 = lshr i8 %446, 1
  %448 = zext i8 %447 to i16
  store i16 %448, ptr %35, align 4
  %449 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %449, align 2
  %450 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %451 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %450, i32 noundef 3264, i32 noundef 4) #11
  %452 = icmp eq ptr %451, null
  br i1 %452, label %464, label %453

453:                                              ; preds = %444
  %454 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store i8 0, ptr %451, align 8
  %455 = getelementptr i8, ptr %451, i32 1
  store i8 52, ptr %455, align 1
  %456 = lshr i16 %426, 8
  %457 = trunc i16 %456 to i8
  %458 = getelementptr i8, ptr %451, i32 2
  store i8 %457, ptr %458, align 2
  %459 = trunc i16 %426 to i8
  %460 = getelementptr i8, ptr %451, i32 3
  store i8 %459, ptr %460, align 1
  store ptr %451, ptr %454, align 4
  %461 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %462 = load ptr, ptr %461, align 8
  %463 = call i32 @i2c_transfer(ptr noundef %462, ptr noundef nonnull %35, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %451) #10
  br label %464

464:                                              ; preds = %453, %444
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  %465 = load ptr, ptr %59, align 8
  %466 = getelementptr inbounds %struct.dib3000mc_config, ptr %465, i32 0, i32 4
  %467 = load i8, ptr %466, align 1
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %487, label %469

469:                                              ; preds = %464
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #10
  %470 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 4, ptr %470, align 4, !annotation !8
  %471 = load i8, ptr %63, align 4
  %472 = lshr i8 %471, 1
  %473 = zext i8 %472 to i16
  store i16 %473, ptr %34, align 4
  %474 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %474, align 2
  %475 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %476 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %475, i32 noundef 3264, i32 noundef 4) #11
  %477 = icmp eq ptr %476, null
  br i1 %477, label %486, label %478

478:                                              ; preds = %469
  %479 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store i8 0, ptr %476, align 8
  %480 = getelementptr i8, ptr %476, i32 1
  store i8 -11, ptr %480, align 1
  %481 = getelementptr i8, ptr %476, i32 2
  store i8 0, ptr %481, align 2
  %482 = getelementptr i8, ptr %476, i32 3
  store i8 9, ptr %482, align 1
  store ptr %476, ptr %479, align 4
  %483 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %484 = load ptr, ptr %483, align 8
  %485 = call i32 @i2c_transfer(ptr noundef %484, ptr noundef nonnull %34, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %476) #10
  br label %486

486:                                              ; preds = %478, %469
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #10
  br label %505

487:                                              ; preds = %464
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  %488 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 4, ptr %488, align 4, !annotation !8
  %489 = load i8, ptr %63, align 4
  %490 = lshr i8 %489, 1
  %491 = zext i8 %490 to i16
  store i16 %491, ptr %33, align 4
  %492 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %492, align 2
  %493 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %494 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %493, i32 noundef 3264, i32 noundef 4) #11
  %495 = icmp eq ptr %494, null
  br i1 %495, label %504, label %496

496:                                              ; preds = %487
  %497 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store i8 0, ptr %494, align 8
  %498 = getelementptr i8, ptr %494, i32 1
  store i8 -11, ptr %498, align 1
  %499 = getelementptr i8, ptr %494, i32 2
  store i8 0, ptr %499, align 2
  %500 = getelementptr i8, ptr %494, i32 3
  store i8 0, ptr %500, align 1
  store ptr %494, ptr %497, align 4
  %501 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %502 = load ptr, ptr %501, align 8
  %503 = call i32 @i2c_transfer(ptr noundef %502, ptr noundef nonnull %33, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %494) #10
  br label %504

504:                                              ; preds = %496, %487
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  br label %505

505:                                              ; preds = %504, %486
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #10
  %506 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 4, ptr %506, align 4, !annotation !8
  %507 = load i8, ptr %63, align 4
  %508 = lshr i8 %507, 1
  %509 = zext i8 %508 to i16
  store i16 %509, ptr %32, align 4
  %510 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %510, align 2
  %511 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %512 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %511, i32 noundef 3264, i32 noundef 4) #11
  %513 = icmp eq ptr %512, null
  br i1 %513, label %522, label %514

514:                                              ; preds = %505
  %515 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store i8 4, ptr %512, align 8
  %516 = getelementptr i8, ptr %512, i32 1
  store i8 16, ptr %516, align 1
  %517 = getelementptr i8, ptr %512, i32 2
  store i8 0, ptr %517, align 2
  %518 = getelementptr i8, ptr %512, i32 3
  store i8 3, ptr %518, align 1
  store ptr %512, ptr %515, align 4
  %519 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %520 = load ptr, ptr %519, align 8
  %521 = call i32 @i2c_transfer(ptr noundef %520, ptr noundef nonnull %32, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %512) #10
  br label %522

522:                                              ; preds = %514, %505
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  %523 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 4, ptr %523, align 4, !annotation !8
  %524 = load i8, ptr %63, align 4
  %525 = lshr i8 %524, 1
  %526 = zext i8 %525 to i16
  store i16 %526, ptr %31, align 4
  %527 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %527, align 2
  %528 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %529 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %528, i32 noundef 3264, i32 noundef 4) #11
  %530 = icmp eq ptr %529, null
  br i1 %530, label %539, label %531

531:                                              ; preds = %522
  %532 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store i8 0, ptr %529, align 8
  %533 = getelementptr i8, ptr %529, i32 1
  store i8 53, ptr %533, align 1
  %534 = getelementptr i8, ptr %529, i32 2
  store i8 0, ptr %534, align 2
  %535 = getelementptr i8, ptr %529, i32 3
  store i8 -121, ptr %535, align 1
  store ptr %529, ptr %532, align 4
  %536 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %537 = load ptr, ptr %536, align 8
  %538 = call i32 @i2c_transfer(ptr noundef %537, ptr noundef nonnull %31, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %529) #10
  br label %539

539:                                              ; preds = %531, %522
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #10
  %540 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 4, ptr %540, align 4, !annotation !8
  %541 = load i8, ptr %63, align 4
  %542 = lshr i8 %541, 1
  %543 = zext i8 %542 to i16
  store i16 %543, ptr %30, align 4
  %544 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %544, align 2
  %545 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %546 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %545, i32 noundef 3264, i32 noundef 4) #11
  %547 = icmp eq ptr %546, null
  br i1 %547, label %556, label %548

548:                                              ; preds = %539
  %549 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store i8 0, ptr %546, align 8
  %550 = getelementptr i8, ptr %546, i32 1
  store i8 54, ptr %550, align 1
  %551 = getelementptr i8, ptr %546, i32 2
  store i8 0, ptr %551, align 2
  %552 = getelementptr i8, ptr %546, i32 3
  store i8 -121, ptr %552, align 1
  store ptr %546, ptr %549, align 4
  %553 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %554 = load ptr, ptr %553, align 8
  %555 = call i32 @i2c_transfer(ptr noundef %554, ptr noundef nonnull %30, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %546) #10
  br label %556

556:                                              ; preds = %548, %539
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #10
  %557 = load ptr, ptr %59, align 8
  %558 = getelementptr inbounds %struct.dib3000mc_config, ptr %557, i32 0, i32 6
  %559 = load i16, ptr %558, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  %560 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 4, ptr %560, align 4, !annotation !8
  %561 = load i8, ptr %63, align 4
  %562 = lshr i8 %561, 1
  %563 = zext i8 %562 to i16
  store i16 %563, ptr %29, align 4
  %564 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %564, align 2
  %565 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %566 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %565, i32 noundef 3264, i32 noundef 4) #11
  %567 = icmp eq ptr %566, null
  br i1 %567, label %579, label %568

568:                                              ; preds = %556
  %569 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store i8 0, ptr %566, align 8
  %570 = getelementptr i8, ptr %566, i32 1
  store i8 36, ptr %570, align 1
  %571 = lshr i16 %559, 8
  %572 = trunc i16 %571 to i8
  %573 = getelementptr i8, ptr %566, i32 2
  store i8 %572, ptr %573, align 2
  %574 = trunc i16 %559 to i8
  %575 = getelementptr i8, ptr %566, i32 3
  store i8 %574, ptr %575, align 1
  store ptr %566, ptr %569, align 4
  %576 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %577 = load ptr, ptr %576, align 8
  %578 = call i32 @i2c_transfer(ptr noundef %577, ptr noundef nonnull %29, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %566) #10
  br label %579

579:                                              ; preds = %568, %556
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  %580 = load ptr, ptr %59, align 8
  %581 = getelementptr inbounds %struct.dib3000mc_config, ptr %580, i32 0, i32 8
  %582 = load i8, ptr %581, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #10
  %583 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 4, ptr %583, align 4, !annotation !8
  %584 = load i8, ptr %63, align 4
  %585 = lshr i8 %584, 1
  %586 = zext i8 %585 to i16
  store i16 %586, ptr %28, align 4
  %587 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %587, align 2
  %588 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %589 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %588, i32 noundef 3264, i32 noundef 4) #11
  %590 = icmp eq ptr %589, null
  br i1 %590, label %604, label %591

591:                                              ; preds = %579
  %592 = zext i8 %582 to i14
  %593 = call i14 @llvm.bitreverse.i14(i14 %592)
  %594 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store i8 0, ptr %589, align 8
  %595 = getelementptr i8, ptr %589, i32 1
  store i8 37, ptr %595, align 1
  %596 = lshr i14 %593, 8
  %597 = trunc i14 %596 to i8
  %598 = and i8 %597, 48
  %599 = getelementptr i8, ptr %589, i32 2
  store i8 %598, ptr %599, align 2
  %600 = getelementptr i8, ptr %589, i32 3
  store i8 29, ptr %600, align 1
  store ptr %589, ptr %594, align 4
  %601 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %602 = load ptr, ptr %601, align 8
  %603 = call i32 @i2c_transfer(ptr noundef %602, ptr noundef nonnull %28, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %589) #10
  br label %604

604:                                              ; preds = %591, %579
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #10
  %605 = load ptr, ptr %59, align 8
  %606 = getelementptr inbounds %struct.dib3000mc_config, ptr %605, i32 0, i32 5
  %607 = load i16, ptr %606, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %608 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 4, ptr %608, align 4, !annotation !8
  %609 = load i8, ptr %63, align 4
  %610 = lshr i8 %609, 1
  %611 = zext i8 %610 to i16
  store i16 %611, ptr %27, align 4
  %612 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %612, align 2
  %613 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %614 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %613, i32 noundef 3264, i32 noundef 4) #11
  %615 = icmp eq ptr %614, null
  br i1 %615, label %627, label %616

616:                                              ; preds = %604
  %617 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store i8 0, ptr %614, align 8
  %618 = getelementptr i8, ptr %614, i32 1
  store i8 38, ptr %618, align 1
  %619 = lshr i16 %607, 8
  %620 = trunc i16 %619 to i8
  %621 = getelementptr i8, ptr %614, i32 2
  store i8 %620, ptr %621, align 2
  %622 = trunc i16 %607 to i8
  %623 = getelementptr i8, ptr %614, i32 3
  store i8 %622, ptr %623, align 1
  store ptr %614, ptr %617, align 4
  %624 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %625 = load ptr, ptr %624, align 8
  %626 = call i32 @i2c_transfer(ptr noundef %625, ptr noundef nonnull %27, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %614) #10
  br label %627

627:                                              ; preds = %616, %604
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  %628 = load ptr, ptr %59, align 8
  %629 = getelementptr inbounds %struct.dib3000mc_config, ptr %628, i32 0, i32 7
  %630 = load i16, ptr %629, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #10
  %631 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 4, ptr %631, align 4, !annotation !8
  %632 = load i8, ptr %63, align 4
  %633 = lshr i8 %632, 1
  %634 = zext i8 %633 to i16
  store i16 %634, ptr %26, align 4
  %635 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %635, align 2
  %636 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %637 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %636, i32 noundef 3264, i32 noundef 4) #11
  %638 = icmp eq ptr %637, null
  br i1 %638, label %650, label %639

639:                                              ; preds = %627
  %640 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store i8 0, ptr %637, align 8
  %641 = getelementptr i8, ptr %637, i32 1
  store i8 39, ptr %641, align 1
  %642 = lshr i16 %630, 8
  %643 = trunc i16 %642 to i8
  %644 = getelementptr i8, ptr %637, i32 2
  store i8 %643, ptr %644, align 2
  %645 = trunc i16 %630 to i8
  %646 = getelementptr i8, ptr %637, i32 3
  store i8 %645, ptr %646, align 1
  store ptr %637, ptr %640, align 4
  %647 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %648 = load ptr, ptr %647, align 8
  %649 = call i32 @i2c_transfer(ptr noundef %648, ptr noundef nonnull %26, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %637) #10
  br label %650

650:                                              ; preds = %639, %627
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %651 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 4, ptr %651, align 4, !annotation !8
  %652 = load i8, ptr %63, align 4
  %653 = lshr i8 %652, 1
  %654 = zext i8 %653 to i16
  store i16 %654, ptr %25, align 4
  %655 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %655, align 2
  %656 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %657 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %656, i32 noundef 3264, i32 noundef 4) #11
  %658 = icmp eq ptr %657, null
  br i1 %658, label %667, label %659

659:                                              ; preds = %650
  %660 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store i8 0, ptr %657, align 8
  %661 = getelementptr i8, ptr %657, i32 1
  store i8 40, ptr %661, align 1
  %662 = getelementptr i8, ptr %657, i32 2
  store i8 1, ptr %662, align 2
  %663 = getelementptr i8, ptr %657, i32 3
  store i8 121, ptr %663, align 1
  store ptr %657, ptr %660, align 4
  %664 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %665 = load ptr, ptr %664, align 8
  %666 = call i32 @i2c_transfer(ptr noundef %665, ptr noundef nonnull %25, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %657) #10
  br label %667

667:                                              ; preds = %659, %650
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  %668 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 4, ptr %668, align 4, !annotation !8
  %669 = load i8, ptr %63, align 4
  %670 = lshr i8 %669, 1
  %671 = zext i8 %670 to i16
  store i16 %671, ptr %24, align 4
  %672 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %672, align 2
  %673 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %674 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %673, i32 noundef 3264, i32 noundef 4) #11
  %675 = icmp eq ptr %674, null
  br i1 %675, label %684, label %676

676:                                              ; preds = %667
  %677 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store i8 0, ptr %674, align 8
  %678 = getelementptr i8, ptr %674, i32 1
  store i8 41, ptr %678, align 1
  %679 = getelementptr i8, ptr %674, i32 2
  store i8 3, ptr %679, align 2
  %680 = getelementptr i8, ptr %674, i32 3
  store i8 -16, ptr %680, align 1
  store ptr %674, ptr %677, align 4
  %681 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %682 = load ptr, ptr %681, align 8
  %683 = call i32 @i2c_transfer(ptr noundef %682, ptr noundef nonnull %24, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %674) #10
  br label %684

684:                                              ; preds = %676, %667
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  %685 = getelementptr inbounds %struct.dibx000_agc_config, ptr %61, i32 0, i32 10
  %686 = load i16, ptr %685, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %687 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 4, ptr %687, align 4, !annotation !8
  %688 = load i8, ptr %63, align 4
  %689 = lshr i8 %688, 1
  %690 = zext i8 %689 to i16
  store i16 %690, ptr %23, align 4
  %691 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %691, align 2
  %692 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %693 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %692, i32 noundef 3264, i32 noundef 4) #11
  %694 = icmp eq ptr %693, null
  br i1 %694, label %706, label %695

695:                                              ; preds = %684
  %696 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store i8 0, ptr %693, align 8
  %697 = getelementptr i8, ptr %693, i32 1
  store i8 42, ptr %697, align 1
  %698 = lshr i16 %686, 8
  %699 = trunc i16 %698 to i8
  %700 = getelementptr i8, ptr %693, i32 2
  store i8 %699, ptr %700, align 2
  %701 = trunc i16 %686 to i8
  %702 = getelementptr i8, ptr %693, i32 3
  store i8 %701, ptr %702, align 1
  store ptr %693, ptr %696, align 4
  %703 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %704 = load ptr, ptr %703, align 8
  %705 = call i32 @i2c_transfer(ptr noundef %704, ptr noundef nonnull %23, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %693) #10
  br label %706

706:                                              ; preds = %695, %684
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  %707 = getelementptr inbounds %struct.dibx000_agc_config, ptr %61, i32 0, i32 11
  %708 = load i16, ptr %707, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  %709 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 4, ptr %709, align 4, !annotation !8
  %710 = load i8, ptr %63, align 4
  %711 = lshr i8 %710, 1
  %712 = zext i8 %711 to i16
  store i16 %712, ptr %22, align 4
  %713 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %713, align 2
  %714 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %715 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %714, i32 noundef 3264, i32 noundef 4) #11
  %716 = icmp eq ptr %715, null
  br i1 %716, label %728, label %717

717:                                              ; preds = %706
  %718 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store i8 0, ptr %715, align 8
  %719 = getelementptr i8, ptr %715, i32 1
  store i8 43, ptr %719, align 1
  %720 = lshr i16 %708, 8
  %721 = trunc i16 %720 to i8
  %722 = getelementptr i8, ptr %715, i32 2
  store i8 %721, ptr %722, align 2
  %723 = trunc i16 %708 to i8
  %724 = getelementptr i8, ptr %715, i32 3
  store i8 %723, ptr %724, align 1
  store ptr %715, ptr %718, align 4
  %725 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %726 = load ptr, ptr %725, align 8
  %727 = call i32 @i2c_transfer(ptr noundef %726, ptr noundef nonnull %22, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %715) #10
  br label %728

728:                                              ; preds = %717, %706
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  %729 = getelementptr inbounds %struct.dibx000_agc_config, ptr %61, i32 0, i32 12
  %730 = load i16, ptr %729, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %731 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 4, ptr %731, align 4, !annotation !8
  %732 = load i8, ptr %63, align 4
  %733 = lshr i8 %732, 1
  %734 = zext i8 %733 to i16
  store i16 %734, ptr %21, align 4
  %735 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %735, align 2
  %736 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %737 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %736, i32 noundef 3264, i32 noundef 4) #11
  %738 = icmp eq ptr %737, null
  br i1 %738, label %750, label %739

739:                                              ; preds = %728
  %740 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store i8 0, ptr %737, align 8
  %741 = getelementptr i8, ptr %737, i32 1
  store i8 44, ptr %741, align 1
  %742 = lshr i16 %730, 8
  %743 = trunc i16 %742 to i8
  %744 = getelementptr i8, ptr %737, i32 2
  store i8 %743, ptr %744, align 2
  %745 = trunc i16 %730 to i8
  %746 = getelementptr i8, ptr %737, i32 3
  store i8 %745, ptr %746, align 1
  store ptr %737, ptr %740, align 4
  %747 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %748 = load ptr, ptr %747, align 8
  %749 = call i32 @i2c_transfer(ptr noundef %748, ptr noundef nonnull %21, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %737) #10
  br label %750

750:                                              ; preds = %739, %728
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  %751 = getelementptr inbounds %struct.dibx000_agc_config, ptr %61, i32 0, i32 13
  %752 = load i16, ptr %751, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %753 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 4, ptr %753, align 4, !annotation !8
  %754 = load i8, ptr %63, align 4
  %755 = lshr i8 %754, 1
  %756 = zext i8 %755 to i16
  store i16 %756, ptr %20, align 4
  %757 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %757, align 2
  %758 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %759 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %758, i32 noundef 3264, i32 noundef 4) #11
  %760 = icmp eq ptr %759, null
  br i1 %760, label %772, label %761

761:                                              ; preds = %750
  %762 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store i8 0, ptr %759, align 8
  %763 = getelementptr i8, ptr %759, i32 1
  store i8 45, ptr %763, align 1
  %764 = lshr i16 %752, 8
  %765 = trunc i16 %764 to i8
  %766 = getelementptr i8, ptr %759, i32 2
  store i8 %765, ptr %766, align 2
  %767 = trunc i16 %752 to i8
  %768 = getelementptr i8, ptr %759, i32 3
  store i8 %767, ptr %768, align 1
  store ptr %759, ptr %762, align 4
  %769 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %770 = load ptr, ptr %769, align 8
  %771 = call i32 @i2c_transfer(ptr noundef %770, ptr noundef nonnull %20, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %759) #10
  br label %772

772:                                              ; preds = %761, %750
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  %773 = getelementptr inbounds %struct.dibx000_agc_config, ptr %61, i32 0, i32 14
  %774 = load i8, ptr %773, align 2
  %775 = getelementptr inbounds %struct.dibx000_agc_config, ptr %61, i32 0, i32 15
  %776 = load i8, ptr %775, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %777 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 4, ptr %777, align 4, !annotation !8
  %778 = load i8, ptr %63, align 4
  %779 = lshr i8 %778, 1
  %780 = zext i8 %779 to i16
  store i16 %780, ptr %19, align 4
  %781 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %781, align 2
  %782 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %783 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %782, i32 noundef 3264, i32 noundef 4) #11
  %784 = icmp eq ptr %783, null
  br i1 %784, label %793, label %785

785:                                              ; preds = %772
  %786 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store i8 0, ptr %783, align 8
  %787 = getelementptr i8, ptr %783, i32 1
  store i8 46, ptr %787, align 1
  %788 = getelementptr i8, ptr %783, i32 2
  store i8 %774, ptr %788, align 2
  %789 = getelementptr i8, ptr %783, i32 3
  store i8 %776, ptr %789, align 1
  store ptr %783, ptr %786, align 4
  %790 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %791 = load ptr, ptr %790, align 8
  %792 = call i32 @i2c_transfer(ptr noundef %791, ptr noundef nonnull %19, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %783) #10
  br label %793

793:                                              ; preds = %785, %772
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  %794 = getelementptr inbounds %struct.dibx000_agc_config, ptr %61, i32 0, i32 17
  %795 = load i8, ptr %794, align 1
  %796 = getelementptr inbounds %struct.dibx000_agc_config, ptr %61, i32 0, i32 18
  %797 = load i8, ptr %796, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  %798 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 4, ptr %798, align 4, !annotation !8
  %799 = load i8, ptr %63, align 4
  %800 = lshr i8 %799, 1
  %801 = zext i8 %800 to i16
  store i16 %801, ptr %18, align 4
  %802 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %802, align 2
  %803 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %804 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %803, i32 noundef 3264, i32 noundef 4) #11
  %805 = icmp eq ptr %804, null
  br i1 %805, label %814, label %806

806:                                              ; preds = %793
  %807 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store i8 0, ptr %804, align 8
  %808 = getelementptr i8, ptr %804, i32 1
  store i8 47, ptr %808, align 1
  %809 = getelementptr i8, ptr %804, i32 2
  store i8 %795, ptr %809, align 2
  %810 = getelementptr i8, ptr %804, i32 3
  store i8 %797, ptr %810, align 1
  store ptr %804, ptr %807, align 4
  %811 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %812 = load ptr, ptr %811, align 8
  %813 = call i32 @i2c_transfer(ptr noundef %812, ptr noundef nonnull %18, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %804) #10
  br label %814

814:                                              ; preds = %806, %793
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  %815 = getelementptr inbounds %struct.dibx000_agc_config, ptr %61, i32 0, i32 19
  %816 = load i8, ptr %815, align 1
  %817 = getelementptr inbounds %struct.dibx000_agc_config, ptr %61, i32 0, i32 20
  %818 = load i8, ptr %817, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %819 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 4, ptr %819, align 4, !annotation !8
  %820 = load i8, ptr %63, align 4
  %821 = lshr i8 %820, 1
  %822 = zext i8 %821 to i16
  store i16 %822, ptr %17, align 4
  %823 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %823, align 2
  %824 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %825 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %824, i32 noundef 3264, i32 noundef 4) #11
  %826 = icmp eq ptr %825, null
  br i1 %826, label %835, label %827

827:                                              ; preds = %814
  %828 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store i8 0, ptr %825, align 8
  %829 = getelementptr i8, ptr %825, i32 1
  store i8 48, ptr %829, align 1
  %830 = getelementptr i8, ptr %825, i32 2
  store i8 %816, ptr %830, align 2
  %831 = getelementptr i8, ptr %825, i32 3
  store i8 %818, ptr %831, align 1
  store ptr %825, ptr %828, align 4
  %832 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %833 = load ptr, ptr %832, align 8
  %834 = call i32 @i2c_transfer(ptr noundef %833, ptr noundef nonnull %17, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %825) #10
  br label %835

835:                                              ; preds = %827, %814
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  %836 = getelementptr inbounds %struct.dibx000_agc_config, ptr %61, i32 0, i32 21
  %837 = load i8, ptr %836, align 1
  %838 = getelementptr inbounds %struct.dibx000_agc_config, ptr %61, i32 0, i32 22
  %839 = load i8, ptr %838, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %840 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 4, ptr %840, align 4, !annotation !8
  %841 = load i8, ptr %63, align 4
  %842 = lshr i8 %841, 1
  %843 = zext i8 %842 to i16
  store i16 %843, ptr %16, align 4
  %844 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %844, align 2
  %845 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %846 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %845, i32 noundef 3264, i32 noundef 4) #11
  %847 = icmp eq ptr %846, null
  br i1 %847, label %856, label %848

848:                                              ; preds = %835
  %849 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store i8 0, ptr %846, align 8
  %850 = getelementptr i8, ptr %846, i32 1
  store i8 49, ptr %850, align 1
  %851 = getelementptr i8, ptr %846, i32 2
  store i8 %837, ptr %851, align 2
  %852 = getelementptr i8, ptr %846, i32 3
  store i8 %839, ptr %852, align 1
  store ptr %846, ptr %849, align 4
  %853 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %854 = load ptr, ptr %853, align 8
  %855 = call i32 @i2c_transfer(ptr noundef %854, ptr noundef nonnull %16, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %846) #10
  br label %856

856:                                              ; preds = %848, %835
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %857 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 4, ptr %857, align 4, !annotation !8
  %858 = load i8, ptr %63, align 4
  %859 = lshr i8 %858, 1
  %860 = zext i8 %859 to i16
  store i16 %860, ptr %15, align 4
  %861 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %861, align 2
  %862 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %863 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %862, i32 noundef 3264, i32 noundef 4) #11
  %864 = icmp eq ptr %863, null
  br i1 %864, label %873, label %865

865:                                              ; preds = %856
  %866 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store i8 0, ptr %863, align 8
  %867 = getelementptr i8, ptr %863, i32 1
  store i8 110, ptr %867, align 1
  %868 = getelementptr i8, ptr %863, i32 2
  store i8 12, ptr %868, align 2
  %869 = getelementptr i8, ptr %863, i32 3
  store i8 -51, ptr %869, align 1
  store ptr %863, ptr %866, align 4
  %870 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %871 = load ptr, ptr %870, align 8
  %872 = call i32 @i2c_transfer(ptr noundef %871, ptr noundef nonnull %15, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %863) #10
  br label %873

873:                                              ; preds = %865, %856
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %874 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 4, ptr %874, align 4, !annotation !8
  %875 = load i8, ptr %63, align 4
  %876 = lshr i8 %875, 1
  %877 = zext i8 %876 to i16
  store i16 %877, ptr %14, align 4
  %878 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %878, align 2
  %879 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %880 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %879, i32 noundef 3264, i32 noundef 4) #11
  %881 = icmp eq ptr %880, null
  br i1 %881, label %890, label %882

882:                                              ; preds = %873
  %883 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store i8 0, ptr %880, align 8
  %884 = getelementptr i8, ptr %880, i32 1
  store i8 26, ptr %884, align 1
  %885 = getelementptr i8, ptr %880, i32 2
  store i8 102, ptr %885, align 2
  %886 = getelementptr i8, ptr %880, i32 3
  store i8 -128, ptr %886, align 1
  store ptr %880, ptr %883, align 4
  %887 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %888 = load ptr, ptr %887, align 8
  %889 = call i32 @i2c_transfer(ptr noundef %888, ptr noundef nonnull %14, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %880) #10
  br label %890

890:                                              ; preds = %882, %873
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %891 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 4, ptr %891, align 4, !annotation !8
  %892 = load i8, ptr %63, align 4
  %893 = lshr i8 %892, 1
  %894 = zext i8 %893 to i16
  store i16 %894, ptr %13, align 4
  %895 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %895, align 2
  %896 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %897 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %896, i32 noundef 3264, i32 noundef 4) #11
  %898 = icmp eq ptr %897, null
  br i1 %898, label %907, label %899

899:                                              ; preds = %890
  %900 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store i8 0, ptr %897, align 8
  %901 = getelementptr i8, ptr %897, i32 1
  store i8 1, ptr %901, align 1
  %902 = getelementptr i8, ptr %897, i32 2
  store i8 0, ptr %902, align 2
  %903 = getelementptr i8, ptr %897, i32 3
  store i8 4, ptr %903, align 1
  store ptr %897, ptr %900, align 4
  %904 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %905 = load ptr, ptr %904, align 8
  %906 = call i32 @i2c_transfer(ptr noundef %905, ptr noundef nonnull %13, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %897) #10
  br label %907

907:                                              ; preds = %899, %890
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %908 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 4, ptr %908, align 4, !annotation !8
  %909 = load i8, ptr %63, align 4
  %910 = lshr i8 %909, 1
  %911 = zext i8 %910 to i16
  store i16 %911, ptr %12, align 4
  %912 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %912, align 2
  %913 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %914 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %913, i32 noundef 3264, i32 noundef 4) #11
  %915 = icmp eq ptr %914, null
  br i1 %915, label %924, label %916

916:                                              ; preds = %907
  %917 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store i8 0, ptr %914, align 8
  %918 = getelementptr i8, ptr %914, i32 1
  store i8 2, ptr %918, align 1
  %919 = getelementptr i8, ptr %914, i32 2
  store i8 0, ptr %919, align 2
  %920 = getelementptr i8, ptr %914, i32 3
  store i8 4, ptr %920, align 1
  store ptr %914, ptr %917, align 4
  %921 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %922 = load ptr, ptr %921, align 8
  %923 = call i32 @i2c_transfer(ptr noundef %922, ptr noundef nonnull %12, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %914) #10
  br label %924

924:                                              ; preds = %916, %907
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %925 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 4, ptr %925, align 4, !annotation !8
  %926 = load i8, ptr %63, align 4
  %927 = lshr i8 %926, 1
  %928 = zext i8 %927 to i16
  store i16 %928, ptr %11, align 4
  %929 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %929, align 2
  %930 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %931 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %930, i32 noundef 3264, i32 noundef 4) #11
  %932 = icmp eq ptr %931, null
  br i1 %932, label %941, label %933

933:                                              ; preds = %924
  %934 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store i8 0, ptr %931, align 8
  %935 = getelementptr i8, ptr %931, i32 1
  store i8 3, ptr %935, align 1
  %936 = getelementptr i8, ptr %931, i32 2
  store i8 16, ptr %936, align 2
  %937 = getelementptr i8, ptr %931, i32 3
  store i8 0, ptr %937, align 1
  store ptr %931, ptr %934, align 4
  %938 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %939 = load ptr, ptr %938, align 8
  %940 = call i32 @i2c_transfer(ptr noundef %939, ptr noundef nonnull %11, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %931) #10
  br label %941

941:                                              ; preds = %933, %924
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %942 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 4, ptr %942, align 4, !annotation !8
  %943 = load i8, ptr %63, align 4
  %944 = lshr i8 %943, 1
  %945 = zext i8 %944 to i16
  store i16 %945, ptr %10, align 4
  %946 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %946, align 2
  %947 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %948 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %947, i32 noundef 3264, i32 noundef 4) #11
  %949 = icmp eq ptr %948, null
  br i1 %949, label %958, label %950

950:                                              ; preds = %941
  %951 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store i8 0, ptr %948, align 8
  %952 = getelementptr i8, ptr %948, i32 1
  store i8 5, ptr %952, align 1
  %953 = getelementptr i8, ptr %948, i32 2
  store i8 0, ptr %953, align 2
  %954 = getelementptr i8, ptr %948, i32 3
  store i8 1, ptr %954, align 1
  store ptr %948, ptr %951, align 4
  %955 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %956 = load ptr, ptr %955, align 8
  %957 = call i32 @i2c_transfer(ptr noundef %956, ptr noundef nonnull %10, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %948) #10
  br label %958

958:                                              ; preds = %950, %941
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call fastcc void @dib3000mc_set_bandwidth(ptr noundef %58, i32 noundef 8000)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %959 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 4, ptr %959, align 4, !annotation !8
  %960 = load i8, ptr %63, align 4
  %961 = lshr i8 %960, 1
  %962 = zext i8 %961 to i16
  store i16 %962, ptr %9, align 4
  %963 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %963, align 2
  %964 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %965 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %964, i32 noundef 3264, i32 noundef 4) #11
  %966 = icmp eq ptr %965, null
  br i1 %966, label %975, label %967

967:                                              ; preds = %958
  %968 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store i8 0, ptr %965, align 8
  %969 = getelementptr i8, ptr %965, i32 1
  store i8 4, ptr %969, align 1
  %970 = getelementptr i8, ptr %965, i32 2
  store i8 8, ptr %970, align 2
  %971 = getelementptr i8, ptr %965, i32 3
  store i8 20, ptr %971, align 1
  store ptr %965, ptr %968, align 4
  %972 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %973 = load ptr, ptr %972, align 8
  %974 = call i32 @i2c_transfer(ptr noundef %973, ptr noundef nonnull %9, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %965) #10
  br label %975

975:                                              ; preds = %967, %958
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %976 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 4, ptr %976, align 4, !annotation !8
  %977 = load i8, ptr %63, align 4
  %978 = lshr i8 %977, 1
  %979 = zext i8 %978 to i16
  store i16 %979, ptr %8, align 4
  %980 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %980, align 2
  %981 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %982 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %981, i32 noundef 3264, i32 noundef 4) #11
  %983 = icmp eq ptr %982, null
  br i1 %983, label %992, label %984

984:                                              ; preds = %975
  %985 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store i8 0, ptr %982, align 8
  %986 = getelementptr i8, ptr %982, i32 1
  store i8 21, ptr %986, align 1
  %987 = getelementptr i8, ptr %982, i32 2
  store i8 3, ptr %987, align 2
  %988 = getelementptr i8, ptr %982, i32 3
  store i8 100, ptr %988, align 1
  store ptr %982, ptr %985, align 4
  %989 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %990 = load ptr, ptr %989, align 8
  %991 = call i32 @i2c_transfer(ptr noundef %990, ptr noundef nonnull %8, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %982) #10
  br label %992

992:                                              ; preds = %984, %975
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %993 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %993, align 4, !annotation !8
  %994 = load i8, ptr %63, align 4
  %995 = lshr i8 %994, 1
  %996 = zext i8 %995 to i16
  store i16 %996, ptr %7, align 4
  %997 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %997, align 2
  %998 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %999 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %998, i32 noundef 3264, i32 noundef 4) #11
  %1000 = icmp eq ptr %999, null
  br i1 %1000, label %1009, label %1001

1001:                                             ; preds = %992
  %1002 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store i8 0, ptr %999, align 8
  %1003 = getelementptr i8, ptr %999, i32 1
  store i8 22, ptr %1003, align 1
  %1004 = getelementptr i8, ptr %999, i32 2
  store i8 70, ptr %1004, align 2
  %1005 = getelementptr i8, ptr %999, i32 3
  store i8 61, ptr %1005, align 1
  store ptr %999, ptr %1002, align 4
  %1006 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %1007 = load ptr, ptr %1006, align 8
  %1008 = call i32 @i2c_transfer(ptr noundef %1007, ptr noundef nonnull %7, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %999) #10
  br label %1009

1009:                                             ; preds = %1001, %992
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %1010 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %1010, align 4, !annotation !8
  %1011 = load i8, ptr %63, align 4
  %1012 = lshr i8 %1011, 1
  %1013 = zext i8 %1012 to i16
  store i16 %1013, ptr %6, align 4
  %1014 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %1014, align 2
  %1015 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %1016 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1015, i32 noundef 3264, i32 noundef 4) #11
  %1017 = icmp eq ptr %1016, null
  br i1 %1017, label %1026, label %1018

1018:                                             ; preds = %1009
  %1019 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store i8 0, ptr %1016, align 8
  %1020 = getelementptr i8, ptr %1016, i32 1
  store i8 120, ptr %1020, align 1
  %1021 = getelementptr i8, ptr %1016, i32 2
  store i8 32, ptr %1021, align 2
  %1022 = getelementptr i8, ptr %1016, i32 3
  store i8 15, ptr %1022, align 1
  store ptr %1016, ptr %1019, align 4
  %1023 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %1024 = load ptr, ptr %1023, align 8
  %1025 = call i32 @i2c_transfer(ptr noundef %1024, ptr noundef nonnull %6, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %1016) #10
  br label %1026

1026:                                             ; preds = %1018, %1009
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %1027 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %1027, align 4, !annotation !8
  %1028 = load i8, ptr %63, align 4
  %1029 = lshr i8 %1028, 1
  %1030 = zext i8 %1029 to i16
  store i16 %1030, ptr %5, align 4
  %1031 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %1031, align 2
  %1032 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %1033 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1032, i32 noundef 3264, i32 noundef 4) #11
  %1034 = icmp eq ptr %1033, null
  br i1 %1034, label %1043, label %1035

1035:                                             ; preds = %1026
  %1036 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store i8 0, ptr %1033, align 8
  %1037 = getelementptr i8, ptr %1033, i32 1
  store i8 -122, ptr %1037, align 1
  %1038 = getelementptr i8, ptr %1033, i32 2
  store i8 0, ptr %1038, align 2
  %1039 = getelementptr i8, ptr %1033, i32 3
  store i8 0, ptr %1039, align 1
  store ptr %1033, ptr %1036, align 4
  %1040 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %1041 = load ptr, ptr %1040, align 8
  %1042 = call i32 @i2c_transfer(ptr noundef %1041, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %1033) #10
  br label %1043

1043:                                             ; preds = %1035, %1026
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %1044 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %1044, align 4, !annotation !8
  %1045 = load i8, ptr %63, align 4
  %1046 = lshr i8 %1045, 1
  %1047 = zext i8 %1046 to i16
  store i16 %1047, ptr %4, align 4
  %1048 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %1048, align 2
  %1049 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %1050 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1049, i32 noundef 3264, i32 noundef 4) #11
  %1051 = icmp eq ptr %1050, null
  br i1 %1051, label %1060, label %1052

1052:                                             ; preds = %1043
  %1053 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store i8 0, ptr %1050, align 8
  %1054 = getelementptr i8, ptr %1050, i32 1
  store i8 -61, ptr %1054, align 1
  %1055 = getelementptr i8, ptr %1050, i32 2
  store i8 0, ptr %1055, align 2
  %1056 = getelementptr i8, ptr %1050, i32 3
  store i8 16, ptr %1056, align 1
  store ptr %1050, ptr %1053, align 4
  %1057 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %1058 = load ptr, ptr %1057, align 8
  %1059 = call i32 @i2c_transfer(ptr noundef %1058, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %1050) #10
  br label %1060

1060:                                             ; preds = %1052, %1043
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %1061 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %1061, align 4, !annotation !8
  %1062 = load i8, ptr %63, align 4
  %1063 = lshr i8 %1062, 1
  %1064 = zext i8 %1063 to i16
  store i16 %1064, ptr %3, align 4
  %1065 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %1065, align 2
  %1066 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %1067 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1066, i32 noundef 3264, i32 noundef 4) #11
  %1068 = icmp eq ptr %1067, null
  br i1 %1068, label %1077, label %1069

1069:                                             ; preds = %1060
  %1070 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store i8 0, ptr %1067, align 8
  %1071 = getelementptr i8, ptr %1067, i32 1
  store i8 -76, ptr %1071, align 1
  %1072 = getelementptr i8, ptr %1067, i32 2
  store i8 47, ptr %1072, align 2
  %1073 = getelementptr i8, ptr %1067, i32 3
  store i8 -16, ptr %1073, align 1
  store ptr %1067, ptr %1070, align 4
  %1074 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %1075 = load ptr, ptr %1074, align 8
  %1076 = call i32 @i2c_transfer(ptr noundef %1075, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %1067) #10
  br label %1077

1077:                                             ; preds = %1069, %1060
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call fastcc void @dib3000mc_set_impulse_noise(ptr noundef %58, i8 noundef zeroext 0, i16 noundef signext 1)
  call fastcc void @dib3000mc_set_output_mode(ptr noundef %58, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %1078 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 4, ptr %1078, align 4, !annotation !8
  %1079 = load i8, ptr %63, align 4
  %1080 = lshr i8 %1079, 1
  %1081 = zext i8 %1080 to i16
  store i16 %1081, ptr %2, align 4
  %1082 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %1082, align 2
  %1083 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %1084 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1083, i32 noundef 3264, i32 noundef 4) #11
  %1085 = icmp eq ptr %1084, null
  br i1 %1085, label %1094, label %1086

1086:                                             ; preds = %1077
  %1087 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store i8 3, ptr %1084, align 8
  %1088 = getelementptr i8, ptr %1084, i32 1
  store i8 1, ptr %1088, align 1
  %1089 = getelementptr i8, ptr %1084, i32 2
  store i8 0, ptr %1089, align 2
  %1090 = getelementptr i8, ptr %1084, i32 3
  store i8 -128, ptr %1090, align 1
  store ptr %1084, ptr %1087, align 4
  %1091 = getelementptr inbounds %struct.dib3000mc_state, ptr %58, i32 0, i32 3
  %1092 = load ptr, ptr %1091, align 8
  %1093 = call i32 @i2c_transfer(ptr noundef %1092, ptr noundef nonnull %2, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %1084) #10
  br label %1094

1094:                                             ; preds = %1086, %1077
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mc_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.dib3000mc_state, ptr %6, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = lshr i8 %9, 1
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store i8 4, ptr %14, align 8
  %18 = getelementptr i8, ptr %14, i32 1
  store i8 7, ptr %18, align 1
  %19 = getelementptr i8, ptr %14, i32 2
  store i8 -1, ptr %19, align 2
  %20 = getelementptr i8, ptr %14, i32 3
  store i8 -1, ptr %20, align 1
  store ptr %14, ptr %17, align 4
  %21 = getelementptr inbounds %struct.dib3000mc_state, ptr %6, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %14) #10
  br label %24

24:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %25 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %25, align 4, !annotation !8
  %26 = load i8, ptr %8, align 4
  %27 = lshr i8 %26, 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %3, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %31 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 4) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store i8 4, ptr %31, align 8
  %35 = getelementptr i8, ptr %31, i32 1
  store i8 8, ptr %35, align 1
  %36 = getelementptr i8, ptr %31, i32 2
  store i8 -1, ptr %36, align 2
  %37 = getelementptr i8, ptr %31, i32 3
  store i8 -1, ptr %37, align 1
  store ptr %31, ptr %34, align 4
  %38 = getelementptr inbounds %struct.dib3000mc_state, ptr %6, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %31) #10
  br label %41

41:                                               ; preds = %33, %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %42 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 4, ptr %42, align 4, !annotation !8
  %43 = load i8, ptr %8, align 4
  %44 = lshr i8 %43, 1
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %2, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %46, align 2
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %48 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3264, i32 noundef 4) #11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store i8 4, ptr %48, align 8
  %52 = getelementptr i8, ptr %48, i32 1
  store i8 9, ptr %52, align 1
  %53 = getelementptr i8, ptr %48, i32 2
  store i8 -1, ptr %53, align 2
  %54 = getelementptr i8, ptr %48, i32 3
  store i8 -16, ptr %54, align 1
  store ptr %48, ptr %51, align 4
  %55 = getelementptr inbounds %struct.dib3000mc_state, ptr %6, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %2, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %48) #10
  br label %58

58:                                               ; preds = %50, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mc_set_frontend(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca %struct.dtv_frontend_properties, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call fastcc void @dib3000mc_set_output_mode(ptr noundef %15, i32 noundef 0)
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dib3000mc_state, ptr %15, i32 0, i32 6
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %16, align 4
  %20 = udiv i32 %19, 1000
  tail call fastcc void @dib3000mc_set_bandwidth(ptr noundef %15, i32 noundef %20)
  %21 = load i32, ptr @buggy_sfn_workaround, align 4
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.dib3000mc_state, ptr %15, i32 0, i32 8
  %24 = load i8, ptr %23, align 2
  %25 = and i8 %22, 1
  %26 = and i8 %24, -2
  %27 = or i8 %26, %25
  store i8 %27, ptr %23, align 2
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %1
  %32 = tail call i32 %29(ptr noundef %0) #10
  tail call void @msleep(i32 noundef 100) #10
  br label %33

33:                                               ; preds = %31, %1
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %49, label %123

49:                                               ; preds = %45, %41, %37, %33
  %50 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %12) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(456) %12, ptr noundef align 4 dereferenceable(456) %13, i32 456, i1 false) #10
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %12, i32 0, i32 6
  store i32 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %12, i32 0, i32 8
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %12, i32 0, i32 1
  store i32 3, ptr %53, align 4
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %12, i32 0, i32 11
  store i32 2, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %12, i32 0, i32 12
  store i32 2, ptr %55, align 4
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %12, i32 0, i32 9
  store i32 0, ptr %56, align 4
  call fastcc void @dib3000mc_set_channel_cfg(ptr noundef %50, ptr noundef nonnull %12, i16 noundef zeroext 11) #10
  %57 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %50, i16 noundef zeroext 0) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %58 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 4, ptr %58, align 4, !annotation !8
  %59 = getelementptr inbounds %struct.dib3000mc_state, ptr %50, i32 0, i32 2
  %60 = load i8, ptr %59, align 4
  %61 = lshr i8 %60, 1
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %11, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %63, align 2
  %64 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3264, i32 noundef 4) #11
  %66 = icmp eq ptr %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %49
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store i8 0, ptr %65, align 8
  %69 = getelementptr i8, ptr %65, i32 1
  store i8 0, ptr %69, align 1
  %70 = lshr i16 %57, 8
  %71 = trunc i16 %70 to i8
  %72 = or i8 %71, 1
  %73 = getelementptr i8, ptr %65, i32 2
  store i8 %72, ptr %73, align 2
  %74 = trunc i16 %57 to i8
  %75 = getelementptr i8, ptr %65, i32 3
  store i8 %74, ptr %75, align 1
  store ptr %65, ptr %68, align 4
  %76 = getelementptr inbounds %struct.dib3000mc_state, ptr %50, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %11, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %65) #10
  br label %79

79:                                               ; preds = %67, %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  %80 = call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %50, i16 noundef zeroext 511) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %81 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 4, ptr %81, align 4, !annotation !8
  %82 = load i8, ptr %59, align 4
  %83 = lshr i8 %82, 1
  %84 = zext i8 %83 to i16
  store i16 %84, ptr %10, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %85, align 2
  %86 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %87 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3264, i32 noundef 4) #11
  %88 = icmp eq ptr %87, null
  br i1 %88, label %100, label %89

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store i8 0, ptr %87, align 8
  %91 = getelementptr i8, ptr %87, i32 1
  store i8 0, ptr %91, align 1
  %92 = lshr i16 %57, 8
  %93 = trunc i16 %92 to i8
  %94 = getelementptr i8, ptr %87, i32 2
  store i8 %93, ptr %94, align 2
  %95 = trunc i16 %57 to i8
  %96 = getelementptr i8, ptr %87, i32 3
  store i8 %95, ptr %96, align 1
  store ptr %87, ptr %90, align 4
  %97 = getelementptr inbounds %struct.dib3000mc_state, ptr %50, i32 0, i32 3
  %98 = load ptr, ptr %97, align 8
  %99 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %10, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %87) #10
  br label %100

100:                                              ; preds = %89, %79
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %12) #10
  br label %101

101:                                              ; preds = %101, %100
  %102 = phi i32 [ 1000, %100 ], [ %111, %101 ]
  call void @msleep(i32 noundef 1) #10
  %103 = load ptr, ptr %14, align 4
  %104 = call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %103, i16 noundef zeroext 511) #10
  %105 = zext i16 %104 to i32
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  %108 = and i32 %105, 2
  %109 = select i1 %107, i32 %108, i32 1
  %110 = icmp ne i32 %109, 0
  %111 = add nsw i32 %102, -1
  %112 = icmp eq i32 %102, 0
  %113 = select i1 %110, i1 true, i1 %112
  br i1 %113, label %114, label %101

114:                                              ; preds = %101
  %115 = load i32, ptr @debug, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dib3000mc_set_frontend, i32 noundef %109) #12
  br label %119

119:                                              ; preds = %117, %114
  %120 = icmp ult i32 %109, 2
  br i1 %120, label %295, label %121

121:                                              ; preds = %119
  %122 = call i32 @dib3000mc_get_frontend(ptr noundef %0, ptr noundef %13)
  br label %123

123:                                              ; preds = %121, %45
  %124 = load ptr, ptr %14, align 4
  call fastcc void @dib3000mc_set_channel_cfg(ptr noundef %124, ptr noundef %13, i16 noundef zeroext 0) #10
  %125 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 8
  %126 = load i8, ptr %125, align 2
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %170, label %129

129:                                              ; preds = %123
  %130 = load i32, ptr @debug, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dib3000mc_tune) #12
  br label %134

134:                                              ; preds = %132, %129
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %135 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 4, ptr %135, align 4, !annotation !8
  %136 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 2
  %137 = load i8, ptr %136, align 4
  %138 = lshr i8 %137, 1
  %139 = zext i8 %138 to i16
  store i16 %139, ptr %9, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %140, align 2
  %141 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %142 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %141, i32 noundef 3264, i32 noundef 4) #11
  %143 = icmp eq ptr %142, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %134
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store i8 0, ptr %142, align 8
  %146 = getelementptr i8, ptr %142, i32 1
  store i8 29, ptr %146, align 1
  %147 = getelementptr i8, ptr %142, i32 2
  store i8 18, ptr %147, align 2
  %148 = getelementptr i8, ptr %142, i32 3
  store i8 115, ptr %148, align 1
  store ptr %142, ptr %145, align 4
  %149 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 3
  %150 = load ptr, ptr %149, align 8
  %151 = call i32 @i2c_transfer(ptr noundef %150, ptr noundef nonnull %9, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %142) #10
  br label %152

152:                                              ; preds = %144, %134
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %153 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 4, ptr %153, align 4, !annotation !8
  %154 = load i8, ptr %136, align 4
  %155 = lshr i8 %154, 1
  %156 = zext i8 %155 to i16
  store i16 %156, ptr %8, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %157, align 2
  %158 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %159 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %158, i32 noundef 3264, i32 noundef 4) #11
  %160 = icmp eq ptr %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store i8 0, ptr %159, align 8
  %163 = getelementptr i8, ptr %159, i32 1
  store i8 108, ptr %163, align 1
  %164 = getelementptr i8, ptr %159, i32 2
  store i8 64, ptr %164, align 2
  %165 = getelementptr i8, ptr %159, i32 3
  store i8 0, ptr %165, align 1
  store ptr %159, ptr %162, align 4
  %166 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 3
  %167 = load ptr, ptr %166, align 8
  %168 = call i32 @i2c_transfer(ptr noundef %167, ptr noundef nonnull %8, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %159) #10
  br label %169

169:                                              ; preds = %161, %152
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  br label %206

170:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %171 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %171, align 4, !annotation !8
  %172 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 2
  %173 = load i8, ptr %172, align 4
  %174 = lshr i8 %173, 1
  %175 = zext i8 %174 to i16
  store i16 %175, ptr %7, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %176, align 2
  %177 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %178 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %177, i32 noundef 3264, i32 noundef 4) #11
  %179 = icmp eq ptr %178, null
  br i1 %179, label %188, label %180

180:                                              ; preds = %170
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store i8 0, ptr %178, align 8
  %182 = getelementptr i8, ptr %178, i32 1
  store i8 29, ptr %182, align 1
  %183 = getelementptr i8, ptr %178, i32 2
  store i8 16, ptr %183, align 2
  %184 = getelementptr i8, ptr %178, i32 3
  store i8 115, ptr %184, align 1
  store ptr %178, ptr %181, align 4
  %185 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 3
  %186 = load ptr, ptr %185, align 8
  %187 = call i32 @i2c_transfer(ptr noundef %186, ptr noundef nonnull %7, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %178) #10
  br label %188

188:                                              ; preds = %180, %170
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %189 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %189, align 4, !annotation !8
  %190 = load i8, ptr %172, align 4
  %191 = lshr i8 %190, 1
  %192 = zext i8 %191 to i16
  store i16 %192, ptr %6, align 4
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %193, align 2
  %194 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %195 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %194, i32 noundef 3264, i32 noundef 4) #11
  %196 = icmp eq ptr %195, null
  br i1 %196, label %205, label %197

197:                                              ; preds = %188
  %198 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store i8 0, ptr %195, align 8
  %199 = getelementptr i8, ptr %195, i32 1
  store i8 108, ptr %199, align 1
  %200 = getelementptr i8, ptr %195, i32 2
  store i8 0, ptr %200, align 2
  %201 = getelementptr i8, ptr %195, i32 3
  store i8 0, ptr %201, align 1
  store ptr %195, ptr %198, align 4
  %202 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 3
  %203 = load ptr, ptr %202, align 8
  %204 = call i32 @i2c_transfer(ptr noundef %203, ptr noundef nonnull %6, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %195) #10
  br label %205

205:                                              ; preds = %197, %188
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  br label %206

206:                                              ; preds = %205, %169
  %207 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %208 = load i32, ptr %207, align 4
  %209 = trunc i32 %208 to i16
  %210 = and i16 %209, 255
  call fastcc void @dib3000mc_set_adp_cfg(ptr noundef %124, i16 noundef signext %210) #10
  %211 = load i32, ptr %34, align 4
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %249

213:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %214 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %214, align 4, !annotation !8
  %215 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 2
  %216 = load i8, ptr %215, align 4
  %217 = lshr i8 %216, 1
  %218 = zext i8 %217 to i16
  store i16 %218, ptr %5, align 4
  %219 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %219, align 2
  %220 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %221 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %220, i32 noundef 3264, i32 noundef 4) #11
  %222 = icmp eq ptr %221, null
  br i1 %222, label %231, label %223

223:                                              ; preds = %213
  %224 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store i8 0, ptr %221, align 8
  %225 = getelementptr i8, ptr %221, i32 1
  store i8 26, ptr %225, align 1
  %226 = getelementptr i8, ptr %221, i32 2
  store i8 -106, ptr %226, align 2
  %227 = getelementptr i8, ptr %221, i32 3
  store i8 -128, ptr %227, align 1
  store ptr %221, ptr %224, align 4
  %228 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 3
  %229 = load ptr, ptr %228, align 8
  %230 = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %221) #10
  br label %231

231:                                              ; preds = %223, %213
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %232 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %232, align 4, !annotation !8
  %233 = load i8, ptr %215, align 4
  %234 = lshr i8 %233, 1
  %235 = zext i8 %234 to i16
  store i16 %235, ptr %4, align 4
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %236, align 2
  %237 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %238 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %237, i32 noundef 3264, i32 noundef 4) #11
  %239 = icmp eq ptr %238, null
  br i1 %239, label %248, label %240

240:                                              ; preds = %231
  %241 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store i8 0, ptr %238, align 8
  %242 = getelementptr i8, ptr %238, i32 1
  store i8 33, ptr %242, align 1
  %243 = getelementptr i8, ptr %238, i32 2
  store i8 0, ptr %243, align 2
  %244 = getelementptr i8, ptr %238, i32 3
  store i8 8, ptr %244, align 1
  store ptr %238, ptr %241, align 4
  %245 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 3
  %246 = load ptr, ptr %245, align 8
  %247 = call i32 @i2c_transfer(ptr noundef %246, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %238) #10
  br label %248

248:                                              ; preds = %240, %231
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %285

249:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %250 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %250, align 4, !annotation !8
  %251 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 2
  %252 = load i8, ptr %251, align 4
  %253 = lshr i8 %252, 1
  %254 = zext i8 %253 to i16
  store i16 %254, ptr %3, align 4
  %255 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %255, align 2
  %256 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %257 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %256, i32 noundef 3264, i32 noundef 4) #11
  %258 = icmp eq ptr %257, null
  br i1 %258, label %267, label %259

259:                                              ; preds = %249
  %260 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store i8 0, ptr %257, align 8
  %261 = getelementptr i8, ptr %257, i32 1
  store i8 26, ptr %261, align 1
  %262 = getelementptr i8, ptr %257, i32 2
  store i8 118, ptr %262, align 2
  %263 = getelementptr i8, ptr %257, i32 3
  store i8 -128, ptr %263, align 1
  store ptr %257, ptr %260, align 4
  %264 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 3
  %265 = load ptr, ptr %264, align 8
  %266 = call i32 @i2c_transfer(ptr noundef %265, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %257) #10
  br label %267

267:                                              ; preds = %259, %249
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %268 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 4, ptr %268, align 4, !annotation !8
  %269 = load i8, ptr %251, align 4
  %270 = lshr i8 %269, 1
  %271 = zext i8 %270 to i16
  store i16 %271, ptr %2, align 4
  %272 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %272, align 2
  %273 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %274 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %273, i32 noundef 3264, i32 noundef 4) #11
  %275 = icmp eq ptr %274, null
  br i1 %275, label %284, label %276

276:                                              ; preds = %267
  %277 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store i8 0, ptr %274, align 8
  %278 = getelementptr i8, ptr %274, i32 1
  store i8 33, ptr %278, align 1
  %279 = getelementptr i8, ptr %274, i32 2
  store i8 0, ptr %279, align 2
  %280 = getelementptr i8, ptr %274, i32 3
  store i8 6, ptr %280, align 1
  store ptr %274, ptr %277, align 4
  %281 = getelementptr inbounds %struct.dib3000mc_state, ptr %124, i32 0, i32 3
  %282 = load ptr, ptr %281, align 8
  %283 = call i32 @i2c_transfer(ptr noundef %282, ptr noundef nonnull %2, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %274) #10
  br label %284

284:                                              ; preds = %276, %267
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  br label %285

285:                                              ; preds = %284, %248
  %286 = call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %124, i16 noundef zeroext 509) #10
  %287 = and i16 %286, 128
  %288 = icmp eq i16 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %285
  %290 = load i32, ptr %34, align 4
  %291 = trunc i32 %290 to i16
  %292 = load i32, ptr %16, align 4
  %293 = udiv i32 %292, 1000
  call fastcc void @dib3000mc_set_timing(ptr noundef %124, i16 noundef signext %291, i32 noundef %293, i8 noundef zeroext 1) #10
  br label %294

294:                                              ; preds = %289, %285
  call fastcc void @dib3000mc_set_output_mode(ptr noundef %15, i32 noundef 5)
  br label %295

295:                                              ; preds = %294, %119
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib3000mc_fe_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mc_get_frontend(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %4, i16 noundef zeroext 458)
  %6 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dib3000mc_state, ptr %4, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  store i32 %8, ptr %9, align 4
  %10 = zext i16 %5 to i32
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 1
  %13 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %12, ptr %13, align 4
  %14 = and i32 %10, 3
  %15 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %14, ptr %15, align 4
  %16 = lshr i32 %10, 13
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 1
  %19 = select i1 %18, i32 1, i32 3
  %20 = icmp eq i32 %17, 0
  %21 = select i1 %20, i32 0, i32 %19
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 0, ptr %23, align 4
  %24 = lshr i32 %10, 5
  %25 = and i32 %24, 7
  %26 = add nsw i32 %25, -1
  %27 = icmp ult i32 %26, 5
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = getelementptr inbounds [5 x i32], ptr @switch.table.dib3000mc_get_frontend.10, i32 0, i32 %26
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %2
  %32 = phi i32 [ %30, %28 ], [ 7, %2 ]
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = lshr i32 %10, 2
  %35 = and i32 %34, 7
  %36 = add nsw i32 %35, -1
  %37 = icmp ult i32 %36, 5
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = getelementptr inbounds [5 x i32], ptr @switch.table.dib3000mc_get_frontend.10, i32 0, i32 %36
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi i32 [ %40, %38 ], [ 7, %31 ]
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %42, ptr %43, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mc_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %4, i16 noundef zeroext 509)
  %6 = zext i16 %5 to i32
  %7 = lshr i32 %6, 15
  %8 = and i32 %6, 12288
  %9 = icmp eq i32 %8, 0
  %10 = or i32 %7, 2
  %11 = select i1 %9, i32 %7, i32 %10
  %12 = lshr i32 %6, 6
  %13 = and i32 %12, 4
  %14 = or i32 %13, %11
  %15 = lshr i32 %6, 1
  %16 = and i32 %15, 8
  %17 = or i32 %16, %14
  %18 = shl nuw nsw i32 %6, 1
  %19 = and i32 %18, 16
  %20 = or i32 %19, %17
  store i32 %20, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mc_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %4, i16 noundef zeroext 500)
  %6 = zext i16 %5 to i32
  %7 = shl nuw i32 %6, 16
  %8 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %4, i16 noundef zeroext 501)
  %9 = zext i16 %8 to i32
  %10 = or i32 %7, %9
  store i32 %10, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mc_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %4, i16 noundef zeroext 392)
  %6 = xor i16 %5, -1
  store i16 %6, ptr %1, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib3000mc_read_snr(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #8 {
  store i16 0, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dib3000mc_read_unc_blocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %4, i16 noundef zeroext 508)
  %6 = zext i16 %5 to i32
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dibx000_exit_i2c_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib3000mc_set_bandwidth(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [6 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(12) %13, i8 0, i32 12, i1 false)
  switch i32 %1, label %235 [
    i32 8000, label %14
    i32 7000, label %15
    i32 6000, label %16
    i32 5000, label %17
  ]

14:                                               ; preds = %2
  store i16 25, ptr %13, align 2
  br label %18

15:                                               ; preds = %2
  store i16 28, ptr %13, align 2
  br label %18

16:                                               ; preds = %2
  store i16 33, ptr %13, align 2
  br label %18

17:                                               ; preds = %2
  store i16 40, ptr %13, align 2
  br label %18

18:                                               ; preds = %17, %16, %15, %14
  %19 = phi i16 [ -27776, %17 ], [ -12224, %16 ], [ -1115, %15 ], [ 23600, %14 ]
  %20 = phi i16 [ 135, %17 ], [ 112, %16 ], [ 96, %15 ], [ 84, %14 ]
  %21 = phi i16 [ 16640, %17 ], [ -18901, %16 ], [ -25563, %15 ], [ -30560, %14 ]
  %22 = phi i16 [ 676, %17 ], [ 563, %16 ], [ 483, %15 ], [ 422, %14 ]
  %23 = phi i16 [ 17664, %17 ], [ -28971, %16 ], [ 3255, %15 ], [ -21728, %14 ]
  %24 = phi i8 [ -119, %17 ], [ -91, %16 ], [ -64, %15 ], [ -37, %14 ]
  %25 = phi i8 [ 114, %17 ], [ -119, %16 ], [ -96, %15 ], [ -73, %14 ]
  %26 = getelementptr inbounds [6 x i16], ptr %13, i32 0, i32 1
  store i16 %19, ptr %26, align 2
  %27 = getelementptr inbounds [6 x i16], ptr %13, i32 0, i32 2
  store i16 %20, ptr %27, align 2
  %28 = getelementptr inbounds [6 x i16], ptr %13, i32 0, i32 3
  store i16 %21, ptr %28, align 2
  %29 = getelementptr inbounds [6 x i16], ptr %13, i32 0, i32 4
  store i16 %22, ptr %29, align 2
  %30 = getelementptr inbounds [6 x i16], ptr %13, i32 0, i32 5
  store i16 %23, ptr %30, align 2
  %31 = getelementptr inbounds i8, ptr %12, i32 4
  %32 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  %35 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  br label %36

36:                                               ; preds = %60, %18
  %37 = phi i32 [ 6, %18 ], [ %61, %60 ]
  %38 = phi i16 [ 6, %18 ], [ %63, %60 ]
  %39 = add nsw i32 %37, -6
  %40 = getelementptr [6 x i16], ptr %13, i32 0, i32 %39
  %41 = load i16, ptr %40, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  store i32 4, ptr %31, align 4, !annotation !8
  %42 = load i8, ptr %32, align 4
  %43 = lshr i8 %42, 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %12, align 4
  store i16 0, ptr %33, align 2
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %46 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3264, i32 noundef 4) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %36
  %49 = lshr i32 %37, 8
  %50 = trunc i32 %49 to i8
  store i8 %50, ptr %46, align 8
  %51 = trunc i16 %38 to i8
  %52 = getelementptr i8, ptr %46, i32 1
  store i8 %51, ptr %52, align 1
  %53 = lshr i16 %41, 8
  %54 = trunc i16 %53 to i8
  %55 = getelementptr i8, ptr %46, i32 2
  store i8 %54, ptr %55, align 2
  %56 = trunc i16 %41 to i8
  %57 = getelementptr i8, ptr %46, i32 3
  store i8 %56, ptr %57, align 1
  store ptr %46, ptr %34, align 4
  %58 = load ptr, ptr %35, align 8
  %59 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %12, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %46) #10
  br label %60

60:                                               ; preds = %48, %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  %61 = add nuw nsw i32 %37, 1
  %62 = icmp eq i32 %61, 12
  %63 = add nuw nsw i16 %38, 1
  br i1 %62, label %64, label %36

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %65 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 4, ptr %65, align 4, !annotation !8
  %66 = load i8, ptr %32, align 4
  %67 = lshr i8 %66, 1
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %11, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %69, align 2
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %71 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3264, i32 noundef 4) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store i8 0, ptr %71, align 8
  %75 = getelementptr i8, ptr %71, i32 1
  store i8 12, ptr %75, align 1
  %76 = getelementptr i8, ptr %71, i32 2
  store i8 0, ptr %76, align 2
  %77 = getelementptr i8, ptr %71, i32 3
  store i8 0, ptr %77, align 1
  store ptr %71, ptr %74, align 4
  %78 = load ptr, ptr %35, align 8
  %79 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %11, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %71) #10
  br label %80

80:                                               ; preds = %73, %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %81 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 4, ptr %81, align 4, !annotation !8
  %82 = load i8, ptr %32, align 4
  %83 = lshr i8 %82, 1
  %84 = zext i8 %83 to i16
  store i16 %84, ptr %10, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %85, align 2
  %86 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %87 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3264, i32 noundef 4) #11
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store i8 0, ptr %87, align 8
  %91 = getelementptr i8, ptr %87, i32 1
  store i8 13, ptr %91, align 1
  %92 = getelementptr i8, ptr %87, i32 2
  store i8 3, ptr %92, align 2
  %93 = getelementptr i8, ptr %87, i32 3
  store i8 -24, ptr %93, align 1
  store ptr %87, ptr %90, align 4
  %94 = load ptr, ptr %35, align 8
  %95 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %10, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %87) #10
  br label %96

96:                                               ; preds = %89, %80
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %97 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 4, ptr %97, align 4, !annotation !8
  %98 = load i8, ptr %32, align 4
  %99 = lshr i8 %98, 1
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %9, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %101, align 2
  %102 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %103 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 3264, i32 noundef 4) #11
  %104 = icmp eq ptr %103, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store i8 0, ptr %103, align 8
  %107 = getelementptr i8, ptr %103, i32 1
  store i8 14, ptr %107, align 1
  %108 = getelementptr i8, ptr %103, i32 2
  store i8 0, ptr %108, align 2
  %109 = getelementptr i8, ptr %103, i32 3
  store i8 0, ptr %109, align 1
  store ptr %103, ptr %106, align 4
  %110 = load ptr, ptr %35, align 8
  %111 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %9, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %103) #10
  br label %112

112:                                              ; preds = %105, %96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %113 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 4, ptr %113, align 4, !annotation !8
  %114 = load i8, ptr %32, align 4
  %115 = lshr i8 %114, 1
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %8, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %117, align 2
  %118 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %119 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3264, i32 noundef 4) #11
  %120 = icmp eq ptr %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store i8 0, ptr %119, align 8
  %123 = getelementptr i8, ptr %119, i32 1
  store i8 15, ptr %123, align 1
  %124 = getelementptr i8, ptr %119, i32 2
  store i8 3, ptr %124, align 2
  %125 = getelementptr i8, ptr %119, i32 3
  store i8 -14, ptr %125, align 1
  store ptr %119, ptr %122, align 4
  %126 = load ptr, ptr %35, align 8
  %127 = call i32 @i2c_transfer(ptr noundef %126, ptr noundef nonnull %8, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %119) #10
  br label %128

128:                                              ; preds = %121, %112
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %129 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %129, align 4, !annotation !8
  %130 = load i8, ptr %32, align 4
  %131 = lshr i8 %130, 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %7, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %133, align 2
  %134 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %135 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %134, i32 noundef 3264, i32 noundef 4) #11
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store i8 0, ptr %135, align 8
  %139 = getelementptr i8, ptr %135, i32 1
  store i8 16, ptr %139, align 1
  %140 = getelementptr i8, ptr %135, i32 2
  store i8 0, ptr %140, align 2
  %141 = getelementptr i8, ptr %135, i32 3
  store i8 1, ptr %141, align 1
  store ptr %135, ptr %138, align 4
  %142 = load ptr, ptr %35, align 8
  %143 = call i32 @i2c_transfer(ptr noundef %142, ptr noundef nonnull %7, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %135) #10
  br label %144

144:                                              ; preds = %137, %128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %145 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %145, align 4, !annotation !8
  %146 = load i8, ptr %32, align 4
  %147 = lshr i8 %146, 1
  %148 = zext i8 %147 to i16
  store i16 %148, ptr %6, align 4
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %149, align 2
  %150 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %151 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %150, i32 noundef 3264, i32 noundef 4) #11
  %152 = icmp eq ptr %151, null
  br i1 %152, label %160, label %153

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store i8 0, ptr %151, align 8
  %155 = getelementptr i8, ptr %151, i32 1
  store i8 17, ptr %155, align 1
  %156 = getelementptr i8, ptr %151, i32 2
  store i8 -80, ptr %156, align 2
  %157 = getelementptr i8, ptr %151, i32 3
  store i8 -48, ptr %157, align 1
  store ptr %151, ptr %154, align 4
  %158 = load ptr, ptr %35, align 8
  %159 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %6, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %151) #10
  br label %160

160:                                              ; preds = %153, %144
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %161 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %161, align 4, !annotation !8
  %162 = load i8, ptr %32, align 4
  %163 = lshr i8 %162, 1
  %164 = zext i8 %163 to i16
  store i16 %164, ptr %5, align 4
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %165, align 2
  %166 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %167 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %166, i32 noundef 3264, i32 noundef 4) #11
  %168 = icmp eq ptr %167, null
  br i1 %168, label %176, label %169

169:                                              ; preds = %160
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store i8 0, ptr %167, align 8
  %171 = getelementptr i8, ptr %167, i32 1
  store i8 18, ptr %171, align 1
  %172 = getelementptr i8, ptr %167, i32 2
  store i8 3, ptr %172, align 2
  %173 = getelementptr i8, ptr %167, i32 3
  store i8 -109, ptr %173, align 1
  store ptr %167, ptr %170, align 4
  %174 = load ptr, ptr %35, align 8
  %175 = call i32 @i2c_transfer(ptr noundef %174, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %167) #10
  br label %176

176:                                              ; preds = %169, %160
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %177 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %177, align 4, !annotation !8
  %178 = load i8, ptr %32, align 4
  %179 = lshr i8 %178, 1
  %180 = zext i8 %179 to i16
  store i16 %180, ptr %4, align 4
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %181, align 2
  %182 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %183 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %182, i32 noundef 3264, i32 noundef 4) #11
  %184 = icmp eq ptr %183, null
  br i1 %184, label %192, label %185

185:                                              ; preds = %176
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store i8 0, ptr %183, align 8
  %187 = getelementptr i8, ptr %183, i32 1
  store i8 19, ptr %187, align 1
  %188 = getelementptr i8, ptr %183, i32 2
  store i8 -121, ptr %188, align 2
  %189 = getelementptr i8, ptr %183, i32 3
  store i8 0, ptr %189, align 1
  store ptr %183, ptr %186, align 4
  %190 = load ptr, ptr %35, align 8
  %191 = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %183) #10
  br label %192

192:                                              ; preds = %185, %176
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  %193 = getelementptr inbounds i8, ptr %3, i32 4
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 4, ptr %193, align 4, !annotation !8
  %196 = load i8, ptr %32, align 4
  %197 = lshr i8 %196, 1
  %198 = zext i8 %197 to i16
  store i16 %198, ptr %3, align 4
  store i16 0, ptr %194, align 2
  %199 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %200 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %199, i32 noundef 3264, i32 noundef 4) #11
  %201 = icmp eq ptr %200, null
  br i1 %201, label %208, label %202

202:                                              ; preds = %192
  store i8 0, ptr %200, align 8
  %203 = getelementptr i8, ptr %200, i32 1
  store i8 55, ptr %203, align 1
  %204 = getelementptr i8, ptr %200, i32 2
  store i8 4, ptr %204, align 2
  %205 = getelementptr i8, ptr %200, i32 3
  store i8 %24, ptr %205, align 1
  store ptr %200, ptr %195, align 4
  %206 = load ptr, ptr %35, align 8
  %207 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %200) #10
  br label %208

208:                                              ; preds = %202, %192
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 4, ptr %193, align 4, !annotation !8
  %209 = load i8, ptr %32, align 4
  %210 = lshr i8 %209, 1
  %211 = zext i8 %210 to i16
  store i16 %211, ptr %3, align 4
  store i16 0, ptr %194, align 2
  %212 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %213 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %212, i32 noundef 3264, i32 noundef 4) #11
  %214 = icmp eq ptr %213, null
  br i1 %214, label %221, label %215

215:                                              ; preds = %208
  store i8 0, ptr %213, align 8
  %216 = getelementptr i8, ptr %213, i32 1
  store i8 56, ptr %216, align 1
  %217 = getelementptr i8, ptr %213, i32 2
  store i8 0, ptr %217, align 2
  %218 = getelementptr i8, ptr %213, i32 3
  store i8 %24, ptr %218, align 1
  store ptr %213, ptr %195, align 4
  %219 = load ptr, ptr %35, align 8
  %220 = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %213) #10
  br label %221

221:                                              ; preds = %215, %208
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 4, ptr %193, align 4, !annotation !8
  %222 = load i8, ptr %32, align 4
  %223 = lshr i8 %222, 1
  %224 = zext i8 %223 to i16
  store i16 %224, ptr %3, align 4
  store i16 0, ptr %194, align 2
  %225 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %226 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %225, i32 noundef 3264, i32 noundef 4) #11
  %227 = icmp eq ptr %226, null
  br i1 %227, label %234, label %228

228:                                              ; preds = %221
  store i8 0, ptr %226, align 8
  %229 = getelementptr i8, ptr %226, i32 1
  store i8 57, ptr %229, align 1
  %230 = getelementptr i8, ptr %226, i32 2
  store i8 0, ptr %230, align 2
  %231 = getelementptr i8, ptr %226, i32 3
  store i8 %25, ptr %231, align 1
  store ptr %226, ptr %195, align 4
  %232 = load ptr, ptr %35, align 8
  %233 = call i32 @i2c_transfer(ptr noundef %232, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %226) #10
  br label %234

234:                                              ; preds = %228, %221
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call fastcc void @dib3000mc_set_timing(ptr noundef %0, i16 noundef signext 0, i32 noundef %1, i8 noundef zeroext 0)
  br label %235

235:                                              ; preds = %234, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib3000mc_set_impulse_noise(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = getelementptr inbounds i8, ptr %10, i32 4
  %12 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  %15 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  br label %16

16:                                               ; preds = %40, %3
  %17 = phi i32 [ 58, %3 ], [ %41, %40 ]
  %18 = phi i16 [ 58, %3 ], [ %42, %40 ]
  %19 = add nsw i32 %17, -58
  %20 = getelementptr [29 x i16], ptr @impulse_noise_val, i32 0, i32 %19
  %21 = load i16, ptr %20, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  store i32 4, ptr %11, align 4, !annotation !8
  %22 = load i8, ptr %12, align 4
  %23 = lshr i8 %22, 1
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %10, align 4
  store i16 0, ptr %13, align 2
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 4) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %16
  %29 = lshr i32 %17, 8
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %26, align 8
  %31 = trunc i16 %18 to i8
  %32 = getelementptr i8, ptr %26, i32 1
  store i8 %31, ptr %32, align 1
  %33 = lshr i16 %21, 8
  %34 = trunc i16 %33 to i8
  %35 = getelementptr i8, ptr %26, i32 2
  store i8 %34, ptr %35, align 2
  %36 = trunc i16 %21 to i8
  %37 = getelementptr i8, ptr %26, i32 3
  store i8 %36, ptr %37, align 1
  store ptr %26, ptr %14, align 4
  %38 = load ptr, ptr %15, align 8
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %10, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %26) #10
  br label %40

40:                                               ; preds = %28, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  %41 = add nuw nsw i32 %17, 1
  %42 = add nuw nsw i16 %18, 1
  %43 = icmp eq i32 %41, 87
  br i1 %43, label %44, label %16

44:                                               ; preds = %40
  %45 = icmp eq i16 %2, 1
  br i1 %45, label %46, label %95

46:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %47 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 4, ptr %47, align 4, !annotation !8
  %48 = load i8, ptr %12, align 4
  %49 = lshr i8 %48, 1
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %9, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %51, align 2
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %53 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3264, i32 noundef 4) #11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store i8 0, ptr %53, align 8
  %57 = getelementptr i8, ptr %53, i32 1
  store i8 58, ptr %57, align 1
  %58 = getelementptr i8, ptr %53, i32 2
  store i8 0, ptr %58, align 2
  %59 = getelementptr i8, ptr %53, i32 3
  store i8 59, ptr %59, align 1
  store ptr %53, ptr %56, align 4
  %60 = load ptr, ptr %15, align 8
  %61 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %9, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %53) #10
  br label %62

62:                                               ; preds = %55, %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %63 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 4, ptr %63, align 4, !annotation !8
  %64 = load i8, ptr %12, align 4
  %65 = lshr i8 %64, 1
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %8, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %67, align 2
  %68 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %69 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3264, i32 noundef 4) #11
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store i8 0, ptr %69, align 8
  %73 = getelementptr i8, ptr %69, i32 1
  store i8 84, ptr %73, align 1
  %74 = getelementptr i8, ptr %69, i32 2
  store i8 0, ptr %74, align 2
  %75 = getelementptr i8, ptr %69, i32 3
  store i8 0, ptr %75, align 1
  store ptr %69, ptr %72, align 4
  %76 = load ptr, ptr %15, align 8
  %77 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %8, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %69) #10
  br label %78

78:                                               ; preds = %71, %62
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %79 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %79, align 4, !annotation !8
  %80 = load i8, ptr %12, align 4
  %81 = lshr i8 %80, 1
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %7, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %83, align 2
  %84 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %85 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %84, i32 noundef 3264, i32 noundef 4) #11
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store i8 0, ptr %85, align 8
  %89 = getelementptr i8, ptr %85, i32 1
  store i8 85, ptr %89, align 1
  %90 = getelementptr i8, ptr %85, i32 2
  store i8 -126, ptr %90, align 2
  %91 = getelementptr i8, ptr %85, i32 3
  store i8 0, ptr %91, align 1
  store ptr %85, ptr %88, align 4
  %92 = load ptr, ptr %15, align 8
  %93 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %7, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %85) #10
  br label %94

94:                                               ; preds = %87, %78
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  br label %95

95:                                               ; preds = %94, %44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %96 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %96, align 4, !annotation !8
  %97 = load i8, ptr %12, align 4
  %98 = lshr i8 %97, 1
  %99 = zext i8 %98 to i16
  store i16 %99, ptr %6, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %100, align 2
  %101 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %102 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %101, i32 noundef 3264, i32 noundef 4) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store i8 0, ptr %102, align 8
  %106 = getelementptr i8, ptr %102, i32 1
  store i8 34, ptr %106, align 1
  %107 = getelementptr i8, ptr %102, i32 2
  store i8 18, ptr %107, align 2
  %108 = getelementptr i8, ptr %102, i32 3
  store i8 -108, ptr %108, align 1
  store ptr %102, ptr %105, align 4
  %109 = load ptr, ptr %15, align 8
  %110 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %6, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %102) #10
  br label %111

111:                                              ; preds = %104, %95
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %112 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %112, align 4, !annotation !8
  %113 = load i8, ptr %12, align 4
  %114 = lshr i8 %113, 1
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %5, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %116, align 2
  %117 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %118 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 3264, i32 noundef 4) #11
  %119 = icmp eq ptr %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store i8 0, ptr %118, align 8
  %122 = getelementptr i8, ptr %118, i32 1
  store i8 35, ptr %122, align 1
  %123 = getelementptr i8, ptr %118, i32 2
  store i8 31, ptr %123, align 2
  %124 = getelementptr i8, ptr %118, i32 3
  store i8 -8, ptr %124, align 1
  store ptr %118, ptr %121, align 4
  %125 = load ptr, ptr %15, align 8
  %126 = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %118) #10
  br label %127

127:                                              ; preds = %120, %111
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  %128 = icmp eq i8 %1, 1
  br i1 %128, label %129, label %151

129:                                              ; preds = %127
  %130 = call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %0, i16 noundef zeroext 55)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %131 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %131, align 4, !annotation !8
  %132 = load i8, ptr %12, align 4
  %133 = lshr i8 %132, 1
  %134 = zext i8 %133 to i16
  store i16 %134, ptr %4, align 4
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %135, align 2
  %136 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %137 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %136, i32 noundef 3264, i32 noundef 4) #11
  %138 = icmp eq ptr %137, null
  br i1 %138, label %150, label %139

139:                                              ; preds = %129
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store i8 0, ptr %137, align 8
  %141 = getelementptr i8, ptr %137, i32 1
  store i8 55, ptr %141, align 1
  %142 = lshr i16 %130, 8
  %143 = trunc i16 %142 to i8
  %144 = or i8 %143, 4
  %145 = getelementptr i8, ptr %137, i32 2
  store i8 %144, ptr %145, align 2
  %146 = trunc i16 %130 to i8
  %147 = getelementptr i8, ptr %137, i32 3
  store i8 %146, ptr %147, align 1
  store ptr %137, ptr %140, align 4
  %148 = load ptr, ptr %15, align 8
  %149 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %137) #10
  br label %150

150:                                              ; preds = %139, %129
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %151

151:                                              ; preds = %150, %127
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib3000mc_set_timing(ptr nocapture noundef %0, i16 noundef signext %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = icmp eq i8 %3, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = udiv i32 %2, 1000
  %14 = mul i32 %13, 1384402
  br label %36

15:                                               ; preds = %10
  tail call void @msleep(i32 noundef 200) #10
  %16 = udiv i32 %2, 1000
  %17 = mul i32 %16, 1384402
  br label %22

18:                                               ; preds = %4
  %19 = udiv i32 %2, 1000
  %20 = mul i32 %8, %19
  %21 = icmp eq i8 %3, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %18, %15
  %23 = phi i32 [ %17, %15 ], [ %20, %18 ]
  %24 = phi i32 [ %16, %15 ], [ %19, %18 ]
  %25 = tail call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %0, i16 noundef zeroext 416)
  %26 = and i16 %25, 8192
  %27 = icmp eq i16 %26, 0
  %28 = add i16 %25, -16384
  %29 = select i1 %27, i16 %25, i16 %28
  %30 = icmp eq i16 %1, 0
  %31 = shl i16 %29, 2
  %32 = select i1 %30, i16 %31, i16 %29
  %33 = sext i16 %32 to i32
  %34 = add i32 %23, %33
  %35 = udiv i32 %34, %24
  store i32 %35, ptr %7, align 8
  br label %36

36:                                               ; preds = %22, %18, %12
  %37 = phi i32 [ %34, %22 ], [ %20, %18 ], [ %14, %12 ]
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dib3000mc_set_timing, i32 noundef %37) #12
  br label %42

42:                                               ; preds = %40, %36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %43 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %43, align 4, !annotation !8
  %44 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 2
  %45 = load i8, ptr %44, align 4
  %46 = lshr i8 %45, 1
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %6, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %48, align 2
  %49 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3264, i32 noundef 4) #11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %42
  %53 = lshr i32 %37, 16
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store i8 0, ptr %50, align 8
  %55 = getelementptr i8, ptr %50, i32 1
  store i8 23, ptr %55, align 1
  %56 = lshr i32 %37, 24
  %57 = trunc i32 %56 to i8
  %58 = getelementptr i8, ptr %50, i32 2
  store i8 %57, ptr %58, align 2
  %59 = trunc i32 %53 to i8
  %60 = getelementptr i8, ptr %50, i32 3
  store i8 %59, ptr %60, align 1
  store ptr %50, ptr %54, align 4
  %61 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8
  %63 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %6, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %50) #10
  br label %64

64:                                               ; preds = %52, %42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %65 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %65, align 4, !annotation !8
  %66 = load i8, ptr %44, align 4
  %67 = lshr i8 %66, 1
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %5, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %69, align 2
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %71 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3264, i32 noundef 4) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %84, label %73

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store i8 0, ptr %71, align 8
  %75 = getelementptr i8, ptr %71, i32 1
  store i8 24, ptr %75, align 1
  %76 = lshr i32 %37, 8
  %77 = trunc i32 %76 to i8
  %78 = getelementptr i8, ptr %71, i32 2
  store i8 %77, ptr %78, align 2
  %79 = trunc i32 %37 to i8
  %80 = getelementptr i8, ptr %71, i32 3
  store i8 %79, ptr %80, align 1
  store ptr %71, ptr %74, align 4
  %81 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %82 = load ptr, ptr %81, align 8
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %71) #10
  br label %84

84:                                               ; preds = %73, %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib3000mc_set_channel_cfg(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca %struct.i2c_msg, align 4
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = udiv i32 %28, 1000
  tail call fastcc void @dib3000mc_set_bandwidth(ptr noundef %0, i32 noundef %29)
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = trunc i32 %31 to i16
  tail call fastcc void @dib3000mc_set_timing(ptr noundef %0, i16 noundef signext %32, i32 noundef %29, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #10
  %33 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 4, ptr %33, align 4, !annotation !8
  %34 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 2
  %35 = load i8, ptr %34, align 4
  %36 = lshr i8 %35, 1
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %26, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 4) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store i8 0, ptr %40, align 8
  %44 = getelementptr i8, ptr %40, i32 1
  store i8 100, ptr %44, align 1
  %45 = getelementptr i8, ptr %40, i32 2
  store i8 4, ptr %45, align 2
  %46 = getelementptr i8, ptr %40, i32 3
  store i8 9, ptr %46, align 1
  store ptr %40, ptr %43, align 4
  %47 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %26, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %40) #10
  br label %50

50:                                               ; preds = %42, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %51 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 4, ptr %51, align 4, !annotation !8
  %52 = load i8, ptr %34, align 4
  %53 = lshr i8 %52, 1
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %25, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %55, align 2
  %56 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %57 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3264, i32 noundef 4) #11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store i8 4, ptr %57, align 8
  %61 = getelementptr i8, ptr %57, i32 1
  store i8 3, ptr %61, align 1
  %62 = getelementptr i8, ptr %57, i32 2
  store i8 8, ptr %62, align 2
  %63 = getelementptr i8, ptr %57, i32 3
  store i8 0, ptr %63, align 1
  store ptr %57, ptr %60, align 4
  %64 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  %66 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %25, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %57) #10
  br label %67

67:                                               ; preds = %59, %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  %68 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 4, ptr %68, align 4, !annotation !8
  %69 = load i8, ptr %34, align 4
  %70 = lshr i8 %69, 1
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %24, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %74 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3264, i32 noundef 4) #11
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store i8 4, ptr %74, align 8
  %78 = getelementptr i8, ptr %74, i32 1
  store i8 3, ptr %78, align 1
  %79 = getelementptr i8, ptr %74, i32 2
  store i8 0, ptr %79, align 2
  %80 = getelementptr i8, ptr %74, i32 3
  store i8 0, ptr %80, align 1
  store ptr %74, ptr %77, align 4
  %81 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %82 = load ptr, ptr %81, align 8
  %83 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %24, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %74) #10
  br label %84

84:                                               ; preds = %76, %67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %85 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 4, ptr %85, align 4, !annotation !8
  %86 = load i8, ptr %34, align 4
  %87 = lshr i8 %86, 1
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %23, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %89, align 2
  %90 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %91 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3264, i32 noundef 4) #11
  %92 = icmp eq ptr %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store i8 0, ptr %91, align 8
  %95 = getelementptr i8, ptr %91, i32 1
  store i8 26, ptr %95, align 1
  %96 = getelementptr i8, ptr %91, i32 2
  store i8 102, ptr %96, align 2
  %97 = getelementptr i8, ptr %91, i32 3
  store i8 -128, ptr %97, align 1
  store ptr %91, ptr %94, align 4
  %98 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %99 = load ptr, ptr %98, align 8
  %100 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %23, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %91) #10
  br label %101

101:                                              ; preds = %93, %84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  %102 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 4, ptr %102, align 4, !annotation !8
  %103 = load i8, ptr %34, align 4
  %104 = lshr i8 %103, 1
  %105 = zext i8 %104 to i16
  store i16 %105, ptr %22, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %106, align 2
  %107 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %108 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %107, i32 noundef 3264, i32 noundef 4) #11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store i8 0, ptr %108, align 8
  %112 = getelementptr i8, ptr %108, i32 1
  store i8 29, ptr %112, align 1
  %113 = getelementptr i8, ptr %108, i32 2
  store i8 18, ptr %113, align 2
  %114 = getelementptr i8, ptr %108, i32 3
  store i8 115, ptr %114, align 1
  store ptr %108, ptr %111, align 4
  %115 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %116 = load ptr, ptr %115, align 8
  %117 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %22, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %108) #10
  br label %118

118:                                              ; preds = %110, %101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %119 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 4, ptr %119, align 4, !annotation !8
  %120 = load i8, ptr %34, align 4
  %121 = lshr i8 %120, 1
  %122 = zext i8 %121 to i16
  store i16 %122, ptr %21, align 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %123, align 2
  %124 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %125 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %124, i32 noundef 3264, i32 noundef 4) #11
  %126 = icmp eq ptr %125, null
  br i1 %126, label %135, label %127

127:                                              ; preds = %118
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store i8 0, ptr %125, align 8
  %129 = getelementptr i8, ptr %125, i32 1
  store i8 33, ptr %129, align 1
  %130 = getelementptr i8, ptr %125, i32 2
  store i8 0, ptr %130, align 2
  %131 = getelementptr i8, ptr %125, i32 3
  store i8 5, ptr %131, align 1
  store ptr %125, ptr %128, align 4
  %132 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %133 = load ptr, ptr %132, align 8
  %134 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %21, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %125) #10
  br label %135

135:                                              ; preds = %127, %118
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call fastcc void @dib3000mc_set_adp_cfg(ptr noundef %0, i16 noundef signext 1)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %136 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 4, ptr %136, align 4, !annotation !8
  %137 = load i8, ptr %34, align 4
  %138 = lshr i8 %137, 1
  %139 = zext i8 %138 to i16
  store i16 %139, ptr %20, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %140, align 2
  %141 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %142 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %141, i32 noundef 3264, i32 noundef 4) #11
  %143 = icmp eq ptr %142, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store i8 0, ptr %142, align 8
  %146 = getelementptr i8, ptr %142, i32 1
  store i8 -123, ptr %146, align 1
  %147 = getelementptr i8, ptr %142, i32 2
  store i8 60, ptr %147, align 2
  %148 = getelementptr i8, ptr %142, i32 3
  store i8 -52, ptr %148, align 1
  store ptr %142, ptr %145, align 4
  %149 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %150 = load ptr, ptr %149, align 8
  %151 = call i32 @i2c_transfer(ptr noundef %150, ptr noundef nonnull %20, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %142) #10
  br label %152

152:                                              ; preds = %144, %135
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %153 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 4, ptr %153, align 4, !annotation !8
  %154 = load i8, ptr %34, align 4
  %155 = lshr i8 %154, 1
  %156 = zext i8 %155 to i16
  store i16 %156, ptr %19, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %157, align 2
  %158 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %159 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %158, i32 noundef 3264, i32 noundef 4) #11
  %160 = icmp eq ptr %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store i8 0, ptr %159, align 8
  %163 = getelementptr i8, ptr %159, i32 1
  store i8 12, ptr %163, align 1
  %164 = getelementptr i8, ptr %159, i32 2
  store i8 0, ptr %164, align 2
  %165 = getelementptr i8, ptr %159, i32 3
  store i8 0, ptr %165, align 1
  store ptr %159, ptr %162, align 4
  %166 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %167 = load ptr, ptr %166, align 8
  %168 = call i32 @i2c_transfer(ptr noundef %167, ptr noundef nonnull %19, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %159) #10
  br label %169

169:                                              ; preds = %161, %152
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  %170 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 4, ptr %170, align 4, !annotation !8
  %171 = load i8, ptr %34, align 4
  %172 = lshr i8 %171, 1
  %173 = zext i8 %172 to i16
  store i16 %173, ptr %18, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %174, align 2
  %175 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %176 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %175, i32 noundef 3264, i32 noundef 4) #11
  %177 = icmp eq ptr %176, null
  br i1 %177, label %186, label %178

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store i8 0, ptr %176, align 8
  %180 = getelementptr i8, ptr %176, i32 1
  store i8 13, ptr %180, align 1
  %181 = getelementptr i8, ptr %176, i32 2
  store i8 3, ptr %181, align 2
  %182 = getelementptr i8, ptr %176, i32 3
  store i8 -24, ptr %182, align 1
  store ptr %176, ptr %179, align 4
  %183 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %184 = load ptr, ptr %183, align 8
  %185 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %18, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %176) #10
  br label %186

186:                                              ; preds = %178, %169
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %187 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 4, ptr %187, align 4, !annotation !8
  %188 = load i8, ptr %34, align 4
  %189 = lshr i8 %188, 1
  %190 = zext i8 %189 to i16
  store i16 %190, ptr %17, align 4
  %191 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %191, align 2
  %192 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %193 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %192, i32 noundef 3264, i32 noundef 4) #11
  %194 = icmp eq ptr %193, null
  br i1 %194, label %203, label %195

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store i8 0, ptr %193, align 8
  %197 = getelementptr i8, ptr %193, i32 1
  store i8 14, ptr %197, align 1
  %198 = getelementptr i8, ptr %193, i32 2
  store i8 0, ptr %198, align 2
  %199 = getelementptr i8, ptr %193, i32 3
  store i8 0, ptr %199, align 1
  store ptr %193, ptr %196, align 4
  %200 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %201 = load ptr, ptr %200, align 8
  %202 = call i32 @i2c_transfer(ptr noundef %201, ptr noundef nonnull %17, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %193) #10
  br label %203

203:                                              ; preds = %195, %186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %204 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 4, ptr %204, align 4, !annotation !8
  %205 = load i8, ptr %34, align 4
  %206 = lshr i8 %205, 1
  %207 = zext i8 %206 to i16
  store i16 %207, ptr %16, align 4
  %208 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %208, align 2
  %209 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %210 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %209, i32 noundef 3264, i32 noundef 4) #11
  %211 = icmp eq ptr %210, null
  br i1 %211, label %220, label %212

212:                                              ; preds = %203
  %213 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store i8 0, ptr %210, align 8
  %214 = getelementptr i8, ptr %210, i32 1
  store i8 15, ptr %214, align 1
  %215 = getelementptr i8, ptr %210, i32 2
  store i8 3, ptr %215, align 2
  %216 = getelementptr i8, ptr %210, i32 3
  store i8 -14, ptr %216, align 1
  store ptr %210, ptr %213, align 4
  %217 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %218 = load ptr, ptr %217, align 8
  %219 = call i32 @i2c_transfer(ptr noundef %218, ptr noundef nonnull %16, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %210) #10
  br label %220

220:                                              ; preds = %212, %203
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %221 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 4, ptr %221, align 4, !annotation !8
  %222 = load i8, ptr %34, align 4
  %223 = lshr i8 %222, 1
  %224 = zext i8 %223 to i16
  store i16 %224, ptr %15, align 4
  %225 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %225, align 2
  %226 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %227 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %226, i32 noundef 3264, i32 noundef 4) #11
  %228 = icmp eq ptr %227, null
  br i1 %228, label %237, label %229

229:                                              ; preds = %220
  %230 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store i8 0, ptr %227, align 8
  %231 = getelementptr i8, ptr %227, i32 1
  store i8 93, ptr %231, align 1
  %232 = getelementptr i8, ptr %227, i32 2
  store i8 0, ptr %232, align 2
  %233 = getelementptr i8, ptr %227, i32 3
  store i8 0, ptr %233, align 1
  store ptr %227, ptr %230, align 4
  %234 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %235 = load ptr, ptr %234, align 8
  %236 = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %15, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %227) #10
  br label %237

237:                                              ; preds = %229, %220
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %238 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 4, ptr %238, align 4, !annotation !8
  %239 = load i8, ptr %34, align 4
  %240 = lshr i8 %239, 1
  %241 = zext i8 %240 to i16
  store i16 %241, ptr %14, align 4
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %242, align 2
  %243 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %244 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %243, i32 noundef 3264, i32 noundef 4) #11
  %245 = icmp eq ptr %244, null
  br i1 %245, label %254, label %246

246:                                              ; preds = %237
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store i8 0, ptr %244, align 8
  %248 = getelementptr i8, ptr %244, i32 1
  store i8 94, ptr %248, align 1
  %249 = getelementptr i8, ptr %244, i32 2
  store i8 0, ptr %249, align 2
  %250 = getelementptr i8, ptr %244, i32 3
  store i8 0, ptr %250, align 1
  store ptr %244, ptr %247, align 4
  %251 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %252 = load ptr, ptr %251, align 8
  %253 = call i32 @i2c_transfer(ptr noundef %252, ptr noundef nonnull %14, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %244) #10
  br label %254

254:                                              ; preds = %246, %237
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %255 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 4, ptr %255, align 4, !annotation !8
  %256 = load i8, ptr %34, align 4
  %257 = lshr i8 %256, 1
  %258 = zext i8 %257 to i16
  store i16 %258, ptr %13, align 4
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %259, align 2
  %260 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %261 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %260, i32 noundef 3264, i32 noundef 4) #11
  %262 = icmp eq ptr %261, null
  br i1 %262, label %271, label %263

263:                                              ; preds = %254
  %264 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store i8 0, ptr %261, align 8
  %265 = getelementptr i8, ptr %261, i32 1
  store i8 95, ptr %265, align 1
  %266 = getelementptr i8, ptr %261, i32 2
  store i8 0, ptr %266, align 2
  %267 = getelementptr i8, ptr %261, i32 3
  store i8 0, ptr %267, align 1
  store ptr %261, ptr %264, align 4
  %268 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %269 = load ptr, ptr %268, align 8
  %270 = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %13, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %261) #10
  br label %271

271:                                              ; preds = %263, %254
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %272 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 4, ptr %272, align 4, !annotation !8
  %273 = load i8, ptr %34, align 4
  %274 = lshr i8 %273, 1
  %275 = zext i8 %274 to i16
  store i16 %275, ptr %12, align 4
  %276 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %276, align 2
  %277 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %278 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %277, i32 noundef 3264, i32 noundef 4) #11
  %279 = icmp eq ptr %278, null
  br i1 %279, label %288, label %280

280:                                              ; preds = %271
  %281 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store i8 0, ptr %278, align 8
  %282 = getelementptr i8, ptr %278, i32 1
  store i8 96, ptr %282, align 1
  %283 = getelementptr i8, ptr %278, i32 2
  store i8 0, ptr %283, align 2
  %284 = getelementptr i8, ptr %278, i32 3
  store i8 0, ptr %284, align 1
  store ptr %278, ptr %281, align 4
  %285 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %286 = load ptr, ptr %285, align 8
  %287 = call i32 @i2c_transfer(ptr noundef %286, ptr noundef nonnull %12, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %278) #10
  br label %288

288:                                              ; preds = %280, %271
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %289 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 4, ptr %289, align 4, !annotation !8
  %290 = load i8, ptr %34, align 4
  %291 = lshr i8 %290, 1
  %292 = zext i8 %291 to i16
  store i16 %292, ptr %11, align 4
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %293, align 2
  %294 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %295 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %294, i32 noundef 3264, i32 noundef 4) #11
  %296 = icmp eq ptr %295, null
  br i1 %296, label %305, label %297

297:                                              ; preds = %288
  %298 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store i8 0, ptr %295, align 8
  %299 = getelementptr i8, ptr %295, i32 1
  store i8 97, ptr %299, align 1
  %300 = getelementptr i8, ptr %295, i32 2
  store i8 0, ptr %300, align 2
  %301 = getelementptr i8, ptr %295, i32 3
  store i8 0, ptr %301, align 1
  store ptr %295, ptr %298, align 4
  %302 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %303 = load ptr, ptr %302, align 8
  %304 = call i32 @i2c_transfer(ptr noundef %303, ptr noundef nonnull %11, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %295) #10
  br label %305

305:                                              ; preds = %297, %288
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %306 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 4, ptr %306, align 4, !annotation !8
  %307 = load i8, ptr %34, align 4
  %308 = lshr i8 %307, 1
  %309 = zext i8 %308 to i16
  store i16 %309, ptr %10, align 4
  %310 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %310, align 2
  %311 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %312 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %311, i32 noundef 3264, i32 noundef 4) #11
  %313 = icmp eq ptr %312, null
  br i1 %313, label %322, label %314

314:                                              ; preds = %305
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store i8 0, ptr %312, align 8
  %316 = getelementptr i8, ptr %312, i32 1
  store i8 98, ptr %316, align 1
  %317 = getelementptr i8, ptr %312, i32 2
  store i8 0, ptr %317, align 2
  %318 = getelementptr i8, ptr %312, i32 3
  store i8 0, ptr %318, align 1
  store ptr %312, ptr %315, align 4
  %319 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %320 = load ptr, ptr %319, align 8
  %321 = call i32 @i2c_transfer(ptr noundef %320, ptr noundef nonnull %10, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %312) #10
  br label %322

322:                                              ; preds = %314, %305
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  %323 = load i32, ptr %30, align 4
  %324 = trunc i32 %323 to i16
  call fastcc void @dib3000mc_set_impulse_noise(ptr noundef %0, i8 noundef zeroext 0, i16 noundef signext %324)
  %325 = load i32, ptr %30, align 4
  %326 = icmp eq i32 %325, 0
  %327 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  %328 = load i32, ptr %327, align 4
  %329 = select i1 %326, i8 0, i8 -128
  switch i32 %328, label %334 [
    i32 0, label %336
    i32 1, label %330
    i32 3, label %332
  ]

330:                                              ; preds = %322
  %331 = or i8 %329, 32
  br label %336

332:                                              ; preds = %322
  %333 = or i8 %329, 96
  br label %336

334:                                              ; preds = %322
  %335 = or i8 %329, 64
  br label %336

336:                                              ; preds = %334, %332, %330, %322
  %337 = phi i8 [ %335, %334 ], [ %333, %332 ], [ %331, %330 ], [ %329, %322 ]
  %338 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  %339 = load i32, ptr %338, align 4
  switch i32 %339, label %342 [
    i32 0, label %344
    i32 1, label %340
  ]

340:                                              ; preds = %336
  %341 = or i8 %337, 8
  br label %344

342:                                              ; preds = %336
  %343 = or i8 %337, 16
  br label %344

344:                                              ; preds = %342, %340, %336
  %345 = phi i8 [ %343, %342 ], [ %341, %340 ], [ %337, %336 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %346 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 4, ptr %346, align 4, !annotation !8
  %347 = load i8, ptr %34, align 4
  %348 = lshr i8 %347, 1
  %349 = zext i8 %348 to i16
  store i16 %349, ptr %9, align 4
  %350 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %350, align 2
  %351 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %352 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %351, i32 noundef 3264, i32 noundef 4) #11
  %353 = icmp eq ptr %352, null
  br i1 %353, label %363, label %354

354:                                              ; preds = %344
  %355 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store i8 0, ptr %352, align 8
  %356 = getelementptr i8, ptr %352, i32 1
  store i8 0, ptr %356, align 1
  %357 = getelementptr i8, ptr %352, i32 2
  store i8 0, ptr %357, align 2
  %358 = or i8 %345, 1
  %359 = getelementptr i8, ptr %352, i32 3
  store i8 %358, ptr %359, align 1
  store ptr %352, ptr %355, align 4
  %360 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %361 = load ptr, ptr %360, align 8
  %362 = call i32 @i2c_transfer(ptr noundef %361, ptr noundef nonnull %9, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %352) #10
  br label %363

363:                                              ; preds = %354, %344
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %364 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 4, ptr %364, align 4, !annotation !8
  %365 = load i8, ptr %34, align 4
  %366 = lshr i8 %365, 1
  %367 = zext i8 %366 to i16
  store i16 %367, ptr %8, align 4
  %368 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %368, align 2
  %369 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %370 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %369, i32 noundef 3264, i32 noundef 4) #11
  %371 = icmp eq ptr %370, null
  br i1 %371, label %382, label %372

372:                                              ; preds = %363
  %373 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store i8 0, ptr %370, align 8
  %374 = getelementptr i8, ptr %370, i32 1
  store i8 5, ptr %374, align 1
  %375 = getelementptr i8, ptr %370, i32 2
  store i8 1, ptr %375, align 2
  %376 = trunc i16 %2 to i8
  %377 = shl i8 %376, 4
  %378 = getelementptr i8, ptr %370, i32 3
  store i8 %377, ptr %378, align 1
  store ptr %370, ptr %373, align 4
  %379 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %380 = load ptr, ptr %379, align 8
  %381 = call i32 @i2c_transfer(ptr noundef %380, ptr noundef nonnull %8, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %370) #10
  br label %382

382:                                              ; preds = %372, %363
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  %383 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  %384 = load i32, ptr %383, align 4
  %385 = icmp eq i32 %384, 1
  %386 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  %387 = load i32, ptr %386, align 4
  %388 = add i32 %387, -2
  %389 = icmp ult i32 %388, 6
  br i1 %389, label %390, label %393

390:                                              ; preds = %382
  %391 = getelementptr inbounds [6 x i8], ptr @switch.table.dib3000mc_set_channel_cfg, i32 0, i32 %388
  %392 = load i8, ptr %391, align 1
  br label %393

393:                                              ; preds = %390, %382
  %394 = phi i8 [ %392, %390 ], [ 2, %382 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %395 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %395, align 4, !annotation !8
  %396 = load i8, ptr %34, align 4
  %397 = lshr i8 %396, 1
  %398 = zext i8 %397 to i16
  store i16 %398, ptr %7, align 4
  %399 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %399, align 2
  %400 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %401 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %400, i32 noundef 3264, i32 noundef 4) #11
  %402 = icmp eq ptr %401, null
  br i1 %402, label %413, label %403

403:                                              ; preds = %393
  %404 = select i1 %385, i8 17, i8 1
  %405 = or i8 %404, %394
  %406 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store i8 0, ptr %401, align 8
  %407 = getelementptr i8, ptr %401, i32 1
  store i8 -75, ptr %407, align 1
  %408 = getelementptr i8, ptr %401, i32 2
  store i8 0, ptr %408, align 2
  %409 = getelementptr i8, ptr %401, i32 3
  store i8 %405, ptr %409, align 1
  store ptr %401, ptr %406, align 4
  %410 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %411 = load ptr, ptr %410, align 8
  %412 = call i32 @i2c_transfer(ptr noundef %411, ptr noundef nonnull %7, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %401) #10
  br label %413

413:                                              ; preds = %403, %393
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  %414 = load i32, ptr %30, align 4
  %415 = icmp eq i32 %414, 1
  %416 = select i1 %415, i16 256, i16 64
  %417 = load i32, ptr %327, align 4
  switch i32 %417, label %424 [
    i32 1, label %418
    i32 2, label %420
    i32 3, label %422
  ]

418:                                              ; preds = %413
  %419 = shl nuw nsw i16 %416, 1
  br label %424

420:                                              ; preds = %413
  %421 = shl nuw nsw i16 %416, 2
  br label %424

422:                                              ; preds = %413
  %423 = shl nuw nsw i16 %416, 3
  br label %424

424:                                              ; preds = %422, %420, %418, %413
  %425 = phi i16 [ %423, %422 ], [ %421, %420 ], [ %419, %418 ], [ %416, %413 ]
  %426 = call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %0, i16 noundef zeroext 180)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %427 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %427, align 4, !annotation !8
  %428 = load i8, ptr %34, align 4
  %429 = lshr i8 %428, 1
  %430 = zext i8 %429 to i16
  store i16 %430, ptr %6, align 4
  %431 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %431, align 2
  %432 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %433 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %432, i32 noundef 3264, i32 noundef 4) #11
  %434 = icmp eq ptr %433, null
  br i1 %434, label %449, label %435

435:                                              ; preds = %424
  %436 = shl nuw i16 %425, 4
  %437 = and i16 %426, 15
  %438 = or i16 %437, %436
  %439 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store i8 0, ptr %433, align 8
  %440 = getelementptr i8, ptr %433, i32 1
  store i8 -76, ptr %440, align 1
  %441 = lshr i16 %425, 4
  %442 = trunc i16 %441 to i8
  %443 = getelementptr i8, ptr %433, i32 2
  store i8 %442, ptr %443, align 2
  %444 = trunc i16 %438 to i8
  %445 = getelementptr i8, ptr %433, i32 3
  store i8 %444, ptr %445, align 1
  store ptr %433, ptr %439, align 4
  %446 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %447 = load ptr, ptr %446, align 8
  %448 = call i32 @i2c_transfer(ptr noundef %447, ptr noundef nonnull %6, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %433) #10
  br label %449

449:                                              ; preds = %435, %424
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  %450 = call fastcc zeroext i16 @dib3000mc_read_word(ptr noundef %0, i16 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %451 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %451, align 4, !annotation !8
  %452 = load i8, ptr %34, align 4
  %453 = lshr i8 %452, 1
  %454 = zext i8 %453 to i16
  store i16 %454, ptr %5, align 4
  %455 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %455, align 2
  %456 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %457 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %456, i32 noundef 3264, i32 noundef 4) #11
  %458 = icmp eq ptr %457, null
  br i1 %458, label %471, label %459

459:                                              ; preds = %449
  %460 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store i8 0, ptr %457, align 8
  %461 = getelementptr i8, ptr %457, i32 1
  store i8 0, ptr %461, align 1
  %462 = lshr i16 %450, 8
  %463 = trunc i16 %462 to i8
  %464 = or i8 %463, 2
  %465 = getelementptr i8, ptr %457, i32 2
  store i8 %464, ptr %465, align 2
  %466 = trunc i16 %450 to i8
  %467 = getelementptr i8, ptr %457, i32 3
  store i8 %466, ptr %467, align 1
  store ptr %457, ptr %460, align 4
  %468 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %469 = load ptr, ptr %468, align 8
  %470 = call i32 @i2c_transfer(ptr noundef %469, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %457) #10
  br label %471

471:                                              ; preds = %459, %449
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %472 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %472, align 4, !annotation !8
  %473 = load i8, ptr %34, align 4
  %474 = lshr i8 %473, 1
  %475 = zext i8 %474 to i16
  store i16 %475, ptr %4, align 4
  %476 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %476, align 2
  %477 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %478 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %477, i32 noundef 3264, i32 noundef 4) #11
  %479 = icmp eq ptr %478, null
  br i1 %479, label %491, label %480

480:                                              ; preds = %471
  %481 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store i8 0, ptr %478, align 8
  %482 = getelementptr i8, ptr %478, i32 1
  store i8 0, ptr %482, align 1
  %483 = lshr i16 %450, 8
  %484 = trunc i16 %483 to i8
  %485 = getelementptr i8, ptr %478, i32 2
  store i8 %484, ptr %485, align 2
  %486 = trunc i16 %450 to i8
  %487 = getelementptr i8, ptr %478, i32 3
  store i8 %486, ptr %487, align 1
  store ptr %478, ptr %481, align 4
  %488 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  %489 = load ptr, ptr %488, align 8
  %490 = call i32 @i2c_transfer(ptr noundef %489, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %478) #10
  br label %491

491:                                              ; preds = %480, %471
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @msleep(i32 noundef 30) #10
  %492 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 1
  %493 = load ptr, ptr %492, align 8
  %494 = getelementptr inbounds %struct.dib3000mc_config, ptr %493, i32 0, i32 2
  %495 = load i8, ptr %494, align 1
  %496 = load i32, ptr %30, align 4
  %497 = trunc i32 %496 to i16
  call fastcc void @dib3000mc_set_impulse_noise(ptr noundef %0, i8 noundef zeroext %495, i16 noundef signext %497)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dib3000mc_set_adp_cfg(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = icmp ult i16 %1, 4
  br i1 %4, label %5, label %34

5:                                                ; preds = %2
  %6 = zext i16 %1 to i32
  %7 = shl nuw nsw i32 %6, 3
  %8 = lshr i32 -134156048, %7
  %9 = trunc i32 %8 to i8
  %10 = zext i16 %1 to i32
  %11 = shl nuw nsw i32 %10, 3
  %12 = lshr i32 -1543461837, %11
  %13 = trunc i32 %12 to i8
  %14 = zext i16 %1 to i32
  %15 = shl nuw nsw i32 %14, 3
  %16 = lshr i32 3, %15
  %17 = trunc i32 %16 to i8
  %18 = zext i16 %1 to i32
  %19 = shl nuw nsw i32 %18, 3
  %20 = lshr i32 -268378194, %19
  %21 = trunc i32 %20 to i8
  %22 = zext i16 %1 to i32
  %23 = shl nuw nsw i32 %22, 3
  %24 = lshr i32 2130739071, %23
  %25 = trunc i32 %24 to i8
  %26 = zext i16 %1 to i32
  %27 = shl nuw nsw i32 %26, 3
  %28 = lshr i32 1207975322, %27
  %29 = trunc i32 %28 to i8
  %30 = zext i16 %1 to i32
  %31 = shl nuw nsw i32 %30, 3
  %32 = lshr i32 16777737, %31
  %33 = trunc i32 %32 to i8
  br label %34

34:                                               ; preds = %5, %2
  %35 = phi i8 [ 0, %2 ], [ %9, %5 ]
  %36 = phi i8 [ 0, %2 ], [ %13, %5 ]
  %37 = phi i8 [ 0, %2 ], [ %17, %5 ]
  %38 = phi i8 [ 0, %2 ], [ %21, %5 ]
  %39 = phi i8 [ 0, %2 ], [ %25, %5 ]
  %40 = phi i8 [ 0, %2 ], [ %29, %5 ]
  %41 = phi i8 [ 0, %2 ], [ %33, %5 ]
  %42 = getelementptr inbounds i8, ptr %3, i32 4
  %43 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %46 = getelementptr inbounds %struct.dib3000mc_state, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 4, ptr %42, align 4, !annotation !8
  %47 = load i8, ptr %43, align 4
  %48 = lshr i8 %47, 1
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %3, align 4
  store i16 0, ptr %44, align 2
  %50 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %51 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3264, i32 noundef 4) #11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %34
  store i8 0, ptr %51, align 8
  %54 = getelementptr i8, ptr %51, i32 1
  store i8 -127, ptr %54, align 1
  %55 = getelementptr i8, ptr %51, i32 2
  store i8 %41, ptr %55, align 2
  %56 = getelementptr i8, ptr %51, i32 3
  store i8 %40, ptr %56, align 1
  store ptr %51, ptr %45, align 4
  %57 = load ptr, ptr %46, align 8
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %51) #10
  br label %59

59:                                               ; preds = %53, %34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 4, ptr %42, align 4, !annotation !8
  %60 = load i8, ptr %43, align 4
  %61 = lshr i8 %60, 1
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %3, align 4
  store i16 0, ptr %44, align 2
  %63 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %64 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3264, i32 noundef 4) #11
  %65 = icmp eq ptr %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  store i8 0, ptr %64, align 8
  %67 = getelementptr i8, ptr %64, i32 1
  store i8 -126, ptr %67, align 1
  %68 = getelementptr i8, ptr %64, i32 2
  store i8 %39, ptr %68, align 2
  %69 = getelementptr i8, ptr %64, i32 3
  store i8 %38, ptr %69, align 1
  store ptr %64, ptr %45, align 4
  %70 = load ptr, ptr %46, align 8
  %71 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %64) #10
  br label %72

72:                                               ; preds = %66, %59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 4, ptr %42, align 4, !annotation !8
  %73 = load i8, ptr %43, align 4
  %74 = lshr i8 %73, 1
  %75 = zext i8 %74 to i16
  store i16 %75, ptr %3, align 4
  store i16 0, ptr %44, align 2
  %76 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %77 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3264, i32 noundef 4) #11
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  store i8 0, ptr %77, align 8
  %80 = getelementptr i8, ptr %77, i32 1
  store i8 -125, ptr %80, align 1
  %81 = getelementptr i8, ptr %77, i32 2
  store i8 %37, ptr %81, align 2
  %82 = getelementptr i8, ptr %77, i32 3
  store i8 %36, ptr %82, align 1
  store ptr %77, ptr %45, align 4
  %83 = load ptr, ptr %46, align 8
  %84 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %77) #10
  br label %85

85:                                               ; preds = %79, %72
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 4, ptr %42, align 4, !annotation !8
  %86 = load i8, ptr %43, align 4
  %87 = lshr i8 %86, 1
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %3, align 4
  store i16 0, ptr %44, align 2
  %89 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %90 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3264, i32 noundef 4) #11
  %91 = icmp eq ptr %90, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %85
  store i8 0, ptr %90, align 8
  %93 = getelementptr i8, ptr %90, i32 1
  store i8 -124, ptr %93, align 1
  %94 = getelementptr i8, ptr %90, i32 2
  store i8 %39, ptr %94, align 2
  %95 = getelementptr i8, ptr %90, i32 3
  store i8 %35, ptr %95, align 1
  store ptr %90, ptr %45, align 4
  %96 = load ptr, ptr %46, align 8
  %97 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @kfree(ptr noundef nonnull %90) #10
  br label %98

98:                                               ; preds = %92, %85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i14 @llvm.bitreverse.i14(i14) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
