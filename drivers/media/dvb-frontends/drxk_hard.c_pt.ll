; ModuleID = '/llk/IR/drivers/media/dvb-frontends/drxk_hard.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/drxk_hard.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drxk_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22drxk_attach\22\09\09\09\09\09"
module asm "__kstrtabns_drxk_attach:\09\09\09\09\09"
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
%struct.lock_class_key = type {}
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drxk_state = type { %struct.dvb_frontend, %struct.dtv_frontend_properties, ptr, ptr, i8, ptr, %struct.mutex, i32, i32, [256 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.s_cfg_agc, %struct.s_cfg_agc, i16, %struct.s_cfg_pre_saw, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, %struct.s_cfg_agc, %struct.s_cfg_agc, %struct.s_cfg_pre_saw, i8, i16, i16, i32, i8, i8, i8, i32, i32, %struct.s_cfg_agc, %struct.s_cfg_agc, i16, %struct.s_cfg_pre_saw, i32, i16, i16, i32, i16, i16, %struct.s_cfg_agc, %struct.s_cfg_agc, %struct.s_cfg_pre_saw, i16, i8, [64 x i16], i16, ptr, i32, i8, i8, i8, i8, i32, i32, i8, i16, i8, i8, i8, i8, i16, i32, ptr, %struct.completion, ptr, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.s_cfg_agc = type { i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.s_cfg_pre_saw = type { i16, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drxk_config = type { i8, i8, i8, i8, i8, i8, i8, i16, i8, i32, ptr, i32 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.drxk_cfg_dvbt_echo_thres_t = type { i16, i32 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [33 x i8] c"parm=debug:enable debug messages\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"\017drxk: %s \0A\00", align 1
@__func__.drxk_attach = private unnamed_addr constant [12 x i8] c"drxk_attach\00", align 1
@drxk_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"&state->mutex\00", align 1
@drxk_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"DRXK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47000000, i32 865000000, i32 166667, i32 0, i32 870000, i32 11700000, i32 0, i32 -1071973714 }, [8 x i8] zeroinitializer, ptr null, ptr @drxk_release, ptr null, ptr null, ptr @drxk_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drxk_set_parameters, ptr @drxk_get_tune_settings, ptr null, ptr @drxk_read_status, ptr null, ptr @drxk_read_signal_strength, ptr @drxk_read_snr, ptr @drxk_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drxk_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"\016drxk: frontend initialized.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\013drxk: not found\0A\00", align 1
@__kstrtab_drxk_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_drxk_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_drxk_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drxk_attach to i32), ptr @__kstrtab_drxk_attach, ptr @__kstrtabns_drxk_attach }, section "___ksymtab+drxk_attach", align 4
@__UNIQUE_ID_description251 = internal constant [25 x i8] c"description=DRX-K driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [21 x i8] c"author=Ralph Metzler\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.drxk_release = private unnamed_addr constant [13 x i8] c"drxk_release\00", align 1
@__func__.drxk_sleep = private unnamed_addr constant [11 x i8] c"drxk_sleep\00", align 1
@__func__.shut_down = private unnamed_addr constant [10 x i8] c"shut_down\00", align 1
@__func__.mpegts_stop = private unnamed_addr constant [12 x i8] c"mpegts_stop\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\013drxk: Error %d on %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\017drxk: %s (0x%08x, 0x%02x)\0A\00", align 1
@__func__.read16_flags = private unnamed_addr constant [13 x i8] c"read16_flags\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\01c: ERROR!\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"\013drxk: i2c read error at addr 0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\017drxk: %s : read from\00", align 1
@__func__.i2c_read = private unnamed_addr constant [9 x i8] c"i2c_read\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"\01c %02x\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\01c, value = \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"\017drxk: %s (0x%08x, 0x%04x, 0x%02x)\0A\00", align 1
@__func__.write16_flags = private unnamed_addr constant [14 x i8] c"write16_flags\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\017drxk: %s :\00", align 1
@__func__.i2c_write = private unnamed_addr constant [10 x i8] c"i2c_write\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"\013drxk: i2c write error at addr 0x%02x\0A\00", align 1
@__func__.drxk_set_parameters = private unnamed_addr constant [20 x i8] c"drxk_set_parameters\00", align 1
@.str.15 = private unnamed_addr constant [80 x i8] c"\013drxk: Error: get_if_frequency() not defined at tuner. Can't work without it!\0A\00", align 1
@__func__.setoperation_mode = private unnamed_addr constant [18 x i8] c"setoperation_mode\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\017drxk: %s : DVB-T\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"\017drxk: %s : DVB-C Annex %c\0A\00", align 1
@__func__.power_down_dvbt = private unnamed_addr constant [16 x i8] c"power_down_dvbt\00", align 1
@__func__.scu_command = private unnamed_addr constant [12 x i8] c"scu_command\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.18 = private unnamed_addr constant [23 x i8] c"\013drxk: SCU not ready\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"SCU_RESULT_UNKCMD\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"SCU_RESULT_UNKSTD\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"SCU_RESULT_SIZE\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"SCU_RESULT_INVPAR\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"ERROR: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"\013drxk: %s while sending cmd 0x%04x with params:\00", align 1
@__func__.write_block = private unnamed_addr constant [12 x i8] c"write_block\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"\013drxk: %s: i2c write error at addr 0x%02x\0A\00", align 1
@__func__.set_iqm_af = private unnamed_addr constant [11 x i8] c"set_iqm_af\00", align 1
@__func__.ctrl_power_mode = private unnamed_addr constant [16 x i8] c"ctrl_power_mode\00", align 1
@__func__.power_up_device = private unnamed_addr constant [16 x i8] c"power_up_device\00", align 1
@__func__.dvbt_enable_ofdm_token_ring = private unnamed_addr constant [28 x i8] c"dvbt_enable_ofdm_token_ring\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"\013drxk: SIO not ready\0A\00", align 1
@__func__.hi_cfg_command = private unnamed_addr constant [15 x i8] c"hi_cfg_command\00", align 1
@__func__.hi_command = private unnamed_addr constant [11 x i8] c"hi_command\00", align 1
@__func__.power_down_qam = private unnamed_addr constant [15 x i8] c"power_down_qam\00", align 1
@__func__.set_dvbt_standard = private unnamed_addr constant [18 x i8] c"set_dvbt_standard\00", align 1
@__func__.power_up_dvbt = private unnamed_addr constant [14 x i8] c"power_up_dvbt\00", align 1
@__func__.switch_antenna_to_dvbt = private unnamed_addr constant [23 x i8] c"switch_antenna_to_dvbt\00", align 1
@__func__.write_gpio = private unnamed_addr constant [11 x i8] c"write_gpio\00", align 1
@__func__.bl_chain_cmd = private unnamed_addr constant [13 x i8] c"bl_chain_cmd\00", align 1
@__func__.adc_synchronization = private unnamed_addr constant [20 x i8] c"adc_synchronization\00", align 1
@__func__.adc_sync_measurement = private unnamed_addr constant [21 x i8] c"adc_sync_measurement\00", align 1
@__func__.set_pre_saw = private unnamed_addr constant [12 x i8] c"set_pre_saw\00", align 1
@__func__.set_agc_rf = private unnamed_addr constant [11 x i8] c"set_agc_rf\00", align 1
@__func__.set_agc_if = private unnamed_addr constant [11 x i8] c"set_agc_if\00", align 1
@__func__.mpegts_dto_setup = private unnamed_addr constant [17 x i8] c"mpegts_dto_setup\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"\017drxk: %s (0x%08x, 0x%08x, 0x%02x)\0A\00", align 1
@__func__.write32_flags = private unnamed_addr constant [14 x i8] c"write32_flags\00", align 1
@__func__.dvbt_activate_presets = private unnamed_addr constant [22 x i8] c"dvbt_activate_presets\00", align 1
@__func__.dvbt_ctrl_set_inc_enable = private unnamed_addr constant [25 x i8] c"dvbt_ctrl_set_inc_enable\00", align 1
@__func__.dvbt_ctrl_set_fr_enable = private unnamed_addr constant [24 x i8] c"dvbt_ctrl_set_fr_enable\00", align 1
@__func__.dvbt_ctrl_set_echo_threshold = private unnamed_addr constant [29 x i8] c"dvbt_ctrl_set_echo_threshold\00", align 1
@__func__.set_qam_standard = private unnamed_addr constant [17 x i8] c"set_qam_standard\00", align 1
@__func__.switch_antenna_to_qam = private unnamed_addr constant [22 x i8] c"switch_antenna_to_qam\00", align 1
@__func__.power_up_qam = private unnamed_addr constant [13 x i8] c"power_up_qam\00", align 1
@__func__.qam_reset_qam = private unnamed_addr constant [14 x i8] c"qam_reset_qam\00", align 1
@__func__.bl_direct_cmd = private unnamed_addr constant [14 x i8] c"bl_direct_cmd\00", align 1
@__func__.init_agc = private unnamed_addr constant [9 x i8] c"init_agc\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"\013drxk: %s: mode %d is not DVB-C\0A\00", align 1
@__func__.start = private unnamed_addr constant [6 x i8] c"start\00", align 1
@__func__.set_qam = private unnamed_addr constant [8 x i8] c"set_qam\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"\017drxk: %s Could not set demodulator parameters.\0A\00", align 1
@.str.31 = private unnamed_addr constant [88 x i8] c"\017drxk: %s Make sure qam_demod_parameter_count (%d) is correct for your firmware (%s).\0A\00", align 1
@.str.32 = private unnamed_addr constant [90 x i8] c"\017drxk: %s Auto-probing the QAM command parameters was successful - using %d parameters.\0A\00", align 1
@__func__.qam_set_symbolrate = private unnamed_addr constant [19 x i8] c"qam_set_symbolrate\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"\014drxk: Warning %d on %s\0A\00", align 1
@__func__.qam_demodulator_command = private unnamed_addr constant [24 x i8] c"qam_demodulator_command\00", align 1
@__func__.set_frequency_shifter = private unnamed_addr constant [22 x i8] c"set_frequency_shifter\00", align 1
@__func__.set_qam_measurement = private unnamed_addr constant [20 x i8] c"set_qam_measurement\00", align 1
@__func__.set_qam16 = private unnamed_addr constant [10 x i8] c"set_qam16\00", align 1
@__func__.set_qam32 = private unnamed_addr constant [10 x i8] c"set_qam32\00", align 1
@__func__.set_qam64 = private unnamed_addr constant [10 x i8] c"set_qam64\00", align 1
@__func__.set_qam128 = private unnamed_addr constant [11 x i8] c"set_qam128\00", align 1
@__func__.set_qam256 = private unnamed_addr constant [11 x i8] c"set_qam256\00", align 1
@__func__.mpegts_start = private unnamed_addr constant [13 x i8] c"mpegts_start\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"\017drxk: %s IF =%d, TFO = %d\0A\00", align 1
@__func__.set_dvbt = private unnamed_addr constant [9 x i8] c"set_dvbt\00", align 1
@__func__.dvbt_sc_command = private unnamed_addr constant [16 x i8] c"dvbt_sc_command\00", align 1
@__func__.dvbt_ctrl_set_sqi_speed = private unnamed_addr constant [24 x i8] c"dvbt_ctrl_set_sqi_speed\00", align 1
@__func__.dvbt_start = private unnamed_addr constant [11 x i8] c"dvbt_start\00", align 1
@__func__.drxk_get_tune_settings = private unnamed_addr constant [23 x i8] c"drxk_get_tune_settings\00", align 1
@__func__.drxk_read_status = private unnamed_addr constant [17 x i8] c"drxk_read_status\00", align 1
@__func__.get_lock_status = private unnamed_addr constant [16 x i8] c"get_lock_status\00", align 1
@__func__.get_qam_lock_status = private unnamed_addr constant [20 x i8] c"get_qam_lock_status\00", align 1
@__func__.get_dvbt_lock_status = private unnamed_addr constant [21 x i8] c"get_dvbt_lock_status\00", align 1
@__func__.get_signal_to_noise = private unnamed_addr constant [20 x i8] c"get_signal_to_noise\00", align 1
@__func__.get_dvbt_signal_to_noise = private unnamed_addr constant [25 x i8] c"get_dvbt_signal_to_noise\00", align 1
@__func__.get_qam_signal_to_noise = private unnamed_addr constant [24 x i8] c"get_qam_signal_to_noise\00", align 1
@__func__.drxk_read_signal_strength = private unnamed_addr constant [26 x i8] c"drxk_read_signal_strength\00", align 1
@__func__.drxk_read_snr = private unnamed_addr constant [14 x i8] c"drxk_read_snr\00", align 1
@__func__.drxk_read_ucblocks = private unnamed_addr constant [19 x i8] c"drxk_read_ucblocks\00", align 1
@__func__.dvbtqam_get_acc_pkt_err = private unnamed_addr constant [24 x i8] c"dvbtqam_get_acc_pkt_err\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"\017drxk: %s : %s\0A\00", align 1
@__func__.drxk_gate_ctrl = private unnamed_addr constant [15 x i8] c"drxk_gate_ctrl\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@__func__.ConfigureI2CBridge = private unnamed_addr constant [19 x i8] c"ConfigureI2CBridge\00", align 1
@__func__.init_state = private unnamed_addr constant [11 x i8] c"init_state\00", align 1
@__func__.load_firmware_cb = private unnamed_addr constant [17 x i8] c"load_firmware_cb\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"firmware loaded\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"firmware not loaded\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"\013drxk: Could not load firmware file %s.\0A\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"\016drxk: Copy %s to your hotplug directory!\0A\00", align 1
@__func__.init_drxk = private unnamed_addr constant [10 x i8] c"init_drxk\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"\016drxk: DRXK driver version %d.%d.%d\0A\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c" DVB-C\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c" DVB-T\00", align 1
@__func__.drxx_open = private unnamed_addr constant [10 x i8] c"drxx_open\00", align 1
@__func__.read32_flags = private unnamed_addr constant [13 x i8] c"read32_flags\00", align 1
@__func__.get_device_capabilities = private unnamed_addr constant [24 x i8] c"get_device_capabilities\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"\016drxk: status = 0x%08x\0A\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"\013drxk: Spin %d unknown\0A\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"\013drxk: DeviceID 0x%02x not supported\0A\00", align 1
@.str.54 = private unnamed_addr constant [59 x i8] c"\016drxk: detected a drx-39%02xk, spin %s, xtal %d.%03d MHz\0A\00", align 1
@__func__.init_hi = private unnamed_addr constant [8 x i8] c"init_hi\00", align 1
@__func__.mpegts_disable = private unnamed_addr constant [15 x i8] c"mpegts_disable\00", align 1
@__func__.download_microcode = private unnamed_addr constant [19 x i8] c"download_microcode\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"\013drxk: Firmware is corrupted.\0A\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"\013drxk: Error %d while loading firmware\0A\00", align 1
@__func__.mpegts_dto_init = private unnamed_addr constant [16 x i8] c"mpegts_dto_init\00", align 1
@__func__.mpegts_configure_polarity = private unnamed_addr constant [26 x i8] c"mpegts_configure_polarity\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"\017drxk: %s : mpeg %s, %s mode\0A\00", align 1
@__func__.mpegts_configure_pins = private unnamed_addr constant [22 x i8] c"mpegts_configure_pins\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@__func__.power_down_device = private unnamed_addr constant [18 x i8] c"power_down_device\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_drxk_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.drxk_set_parameters = private unnamed_addr constant [6 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 5], align 4
@switch.table.drxk_set_parameters.60 = private unnamed_addr constant [6 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 5], align 2
@switch.table.scu_command = private unnamed_addr constant [4 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.20, ptr @.str.19], align 4
@switch.table.set_frequency_shifter = private unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 1, i32 1], align 4
@switch.table.get_signal_to_noise = private unnamed_addr constant [4 x i32] [i32 163840, i32 81920, i32 172032, i32 83968], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drxk_attach(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = load i8, ptr %0, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxk_attach) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 2316) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %224, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 3
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 4
  store i8 %4, ptr %15, align 8
  %16 = getelementptr inbounds %struct.drxk_config, ptr %0, i32 0, i32 1
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 102
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.drxk_config, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 107
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.drxk_config, ptr %0, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 110
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.drxk_config, ptr %0, i32 0, i32 2
  %26 = load i8, ptr %25, align 2, !range !8
  %27 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 103
  store i8 %26, ptr %27, align 2
  %28 = getelementptr inbounds %struct.drxk_config, ptr %0, i32 0, i32 7
  %29 = load i16, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 105
  store i16 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.drxk_config, ptr %0, i32 0, i32 6
  %32 = load i8, ptr %31, align 2, !range !8
  %33 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 104
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.drxk_config, ptr %0, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 8
  store i32 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.drxk_config, ptr %0, i32 0, i32 5
  %38 = load i8, ptr %37, align 1, !range !8
  %39 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 101
  store i8 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.drxk_config, ptr %0, i32 0, i32 4
  %41 = load i8, ptr %40, align 4, !range !8
  %42 = xor i8 %41, 1
  %43 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 49
  store i8 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 48
  store i8 %42, ptr %44, align 8
  %45 = getelementptr inbounds %struct.drxk_config, ptr %0, i32 0, i32 8
  %46 = load i8, ptr %45, align 2
  %47 = icmp eq i8 %46, 0
  %48 = and i8 %46, 7
  %49 = select i1 %47, i8 6, i8 %48
  %50 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 53
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.drxk_config, ptr %0, i32 0, i32 3
  %52 = load i8, ptr %51, align 1, !range !8
  %53 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 42
  store i8 %52, ptr %53, align 2
  %54 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 100
  store i16 %29, ptr %54, align 2
  %55 = icmp ne i8 %32, 0
  %56 = icmp eq i16 %29, 0
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %13
  %59 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 82
  %60 = load i16, ptr %59, align 4
  %61 = or i16 %60, %29
  store i16 %61, ptr %59, align 4
  br label %67

62:                                               ; preds = %13
  %63 = xor i16 %29, -1
  %64 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 82
  %65 = load i16, ptr %64, align 4
  %66 = and i16 %65, %63
  store i16 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %68, ptr noundef nonnull @.str.1, ptr noundef nonnull @drxk_attach.__key) #12
  %69 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %69, ptr noundef nonnull align 4 dereferenceable(544) @drxk_ops, i32 544, i1 false)
  %70 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 3
  store ptr %11, ptr %70, align 8
  %71 = load i32, ptr @debug, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.init_state) #10
  br label %75

75:                                               ; preds = %73, %67
  %76 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(6) %76, i8 0, i64 6, i1 false) #12
  %77 = load i32, ptr %36, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 124, ptr %36, align 8
  br label %80

80:                                               ; preds = %79, %75
  %81 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 20
  store i16 0, ptr %81, align 2
  %82 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 35
  store i8 0, ptr %82, align 8
  %83 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 37
  store i8 0, ptr %83, align 2
  %84 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 26
  store i32 151875, ptr %84, align 4
  %85 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 21
  store i16 6, ptr %85, align 8
  %86 = load i8, ptr %15, align 8
  %87 = zext i8 %86 to i16
  %88 = shl nuw nsw i16 %87, 1
  %89 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 23
  store i16 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 25
  store i16 1, ptr %90, align 8
  %91 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 38
  %92 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 94
  store i8 0, ptr %92, align 1
  %93 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 30
  %94 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 30, i32 3
  store i64 0, ptr %93, align 4
  store i16 32767, ptr %94, align 4
  %95 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 30, i32 4
  store i16 3, ptr %95, align 2
  %96 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 31
  store i16 140, ptr %96, align 8
  %97 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 29
  %98 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 29, i32 3
  store i64 0, ptr %97, align 8
  store i16 32767, ptr %98, align 8
  %99 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 29, i32 4
  store i16 3, ptr %99, align 2
  %100 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 29, i32 5
  store i16 9500, ptr %100, align 4
  %101 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 29, i32 6
  store i16 4000, ptr %101, align 2
  %102 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 32
  store i16 7, ptr %102, align 2
  %103 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 32, i32 1
  store i8 1, ptr %103, align 4
  %104 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 33
  %105 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 34
  store i32 165, ptr %104, align 8
  store i32 250, ptr %105, align 4
  %106 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 63
  %107 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 63, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(10) %106, i8 0, i64 10, i1 false) #12
  store i16 3, ptr %107, align 2
  %108 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 62
  store i32 2, ptr %108, align 4
  %109 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 62, i32 1
  store i16 0, ptr %109, align 8
  %110 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 62, i32 2
  store i16 0, ptr %110, align 2
  %111 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 62, i32 3
  store i16 0, ptr %111, align 4
  %112 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 62, i32 4
  store i16 3, ptr %112, align 2
  %113 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 62, i32 5
  store i16 9500, ptr %113, align 8
  %114 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 62, i32 6
  store i16 4000, ptr %114, align 2
  %115 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 64
  store i16 4, ptr %115, align 4
  %116 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 64, i32 1
  store i8 1, ptr %116, align 2
  %117 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 84
  store i32 2, ptr %117, align 8
  %118 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 84, i32 1
  store i16 0, ptr %118, align 4
  %119 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 84, i32 2
  store i16 0, ptr %119, align 2
  %120 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 84, i32 3
  store i16 -1, ptr %120, align 8
  %121 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 84, i32 5
  store i16 8448, ptr %121, align 4
  %122 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 84, i32 6
  store i16 4000, ptr %122, align 2
  %123 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 84, i32 4
  store i16 1, ptr %123, align 2
  %124 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 85
  %125 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 85, i32 3
  store i64 0, ptr %124, align 4
  store i16 9000, ptr %125, align 4
  %126 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 85, i32 5
  store i16 13424, ptr %126, align 8
  %127 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 85, i32 6
  store i16 0, ptr %127, align 2
  %128 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 85, i32 4
  store i16 3, ptr %128, align 2
  %129 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 85, i32 8
  store i16 30, ptr %129, align 2
  %130 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 85, i32 7
  store i16 30000, ptr %130, align 4
  %131 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 86
  store i16 4, ptr %131, align 8
  %132 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 86, i32 1
  store i8 0, ptr %132, align 2
  %133 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 74
  store i32 2, ptr %133, align 8
  %134 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 74, i32 1
  store i16 0, ptr %134, align 4
  %135 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 74, i32 2
  store i16 6023, ptr %135, align 2
  %136 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 74, i32 3
  store i16 27000, ptr %136, align 8
  %137 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 74, i32 5
  store i16 9088, ptr %137, align 4
  %138 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 74, i32 6
  store i16 4000, ptr %138, align 2
  %139 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 74, i32 4
  store i16 3, ptr %139, align 2
  %140 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 75
  %141 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 75, i32 3
  store i64 0, ptr %140, align 4
  store i16 9000, ptr %141, align 4
  %142 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 75, i32 5
  store i16 1297, ptr %142, align 8
  %143 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 75, i32 6
  store i16 0, ptr %143, align 2
  %144 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 75, i32 4
  store i16 3, ptr %144, align 2
  %145 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 75, i32 7
  store i16 5119, ptr %145, align 4
  %146 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 75, i32 8
  store i16 50, ptr %146, align 2
  %147 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 76
  store i16 140, ptr %147, align 8
  %148 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 77
  store i16 4, ptr %148, align 2
  %149 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 77, i32 1
  store i8 0, ptr %149, align 4
  %150 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 28
  store i32 0, ptr %150, align 4
  %151 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 27
  store i32 0, ptr %151, align 8
  %152 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 40
  store i8 1, ptr %152, align 8
  %153 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 41
  store i8 0, ptr %153, align 1
  %154 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 43
  %155 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 50
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(5) %154, i8 0, i64 5, i1 false) #12
  store i32 50000000, ptr %155, align 4
  %156 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 51
  store i32 57864000, ptr %156, align 8
  %157 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 52
  store i8 2, ptr %157, align 4
  %158 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 56
  store i32 19392658, ptr %158, align 4
  %159 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 59
  store i8 0, ptr %159, align 8
  %160 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 57
  store i32 700, ptr %160, align 8
  %161 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 58
  store i32 500, ptr %161, align 4
  %162 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 72
  store i32 255, ptr %162, align 8
  %163 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 78
  store i32 16, ptr %163, align 8
  %164 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 79
  store i16 1632, ptr %164, align 4
  %165 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 80
  store i16 1, ptr %165, align 2
  %166 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 81
  store i32 1, ptr %166, align 8
  %167 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 87
  store i16 0, ptr %167, align 4
  %168 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 83
  store i16 275, ptr %168, align 2
  store i8 0, ptr %91, align 1
  %169 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 98
  store i32 255, ptr %169, align 4
  %170 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 95
  store i8 0, ptr %170, align 2
  %171 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 61
  store i8 0, ptr %171, align 2
  %172 = load ptr, ptr %21, align 8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %201, label %174

174:                                              ; preds = %80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4
  %175 = load ptr, ptr %14, align 4
  %176 = getelementptr inbounds %struct.i2c_adapter, ptr %175, i32 0, i32 9, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = call i32 @request_firmware(ptr noundef nonnull %3, ptr noundef nonnull %172, ptr noundef %177) #12
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  store ptr null, ptr %3, align 4
  br label %183

181:                                              ; preds = %174
  %182 = load ptr, ptr %3, align 4
  br label %183

183:                                              ; preds = %181, %180
  %184 = phi ptr [ %182, %181 ], [ null, %180 ]
  %185 = load i32, ptr @debug, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = icmp eq ptr %184, null
  %189 = select i1 %188, ptr @.str.40, ptr @.str.39
  %190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.load_firmware_cb, ptr noundef nonnull %189) #10
  br label %191

191:                                              ; preds = %187, %183
  %192 = icmp eq ptr %184, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %191
  %194 = load ptr, ptr %21, align 8
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %194) #10
  %196 = load ptr, ptr %21, align 8
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %196) #10
  store ptr null, ptr %21, align 8
  br label %198

198:                                              ; preds = %193, %191
  %199 = getelementptr inbounds %struct.drxk_state, ptr %11, i32 0, i32 109
  store ptr %184, ptr %199, align 4
  %200 = call fastcc i32 @init_drxk(ptr noundef nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %204

201:                                              ; preds = %80
  %202 = tail call fastcc i32 @init_drxk(ptr noundef nonnull %11)
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %222, label %204

204:                                              ; preds = %201, %198
  %205 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 42
  store i8 1, ptr %205, align 4
  %206 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 43
  store i8 1, ptr %206, align 1
  %207 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 48
  store i8 1, ptr %207, align 2
  %208 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 49
  store i8 1, ptr %208, align 1
  %209 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 44
  store i8 1, ptr %209, align 2
  %210 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 45
  store i8 1, ptr %210, align 1
  %211 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 46
  store i8 1, ptr %211, align 8
  %212 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 47
  store i8 1, ptr %212, align 1
  %213 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %213, align 1
  %214 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %214, align 2
  %215 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %215, align 1
  %216 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %216, align 8
  %217 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 44, i32 1
  store i8 0, ptr %217, align 1
  %218 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 45, i32 1
  store i8 0, ptr %218, align 4
  %219 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %219, align 1
  %220 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %220, align 2
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %224

222:                                              ; preds = %201
  %223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  tail call void @kfree(ptr noundef nonnull %11) #12
  br label %224

224:                                              ; preds = %222, %204, %9
  %225 = phi ptr [ %11, %204 ], [ null, %222 ], [ null, %9 ]
  ret ptr %225
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_drxk(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [4 x i8], align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca [6 x i8], align 1
  %6 = alloca [4 x i8], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca [6 x i8], align 1
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  store i32 1, ptr %12, align 4
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.init_drxk) #10
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 27
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %479

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %23, i32 noundef 2) #12
  %27 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 99
  store i8 1, ptr %27, align 4
  %28 = tail call fastcc i32 @power_up_device(ptr noundef %0)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %467, label %30

30:                                               ; preds = %21
  %31 = tail call fastcc i32 @drxx_open(ptr noundef %0)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %467, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %35 = load i8, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %11, i8 0, i32 6, i1 false) #12, !annotation !9
  %36 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %37 = load i8, ptr %36, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i32 0, i32 192
  br i1 %38, label %43, label %40

40:                                               ; preds = %33
  store i8 45, ptr %11, align 1
  %41 = trunc i32 %39 to i8
  %42 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 2
  store i8 %41, ptr %42, align 1
  br label %44

43:                                               ; preds = %33
  store i8 44, ptr %11, align 1
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i8 [ 69, %40 ], [ 21, %43 ]
  %46 = phi i32 [ 4, %40 ], [ 2, %43 ]
  %47 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 1
  store i8 %45, ptr %47, align 1
  %48 = getelementptr [6 x i8], ptr %11, i32 0, i32 %46
  store i8 7, ptr %48, align 1
  %49 = or i32 %46, 1
  %50 = getelementptr [6 x i8], ptr %11, i32 0, i32 %49
  store i8 0, ptr %50, align 1
  %51 = load i32, ptr @debug, align 4
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4522006, i32 noundef 7, i32 noundef %39) #10
  br label %55

55:                                               ; preds = %53, %44
  %56 = add nuw nsw i32 %46, 2
  %57 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %35, ptr noundef nonnull %11, i32 noundef %56) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #12
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %467, label %59

59:                                               ; preds = %55
  %60 = load i8, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %10, i8 0, i32 6, i1 false) #12, !annotation !9
  %61 = load i8, ptr %36, align 1, !range !8
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, i32 0, i32 192
  br i1 %62, label %67, label %64

64:                                               ; preds = %59
  store i8 47, ptr %10, align 1
  %65 = trunc i32 %63 to i8
  %66 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %65, ptr %66, align 1
  br label %68

67:                                               ; preds = %59
  store i8 46, ptr %10, align 1
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i8 [ 69, %64 ], [ 21, %67 ]
  %70 = phi i32 [ 4, %64 ], [ 2, %67 ]
  %71 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 %69, ptr %71, align 1
  %72 = getelementptr [6 x i8], ptr %10, i32 0, i32 %70
  store i8 -70, ptr %72, align 1
  %73 = or i32 %70, 1
  %74 = getelementptr [6 x i8], ptr %10, i32 0, i32 %73
  store i8 -6, ptr %74, align 1
  %75 = load i32, ptr @debug, align 4
  %76 = icmp ugt i32 %75, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4522007, i32 noundef 64186, i32 noundef %63) #10
  br label %79

79:                                               ; preds = %77, %68
  %80 = add nuw nsw i32 %70, 2
  %81 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %60, ptr noundef nonnull %10, i32 noundef %80) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %467, label %83

83:                                               ; preds = %79
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %84 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 94
  store i8 1, ptr %84, align 1
  %85 = load i32, ptr @debug, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_device_capabilities) #10
  %89 = load i32, ptr @debug, align 4
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i32 [ %89, %87 ], [ 0, %83 ]
  %92 = load i8, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  %93 = load i8, ptr %36, align 1, !range !8
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i32 0, i32 192
  store i8 -113, ptr %9, align 1
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %96, ptr %97, align 1
  %98 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  store i8 61, ptr %98, align 1
  %99 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 -125, ptr %99, align 1
  %100 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  store i8 0, ptr %100, align 1
  %101 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  store i8 0, ptr %101, align 1
  %102 = icmp ugt i32 %91, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593095, i32 noundef 0, i32 noundef %95) #10
  br label %105

105:                                              ; preds = %103, %90
  %106 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %92, ptr noundef nonnull %9, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %308, label %108

108:                                              ; preds = %105
  %109 = load i8, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i32 6, i1 false) #12, !annotation !9
  %110 = load i8, ptr %36, align 1, !range !8
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i32 0, i32 192
  br i1 %111, label %116, label %113

113:                                              ; preds = %108
  store i8 31, ptr %8, align 1
  %114 = trunc i32 %112 to i8
  %115 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %114, ptr %115, align 1
  br label %117

116:                                              ; preds = %108
  store i8 30, ptr %8, align 1
  br label %117

117:                                              ; preds = %116, %113
  %118 = phi i8 [ 65, %113 ], [ 17, %116 ]
  %119 = phi i32 [ 4, %113 ], [ 2, %116 ]
  %120 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 %118, ptr %120, align 1
  %121 = getelementptr [6 x i8], ptr %8, i32 0, i32 %119
  store i8 -70, ptr %121, align 1
  %122 = or i32 %119, 1
  %123 = getelementptr [6 x i8], ptr %8, i32 0, i32 %122
  store i8 -6, ptr %123, align 1
  %124 = load i32, ptr @debug, align 4
  %125 = icmp ugt i32 %124, 1
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4259855, i32 noundef 64186, i32 noundef %112) #10
  br label %128

128:                                              ; preds = %126, %117
  %129 = add nuw nsw i32 %119, 2
  %130 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %109, ptr noundef nonnull %8, i32 noundef %129) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %308, label %132

132:                                              ; preds = %128
  %133 = load i8, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 32575, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i16 0, ptr %7, align 2, !annotation !9
  %134 = load i8, ptr %36, align 1, !range !8
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %135, i32 0, i32 192
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 2
  store i8 %137, ptr %138, align 2
  %139 = load i32, ptr @debug, align 4
  %140 = icmp ugt i32 %139, 1
  br i1 %140, label %141, label %143

141:                                              ; preds = %132
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8323103, i32 noundef %136) #10
  br label %143

143:                                              ; preds = %141, %132
  %144 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %133, ptr noundef nonnull %6, i32 noundef 4, ptr noundef nonnull %7, i32 noundef 2) #12
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %308

147:                                              ; preds = %143
  %148 = load i8, ptr %7, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %149 = load i8, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #12, !annotation !9
  %150 = load i8, ptr %36, align 1, !range !8
  %151 = icmp eq i8 %150, 0
  %152 = select i1 %151, i32 0, i32 192
  br i1 %151, label %156, label %153

153:                                              ; preds = %147
  store i8 31, ptr %5, align 1
  %154 = trunc i32 %152 to i8
  %155 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %154, ptr %155, align 1
  br label %157

156:                                              ; preds = %147
  store i8 30, ptr %5, align 1
  br label %157

157:                                              ; preds = %156, %153
  %158 = phi i8 [ 65, %153 ], [ 17, %156 ]
  %159 = phi i32 [ 4, %153 ], [ 2, %156 ]
  %160 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 %158, ptr %160, align 1
  %161 = getelementptr [6 x i8], ptr %5, i32 0, i32 %159
  store i8 0, ptr %161, align 1
  %162 = or i32 %159, 1
  %163 = getelementptr [6 x i8], ptr %5, i32 0, i32 %162
  store i8 0, ptr %163, align 1
  %164 = load i32, ptr @debug, align 4
  %165 = icmp ugt i32 %164, 1
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4259855, i32 noundef 0, i32 noundef %152) #10
  br label %168

168:                                              ; preds = %166, %157
  %169 = add nuw nsw i32 %159, 2
  %170 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %149, ptr noundef nonnull %5, i32 noundef %169) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %308, label %172

172:                                              ; preds = %168
  %173 = and i8 %148, 3
  %174 = zext i8 %173 to i32
  switch i32 %174, label %177 [
    i32 0, label %181
    i32 1, label %178
    i32 2, label %175
    i32 3, label %176
  ]

175:                                              ; preds = %172
  br label %178

176:                                              ; preds = %172
  br label %178

177:                                              ; preds = %172
  unreachable

178:                                              ; preds = %176, %175, %172
  %179 = phi i16 [ 20250, %176 ], [ 20250, %175 ], [ 27000, %172 ]
  %180 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 20
  store i16 %179, ptr %180, align 2
  br label %181

181:                                              ; preds = %178, %172
  %182 = load i8, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  %183 = load i8, ptr %36, align 1, !range !8
  %184 = icmp eq i8 %183, 0
  %185 = select i1 %184, i32 0, i32 192
  br i1 %184, label %190, label %186

186:                                              ; preds = %181
  store i8 37, ptr %3, align 4
  %187 = trunc i32 %185 to i8
  %188 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %187, ptr %188, align 2
  %189 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %189, align 1
  br label %191

190:                                              ; preds = %181
  store i8 36, ptr %3, align 4
  br label %191

191:                                              ; preds = %190, %186
  %192 = phi i8 [ 17, %190 ], [ 65, %186 ]
  %193 = phi i32 [ 2, %190 ], [ 4, %186 ]
  %194 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 %192, ptr %194, align 1
  %195 = load i32, ptr @debug, align 4
  %196 = icmp ugt i32 %195, 1
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read32_flags, i32 noundef 4259858, i32 noundef %185) #10
  br label %199

199:                                              ; preds = %197, %191
  %200 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %182, ptr noundef nonnull %3, i32 noundef %193, ptr noundef nonnull %4, i32 noundef 4) #12
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %308

203:                                              ; preds = %199
  %204 = load i8, ptr %4, align 4
  %205 = zext i8 %204 to i32
  %206 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i32
  %209 = shl nuw nsw i32 %208, 8
  %210 = or i32 %209, %205
  %211 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  %212 = load i8, ptr %211, align 2
  %213 = zext i8 %212 to i32
  %214 = shl nuw nsw i32 %213, 16
  %215 = or i32 %210, %214
  %216 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i32
  %219 = shl nuw i32 %218, 24
  %220 = or i32 %215, %219
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %220) #10
  %222 = lshr i32 %218, 5
  switch i32 %222, label %225 [
    i32 0, label %228
    i32 2, label %223
    i32 3, label %224
  ]

223:                                              ; preds = %203
  br label %228

224:                                              ; preds = %203
  br label %228

225:                                              ; preds = %203
  %226 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 96
  store i8 3, ptr %226, align 1
  %227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %222) #10
  br label %467

228:                                              ; preds = %224, %223, %203
  %229 = phi i8 [ 2, %224 ], [ 1, %223 ], [ 0, %203 ]
  %230 = phi ptr [ @.str.51, %224 ], [ @.str.50, %223 ], [ @.str.49, %203 ]
  %231 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 96
  store i8 %229, ptr %231, align 1
  %232 = lshr i32 %220, 12
  %233 = trunc i32 %232 to i8
  switch i8 %233, label %305 [
    i8 19, label %234
    i8 21, label %244
    i8 22, label %254
    i8 24, label %264
    i8 33, label %274
    i8 35, label %281
    i8 37, label %288
    i8 38, label %295
  ]

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 10
  store i8 0, ptr %235, align 4
  %236 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 15
  store i8 0, ptr %236, align 1
  %237 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 14
  store i8 0, ptr %237, align 4
  %238 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 13
  store i8 0, ptr %238, align 1
  %239 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 11
  store i8 1, ptr %239, align 1
  %240 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 12
  store i8 1, ptr %240, align 2
  %241 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 16
  store i8 1, ptr %241, align 2
  %242 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 18
  store i8 0, ptr %242, align 4
  %243 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 17
  store i8 0, ptr %243, align 1
  br label %311

244:                                              ; preds = %228
  %245 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 10
  store i8 0, ptr %245, align 4
  %246 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 15
  store i8 0, ptr %246, align 1
  %247 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 14
  store i8 1, ptr %247, align 4
  %248 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 13
  store i8 0, ptr %248, align 1
  %249 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 11
  store i8 1, ptr %249, align 1
  %250 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 12
  store i8 0, ptr %250, align 2
  %251 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 16
  store i8 1, ptr %251, align 2
  %252 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 18
  store i8 1, ptr %252, align 4
  %253 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 17
  store i8 1, ptr %253, align 1
  br label %311

254:                                              ; preds = %228
  %255 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 10
  store i8 0, ptr %255, align 4
  %256 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 15
  store i8 0, ptr %256, align 1
  %257 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 14
  store i8 1, ptr %257, align 4
  %258 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 13
  store i8 0, ptr %258, align 1
  %259 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 11
  store i8 1, ptr %259, align 1
  %260 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 12
  store i8 0, ptr %260, align 2
  %261 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 16
  store i8 1, ptr %261, align 2
  %262 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 18
  store i8 1, ptr %262, align 4
  %263 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 17
  store i8 1, ptr %263, align 1
  br label %311

264:                                              ; preds = %228
  %265 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 10
  store i8 0, ptr %265, align 4
  %266 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 15
  store i8 0, ptr %266, align 1
  %267 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 14
  store i8 1, ptr %267, align 4
  %268 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 13
  store i8 1, ptr %268, align 1
  %269 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 11
  store i8 1, ptr %269, align 1
  %270 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 12
  store i8 0, ptr %270, align 2
  %271 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 16
  store i8 1, ptr %271, align 2
  %272 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 18
  store i8 1, ptr %272, align 4
  %273 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 17
  store i8 1, ptr %273, align 1
  br label %311

274:                                              ; preds = %228
  %275 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 10
  store i8 0, ptr %275, align 4
  %276 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 15
  store i8 0, ptr %276, align 1
  %277 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 11
  %278 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 16
  store i8 1, ptr %278, align 2
  %279 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 18
  store i8 1, ptr %279, align 4
  %280 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 17
  store i8 1, ptr %280, align 1
  store i32 16843009, ptr %277, align 1
  br label %311

281:                                              ; preds = %228
  %282 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 10
  store i8 0, ptr %282, align 4
  %283 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 15
  store i8 0, ptr %283, align 1
  %284 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 11
  %285 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 16
  store i8 1, ptr %285, align 2
  %286 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 18
  store i8 1, ptr %286, align 4
  %287 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 17
  store i8 1, ptr %287, align 1
  store i32 16843009, ptr %284, align 1
  br label %311

288:                                              ; preds = %228
  %289 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 10
  store i8 0, ptr %289, align 4
  %290 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 15
  store i8 0, ptr %290, align 1
  %291 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 11
  %292 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 16
  store i8 1, ptr %292, align 2
  %293 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 18
  store i8 1, ptr %293, align 4
  %294 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 17
  store i8 1, ptr %294, align 1
  store i32 16843009, ptr %291, align 1
  br label %311

295:                                              ; preds = %228
  %296 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 10
  store i8 0, ptr %296, align 4
  %297 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 15
  store i8 0, ptr %297, align 1
  %298 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 14
  store i8 1, ptr %298, align 4
  %299 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 13
  store i8 0, ptr %299, align 1
  %300 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 11
  store i8 1, ptr %300, align 1
  %301 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 12
  store i8 1, ptr %301, align 2
  %302 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 16
  store i8 1, ptr %302, align 2
  %303 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 18
  store i8 1, ptr %303, align 4
  %304 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 17
  store i8 1, ptr %304, align 1
  br label %311

305:                                              ; preds = %228
  %306 = and i32 %232, 255
  %307 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %306) #10
  br label %467

308:                                              ; preds = %202, %168, %146, %128, %105
  %309 = phi i32 [ %200, %202 ], [ %144, %146 ], [ %170, %168 ], [ %130, %128 ], [ %106, %105 ]
  %310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %309, ptr noundef nonnull @__func__.get_device_capabilities) #10
  br label %467

311:                                              ; preds = %295, %288, %281, %274, %264, %254, %244, %234
  %312 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 19
  store i8 0, ptr %312, align 1
  %313 = and i32 %232, 255
  %314 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 20
  %315 = load i16, ptr %314, align 2
  %316 = freeze i16 %315
  %317 = udiv i16 %316, 1000
  %318 = zext i16 %317 to i32
  %319 = mul i16 %317, 1000
  %320 = sub i16 %316, %319
  %321 = zext i16 %320 to i32
  %322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %313, ptr noundef nonnull %230, i32 noundef %318, i32 noundef %321) #10
  %323 = load i16, ptr %314, align 2
  %324 = udiv i16 %323, 1000
  %325 = mul nuw nsw i16 %324, 350
  %326 = udiv i16 %325, 1000
  %327 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 22
  %328 = mul nuw nsw i16 %326, 129
  store i16 %328, ptr %327, align 2
  %329 = load i32, ptr @debug, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %311
  %332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.init_hi) #10
  br label %333

333:                                              ; preds = %331, %311
  %334 = load i8, ptr %34, align 4
  %335 = zext i8 %334 to i16
  %336 = shl nuw nsw i16 %335, 1
  %337 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 23
  store i16 %336, ptr %337, align 4
  %338 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 24
  store i16 -26881, ptr %338, align 2
  %339 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 25
  store i16 1, ptr %339, align 4
  %340 = call fastcc i32 @hi_cfg_command(ptr noundef %0) #12
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %467, label %342

342:                                              ; preds = %333
  %343 = load i8, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  %344 = load i8, ptr %36, align 1, !range !8
  %345 = icmp eq i8 %344, 0
  %346 = select i1 %345, i32 0, i32 192
  store i8 -113, ptr %2, align 1
  %347 = trunc i32 %346 to i8
  %348 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %347, ptr %348, align 1
  %349 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  store i8 61, ptr %349, align 1
  %350 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 -125, ptr %350, align 1
  %351 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  store i8 0, ptr %351, align 1
  %352 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  store i8 0, ptr %352, align 1
  %353 = load i32, ptr @debug, align 4
  %354 = icmp ugt i32 %353, 1
  br i1 %354, label %355, label %357

355:                                              ; preds = %342
  %356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593095, i32 noundef 0, i32 noundef %346) #10
  br label %357

357:                                              ; preds = %355, %342
  %358 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %343, ptr noundef nonnull %2, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %467, label %360

360:                                              ; preds = %357
  %361 = call fastcc i32 @mpegts_disable(ptr noundef %0)
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %467, label %363

363:                                              ; preds = %360
  %364 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 16777216, i16 noundef zeroext 0)
  %365 = icmp slt i32 %364, 0
  br i1 %365, label %467, label %366

366:                                              ; preds = %363
  %367 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8388608, i16 noundef zeroext 0)
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %467, label %369

369:                                              ; preds = %366
  %370 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 4653072, i16 noundef zeroext 1)
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %467, label %372

372:                                              ; preds = %369
  %373 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 4718592, i16 noundef zeroext 1)
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %467, label %375

375:                                              ; preds = %372
  %376 = call fastcc i32 @bl_chain_cmd(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 6)
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %467, label %378

378:                                              ; preds = %375
  %379 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 109
  %380 = load ptr, ptr %379, align 4
  %381 = icmp eq ptr %380, null
  br i1 %381, label %388, label %382

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.firmware, ptr %380, i32 0, i32 1
  %384 = load ptr, ptr %383, align 4
  %385 = load i32, ptr %380, align 4
  %386 = call fastcc i32 @download_microcode(ptr noundef %0, ptr noundef %384, i32 noundef %385)
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %467, label %388

388:                                              ; preds = %382, %378
  %389 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 4653072, i16 noundef zeroext 0)
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %467, label %391

391:                                              ; preds = %388
  %392 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8388608, i16 noundef zeroext 1)
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %467, label %394

394:                                              ; preds = %391
  %395 = call fastcc i32 @drxx_open(ptr noundef %0)
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %467, label %397

397:                                              ; preds = %394
  call void @msleep(i32 noundef 30) #12
  store i32 1, ptr %12, align 4
  %398 = call fastcc i32 @ctrl_power_mode(ptr noundef %0, ptr noundef nonnull %12)
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %467, label %400

400:                                              ; preds = %397
  %401 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593387, i16 noundef zeroext 9)
  %402 = icmp slt i32 %401, 0
  br i1 %402, label %467, label %403

403:                                              ; preds = %400
  %404 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593388, i16 noundef zeroext 17152)
  %405 = icmp slt i32 %404, 0
  br i1 %405, label %467, label %406

406:                                              ; preds = %403
  %407 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 9, i32 noundef 4300) #10
  %408 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593087, i16 noundef zeroext 0)
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %467, label %410

410:                                              ; preds = %406
  %411 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 29360128, i16 noundef zeroext 0)
  %412 = icmp slt i32 %411, 0
  br i1 %412, label %467, label %413

413:                                              ; preds = %410
  %414 = call fastcc i32 @mpegts_dto_init(ptr noundef %0)
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %467, label %416

416:                                              ; preds = %413
  %417 = call fastcc i32 @mpegts_stop(ptr noundef %0)
  %418 = icmp slt i32 %417, 0
  br i1 %418, label %467, label %419

419:                                              ; preds = %416
  %420 = call fastcc i32 @mpegts_configure_polarity(ptr noundef %0)
  %421 = icmp slt i32 %420, 0
  br i1 %421, label %467, label %422

422:                                              ; preds = %419
  %423 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 40
  %424 = load i8, ptr %423, align 4, !range !8
  %425 = icmp ne i8 %424, 0
  %426 = call fastcc i32 @mpegts_configure_pins(ptr noundef %0, i1 noundef zeroext %425)
  %427 = icmp slt i32 %426, 0
  br i1 %427, label %467, label %428

428:                                              ; preds = %422
  %429 = call fastcc i32 @write_gpio(ptr noundef %0)
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %467, label %431

431:                                              ; preds = %428
  store i32 1, ptr %18, align 4
  %432 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 38
  %433 = load i8, ptr %432, align 1, !range !8
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %431
  %436 = call fastcc i32 @power_down_device(ptr noundef %0)
  %437 = icmp slt i32 %436, 0
  br i1 %437, label %467, label %438

438:                                              ; preds = %435, %431
  %439 = phi i32 [ 4, %435 ], [ 1, %431 ]
  %440 = phi i32 [ %436, %435 ], [ %429, %431 ]
  store i32 %439, ptr %18, align 4
  %441 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 12
  %442 = load i8, ptr %441, align 2, !range !8
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %449, label %444

444:                                              ; preds = %438
  %445 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1
  %446 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1
  store i8 1, ptr %446, align 1
  %447 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 1
  store i8 18, ptr %447, align 1
  %448 = call i32 @strlcat(ptr noundef %445, ptr noundef nonnull @.str.44, i32 noundef 128) #12
  br label %449

449:                                              ; preds = %444, %438
  %450 = phi i32 [ 2, %444 ], [ 0, %438 ]
  %451 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 11
  %452 = load i8, ptr %451, align 1, !range !8
  %453 = icmp eq i8 %452, 0
  br i1 %453, label %458, label %454

454:                                              ; preds = %449
  %455 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1
  %456 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 %450
  store i8 3, ptr %456, align 1
  %457 = call i32 @strlcat(ptr noundef %455, ptr noundef nonnull @.str.45, i32 noundef 128) #12
  br label %458

458:                                              ; preds = %454, %449
  %459 = load i8, ptr %27, align 4, !range !8
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %479, label %461

461:                                              ; preds = %458
  %462 = load ptr, ptr %22, align 4
  %463 = getelementptr inbounds %struct.i2c_adapter, ptr %462, i32 0, i32 4
  %464 = load ptr, ptr %463, align 8
  %465 = getelementptr inbounds %struct.i2c_lock_operations, ptr %464, i32 0, i32 2
  %466 = load ptr, ptr %465, align 4
  call void %466(ptr noundef %462, i32 noundef 2) #12
  store i8 0, ptr %27, align 4
  br label %479

467:                                              ; preds = %435, %428, %422, %419, %416, %413, %410, %406, %403, %400, %397, %394, %391, %388, %382, %375, %372, %369, %366, %363, %360, %357, %333, %308, %305, %225, %79, %55, %30, %21
  %468 = phi i32 [ %436, %435 ], [ %429, %428 ], [ %426, %422 ], [ %420, %419 ], [ %417, %416 ], [ %414, %413 ], [ %411, %410 ], [ %408, %406 ], [ %404, %403 ], [ %401, %400 ], [ %398, %397 ], [ %395, %394 ], [ %392, %391 ], [ %389, %388 ], [ %386, %382 ], [ %376, %375 ], [ %373, %372 ], [ %370, %369 ], [ %367, %366 ], [ %364, %363 ], [ %361, %360 ], [ %358, %357 ], [ %340, %333 ], [ %81, %79 ], [ %57, %55 ], [ %31, %30 ], [ %28, %21 ], [ -22, %305 ], [ -22, %225 ], [ %309, %308 ]
  store i32 5, ptr %18, align 4
  %469 = load i8, ptr %27, align 4, !range !8
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %477, label %471

471:                                              ; preds = %467
  %472 = load ptr, ptr %22, align 4
  %473 = getelementptr inbounds %struct.i2c_adapter, ptr %472, i32 0, i32 4
  %474 = load ptr, ptr %473, align 8
  %475 = getelementptr inbounds %struct.i2c_lock_operations, ptr %474, i32 0, i32 2
  %476 = load ptr, ptr %475, align 4
  call void %476(ptr noundef %472, i32 noundef 2) #12
  store i8 0, ptr %27, align 4
  br label %477

477:                                              ; preds = %471, %467
  %478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %468, ptr noundef nonnull @__func__.init_drxk) #10
  br label %479

479:                                              ; preds = %477, %461, %458, %17
  %480 = phi i32 [ %468, %477 ], [ 0, %17 ], [ %440, %458 ], [ %440, %461 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  ret i32 %480
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drxk_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxk_release) #10
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.drxk_state, ptr %3, i32 0, i32 109
  %10 = load ptr, ptr %9, align 4
  tail call void @release_firmware(ptr noundef %10) #12
  tail call void @kfree(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxk_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxk_sleep) #10
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.drxk_state, ptr %3, i32 0, i32 27
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %12 [
    i32 5, label %19
    i32 0, label %11
  ]

11:                                               ; preds = %8
  br label %19

12:                                               ; preds = %8
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.shut_down) #10
  br label %17

17:                                               ; preds = %15, %12
  %18 = tail call fastcc i32 @mpegts_stop(ptr noundef %3) #12
  br label %19

19:                                               ; preds = %17, %11, %8
  %20 = phi i32 [ 0, %11 ], [ 0, %17 ], [ -19, %8 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxk_set_parameters(ptr noundef %0) #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [8 x i8], align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca [6 x i8], align 1
  %12 = alloca [6 x i8], align 1
  %13 = alloca [6 x i8], align 1
  %14 = alloca [6 x i8], align 1
  %15 = alloca [6 x i8], align 1
  %16 = alloca [6 x i8], align 1
  %17 = alloca [6 x i8], align 1
  %18 = alloca [6 x i8], align 1
  %19 = alloca [6 x i8], align 1
  %20 = alloca [6 x i8], align 1
  %21 = alloca [6 x i8], align 1
  %22 = alloca [6 x i8], align 1
  %23 = alloca [6 x i8], align 1
  %24 = alloca [6 x i8], align 1
  %25 = alloca [6 x i8], align 1
  %26 = alloca [6 x i8], align 1
  %27 = alloca [6 x i8], align 1
  %28 = alloca [6 x i8], align 1
  %29 = alloca [6 x i8], align 1
  %30 = alloca [6 x i8], align 1
  %31 = alloca [6 x i8], align 1
  %32 = alloca [6 x i8], align 1
  %33 = alloca [6 x i8], align 1
  %34 = alloca [6 x i8], align 1
  %35 = alloca [6 x i8], align 1
  %36 = alloca [6 x i8], align 1
  %37 = alloca [6 x i8], align 1
  %38 = alloca [6 x i8], align 1
  %39 = alloca [6 x i8], align 1
  %40 = alloca [6 x i8], align 1
  %41 = alloca [6 x i8], align 1
  %42 = alloca i16, align 2
  %43 = alloca [6 x i8], align 1
  %44 = alloca [6 x i8], align 1
  %45 = alloca [6 x i8], align 1
  %46 = alloca [6 x i8], align 1
  %47 = alloca i16, align 2
  %48 = alloca [4 x i16], align 8
  %49 = alloca [1 x i16], align 2
  %50 = alloca i16, align 2
  %51 = alloca [4 x i16], align 8
  %52 = alloca [6 x i8], align 1
  %53 = alloca [8 x i8], align 8
  %54 = alloca [6 x i8], align 1
  %55 = alloca [6 x i8], align 1
  %56 = alloca [6 x i8], align 1
  %57 = alloca i16, align 2
  %58 = alloca i32, align 4
  %59 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %60 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %58) #12
  store i32 0, ptr %58, align 4, !annotation !9
  %64 = load i32, ptr @debug, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %1
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxk_set_parameters) #10
  br label %68

68:                                               ; preds = %66, %1
  %69 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 27
  %70 = load i32, ptr %69, align 4
  switch i32 %70, label %72 [
    i32 5, label %1885
    i32 0, label %71
  ]

71:                                               ; preds = %68
  br label %1885

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %1885

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = tail call i32 %80(ptr noundef %0, i32 noundef 1) #12
  br label %84

84:                                               ; preds = %82, %78
  %85 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = tail call i32 %86(ptr noundef %0) #12
  br label %90

90:                                               ; preds = %88, %84
  %91 = load ptr, ptr %79, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = tail call i32 %91(ptr noundef %0, i32 noundef 0) #12
  br label %95

95:                                               ; preds = %93, %90
  %96 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 1
  %97 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 1, i32 15
  %98 = load i32, ptr %97, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(456) %96, ptr noundef align 4 dereferenceable(456) %59, i32 456, i1 false)
  %99 = icmp eq i32 %98, %61
  br i1 %99, label %122, label %100

100:                                              ; preds = %95
  %101 = load i32, ptr @debug, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.shut_down) #10
  br label %105

105:                                              ; preds = %103, %100
  %106 = tail call fastcc i32 @mpegts_stop(ptr noundef %63) #12
  switch i32 %61, label %1885 [
    i32 1, label %107
    i32 18, label %107
    i32 3, label %116
  ]

107:                                              ; preds = %105, %105
  %108 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 12
  %109 = load i8, ptr %108, align 2, !range !8
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %1885, label %111

111:                                              ; preds = %107
  %112 = icmp eq i32 %61, 18
  %113 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 54
  %114 = zext i1 %112 to i8
  store i8 %114, ptr %113, align 2
  %115 = select i1 %112, i32 3, i32 1
  br label %120

116:                                              ; preds = %105
  %117 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 11
  %118 = load i8, ptr %117, align 1, !range !8
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %1885, label %120

120:                                              ; preds = %116, %111
  %121 = phi i32 [ %115, %111 ], [ 4, %116 ]
  tail call fastcc void @setoperation_mode(ptr noundef %63, i32 noundef %121)
  br label %122

122:                                              ; preds = %120, %95
  %123 = load ptr, ptr %73, align 4
  %124 = call i32 %123(ptr noundef %0, ptr noundef nonnull %58) #12
  %125 = load i32, ptr %58, align 4
  %126 = load i32, ptr @debug, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %122
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.start) #10
  br label %130

130:                                              ; preds = %128, %122
  %131 = load i32, ptr %69, align 4
  %132 = add i32 %131, -1
  %133 = icmp ult i32 %132, 2
  br i1 %133, label %134, label %1873

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 1, i32 4
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %136, 1
  %138 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 71
  %139 = zext i1 %137 to i8
  store i8 %139, ptr %138, align 2
  %140 = icmp slt i32 %125, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = xor i1 %137, true
  %143 = zext i1 %142 to i8
  store i8 %143, ptr %138, align 2
  %144 = sub i32 0, %125
  br label %145

145:                                              ; preds = %141, %134
  %146 = phi i32 [ %144, %141 ], [ %125, %134 ]
  %147 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 28
  %148 = load i32, ptr %147, align 4
  switch i32 %148, label %1873 [
    i32 1, label %149
    i32 3, label %149
    i32 4, label %1331
  ]

149:                                              ; preds = %145, %145
  %150 = sdiv i32 %146, 1000
  %151 = trunc i32 %150 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #12
  store i16 0, ptr %57, align 2, !annotation !9
  %152 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 110
  %153 = load i32, ptr %152, align 4
  %154 = load i32, ptr @debug, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %149
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_qam) #10
  br label %158

158:                                              ; preds = %156, %149
  %159 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 4
  %160 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %56) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %56, i8 0, i32 6, i1 false) #12, !annotation !9
  %161 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 102
  %162 = load i8, ptr %161, align 1, !range !8
  %163 = icmp eq i8 %162, 0
  %164 = select i1 %163, i32 0, i32 192
  br i1 %163, label %169, label %165

165:                                              ; preds = %158
  store i8 1, ptr %56, align 1
  %166 = trunc i32 %164 to i8
  %167 = or i8 %166, 1
  %168 = getelementptr inbounds [6 x i8], ptr %56, i32 0, i32 2
  store i8 %167, ptr %168, align 1
  br label %169

169:                                              ; preds = %165, %158
  %170 = phi i8 [ -62, %165 ], [ 114, %158 ]
  %171 = phi i32 [ 4, %165 ], [ 2, %158 ]
  %172 = getelementptr inbounds [6 x i8], ptr %56, i32 0, i32 1
  store i8 %170, ptr %172, align 1
  %173 = getelementptr [6 x i8], ptr %56, i32 0, i32 %171
  store i8 0, ptr %173, align 1
  %174 = or i32 %171, 1
  %175 = getelementptr [6 x i8], ptr %56, i32 0, i32 %174
  store i8 0, ptr %175, align 1
  %176 = load i32, ptr @debug, align 4
  %177 = icmp ugt i32 %176, 1
  br i1 %177, label %178, label %180

178:                                              ; preds = %169
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29491200, i32 noundef 0, i32 noundef %164) #10
  br label %180

180:                                              ; preds = %178, %169
  %181 = add nuw nsw i32 %171, 2
  %182 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %160, ptr noundef nonnull %56, i32 noundef %181) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %56) #12
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %1327, label %184

184:                                              ; preds = %180
  %185 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %55) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %55, i8 0, i32 6, i1 false) #12, !annotation !9
  %186 = load i8, ptr %161, align 1, !range !8
  %187 = icmp eq i8 %186, 0
  %188 = select i1 %187, i32 0, i32 192
  br i1 %187, label %193, label %189

189:                                              ; preds = %184
  store i8 1, ptr %55, align 1
  %190 = trunc i32 %188 to i8
  %191 = or i8 %190, 1
  %192 = getelementptr inbounds [6 x i8], ptr %55, i32 0, i32 2
  store i8 %191, ptr %192, align 1
  br label %193

193:                                              ; preds = %189, %184
  %194 = phi i8 [ -61, %189 ], [ 115, %184 ]
  %195 = phi i32 [ 4, %189 ], [ 2, %184 ]
  %196 = getelementptr inbounds [6 x i8], ptr %55, i32 0, i32 1
  store i8 %194, ptr %196, align 1
  %197 = getelementptr [6 x i8], ptr %55, i32 0, i32 %195
  store i8 0, ptr %197, align 1
  %198 = or i32 %195, 1
  %199 = getelementptr [6 x i8], ptr %55, i32 0, i32 %198
  store i8 0, ptr %199, align 1
  %200 = load i32, ptr @debug, align 4
  %201 = icmp ugt i32 %200, 1
  br i1 %201, label %202, label %204

202:                                              ; preds = %193
  %203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29556736, i32 noundef 0, i32 noundef %188) #10
  br label %204

204:                                              ; preds = %202, %193
  %205 = add nuw nsw i32 %195, 2
  %206 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %185, ptr noundef nonnull %55, i32 noundef %205) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %55) #12
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %1327, label %208

208:                                              ; preds = %204
  %209 = call fastcc i32 @qam_reset_qam(ptr noundef %63) #12
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %1327, label %211

211:                                              ; preds = %208
  %212 = load i32, ptr @debug, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qam_set_symbolrate) #10
  br label %216

216:                                              ; preds = %214, %211
  %217 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 26
  %218 = load i32, ptr %217, align 4
  %219 = mul i32 %218, 1000
  %220 = sdiv i32 %219, 3
  %221 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 1, i32 10
  %222 = load i32, ptr %221, align 4
  %223 = icmp ult i32 %222, 1188751
  br i1 %223, label %229, label %224

224:                                              ; preds = %216
  %225 = icmp ult i32 %222, 2377501
  br i1 %225, label %229, label %226

226:                                              ; preds = %224
  %227 = icmp ult i32 %222, 4755001
  %228 = zext i1 %227 to i16
  br label %229

229:                                              ; preds = %226, %224, %216
  %230 = phi i16 [ 3, %216 ], [ 2, %224 ], [ %228, %226 ]
  %231 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %54) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %54, i8 0, i32 6, i1 false) #12, !annotation !9
  %232 = load i8, ptr %161, align 1, !range !8
  %233 = icmp eq i8 %232, 0
  %234 = select i1 %233, i32 0, i32 192
  br i1 %233, label %239, label %235

235:                                              ; preds = %229
  store i8 33, ptr %54, align 1
  %236 = trunc i32 %234 to i8
  %237 = or i8 %236, 1
  %238 = getelementptr inbounds [6 x i8], ptr %54, i32 0, i32 2
  store i8 %237, ptr %238, align 1
  br label %240

239:                                              ; preds = %229
  store i8 32, ptr %54, align 1
  br label %240

240:                                              ; preds = %239, %235
  %241 = phi i8 [ -125, %235 ], [ 99, %239 ]
  %242 = phi i32 [ 4, %235 ], [ 2, %239 ]
  %243 = getelementptr inbounds [6 x i8], ptr %54, i32 0, i32 1
  store i8 %241, ptr %243, align 1
  %244 = trunc i16 %230 to i8
  %245 = getelementptr [6 x i8], ptr %54, i32 0, i32 %242
  store i8 %244, ptr %245, align 1
  %246 = or i32 %242, 1
  %247 = getelementptr [6 x i8], ptr %54, i32 0, i32 %246
  store i8 0, ptr %247, align 1
  %248 = load i32, ptr @debug, align 4
  %249 = icmp ugt i32 %248, 1
  br i1 %249, label %250, label %253

250:                                              ; preds = %240
  %251 = zext i16 %230 to i32
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25362448, i32 noundef %251, i32 noundef %234) #10
  br label %253

253:                                              ; preds = %250, %240
  %254 = add nuw nsw i32 %242, 2
  %255 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %231, ptr noundef nonnull %54, i32 noundef %254) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %54) #12
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %460, label %257

257:                                              ; preds = %253
  %258 = load i32, ptr %221, align 4
  %259 = zext i16 %230 to i32
  %260 = shl i32 %258, %259
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %460, label %262

262:                                              ; preds = %257
  %263 = freeze i32 %220
  %264 = freeze i32 %260
  %265 = udiv i32 %263, %264
  %266 = shl i32 %265, 21
  %267 = mul i32 %265, %264
  %268 = sub i32 %263, %267
  %269 = shl i32 %268, 4
  %270 = freeze i32 %260
  %271 = udiv i32 %269, %270
  %272 = mul i32 %271, %270
  %273 = sub i32 %269, %272
  %274 = shl i32 %273, 4
  %275 = freeze i32 %274
  %276 = freeze i32 %260
  %277 = udiv i32 %275, %276
  %278 = mul i32 %277, %276
  %279 = sub i32 %275, %278
  %280 = shl i32 %279, 4
  %281 = freeze i32 %260
  %282 = udiv i32 %280, %281
  %283 = mul i32 %282, %281
  %284 = sub i32 %280, %283
  %285 = shl i32 %284, 4
  %286 = shl i32 %271, 12
  %287 = shl i32 %277, 8
  %288 = or i32 %287, %286
  %289 = shl i32 %282, 4
  %290 = or i32 %288, %289
  %291 = freeze i32 %285
  %292 = freeze i32 %260
  %293 = udiv i32 %291, %292
  %294 = or i32 %290, %293
  %295 = mul i32 %293, %292
  %296 = sub i32 %291, %295
  %297 = shl i32 %296, 4
  %298 = freeze i32 %260
  %299 = udiv i32 %297, %298
  %300 = mul i32 %299, %298
  %301 = sub i32 %297, %300
  %302 = shl i32 %301, 4
  %303 = shl i32 %294, 8
  %304 = shl i32 %299, 4
  %305 = or i32 %304, %303
  %306 = freeze i32 %302
  %307 = freeze i32 %260
  %308 = udiv i32 %306, %307
  %309 = or i32 %305, %308
  %310 = mul i32 %308, %307
  %311 = sub i32 %306, %310
  %312 = shl i32 %311, 4
  %313 = shl i32 %309, 4
  %314 = freeze i32 %260
  %315 = udiv i32 %312, %314
  %316 = or i32 %315, %313
  %317 = mul i32 %315, %314
  %318 = sub i32 %312, %317
  %319 = shl i32 %318, 1
  %320 = and i32 %319, 536870910
  %321 = icmp uge i32 %320, %260
  %322 = zext i1 %321 to i32
  %323 = add i32 %316, %322
  %324 = lshr i32 %323, 7
  %325 = add i32 %266, -8388608
  %326 = add i32 %325, %324
  %327 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %53) #12
  store i64 0, ptr %53, align 8, !annotation !9
  %328 = load i8, ptr %161, align 1, !range !8
  %329 = icmp eq i8 %328, 0
  %330 = select i1 %329, i32 0, i32 192
  br i1 %329, label %336, label %331

331:                                              ; preds = %262
  store i8 33, ptr %53, align 8
  %332 = trunc i32 %330 to i8
  %333 = or i8 %332, 1
  %334 = getelementptr inbounds [8 x i8], ptr %53, i32 0, i32 2
  store i8 %333, ptr %334, align 2
  %335 = getelementptr inbounds [8 x i8], ptr %53, i32 0, i32 3
  store i8 0, ptr %335, align 1
  br label %337

336:                                              ; preds = %262
  store i8 32, ptr %53, align 8
  br label %337

337:                                              ; preds = %336, %331
  %338 = phi i8 [ -124, %331 ], [ 100, %336 ]
  %339 = phi i32 [ 4, %331 ], [ 2, %336 ]
  %340 = getelementptr inbounds [8 x i8], ptr %53, i32 0, i32 1
  store i8 %338, ptr %340, align 1
  %341 = trunc i32 %326 to i8
  %342 = getelementptr [8 x i8], ptr %53, i32 0, i32 %339
  store i8 %341, ptr %342, align 2
  %343 = lshr i32 %326, 8
  %344 = trunc i32 %343 to i8
  %345 = or i32 %339, 1
  %346 = getelementptr [8 x i8], ptr %53, i32 0, i32 %345
  store i8 %344, ptr %346, align 1
  %347 = lshr i32 %326, 16
  %348 = trunc i32 %347 to i8
  %349 = add nuw nsw i32 %339, 2
  %350 = getelementptr [8 x i8], ptr %53, i32 0, i32 %349
  store i8 %348, ptr %350, align 2
  %351 = lshr i32 %326, 24
  %352 = trunc i32 %351 to i8
  %353 = add nuw nsw i32 %339, 3
  %354 = getelementptr [8 x i8], ptr %53, i32 0, i32 %353
  store i8 %352, ptr %354, align 1
  %355 = load i32, ptr @debug, align 4
  %356 = icmp ugt i32 %355, 1
  br i1 %356, label %357, label %359

357:                                              ; preds = %337
  %358 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.write32_flags, i32 noundef 25427984, i32 noundef %326, i32 noundef %330) #10
  br label %359

359:                                              ; preds = %357, %337
  %360 = add nuw nsw i32 %339, 4
  %361 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %327, ptr noundef nonnull %53, i32 noundef %360) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %53) #12
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %460, label %363

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 97
  store i32 %326, ptr %364, align 4
  %365 = or i32 %219, 2
  %366 = icmp ult i32 %365, 5
  br i1 %366, label %460, label %367

367:                                              ; preds = %363
  %368 = load i32, ptr %221, align 4
  %369 = freeze i32 %368
  %370 = freeze i32 %220
  %371 = udiv i32 %369, %370
  %372 = shl i32 %371, 12
  %373 = mul i32 %371, %370
  %374 = sub i32 %369, %373
  %375 = shl i32 %374, 4
  %376 = freeze i32 %220
  %377 = udiv i32 %375, %376
  %378 = mul i32 %377, %376
  %379 = sub i32 %375, %378
  %380 = shl i32 %379, 4
  %381 = freeze i32 %380
  %382 = freeze i32 %220
  %383 = udiv i32 %381, %382
  %384 = mul i32 %383, %382
  %385 = sub i32 %381, %384
  %386 = shl i32 %385, 4
  %387 = freeze i32 %220
  %388 = udiv i32 %386, %387
  %389 = mul i32 %388, %387
  %390 = sub i32 %386, %389
  %391 = shl i32 %390, 4
  %392 = shl i32 %377, 12
  %393 = shl i32 %383, 8
  %394 = or i32 %393, %392
  %395 = shl i32 %388, 4
  %396 = or i32 %394, %395
  %397 = freeze i32 %391
  %398 = freeze i32 %220
  %399 = udiv i32 %397, %398
  %400 = or i32 %396, %399
  %401 = mul i32 %399, %398
  %402 = sub i32 %397, %401
  %403 = shl i32 %402, 4
  %404 = freeze i32 %220
  %405 = udiv i32 %403, %404
  %406 = mul i32 %405, %404
  %407 = sub i32 %403, %406
  %408 = shl i32 %407, 4
  %409 = shl i32 %400, 8
  %410 = shl i32 %405, 4
  %411 = or i32 %410, %409
  %412 = freeze i32 %408
  %413 = freeze i32 %220
  %414 = udiv i32 %412, %413
  %415 = or i32 %411, %414
  %416 = mul i32 %414, %413
  %417 = sub i32 %412, %416
  %418 = shl i32 %417, 4
  %419 = shl i32 %415, 4
  %420 = freeze i32 %220
  %421 = udiv i32 %418, %420
  %422 = or i32 %421, %419
  %423 = mul i32 %421, %420
  %424 = sub i32 %418, %423
  %425 = shl i32 %424, 1
  %426 = and i32 %425, 536870910
  %427 = icmp uge i32 %426, %220
  %428 = zext i1 %427 to i32
  %429 = add i32 %422, %428
  %430 = lshr i32 %429, 16
  %431 = add i32 %430, %372
  %432 = call i32 @llvm.umin.i32(i32 %431, i32 511) #12
  %433 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %52) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %52, i8 0, i32 6, i1 false) #12, !annotation !9
  %434 = load i8, ptr %161, align 1, !range !8
  %435 = icmp eq i8 %434, 0
  %436 = select i1 %435, i32 0, i32 192
  br i1 %435, label %441, label %437

437:                                              ; preds = %367
  store i8 87, ptr %52, align 1
  %438 = trunc i32 %436 to i8
  %439 = or i8 %438, 1
  %440 = getelementptr inbounds [6 x i8], ptr %52, i32 0, i32 2
  store i8 %439, ptr %440, align 1
  br label %442

441:                                              ; preds = %367
  store i8 86, ptr %52, align 1
  br label %442

442:                                              ; preds = %441, %437
  %443 = phi i8 [ 69, %437 ], [ 85, %441 ]
  %444 = phi i32 [ 4, %437 ], [ 2, %441 ]
  %445 = getelementptr inbounds [6 x i8], ptr %52, i32 0, i32 1
  store i8 %443, ptr %445, align 1
  %446 = trunc i32 %432 to i8
  %447 = getelementptr [6 x i8], ptr %52, i32 0, i32 %444
  store i8 %446, ptr %447, align 1
  %448 = lshr i32 %432, 8
  %449 = trunc i32 %448 to i8
  %450 = or i32 %444, 1
  %451 = getelementptr [6 x i8], ptr %52, i32 0, i32 %450
  store i8 %449, ptr %451, align 1
  %452 = load i32, ptr @debug, align 4
  %453 = icmp ugt i32 %452, 1
  br i1 %453, label %454, label %456

454:                                              ; preds = %442
  %455 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299243, i32 noundef %432, i32 noundef %436) #10
  br label %456

456:                                              ; preds = %454, %442
  %457 = add nuw nsw i32 %444, 2
  %458 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %433, ptr noundef nonnull %52, i32 noundef %457) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %52) #12
  %459 = icmp slt i32 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %456, %363, %359, %257, %253
  %461 = phi i32 [ %458, %456 ], [ -22, %363 ], [ -22, %257 ], [ %361, %359 ], [ %255, %253 ]
  %462 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %461, ptr noundef nonnull @__func__.qam_set_symbolrate) #10
  br label %1327

463:                                              ; preds = %456
  %464 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 1, i32 1
  %465 = load i32, ptr %464, align 4
  %466 = add i32 %465, -1
  %467 = icmp ult i32 %466, 6
  br i1 %467, label %468, label %1327

468:                                              ; preds = %463
  %469 = getelementptr inbounds [6 x i32], ptr @switch.table.drxk_set_parameters, i32 0, i32 %466
  %470 = load i32, ptr %469, align 4
  %471 = getelementptr inbounds [6 x i16], ptr @switch.table.drxk_set_parameters.60, i32 0, i32 %466
  %472 = load i16, ptr %471, align 2
  %473 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 72
  store i32 %470, ptr %473, align 4
  %474 = load i32, ptr %152, align 4
  switch i32 %474, label %486 [
    i32 4, label %475
    i32 0, label %475
  ]

475:                                              ; preds = %468, %468
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %50) #12
  store i16 0, ptr %50, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %51) #12
  store i64 562949954469888, ptr %51, align 8
  store i16 %472, ptr %51, align 8
  %476 = load i32, ptr %147, align 4
  %477 = icmp eq i32 %476, 3
  %478 = select i1 %477, i16 2, i16 0
  %479 = getelementptr inbounds [4 x i16], ptr %51, i32 0, i32 2
  store i16 %478, ptr %479, align 4
  %480 = call fastcc i32 @scu_command(ptr noundef %63, i16 noundef zeroext 515, i8 noundef zeroext 4, ptr noundef nonnull %51, i8 noundef zeroext 1, ptr noundef nonnull %50) #12
  %481 = icmp slt i32 %480, 0
  br i1 %481, label %482, label %484

482:                                              ; preds = %475
  %483 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %480, ptr noundef nonnull @__func__.qam_demodulator_command) #10
  br label %484

484:                                              ; preds = %482, %475
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %51) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %50) #12
  %485 = load i32, ptr %152, align 4
  br label %486

486:                                              ; preds = %484, %468
  %487 = phi i32 [ %474, %468 ], [ %485, %484 ]
  %488 = phi i32 [ %153, %468 ], [ 4, %484 ]
  %489 = phi i32 [ %458, %468 ], [ %480, %484 ]
  %490 = icmp eq i32 %487, 2
  br i1 %490, label %495, label %491

491:                                              ; preds = %486
  %492 = icmp eq i32 %487, 0
  %493 = icmp slt i32 %489, 0
  %494 = select i1 %492, i1 %493, i1 false
  br i1 %494, label %495, label %512

495:                                              ; preds = %491, %486
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #12
  store i16 0, ptr %47, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %48) #12
  store i64 1048576, ptr %48, align 8
  %496 = load i32, ptr %473, align 4
  %497 = trunc i32 %496 to i16
  store i16 %497, ptr %48, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #12
  %498 = load i32, ptr %147, align 4
  %499 = icmp eq i32 %498, 3
  %500 = select i1 %499, i16 2, i16 0
  store i16 %500, ptr %49, align 2
  %501 = call fastcc i32 @scu_command(ptr noundef %63, i16 noundef zeroext 514, i8 noundef zeroext 1, ptr noundef nonnull %49, i8 noundef zeroext 1, ptr noundef nonnull %47) #12
  %502 = icmp slt i32 %501, 0
  br i1 %502, label %503, label %504

503:                                              ; preds = %495
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #12
  br label %507

504:                                              ; preds = %495
  %505 = call fastcc i32 @scu_command(ptr noundef %63, i16 noundef zeroext 515, i8 noundef zeroext 2, ptr noundef nonnull %48, i8 noundef zeroext 1, ptr noundef nonnull %47) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #12
  %506 = icmp slt i32 %505, 0
  br i1 %506, label %507, label %510

507:                                              ; preds = %504, %503
  %508 = phi i32 [ %501, %503 ], [ %505, %504 ]
  %509 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %508, ptr noundef nonnull @__func__.qam_demodulator_command) #10
  br label %510

510:                                              ; preds = %507, %504
  %511 = phi i32 [ %505, %504 ], [ %508, %507 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %48) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #12
  br label %512

512:                                              ; preds = %510, %491
  %513 = phi i32 [ 2, %510 ], [ %488, %491 ]
  %514 = phi i32 [ %511, %510 ], [ %489, %491 ]
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %516, label %528

516:                                              ; preds = %512
  %517 = load i32, ptr @debug, align 4
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %1327, label %519

519:                                              ; preds = %516
  %520 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.set_qam) #10
  %521 = load i32, ptr @debug, align 4
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %1327, label %523

523:                                              ; preds = %519
  %524 = load i32, ptr %152, align 4
  %525 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 107
  %526 = load ptr, ptr %525, align 4
  %527 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.set_qam, i32 noundef %524, ptr noundef %526) #10
  br label %1327

528:                                              ; preds = %512
  %529 = load i32, ptr %152, align 4
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %537

531:                                              ; preds = %528
  %532 = load i32, ptr @debug, align 4
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %536, label %534

534:                                              ; preds = %531
  %535 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.set_qam, i32 noundef %513) #10
  br label %536

536:                                              ; preds = %534, %531
  store i32 %513, ptr %152, align 4
  br label %537

537:                                              ; preds = %536, %528
  %538 = call fastcc i32 @set_frequency_shifter(ptr noundef %63, i16 noundef zeroext %151) #12
  %539 = icmp slt i32 %538, 0
  br i1 %539, label %1327, label %540

540:                                              ; preds = %537
  %541 = load i32, ptr %473, align 4
  %542 = load i32, ptr %221, align 4
  %543 = load i32, ptr @debug, align 4
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %547, label %545

545:                                              ; preds = %540
  %546 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_qam_measurement) #10
  br label %547

547:                                              ; preds = %545, %540
  switch i32 %541, label %652 [
    i32 3, label %548
    i32 4, label %550
    i32 5, label %552
    i32 6, label %554
    i32 7, label %556
  ]

548:                                              ; preds = %547
  %549 = shl i32 %542, 2
  br label %558

550:                                              ; preds = %547
  %551 = mul i32 %542, 5
  br label %558

552:                                              ; preds = %547
  %553 = mul i32 %542, 6
  br label %558

554:                                              ; preds = %547
  %555 = mul i32 %542, 7
  br label %558

556:                                              ; preds = %547
  %557 = shl i32 %542, 3
  br label %558

558:                                              ; preds = %556, %554, %552, %550, %548
  %559 = phi i32 [ %549, %548 ], [ %551, %550 ], [ %553, %552 ], [ %555, %554 ], [ %557, %556 ]
  %560 = udiv i32 %559, 1000
  %561 = mul nuw nsw i32 %560, 500
  %562 = udiv i32 %561, 1632
  %563 = add nuw nsw i32 %562, 1
  %564 = lshr i32 %563, 16
  %565 = trunc i32 %564 to i16
  %566 = add nuw nsw i16 %565, 1
  %567 = zext i16 %566 to i32
  %568 = and i32 %563, 65535
  %569 = lshr i32 %567, 1
  %570 = add nuw nsw i32 %569, %568
  %571 = udiv i32 %570, %567
  %572 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %46) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %46, i8 0, i32 6, i1 false) #12, !annotation !9
  %573 = load i8, ptr %161, align 1, !range !8
  %574 = icmp eq i8 %573, 0
  %575 = select i1 %574, i32 0, i32 192
  br i1 %574, label %580, label %576

576:                                              ; preds = %558
  store i8 37, ptr %46, align 1
  %577 = trunc i32 %575 to i8
  %578 = or i8 %577, 1
  %579 = getelementptr inbounds [6 x i8], ptr %46, i32 0, i32 2
  store i8 %578, ptr %579, align 1
  br label %581

580:                                              ; preds = %558
  store i8 36, ptr %46, align 1
  br label %581

581:                                              ; preds = %580, %576
  %582 = phi i8 [ -61, %576 ], [ 115, %580 ]
  %583 = phi i32 [ 4, %576 ], [ 2, %580 ]
  %584 = getelementptr inbounds [6 x i8], ptr %46, i32 0, i32 1
  store i8 %582, ptr %584, align 1
  %585 = trunc i32 %571 to i8
  %586 = getelementptr [6 x i8], ptr %46, i32 0, i32 %583
  store i8 %585, ptr %586, align 1
  %587 = lshr i32 %571, 8
  %588 = trunc i32 %587 to i8
  %589 = or i32 %583, 1
  %590 = getelementptr [6 x i8], ptr %46, i32 0, i32 %589
  store i8 %588, ptr %590, align 1
  %591 = load i32, ptr @debug, align 4
  %592 = icmp ugt i32 %591, 1
  br i1 %592, label %593, label %596

593:                                              ; preds = %581
  %594 = and i32 %571, 65535
  %595 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29556754, i32 noundef %594, i32 noundef %575) #10
  br label %596

596:                                              ; preds = %593, %581
  %597 = add nuw nsw i32 %583, 2
  %598 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %572, ptr noundef nonnull %46, i32 noundef %597) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %46) #12
  %599 = icmp slt i32 %598, 0
  br i1 %599, label %652, label %600

600:                                              ; preds = %596
  %601 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %45) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %45, i8 0, i32 6, i1 false) #12, !annotation !9
  %602 = load i8, ptr %161, align 1, !range !8
  %603 = icmp eq i8 %602, 0
  %604 = select i1 %603, i32 0, i32 192
  br i1 %603, label %609, label %605

605:                                              ; preds = %600
  store i8 39, ptr %45, align 1
  %606 = trunc i32 %604 to i8
  %607 = or i8 %606, 1
  %608 = getelementptr inbounds [6 x i8], ptr %45, i32 0, i32 2
  store i8 %607, ptr %608, align 1
  br label %610

609:                                              ; preds = %600
  store i8 38, ptr %45, align 1
  br label %610

610:                                              ; preds = %609, %605
  %611 = phi i8 [ -61, %605 ], [ 115, %609 ]
  %612 = phi i32 [ 4, %605 ], [ 2, %609 ]
  %613 = getelementptr inbounds [6 x i8], ptr %45, i32 0, i32 1
  store i8 %611, ptr %613, align 1
  %614 = trunc i16 %566 to i8
  %615 = getelementptr [6 x i8], ptr %45, i32 0, i32 %612
  store i8 %614, ptr %615, align 1
  %616 = or i32 %612, 1
  %617 = getelementptr [6 x i8], ptr %45, i32 0, i32 %616
  store i8 0, ptr %617, align 1
  %618 = load i32, ptr @debug, align 4
  %619 = icmp ugt i32 %618, 1
  br i1 %619, label %620, label %622

620:                                              ; preds = %610
  %621 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29556755, i32 noundef %567, i32 noundef %604) #10
  br label %622

622:                                              ; preds = %620, %610
  %623 = add nuw nsw i32 %612, 2
  %624 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %601, ptr noundef nonnull %45, i32 noundef %623) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %45) #12
  %625 = icmp slt i32 %624, 0
  br i1 %625, label %652, label %626

626:                                              ; preds = %622
  %627 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %44) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %44, i8 0, i32 6, i1 false) #12, !annotation !9
  %628 = load i8, ptr %161, align 1, !range !8
  %629 = icmp eq i8 %628, 0
  %630 = select i1 %629, i32 0, i32 192
  br i1 %629, label %635, label %631

631:                                              ; preds = %626
  store i8 -115, ptr %44, align 1
  %632 = trunc i32 %630 to i8
  %633 = or i8 %632, 1
  %634 = getelementptr inbounds [6 x i8], ptr %44, i32 0, i32 2
  store i8 %633, ptr %634, align 1
  br label %636

635:                                              ; preds = %626
  store i8 -116, ptr %44, align 1
  br label %636

636:                                              ; preds = %635, %631
  %637 = phi i8 [ -60, %631 ], [ 116, %635 ]
  %638 = phi i32 [ 4, %631 ], [ 2, %635 ]
  %639 = getelementptr inbounds [6 x i8], ptr %44, i32 0, i32 1
  store i8 %637, ptr %639, align 1
  %640 = getelementptr [6 x i8], ptr %44, i32 0, i32 %638
  store i8 %585, ptr %640, align 1
  %641 = or i32 %638, 1
  %642 = getelementptr [6 x i8], ptr %44, i32 0, i32 %641
  store i8 %588, ptr %642, align 1
  %643 = load i32, ptr @debug, align 4
  %644 = icmp ugt i32 %643, 1
  br i1 %644, label %645, label %648

645:                                              ; preds = %636
  %646 = and i32 %571, 65535
  %647 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622342, i32 noundef %646, i32 noundef %630) #10
  br label %648

648:                                              ; preds = %645, %636
  %649 = add nuw nsw i32 %638, 2
  %650 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %627, ptr noundef nonnull %44, i32 noundef %649) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %44) #12
  %651 = icmp slt i32 %650, 0
  br i1 %651, label %652, label %655

652:                                              ; preds = %648, %622, %596, %547
  %653 = phi i32 [ %650, %648 ], [ -22, %547 ], [ %624, %622 ], [ %598, %596 ]
  %654 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %653, ptr noundef nonnull @__func__.set_qam_measurement) #10
  br label %1327

655:                                              ; preds = %648
  %656 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %43) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %43, i8 0, i32 6, i1 false) #12, !annotation !9
  %657 = load i8, ptr %161, align 1, !range !8
  %658 = icmp eq i8 %657, 0
  %659 = select i1 %658, i32 0, i32 192
  br i1 %658, label %664, label %660

660:                                              ; preds = %655
  store i8 43, ptr %43, align 1
  %661 = trunc i32 %659 to i8
  %662 = or i8 %661, 1
  %663 = getelementptr inbounds [6 x i8], ptr %43, i32 0, i32 2
  store i8 %662, ptr %663, align 1
  br label %665

664:                                              ; preds = %655
  store i8 42, ptr %43, align 1
  br label %665

665:                                              ; preds = %664, %660
  %666 = phi i8 [ -122, %660 ], [ 102, %664 ]
  %667 = phi i32 [ 4, %660 ], [ 2, %664 ]
  %668 = getelementptr inbounds [6 x i8], ptr %43, i32 0, i32 1
  store i8 %666, ptr %668, align 1
  %669 = getelementptr [6 x i8], ptr %43, i32 0, i32 %667
  store i8 0, ptr %669, align 1
  %670 = or i32 %667, 1
  %671 = getelementptr [6 x i8], ptr %43, i32 0, i32 %670
  store i8 0, ptr %671, align 1
  %672 = load i32, ptr @debug, align 4
  %673 = icmp ugt i32 %672, 1
  br i1 %673, label %674, label %676

674:                                              ; preds = %665
  %675 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25559061, i32 noundef 0, i32 noundef %659) #10
  br label %676

676:                                              ; preds = %674, %665
  %677 = add nuw nsw i32 %667, 2
  %678 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %656, ptr noundef nonnull %43, i32 noundef %677) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %43) #12
  %679 = icmp slt i32 %678, 0
  br i1 %679, label %1327, label %680

680:                                              ; preds = %676
  %681 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %10, i8 0, i32 6, i1 false) #12, !annotation !9
  %682 = load i8, ptr %161, align 1, !range !8
  %683 = icmp eq i8 %682, 0
  %684 = select i1 %683, i32 0, i32 192
  br i1 %683, label %689, label %685

685:                                              ; preds = %680
  store i8 35, ptr %10, align 1
  %686 = trunc i32 %684 to i8
  %687 = or i8 %686, 1
  %688 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %687, ptr %688, align 1
  br label %690

689:                                              ; preds = %680
  store i8 34, ptr %10, align 1
  br label %690

690:                                              ; preds = %689, %685
  %691 = phi i8 [ 71, %685 ], [ 87, %689 ]
  %692 = phi i32 [ 4, %685 ], [ 2, %689 ]
  %693 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 %691, ptr %693, align 1
  %694 = getelementptr [6 x i8], ptr %10, i32 0, i32 %692
  store i8 -104, ptr %694, align 1
  %695 = or i32 %692, 1
  %696 = getelementptr [6 x i8], ptr %10, i32 0, i32 %695
  store i8 58, ptr %696, align 1
  %697 = load i32, ptr @debug, align 4
  %698 = icmp ugt i32 %697, 1
  br i1 %698, label %699, label %701

699:                                              ; preds = %690
  %700 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21430289, i32 noundef 15000, i32 noundef %684) #10
  br label %701

701:                                              ; preds = %699, %690
  %702 = add nuw nsw i32 %692, 2
  %703 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %681, ptr noundef nonnull %10, i32 noundef %702) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %704 = icmp slt i32 %703, 0
  br i1 %704, label %1327, label %705

705:                                              ; preds = %701
  %706 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %11, i8 0, i32 6, i1 false) #12, !annotation !9
  %707 = load i8, ptr %161, align 1, !range !8
  %708 = icmp eq i8 %707, 0
  %709 = select i1 %708, i32 0, i32 192
  br i1 %708, label %714, label %710

710:                                              ; preds = %705
  store i8 85, ptr %11, align 1
  %711 = trunc i32 %709 to i8
  %712 = or i8 %711, 1
  %713 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 2
  store i8 %712, ptr %713, align 1
  br label %715

714:                                              ; preds = %705
  store i8 84, ptr %11, align 1
  br label %715

715:                                              ; preds = %714, %710
  %716 = phi i8 [ 69, %710 ], [ 85, %714 ]
  %717 = phi i32 [ 4, %710 ], [ 2, %714 ]
  %718 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 1
  store i8 %716, ptr %718, align 1
  %719 = getelementptr [6 x i8], ptr %11, i32 0, i32 %717
  store i8 3, ptr %719, align 1
  %720 = or i32 %717, 1
  %721 = getelementptr [6 x i8], ptr %11, i32 0, i32 %720
  store i8 0, ptr %721, align 1
  %722 = load i32, ptr @debug, align 4
  %723 = icmp ugt i32 %722, 1
  br i1 %723, label %724, label %726

724:                                              ; preds = %715
  %725 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299242, i32 noundef 3, i32 noundef %709) #10
  br label %726

726:                                              ; preds = %724, %715
  %727 = add nuw nsw i32 %717, 2
  %728 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %706, ptr noundef nonnull %11, i32 noundef %727) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #12
  %729 = icmp slt i32 %728, 0
  br i1 %729, label %1327, label %730

730:                                              ; preds = %726
  %731 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %12) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %12, i8 0, i32 6, i1 false) #12, !annotation !9
  %732 = load i8, ptr %161, align 1, !range !8
  %733 = icmp eq i8 %732, 0
  %734 = select i1 %733, i32 0, i32 192
  br i1 %733, label %739, label %735

735:                                              ; preds = %730
  store i8 81, ptr %12, align 1
  %736 = trunc i32 %734 to i8
  %737 = or i8 %736, 1
  %738 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 2
  store i8 %737, ptr %738, align 1
  br label %740

739:                                              ; preds = %730
  store i8 80, ptr %12, align 1
  br label %740

740:                                              ; preds = %739, %735
  %741 = phi i8 [ 69, %735 ], [ 85, %739 ]
  %742 = phi i32 [ 4, %735 ], [ 2, %739 ]
  %743 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 1
  store i8 %741, ptr %743, align 1
  %744 = getelementptr [6 x i8], ptr %12, i32 0, i32 %742
  store i8 4, ptr %744, align 1
  %745 = or i32 %742, 1
  %746 = getelementptr [6 x i8], ptr %12, i32 0, i32 %745
  store i8 0, ptr %746, align 1
  %747 = load i32, ptr @debug, align 4
  %748 = icmp ugt i32 %747, 1
  br i1 %748, label %749, label %751

749:                                              ; preds = %740
  %750 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299240, i32 noundef 4, i32 noundef %734) #10
  br label %751

751:                                              ; preds = %749, %740
  %752 = add nuw nsw i32 %742, 2
  %753 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %731, ptr noundef nonnull %12, i32 noundef %752) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12) #12
  %754 = icmp slt i32 %753, 0
  br i1 %754, label %1327, label %755

755:                                              ; preds = %751
  %756 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %13) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %13, i8 0, i32 6, i1 false) #12, !annotation !9
  %757 = load i8, ptr %161, align 1, !range !8
  %758 = icmp eq i8 %757, 0
  %759 = select i1 %758, i32 0, i32 192
  br i1 %758, label %764, label %760

760:                                              ; preds = %755
  store i8 83, ptr %13, align 1
  %761 = trunc i32 %759 to i8
  %762 = or i8 %761, 1
  %763 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 2
  store i8 %762, ptr %763, align 1
  br label %765

764:                                              ; preds = %755
  store i8 82, ptr %13, align 1
  br label %765

765:                                              ; preds = %764, %760
  %766 = phi i8 [ 69, %760 ], [ 85, %764 ]
  %767 = phi i32 [ 4, %760 ], [ 2, %764 ]
  %768 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 1
  store i8 %766, ptr %768, align 1
  %769 = getelementptr [6 x i8], ptr %13, i32 0, i32 %767
  store i8 4, ptr %769, align 1
  %770 = or i32 %767, 1
  %771 = getelementptr [6 x i8], ptr %13, i32 0, i32 %770
  store i8 0, ptr %771, align 1
  %772 = load i32, ptr @debug, align 4
  %773 = icmp ugt i32 %772, 1
  br i1 %773, label %774, label %776

774:                                              ; preds = %765
  %775 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299241, i32 noundef 4, i32 noundef %759) #10
  br label %776

776:                                              ; preds = %774, %765
  %777 = add nuw nsw i32 %767, 2
  %778 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %756, ptr noundef nonnull %13, i32 noundef %777) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %13) #12
  %779 = icmp slt i32 %778, 0
  br i1 %779, label %1327, label %780

780:                                              ; preds = %776
  %781 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %14) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %14, i8 0, i32 6, i1 false) #12, !annotation !9
  %782 = load i8, ptr %161, align 1, !range !8
  %783 = icmp eq i8 %782, 0
  %784 = select i1 %783, i32 0, i32 192
  br i1 %783, label %789, label %785

785:                                              ; preds = %780
  store i8 33, ptr %14, align 1
  %786 = trunc i32 %784 to i8
  %787 = or i8 %786, 1
  %788 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 2
  store i8 %787, ptr %788, align 1
  br label %790

789:                                              ; preds = %780
  store i8 32, ptr %14, align 1
  br label %790

790:                                              ; preds = %789, %785
  %791 = phi i8 [ 69, %785 ], [ 85, %789 ]
  %792 = phi i32 [ 4, %785 ], [ 2, %789 ]
  %793 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 1
  store i8 %791, ptr %793, align 1
  %794 = getelementptr [6 x i8], ptr %14, i32 0, i32 %792
  store i8 7, ptr %794, align 1
  %795 = or i32 %792, 1
  %796 = getelementptr [6 x i8], ptr %14, i32 0, i32 %795
  store i8 0, ptr %796, align 1
  %797 = load i32, ptr @debug, align 4
  %798 = icmp ugt i32 %797, 1
  br i1 %798, label %799, label %801

799:                                              ; preds = %790
  %800 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299216, i32 noundef 7, i32 noundef %784) #10
  br label %801

801:                                              ; preds = %799, %790
  %802 = add nuw nsw i32 %792, 2
  %803 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %781, ptr noundef nonnull %14, i32 noundef %802) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #12
  %804 = icmp slt i32 %803, 0
  br i1 %804, label %1327, label %805

805:                                              ; preds = %801
  %806 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %15) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %15, i8 0, i32 6, i1 false) #12, !annotation !9
  %807 = load i8, ptr %161, align 1, !range !8
  %808 = icmp eq i8 %807, 0
  %809 = select i1 %808, i32 0, i32 192
  br i1 %808, label %814, label %810

810:                                              ; preds = %805
  store i8 49, ptr %15, align 1
  %811 = trunc i32 %809 to i8
  %812 = or i8 %811, 1
  %813 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 2
  store i8 %812, ptr %813, align 1
  br label %815

814:                                              ; preds = %805
  store i8 48, ptr %15, align 1
  br label %815

815:                                              ; preds = %814, %810
  %816 = phi i8 [ 69, %810 ], [ 85, %814 ]
  %817 = phi i32 [ 4, %810 ], [ 2, %814 ]
  %818 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 1
  store i8 %816, ptr %818, align 1
  %819 = getelementptr [6 x i8], ptr %15, i32 0, i32 %817
  store i8 1, ptr %819, align 1
  %820 = or i32 %817, 1
  %821 = getelementptr [6 x i8], ptr %15, i32 0, i32 %820
  store i8 0, ptr %821, align 1
  %822 = load i32, ptr @debug, align 4
  %823 = icmp ugt i32 %822, 1
  br i1 %823, label %824, label %826

824:                                              ; preds = %815
  %825 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299224, i32 noundef 1, i32 noundef %809) #10
  br label %826

826:                                              ; preds = %824, %815
  %827 = add nuw nsw i32 %817, 2
  %828 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %806, ptr noundef nonnull %15, i32 noundef %827) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %15) #12
  %829 = icmp slt i32 %828, 0
  br i1 %829, label %1327, label %830

830:                                              ; preds = %826
  %831 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %16) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %16, i8 0, i32 6, i1 false) #12, !annotation !9
  %832 = load i8, ptr %161, align 1, !range !8
  %833 = icmp eq i8 %832, 0
  %834 = select i1 %833, i32 0, i32 192
  br i1 %833, label %839, label %835

835:                                              ; preds = %830
  store i8 51, ptr %16, align 1
  %836 = trunc i32 %834 to i8
  %837 = or i8 %836, 1
  %838 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 2
  store i8 %837, ptr %838, align 1
  br label %840

839:                                              ; preds = %830
  store i8 50, ptr %16, align 1
  br label %840

840:                                              ; preds = %839, %835
  %841 = phi i8 [ 69, %835 ], [ 85, %839 ]
  %842 = phi i32 [ 4, %835 ], [ 2, %839 ]
  %843 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 1
  store i8 %841, ptr %843, align 1
  %844 = getelementptr [6 x i8], ptr %16, i32 0, i32 %842
  store i8 1, ptr %844, align 1
  %845 = or i32 %842, 1
  %846 = getelementptr [6 x i8], ptr %16, i32 0, i32 %845
  store i8 0, ptr %846, align 1
  %847 = load i32, ptr @debug, align 4
  %848 = icmp ugt i32 %847, 1
  br i1 %848, label %849, label %851

849:                                              ; preds = %840
  %850 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299225, i32 noundef 1, i32 noundef %834) #10
  br label %851

851:                                              ; preds = %849, %840
  %852 = add nuw nsw i32 %842, 2
  %853 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %831, ptr noundef nonnull %16, i32 noundef %852) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %16) #12
  %854 = icmp slt i32 %853, 0
  br i1 %854, label %1327, label %855

855:                                              ; preds = %851
  %856 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %17) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %17, i8 0, i32 6, i1 false) #12, !annotation !9
  %857 = load i8, ptr %161, align 1, !range !8
  %858 = icmp eq i8 %857, 0
  %859 = select i1 %858, i32 0, i32 192
  br i1 %858, label %864, label %860

860:                                              ; preds = %855
  store i8 53, ptr %17, align 1
  %861 = trunc i32 %859 to i8
  %862 = or i8 %861, 1
  %863 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 2
  store i8 %862, ptr %863, align 1
  br label %865

864:                                              ; preds = %855
  store i8 52, ptr %17, align 1
  br label %865

865:                                              ; preds = %864, %860
  %866 = phi i8 [ 69, %860 ], [ 85, %864 ]
  %867 = phi i32 [ 4, %860 ], [ 2, %864 ]
  %868 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 1
  store i8 %866, ptr %868, align 1
  %869 = getelementptr [6 x i8], ptr %17, i32 0, i32 %867
  store i8 1, ptr %869, align 1
  %870 = or i32 %867, 1
  %871 = getelementptr [6 x i8], ptr %17, i32 0, i32 %870
  store i8 0, ptr %871, align 1
  %872 = load i32, ptr @debug, align 4
  %873 = icmp ugt i32 %872, 1
  br i1 %873, label %874, label %876

874:                                              ; preds = %865
  %875 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299226, i32 noundef 1, i32 noundef %859) #10
  br label %876

876:                                              ; preds = %874, %865
  %877 = add nuw nsw i32 %867, 2
  %878 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %856, ptr noundef nonnull %17, i32 noundef %877) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %17) #12
  %879 = icmp slt i32 %878, 0
  br i1 %879, label %1327, label %880

880:                                              ; preds = %876
  %881 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %18) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %18, i8 0, i32 6, i1 false) #12, !annotation !9
  %882 = load i8, ptr %161, align 1, !range !8
  %883 = icmp eq i8 %882, 0
  %884 = select i1 %883, i32 0, i32 192
  br i1 %883, label %889, label %885

885:                                              ; preds = %880
  store i8 55, ptr %18, align 1
  %886 = trunc i32 %884 to i8
  %887 = or i8 %886, 1
  %888 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 2
  store i8 %887, ptr %888, align 1
  br label %890

889:                                              ; preds = %880
  store i8 54, ptr %18, align 1
  br label %890

890:                                              ; preds = %889, %885
  %891 = phi i8 [ 69, %885 ], [ 85, %889 ]
  %892 = phi i32 [ 4, %885 ], [ 2, %889 ]
  %893 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 1
  store i8 %891, ptr %893, align 1
  %894 = getelementptr [6 x i8], ptr %18, i32 0, i32 %892
  store i8 1, ptr %894, align 1
  %895 = or i32 %892, 1
  %896 = getelementptr [6 x i8], ptr %18, i32 0, i32 %895
  store i8 0, ptr %896, align 1
  %897 = load i32, ptr @debug, align 4
  %898 = icmp ugt i32 %897, 1
  br i1 %898, label %899, label %901

899:                                              ; preds = %890
  %900 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299227, i32 noundef 1, i32 noundef %884) #10
  br label %901

901:                                              ; preds = %899, %890
  %902 = add nuw nsw i32 %892, 2
  %903 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %881, ptr noundef nonnull %18, i32 noundef %902) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %18) #12
  %904 = icmp slt i32 %903, 0
  br i1 %904, label %1327, label %905

905:                                              ; preds = %901
  %906 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %19) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %19, i8 0, i32 6, i1 false) #12, !annotation !9
  %907 = load i8, ptr %161, align 1, !range !8
  %908 = icmp eq i8 %907, 0
  %909 = select i1 %908, i32 0, i32 192
  br i1 %908, label %914, label %910

910:                                              ; preds = %905
  store i8 57, ptr %19, align 1
  %911 = trunc i32 %909 to i8
  %912 = or i8 %911, 1
  %913 = getelementptr inbounds [6 x i8], ptr %19, i32 0, i32 2
  store i8 %912, ptr %913, align 1
  br label %915

914:                                              ; preds = %905
  store i8 56, ptr %19, align 1
  br label %915

915:                                              ; preds = %914, %910
  %916 = phi i8 [ 69, %910 ], [ 85, %914 ]
  %917 = phi i32 [ 4, %910 ], [ 2, %914 ]
  %918 = getelementptr inbounds [6 x i8], ptr %19, i32 0, i32 1
  store i8 %916, ptr %918, align 1
  %919 = getelementptr [6 x i8], ptr %19, i32 0, i32 %917
  store i8 2, ptr %919, align 1
  %920 = or i32 %917, 1
  %921 = getelementptr [6 x i8], ptr %19, i32 0, i32 %920
  store i8 0, ptr %921, align 1
  %922 = load i32, ptr @debug, align 4
  %923 = icmp ugt i32 %922, 1
  br i1 %923, label %924, label %926

924:                                              ; preds = %915
  %925 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299228, i32 noundef 2, i32 noundef %909) #10
  br label %926

926:                                              ; preds = %924, %915
  %927 = add nuw nsw i32 %917, 2
  %928 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %906, ptr noundef nonnull %19, i32 noundef %927) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %19) #12
  %929 = icmp slt i32 %928, 0
  br i1 %929, label %1327, label %930

930:                                              ; preds = %926
  %931 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %20) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %20, i8 0, i32 6, i1 false) #12, !annotation !9
  %932 = load i8, ptr %161, align 1, !range !8
  %933 = icmp eq i8 %932, 0
  %934 = select i1 %933, i32 0, i32 192
  br i1 %933, label %939, label %935

935:                                              ; preds = %930
  store i8 59, ptr %20, align 1
  %936 = trunc i32 %934 to i8
  %937 = or i8 %936, 1
  %938 = getelementptr inbounds [6 x i8], ptr %20, i32 0, i32 2
  store i8 %937, ptr %938, align 1
  br label %940

939:                                              ; preds = %930
  store i8 58, ptr %20, align 1
  br label %940

940:                                              ; preds = %939, %935
  %941 = phi i8 [ 69, %935 ], [ 85, %939 ]
  %942 = phi i32 [ 4, %935 ], [ 2, %939 ]
  %943 = getelementptr inbounds [6 x i8], ptr %20, i32 0, i32 1
  store i8 %941, ptr %943, align 1
  %944 = getelementptr [6 x i8], ptr %20, i32 0, i32 %942
  store i8 2, ptr %944, align 1
  %945 = or i32 %942, 1
  %946 = getelementptr [6 x i8], ptr %20, i32 0, i32 %945
  store i8 0, ptr %946, align 1
  %947 = load i32, ptr @debug, align 4
  %948 = icmp ugt i32 %947, 1
  br i1 %948, label %949, label %951

949:                                              ; preds = %940
  %950 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299229, i32 noundef 2, i32 noundef %934) #10
  br label %951

951:                                              ; preds = %949, %940
  %952 = add nuw nsw i32 %942, 2
  %953 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %931, ptr noundef nonnull %20, i32 noundef %952) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %20) #12
  %954 = icmp slt i32 %953, 0
  br i1 %954, label %1327, label %955

955:                                              ; preds = %951
  %956 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %21) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %21, i8 0, i32 6, i1 false) #12, !annotation !9
  %957 = load i8, ptr %161, align 1, !range !8
  %958 = icmp eq i8 %957, 0
  %959 = select i1 %958, i32 0, i32 192
  br i1 %958, label %964, label %960

960:                                              ; preds = %955
  store i8 61, ptr %21, align 1
  %961 = trunc i32 %959 to i8
  %962 = or i8 %961, 1
  %963 = getelementptr inbounds [6 x i8], ptr %21, i32 0, i32 2
  store i8 %962, ptr %963, align 1
  br label %965

964:                                              ; preds = %955
  store i8 60, ptr %21, align 1
  br label %965

965:                                              ; preds = %964, %960
  %966 = phi i8 [ 69, %960 ], [ 85, %964 ]
  %967 = phi i32 [ 4, %960 ], [ 2, %964 ]
  %968 = getelementptr inbounds [6 x i8], ptr %21, i32 0, i32 1
  store i8 %966, ptr %968, align 1
  %969 = getelementptr [6 x i8], ptr %21, i32 0, i32 %967
  store i8 2, ptr %969, align 1
  %970 = or i32 %967, 1
  %971 = getelementptr [6 x i8], ptr %21, i32 0, i32 %970
  store i8 0, ptr %971, align 1
  %972 = load i32, ptr @debug, align 4
  %973 = icmp ugt i32 %972, 1
  br i1 %973, label %974, label %976

974:                                              ; preds = %965
  %975 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299230, i32 noundef 2, i32 noundef %959) #10
  br label %976

976:                                              ; preds = %974, %965
  %977 = add nuw nsw i32 %967, 2
  %978 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %956, ptr noundef nonnull %21, i32 noundef %977) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %21) #12
  %979 = icmp slt i32 %978, 0
  br i1 %979, label %1327, label %980

980:                                              ; preds = %976
  %981 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %22) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %22, i8 0, i32 6, i1 false) #12, !annotation !9
  %982 = load i8, ptr %161, align 1, !range !8
  %983 = icmp eq i8 %982, 0
  %984 = select i1 %983, i32 0, i32 192
  br i1 %983, label %989, label %985

985:                                              ; preds = %980
  store i8 63, ptr %22, align 1
  %986 = trunc i32 %984 to i8
  %987 = or i8 %986, 1
  %988 = getelementptr inbounds [6 x i8], ptr %22, i32 0, i32 2
  store i8 %987, ptr %988, align 1
  br label %990

989:                                              ; preds = %980
  store i8 62, ptr %22, align 1
  br label %990

990:                                              ; preds = %989, %985
  %991 = phi i8 [ 69, %985 ], [ 85, %989 ]
  %992 = phi i32 [ 4, %985 ], [ 2, %989 ]
  %993 = getelementptr inbounds [6 x i8], ptr %22, i32 0, i32 1
  store i8 %991, ptr %993, align 1
  %994 = getelementptr [6 x i8], ptr %22, i32 0, i32 %992
  store i8 2, ptr %994, align 1
  %995 = or i32 %992, 1
  %996 = getelementptr [6 x i8], ptr %22, i32 0, i32 %995
  store i8 0, ptr %996, align 1
  %997 = load i32, ptr @debug, align 4
  %998 = icmp ugt i32 %997, 1
  br i1 %998, label %999, label %1001

999:                                              ; preds = %990
  %1000 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299231, i32 noundef 2, i32 noundef %984) #10
  br label %1001

1001:                                             ; preds = %999, %990
  %1002 = add nuw nsw i32 %992, 2
  %1003 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %981, ptr noundef nonnull %22, i32 noundef %1002) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %22) #12
  %1004 = icmp slt i32 %1003, 0
  br i1 %1004, label %1327, label %1005

1005:                                             ; preds = %1001
  %1006 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %23) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %23, i8 0, i32 6, i1 false) #12, !annotation !9
  %1007 = load i8, ptr %161, align 1, !range !8
  %1008 = icmp eq i8 %1007, 0
  %1009 = select i1 %1008, i32 0, i32 192
  br i1 %1008, label %1014, label %1010

1010:                                             ; preds = %1005
  store i8 65, ptr %23, align 1
  %1011 = trunc i32 %1009 to i8
  %1012 = or i8 %1011, 1
  %1013 = getelementptr inbounds [6 x i8], ptr %23, i32 0, i32 2
  store i8 %1012, ptr %1013, align 1
  br label %1015

1014:                                             ; preds = %1005
  store i8 64, ptr %23, align 1
  br label %1015

1015:                                             ; preds = %1014, %1010
  %1016 = phi i8 [ 69, %1010 ], [ 85, %1014 ]
  %1017 = phi i32 [ 4, %1010 ], [ 2, %1014 ]
  %1018 = getelementptr inbounds [6 x i8], ptr %23, i32 0, i32 1
  store i8 %1016, ptr %1018, align 1
  %1019 = getelementptr [6 x i8], ptr %23, i32 0, i32 %1017
  store i8 2, ptr %1019, align 1
  %1020 = or i32 %1017, 1
  %1021 = getelementptr [6 x i8], ptr %23, i32 0, i32 %1020
  store i8 0, ptr %1021, align 1
  %1022 = load i32, ptr @debug, align 4
  %1023 = icmp ugt i32 %1022, 1
  br i1 %1023, label %1024, label %1026

1024:                                             ; preds = %1015
  %1025 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299232, i32 noundef 2, i32 noundef %1009) #10
  br label %1026

1026:                                             ; preds = %1024, %1015
  %1027 = add nuw nsw i32 %1017, 2
  %1028 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1006, ptr noundef nonnull %23, i32 noundef %1027) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %23) #12
  %1029 = icmp slt i32 %1028, 0
  br i1 %1029, label %1327, label %1030

1030:                                             ; preds = %1026
  %1031 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %24) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %24, i8 0, i32 6, i1 false) #12, !annotation !9
  %1032 = load i8, ptr %161, align 1, !range !8
  %1033 = icmp eq i8 %1032, 0
  %1034 = select i1 %1033, i32 0, i32 192
  br i1 %1033, label %1039, label %1035

1035:                                             ; preds = %1030
  store i8 67, ptr %24, align 1
  %1036 = trunc i32 %1034 to i8
  %1037 = or i8 %1036, 1
  %1038 = getelementptr inbounds [6 x i8], ptr %24, i32 0, i32 2
  store i8 %1037, ptr %1038, align 1
  br label %1040

1039:                                             ; preds = %1030
  store i8 66, ptr %24, align 1
  br label %1040

1040:                                             ; preds = %1039, %1035
  %1041 = phi i8 [ 69, %1035 ], [ 85, %1039 ]
  %1042 = phi i32 [ 4, %1035 ], [ 2, %1039 ]
  %1043 = getelementptr inbounds [6 x i8], ptr %24, i32 0, i32 1
  store i8 %1041, ptr %1043, align 1
  %1044 = getelementptr [6 x i8], ptr %24, i32 0, i32 %1042
  store i8 2, ptr %1044, align 1
  %1045 = or i32 %1042, 1
  %1046 = getelementptr [6 x i8], ptr %24, i32 0, i32 %1045
  store i8 0, ptr %1046, align 1
  %1047 = load i32, ptr @debug, align 4
  %1048 = icmp ugt i32 %1047, 1
  br i1 %1048, label %1049, label %1051

1049:                                             ; preds = %1040
  %1050 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299233, i32 noundef 2, i32 noundef %1034) #10
  br label %1051

1051:                                             ; preds = %1049, %1040
  %1052 = add nuw nsw i32 %1042, 2
  %1053 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1031, ptr noundef nonnull %24, i32 noundef %1052) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %24) #12
  %1054 = icmp slt i32 %1053, 0
  br i1 %1054, label %1327, label %1055

1055:                                             ; preds = %1051
  %1056 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %25) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %25, i8 0, i32 6, i1 false) #12, !annotation !9
  %1057 = load i8, ptr %161, align 1, !range !8
  %1058 = icmp eq i8 %1057, 0
  %1059 = select i1 %1058, i32 0, i32 192
  br i1 %1058, label %1064, label %1060

1060:                                             ; preds = %1055
  store i8 69, ptr %25, align 1
  %1061 = trunc i32 %1059 to i8
  %1062 = or i8 %1061, 1
  %1063 = getelementptr inbounds [6 x i8], ptr %25, i32 0, i32 2
  store i8 %1062, ptr %1063, align 1
  br label %1065

1064:                                             ; preds = %1055
  store i8 68, ptr %25, align 1
  br label %1065

1065:                                             ; preds = %1064, %1060
  %1066 = phi i8 [ 69, %1060 ], [ 85, %1064 ]
  %1067 = phi i32 [ 4, %1060 ], [ 2, %1064 ]
  %1068 = getelementptr inbounds [6 x i8], ptr %25, i32 0, i32 1
  store i8 %1066, ptr %1068, align 1
  %1069 = getelementptr [6 x i8], ptr %25, i32 0, i32 %1067
  store i8 2, ptr %1069, align 1
  %1070 = or i32 %1067, 1
  %1071 = getelementptr [6 x i8], ptr %25, i32 0, i32 %1070
  store i8 0, ptr %1071, align 1
  %1072 = load i32, ptr @debug, align 4
  %1073 = icmp ugt i32 %1072, 1
  br i1 %1073, label %1074, label %1076

1074:                                             ; preds = %1065
  %1075 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299234, i32 noundef 2, i32 noundef %1059) #10
  br label %1076

1076:                                             ; preds = %1074, %1065
  %1077 = add nuw nsw i32 %1067, 2
  %1078 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1056, ptr noundef nonnull %25, i32 noundef %1077) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %25) #12
  %1079 = icmp slt i32 %1078, 0
  br i1 %1079, label %1327, label %1080

1080:                                             ; preds = %1076
  %1081 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %26) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %26, i8 0, i32 6, i1 false) #12, !annotation !9
  %1082 = load i8, ptr %161, align 1, !range !8
  %1083 = icmp eq i8 %1082, 0
  %1084 = select i1 %1083, i32 0, i32 192
  br i1 %1083, label %1089, label %1085

1085:                                             ; preds = %1080
  store i8 71, ptr %26, align 1
  %1086 = trunc i32 %1084 to i8
  %1087 = or i8 %1086, 1
  %1088 = getelementptr inbounds [6 x i8], ptr %26, i32 0, i32 2
  store i8 %1087, ptr %1088, align 1
  br label %1090

1089:                                             ; preds = %1080
  store i8 70, ptr %26, align 1
  br label %1090

1090:                                             ; preds = %1089, %1085
  %1091 = phi i8 [ 69, %1085 ], [ 85, %1089 ]
  %1092 = phi i32 [ 4, %1085 ], [ 2, %1089 ]
  %1093 = getelementptr inbounds [6 x i8], ptr %26, i32 0, i32 1
  store i8 %1091, ptr %1093, align 1
  %1094 = getelementptr [6 x i8], ptr %26, i32 0, i32 %1092
  store i8 3, ptr %1094, align 1
  %1095 = or i32 %1092, 1
  %1096 = getelementptr [6 x i8], ptr %26, i32 0, i32 %1095
  store i8 0, ptr %1096, align 1
  %1097 = load i32, ptr @debug, align 4
  %1098 = icmp ugt i32 %1097, 1
  br i1 %1098, label %1099, label %1101

1099:                                             ; preds = %1090
  %1100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299235, i32 noundef 3, i32 noundef %1084) #10
  br label %1101

1101:                                             ; preds = %1099, %1090
  %1102 = add nuw nsw i32 %1092, 2
  %1103 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1081, ptr noundef nonnull %26, i32 noundef %1102) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %26) #12
  %1104 = icmp slt i32 %1103, 0
  br i1 %1104, label %1327, label %1105

1105:                                             ; preds = %1101
  %1106 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %27) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %27, i8 0, i32 6, i1 false) #12, !annotation !9
  %1107 = load i8, ptr %161, align 1, !range !8
  %1108 = icmp eq i8 %1107, 0
  %1109 = select i1 %1108, i32 0, i32 192
  br i1 %1108, label %1114, label %1110

1110:                                             ; preds = %1105
  store i8 73, ptr %27, align 1
  %1111 = trunc i32 %1109 to i8
  %1112 = or i8 %1111, 1
  %1113 = getelementptr inbounds [6 x i8], ptr %27, i32 0, i32 2
  store i8 %1112, ptr %1113, align 1
  br label %1115

1114:                                             ; preds = %1105
  store i8 72, ptr %27, align 1
  br label %1115

1115:                                             ; preds = %1114, %1110
  %1116 = phi i8 [ 69, %1110 ], [ 85, %1114 ]
  %1117 = phi i32 [ 4, %1110 ], [ 2, %1114 ]
  %1118 = getelementptr inbounds [6 x i8], ptr %27, i32 0, i32 1
  store i8 %1116, ptr %1118, align 1
  %1119 = getelementptr [6 x i8], ptr %27, i32 0, i32 %1117
  store i8 3, ptr %1119, align 1
  %1120 = or i32 %1117, 1
  %1121 = getelementptr [6 x i8], ptr %27, i32 0, i32 %1120
  store i8 0, ptr %1121, align 1
  %1122 = load i32, ptr @debug, align 4
  %1123 = icmp ugt i32 %1122, 1
  br i1 %1123, label %1124, label %1126

1124:                                             ; preds = %1115
  %1125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299236, i32 noundef 3, i32 noundef %1109) #10
  br label %1126

1126:                                             ; preds = %1124, %1115
  %1127 = add nuw nsw i32 %1117, 2
  %1128 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1106, ptr noundef nonnull %27, i32 noundef %1127) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %27) #12
  %1129 = icmp slt i32 %1128, 0
  br i1 %1129, label %1327, label %1130

1130:                                             ; preds = %1126
  %1131 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %28) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %28, i8 0, i32 6, i1 false) #12, !annotation !9
  %1132 = load i8, ptr %161, align 1, !range !8
  %1133 = icmp eq i8 %1132, 0
  %1134 = select i1 %1133, i32 0, i32 192
  br i1 %1133, label %1139, label %1135

1135:                                             ; preds = %1130
  store i8 75, ptr %28, align 1
  %1136 = trunc i32 %1134 to i8
  %1137 = or i8 %1136, 1
  %1138 = getelementptr inbounds [6 x i8], ptr %28, i32 0, i32 2
  store i8 %1137, ptr %1138, align 1
  br label %1140

1139:                                             ; preds = %1130
  store i8 74, ptr %28, align 1
  br label %1140

1140:                                             ; preds = %1139, %1135
  %1141 = phi i8 [ 69, %1135 ], [ 85, %1139 ]
  %1142 = phi i32 [ 4, %1135 ], [ 2, %1139 ]
  %1143 = getelementptr inbounds [6 x i8], ptr %28, i32 0, i32 1
  store i8 %1141, ptr %1143, align 1
  %1144 = getelementptr [6 x i8], ptr %28, i32 0, i32 %1142
  store i8 4, ptr %1144, align 1
  %1145 = or i32 %1142, 1
  %1146 = getelementptr [6 x i8], ptr %28, i32 0, i32 %1145
  store i8 0, ptr %1146, align 1
  %1147 = load i32, ptr @debug, align 4
  %1148 = icmp ugt i32 %1147, 1
  br i1 %1148, label %1149, label %1151

1149:                                             ; preds = %1140
  %1150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299237, i32 noundef 4, i32 noundef %1134) #10
  br label %1151

1151:                                             ; preds = %1149, %1140
  %1152 = add nuw nsw i32 %1142, 2
  %1153 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1131, ptr noundef nonnull %28, i32 noundef %1152) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %28) #12
  %1154 = icmp slt i32 %1153, 0
  br i1 %1154, label %1327, label %1155

1155:                                             ; preds = %1151
  %1156 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %29) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %29, i8 0, i32 6, i1 false) #12, !annotation !9
  %1157 = load i8, ptr %161, align 1, !range !8
  %1158 = icmp eq i8 %1157, 0
  %1159 = select i1 %1158, i32 0, i32 192
  br i1 %1158, label %1164, label %1160

1160:                                             ; preds = %1155
  store i8 77, ptr %29, align 1
  %1161 = trunc i32 %1159 to i8
  %1162 = or i8 %1161, 1
  %1163 = getelementptr inbounds [6 x i8], ptr %29, i32 0, i32 2
  store i8 %1162, ptr %1163, align 1
  br label %1165

1164:                                             ; preds = %1155
  store i8 76, ptr %29, align 1
  br label %1165

1165:                                             ; preds = %1164, %1160
  %1166 = phi i8 [ 69, %1160 ], [ 85, %1164 ]
  %1167 = phi i32 [ 4, %1160 ], [ 2, %1164 ]
  %1168 = getelementptr inbounds [6 x i8], ptr %29, i32 0, i32 1
  store i8 %1166, ptr %1168, align 1
  %1169 = getelementptr [6 x i8], ptr %29, i32 0, i32 %1167
  store i8 4, ptr %1169, align 1
  %1170 = or i32 %1167, 1
  %1171 = getelementptr [6 x i8], ptr %29, i32 0, i32 %1170
  store i8 0, ptr %1171, align 1
  %1172 = load i32, ptr @debug, align 4
  %1173 = icmp ugt i32 %1172, 1
  br i1 %1173, label %1174, label %1176

1174:                                             ; preds = %1165
  %1175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21299238, i32 noundef 4, i32 noundef %1159) #10
  br label %1176

1176:                                             ; preds = %1174, %1165
  %1177 = add nuw nsw i32 %1167, 2
  %1178 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1156, ptr noundef nonnull %29, i32 noundef %1177) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %29) #12
  %1179 = icmp slt i32 %1178, 0
  br i1 %1179, label %1327, label %1180

1180:                                             ; preds = %1176
  %1181 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %30) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %30, i8 0, i32 6, i1 false) #12, !annotation !9
  %1182 = load i8, ptr %161, align 1, !range !8
  %1183 = icmp eq i8 %1182, 0
  %1184 = select i1 %1183, i32 0, i32 192
  br i1 %1183, label %1189, label %1185

1185:                                             ; preds = %1180
  store i8 47, ptr %30, align 1
  %1186 = trunc i32 %1184 to i8
  %1187 = or i8 %1186, 1
  %1188 = getelementptr inbounds [6 x i8], ptr %30, i32 0, i32 2
  store i8 %1187, ptr %1188, align 1
  br label %1190

1189:                                             ; preds = %1180
  store i8 46, ptr %30, align 1
  br label %1190

1190:                                             ; preds = %1189, %1185
  %1191 = phi i8 [ 71, %1185 ], [ 87, %1189 ]
  %1192 = phi i32 [ 4, %1185 ], [ 2, %1189 ]
  %1193 = getelementptr inbounds [6 x i8], ptr %30, i32 0, i32 1
  store i8 %1191, ptr %1193, align 1
  %1194 = getelementptr [6 x i8], ptr %30, i32 0, i32 %1192
  store i8 0, ptr %1194, align 1
  %1195 = or i32 %1192, 1
  %1196 = getelementptr [6 x i8], ptr %30, i32 0, i32 %1195
  store i8 0, ptr %1196, align 1
  %1197 = load i32, ptr @debug, align 4
  %1198 = icmp ugt i32 %1197, 1
  br i1 %1198, label %1199, label %1201

1199:                                             ; preds = %1190
  %1200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21430295, i32 noundef 0, i32 noundef %1184) #10
  br label %1201

1201:                                             ; preds = %1199, %1190
  %1202 = add nuw nsw i32 %1192, 2
  %1203 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1181, ptr noundef nonnull %30, i32 noundef %1202) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %30) #12
  %1204 = icmp slt i32 %1203, 0
  br i1 %1204, label %1327, label %1205

1205:                                             ; preds = %1201
  %1206 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %31) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %31, i8 0, i32 6, i1 false) #12, !annotation !9
  %1207 = load i8, ptr %161, align 1, !range !8
  %1208 = icmp eq i8 %1207, 0
  %1209 = select i1 %1208, i32 0, i32 192
  br i1 %1208, label %1213, label %1210

1210:                                             ; preds = %1205
  store i8 1, ptr %31, align 1
  %1211 = trunc i32 %1209 to i8
  %1212 = getelementptr inbounds [6 x i8], ptr %31, i32 0, i32 2
  store i8 %1211, ptr %1212, align 1
  br label %1213

1213:                                             ; preds = %1210, %1205
  %1214 = phi i8 [ -128, %1210 ], [ 32, %1205 ]
  %1215 = phi i32 [ 4, %1210 ], [ 2, %1205 ]
  %1216 = getelementptr inbounds [6 x i8], ptr %31, i32 0, i32 1
  store i8 %1214, ptr %1216, align 1
  %1217 = getelementptr [6 x i8], ptr %31, i32 0, i32 %1215
  store i8 2, ptr %1217, align 1
  %1218 = or i32 %1215, 1
  %1219 = getelementptr [6 x i8], ptr %31, i32 0, i32 %1218
  store i8 0, ptr %1219, align 1
  %1220 = load i32, ptr @debug, align 4
  %1221 = icmp ugt i32 %1220, 1
  br i1 %1221, label %1222, label %1224

1222:                                             ; preds = %1213
  %1223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8388608, i32 noundef 2, i32 noundef %1209) #10
  br label %1224

1224:                                             ; preds = %1222, %1213
  %1225 = add nuw nsw i32 %1215, 2
  %1226 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1206, ptr noundef nonnull %31, i32 noundef %1225) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %31) #12
  %1227 = icmp slt i32 %1226, 0
  br i1 %1227, label %1327, label %1228

1228:                                             ; preds = %1224
  %1229 = load i32, ptr %464, align 4
  switch i32 %1229, label %1327 [
    i32 1, label %1230
    i32 2, label %1232
    i32 6, label %1234
    i32 3, label %1234
    i32 4, label %1236
    i32 5, label %1238
  ]

1230:                                             ; preds = %1228
  %1231 = call fastcc i32 @set_qam16(ptr noundef %63) #12
  br label %1240

1232:                                             ; preds = %1228
  %1233 = call fastcc i32 @set_qam32(ptr noundef %63) #12
  br label %1240

1234:                                             ; preds = %1228, %1228
  %1235 = call fastcc i32 @set_qam64(ptr noundef %63) #12
  br label %1240

1236:                                             ; preds = %1228
  %1237 = call fastcc i32 @set_qam128(ptr noundef %63) #12
  br label %1240

1238:                                             ; preds = %1228
  %1239 = call fastcc i32 @set_qam256(ptr noundef %63) #12
  br label %1240

1240:                                             ; preds = %1238, %1236, %1234, %1232, %1230
  %1241 = phi i32 [ %1239, %1238 ], [ %1237, %1236 ], [ %1235, %1234 ], [ %1233, %1232 ], [ %1231, %1230 ]
  %1242 = icmp slt i32 %1241, 0
  br i1 %1242, label %1327, label %1243

1243:                                             ; preds = %1240
  %1244 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %32) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %32, i8 0, i32 6, i1 false) #12, !annotation !9
  %1245 = load i8, ptr %161, align 1, !range !8
  %1246 = icmp eq i8 %1245, 0
  %1247 = select i1 %1246, i32 0, i32 192
  br i1 %1246, label %1251, label %1248

1248:                                             ; preds = %1243
  store i8 1, ptr %32, align 1
  %1249 = trunc i32 %1247 to i8
  %1250 = getelementptr inbounds [6 x i8], ptr %32, i32 0, i32 2
  store i8 %1249, ptr %1250, align 1
  br label %1251

1251:                                             ; preds = %1248, %1243
  %1252 = phi i8 [ -128, %1248 ], [ 32, %1243 ]
  %1253 = phi i32 [ 4, %1248 ], [ 2, %1243 ]
  %1254 = getelementptr inbounds [6 x i8], ptr %32, i32 0, i32 1
  store i8 %1252, ptr %1254, align 1
  %1255 = getelementptr [6 x i8], ptr %32, i32 0, i32 %1253
  store i8 1, ptr %1255, align 1
  %1256 = or i32 %1253, 1
  %1257 = getelementptr [6 x i8], ptr %32, i32 0, i32 %1256
  store i8 0, ptr %1257, align 1
  %1258 = load i32, ptr @debug, align 4
  %1259 = icmp ugt i32 %1258, 1
  br i1 %1259, label %1260, label %1262

1260:                                             ; preds = %1251
  %1261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8388608, i32 noundef 1, i32 noundef %1247) #10
  br label %1262

1262:                                             ; preds = %1260, %1251
  %1263 = add nuw nsw i32 %1253, 2
  %1264 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1244, ptr noundef nonnull %32, i32 noundef %1263) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %32) #12
  %1265 = icmp slt i32 %1264, 0
  br i1 %1265, label %1327, label %1266

1266:                                             ; preds = %1262
  %1267 = load i32, ptr %147, align 4
  %1268 = call fastcc i32 @mpegts_dto_setup(ptr noundef %63, i32 noundef %1267) #12
  %1269 = icmp slt i32 %1268, 0
  br i1 %1269, label %1327, label %1270

1270:                                             ; preds = %1266
  %1271 = call fastcc i32 @mpegts_start(ptr noundef %63) #12
  %1272 = icmp slt i32 %1271, 0
  br i1 %1272, label %1327, label %1273

1273:                                             ; preds = %1270
  %1274 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %33) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %33, i8 0, i32 6, i1 false) #12, !annotation !9
  %1275 = load i8, ptr %161, align 1, !range !8
  %1276 = icmp eq i8 %1275, 0
  %1277 = select i1 %1276, i32 0, i32 192
  br i1 %1276, label %1282, label %1278

1278:                                             ; preds = %1273
  store i8 1, ptr %33, align 1
  %1279 = trunc i32 %1277 to i8
  %1280 = or i8 %1279, 1
  %1281 = getelementptr inbounds [6 x i8], ptr %33, i32 0, i32 2
  store i8 %1280, ptr %1281, align 1
  br label %1282

1282:                                             ; preds = %1278, %1273
  %1283 = phi i8 [ -64, %1278 ], [ 112, %1273 ]
  %1284 = phi i32 [ 4, %1278 ], [ 2, %1273 ]
  %1285 = getelementptr inbounds [6 x i8], ptr %33, i32 0, i32 1
  store i8 %1283, ptr %1285, align 1
  %1286 = getelementptr [6 x i8], ptr %33, i32 0, i32 %1284
  store i8 1, ptr %1286, align 1
  %1287 = or i32 %1284, 1
  %1288 = getelementptr [6 x i8], ptr %33, i32 0, i32 %1287
  store i8 0, ptr %1288, align 1
  %1289 = load i32, ptr @debug, align 4
  %1290 = icmp ugt i32 %1289, 1
  br i1 %1290, label %1291, label %1293

1291:                                             ; preds = %1282
  %1292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29360128, i32 noundef 1, i32 noundef %1277) #10
  br label %1293

1293:                                             ; preds = %1291, %1282
  %1294 = add nuw nsw i32 %1284, 2
  %1295 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1274, ptr noundef nonnull %33, i32 noundef %1294) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %33) #12
  %1296 = icmp slt i32 %1295, 0
  br i1 %1296, label %1327, label %1297

1297:                                             ; preds = %1293
  %1298 = load i8, ptr %159, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %34) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %34, i8 0, i32 6, i1 false) #12, !annotation !9
  %1299 = load i8, ptr %161, align 1, !range !8
  %1300 = icmp eq i8 %1299, 0
  %1301 = select i1 %1300, i32 0, i32 192
  br i1 %1300, label %1306, label %1302

1302:                                             ; preds = %1297
  store i8 1, ptr %34, align 1
  %1303 = trunc i32 %1301 to i8
  %1304 = or i8 %1303, 1
  %1305 = getelementptr inbounds [6 x i8], ptr %34, i32 0, i32 2
  store i8 %1304, ptr %1305, align 1
  br label %1306

1306:                                             ; preds = %1302, %1297
  %1307 = phi i8 [ 64, %1302 ], [ 80, %1297 ]
  %1308 = phi i32 [ 4, %1302 ], [ 2, %1297 ]
  %1309 = getelementptr inbounds [6 x i8], ptr %34, i32 0, i32 1
  store i8 %1307, ptr %1309, align 1
  %1310 = getelementptr [6 x i8], ptr %34, i32 0, i32 %1308
  store i8 1, ptr %1310, align 1
  %1311 = or i32 %1308, 1
  %1312 = getelementptr [6 x i8], ptr %34, i32 0, i32 %1311
  store i8 0, ptr %1312, align 1
  %1313 = load i32, ptr @debug, align 4
  %1314 = icmp ugt i32 %1313, 1
  br i1 %1314, label %1315, label %1317

1315:                                             ; preds = %1306
  %1316 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 20971520, i32 noundef 1, i32 noundef %1301) #10
  br label %1317

1317:                                             ; preds = %1315, %1306
  %1318 = add nuw nsw i32 %1308, 2
  %1319 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1298, ptr noundef nonnull %34, i32 noundef %1318) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %34) #12
  %1320 = icmp slt i32 %1319, 0
  br i1 %1320, label %1327, label %1321

1321:                                             ; preds = %1317
  %1322 = call fastcc i32 @write16(ptr noundef %63, i32 noundef 25165824, i16 noundef zeroext 1) #12
  %1323 = icmp slt i32 %1322, 0
  br i1 %1323, label %1327, label %1324

1324:                                             ; preds = %1321
  %1325 = call fastcc i32 @scu_command(ptr noundef %63, i16 noundef zeroext 516, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, ptr noundef nonnull %57) #12
  %1326 = icmp slt i32 %1325, 0
  br i1 %1326, label %1327, label %1330

1327:                                             ; preds = %1324, %1321, %1317, %1293, %1270, %1266, %1262, %1240, %1228, %1224, %1201, %1176, %1151, %1126, %1101, %1076, %1051, %1026, %1001, %976, %951, %926, %901, %876, %851, %826, %801, %776, %751, %726, %701, %676, %652, %537, %523, %519, %516, %463, %460, %208, %204, %180
  %1328 = phi i32 [ %1325, %1324 ], [ %653, %652 ], [ -22, %463 ], [ %461, %460 ], [ %1322, %1321 ], [ %1319, %1317 ], [ %1295, %1293 ], [ %1271, %1270 ], [ %1268, %1266 ], [ %1264, %1262 ], [ %1241, %1240 ], [ %1226, %1224 ], [ %1203, %1201 ], [ %1178, %1176 ], [ %1153, %1151 ], [ %1128, %1126 ], [ %1103, %1101 ], [ %1078, %1076 ], [ %1053, %1051 ], [ %1028, %1026 ], [ %1003, %1001 ], [ %978, %976 ], [ %953, %951 ], [ %928, %926 ], [ %903, %901 ], [ %878, %876 ], [ %853, %851 ], [ %828, %826 ], [ %803, %801 ], [ %778, %776 ], [ %753, %751 ], [ %728, %726 ], [ %703, %701 ], [ %678, %676 ], [ %538, %537 ], [ %514, %519 ], [ %514, %523 ], [ %209, %208 ], [ %206, %204 ], [ %182, %180 ], [ %514, %516 ], [ -22, %1228 ]
  %1329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %1328, ptr noundef nonnull @__func__.set_qam) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #12
  br label %1873

1330:                                             ; preds = %1324
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #12
  store i32 2, ptr %69, align 4
  br label %1876

1331:                                             ; preds = %145
  %1332 = call fastcc i32 @mpegts_stop(ptr noundef %63) #12
  %1333 = icmp slt i32 %1332, 0
  br i1 %1333, label %1873, label %1334

1334:                                             ; preds = %1331
  %1335 = sdiv i32 %146, 1000
  %1336 = trunc i32 %1335 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #12
  store i16 0, ptr %42, align 2
  %1337 = load i32, ptr @debug, align 4
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1342, label %1339

1339:                                             ; preds = %1334
  %1340 = and i32 %1335, 65535
  %1341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.set_dvbt, i32 noundef %1340, i32 noundef 0) #10
  br label %1342

1342:                                             ; preds = %1339, %1334
  %1343 = call fastcc i32 @scu_command(ptr noundef %63, i16 noundef zeroext 1033, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, ptr noundef nonnull %42) #12
  %1344 = icmp slt i32 %1343, 0
  br i1 %1344, label %1831, label %1345

1345:                                             ; preds = %1342
  %1346 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 4
  %1347 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %41) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %41, i8 0, i32 6, i1 false) #12, !annotation !9
  %1348 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 102
  %1349 = load i8, ptr %1348, align 1, !range !8
  %1350 = icmp eq i8 %1349, 0
  %1351 = select i1 %1350, i32 0, i32 192
  br i1 %1350, label %1355, label %1352

1352:                                             ; preds = %1345
  store i8 1, ptr %41, align 1
  %1353 = trunc i32 %1351 to i8
  %1354 = getelementptr inbounds [6 x i8], ptr %41, i32 0, i32 2
  store i8 %1353, ptr %1354, align 1
  br label %1355

1355:                                             ; preds = %1352, %1345
  %1356 = phi i8 [ -128, %1352 ], [ 32, %1345 ]
  %1357 = phi i32 [ 4, %1352 ], [ 2, %1345 ]
  %1358 = getelementptr inbounds [6 x i8], ptr %41, i32 0, i32 1
  store i8 %1356, ptr %1358, align 1
  %1359 = getelementptr [6 x i8], ptr %41, i32 0, i32 %1357
  store i8 2, ptr %1359, align 1
  %1360 = or i32 %1357, 1
  %1361 = getelementptr [6 x i8], ptr %41, i32 0, i32 %1360
  store i8 0, ptr %1361, align 1
  %1362 = load i32, ptr @debug, align 4
  %1363 = icmp ugt i32 %1362, 1
  br i1 %1363, label %1364, label %1366

1364:                                             ; preds = %1355
  %1365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8388608, i32 noundef 2, i32 noundef %1351) #10
  br label %1366

1366:                                             ; preds = %1364, %1355
  %1367 = add nuw nsw i32 %1357, 2
  %1368 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1347, ptr noundef nonnull %41, i32 noundef %1367) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %41) #12
  %1369 = icmp slt i32 %1368, 0
  br i1 %1369, label %1831, label %1370

1370:                                             ; preds = %1366
  %1371 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %40) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %40, i8 0, i32 6, i1 false) #12, !annotation !9
  %1372 = load i8, ptr %1348, align 1, !range !8
  %1373 = icmp eq i8 %1372, 0
  %1374 = select i1 %1373, i32 0, i32 192
  br i1 %1373, label %1379, label %1375

1375:                                             ; preds = %1370
  store i8 1, ptr %40, align 1
  %1376 = trunc i32 %1374 to i8
  %1377 = or i8 %1376, 3
  %1378 = getelementptr inbounds [6 x i8], ptr %40, i32 0, i32 2
  store i8 %1377, ptr %1378, align 1
  br label %1379

1379:                                             ; preds = %1375, %1370
  %1380 = phi i8 [ -64, %1375 ], [ -16, %1370 ]
  %1381 = phi i32 [ 4, %1375 ], [ 2, %1370 ]
  %1382 = getelementptr inbounds [6 x i8], ptr %40, i32 0, i32 1
  store i8 %1380, ptr %1382, align 1
  %1383 = getelementptr [6 x i8], ptr %40, i32 0, i32 %1381
  store i8 0, ptr %1383, align 1
  %1384 = or i32 %1381, 1
  %1385 = getelementptr [6 x i8], ptr %40, i32 0, i32 %1384
  store i8 0, ptr %1385, align 1
  %1386 = load i32, ptr @debug, align 4
  %1387 = icmp ugt i32 %1386, 1
  br i1 %1387, label %1388, label %1390

1388:                                             ; preds = %1379
  %1389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 62914560, i32 noundef 0, i32 noundef %1374) #10
  br label %1390

1390:                                             ; preds = %1388, %1379
  %1391 = add nuw nsw i32 %1381, 2
  %1392 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1371, ptr noundef nonnull %40, i32 noundef %1391) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %40) #12
  %1393 = icmp slt i32 %1392, 0
  br i1 %1393, label %1831, label %1394

1394:                                             ; preds = %1390
  %1395 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %39) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %39, i8 0, i32 6, i1 false) #12, !annotation !9
  %1396 = load i8, ptr %1348, align 1, !range !8
  %1397 = icmp eq i8 %1396, 0
  %1398 = select i1 %1397, i32 0, i32 192
  br i1 %1397, label %1403, label %1399

1399:                                             ; preds = %1394
  store i8 1, ptr %39, align 1
  %1400 = trunc i32 %1398 to i8
  %1401 = or i8 %1400, 3
  %1402 = getelementptr inbounds [6 x i8], ptr %39, i32 0, i32 2
  store i8 %1401, ptr %1402, align 1
  br label %1403

1403:                                             ; preds = %1399, %1394
  %1404 = phi i8 [ -128, %1399 ], [ -32, %1394 ]
  %1405 = phi i32 [ 4, %1399 ], [ 2, %1394 ]
  %1406 = getelementptr inbounds [6 x i8], ptr %39, i32 0, i32 1
  store i8 %1404, ptr %1406, align 1
  %1407 = getelementptr [6 x i8], ptr %39, i32 0, i32 %1405
  store i8 0, ptr %1407, align 1
  %1408 = or i32 %1405, 1
  %1409 = getelementptr [6 x i8], ptr %39, i32 0, i32 %1408
  store i8 0, ptr %1409, align 1
  %1410 = load i32, ptr @debug, align 4
  %1411 = icmp ugt i32 %1410, 1
  br i1 %1411, label %1412, label %1414

1412:                                             ; preds = %1403
  %1413 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 58720256, i32 noundef 0, i32 noundef %1398) #10
  br label %1414

1414:                                             ; preds = %1412, %1403
  %1415 = add nuw nsw i32 %1405, 2
  %1416 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1395, ptr noundef nonnull %39, i32 noundef %1415) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %39) #12
  %1417 = icmp slt i32 %1416, 0
  br i1 %1417, label %1831, label %1418

1418:                                             ; preds = %1414
  %1419 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %38) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %38, i8 0, i32 6, i1 false) #12, !annotation !9
  %1420 = load i8, ptr %1348, align 1, !range !8
  %1421 = icmp eq i8 %1420, 0
  %1422 = select i1 %1421, i32 0, i32 192
  br i1 %1421, label %1427, label %1423

1423:                                             ; preds = %1418
  store i8 1, ptr %38, align 1
  %1424 = trunc i32 %1422 to i8
  %1425 = or i8 %1424, 2
  %1426 = getelementptr inbounds [6 x i8], ptr %38, i32 0, i32 2
  store i8 %1425, ptr %1426, align 1
  br label %1427

1427:                                             ; preds = %1423, %1418
  %1428 = phi i8 [ -128, %1423 ], [ -96, %1418 ]
  %1429 = phi i32 [ 4, %1423 ], [ 2, %1418 ]
  %1430 = getelementptr inbounds [6 x i8], ptr %38, i32 0, i32 1
  store i8 %1428, ptr %1430, align 1
  %1431 = getelementptr [6 x i8], ptr %38, i32 0, i32 %1429
  store i8 0, ptr %1431, align 1
  %1432 = or i32 %1429, 1
  %1433 = getelementptr [6 x i8], ptr %38, i32 0, i32 %1432
  store i8 0, ptr %1433, align 1
  %1434 = load i32, ptr @debug, align 4
  %1435 = icmp ugt i32 %1434, 1
  br i1 %1435, label %1436, label %1438

1436:                                             ; preds = %1427
  %1437 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 41943040, i32 noundef 0, i32 noundef %1422) #10
  br label %1438

1438:                                             ; preds = %1436, %1427
  %1439 = add nuw nsw i32 %1429, 2
  %1440 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1419, ptr noundef nonnull %38, i32 noundef %1439) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %38) #12
  %1441 = icmp slt i32 %1440, 0
  br i1 %1441, label %1831, label %1442

1442:                                             ; preds = %1438
  %1443 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 1, i32 6
  %1444 = load i32, ptr %1443, align 4
  %1445 = icmp ne i32 %1444, 0
  %1446 = zext i1 %1445 to i16
  %1447 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 1, i32 8
  %1448 = load i32, ptr %1447, align 4
  switch i32 %1448, label %1449 [
    i32 2, label %1453
    i32 1, label %1451
    i32 0, label %1455
  ]

1449:                                             ; preds = %1442
  %1450 = or i16 %1446, 12
  br label %1455

1451:                                             ; preds = %1442
  %1452 = or i16 %1446, 4
  br label %1455

1453:                                             ; preds = %1442
  %1454 = or i16 %1446, 8
  br label %1455

1455:                                             ; preds = %1453, %1451, %1449, %1442
  %1456 = phi i16 [ %1450, %1449 ], [ %1452, %1451 ], [ %1454, %1453 ], [ %1446, %1442 ]
  %1457 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 1, i32 9
  %1458 = load i32, ptr %1457, align 4
  %1459 = icmp eq i32 %1458, 2
  %1460 = select i1 %1459, i16 128, i16 64
  %1461 = icmp eq i32 %1458, 3
  %1462 = select i1 %1461, i16 192, i16 %1460
  %1463 = or i16 %1462, %1456
  %1464 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 1, i32 1
  %1465 = load i32, ptr %1464, align 4
  switch i32 %1465, label %1466 [
    i32 1, label %1468
    i32 0, label %1470
  ]

1466:                                             ; preds = %1455
  %1467 = or i16 %1463, 32
  br label %1470

1468:                                             ; preds = %1455
  %1469 = or i16 %1463, 16
  br label %1470

1470:                                             ; preds = %1468, %1466, %1455
  %1471 = phi i16 [ %1467, %1466 ], [ %1469, %1468 ], [ %1463, %1455 ]
  %1472 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %37) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %37, i8 0, i32 6, i1 false) #12, !annotation !9
  %1473 = load i8, ptr %1348, align 1, !range !8
  %1474 = icmp eq i8 %1473, 0
  %1475 = select i1 %1474, i32 0, i32 192
  br i1 %1474, label %1480, label %1476

1476:                                             ; preds = %1470
  store i8 39, ptr %37, align 1
  %1477 = trunc i32 %1475 to i8
  %1478 = or i8 %1477, 3
  %1479 = getelementptr inbounds [6 x i8], ptr %37, i32 0, i32 2
  store i8 %1478, ptr %1479, align 1
  br label %1481

1480:                                             ; preds = %1470
  store i8 38, ptr %37, align 1
  br label %1481

1481:                                             ; preds = %1480, %1476
  %1482 = phi i8 [ 65, %1476 ], [ -47, %1480 ]
  %1483 = phi i32 [ 4, %1476 ], [ 2, %1480 ]
  %1484 = getelementptr inbounds [6 x i8], ptr %37, i32 0, i32 1
  store i8 %1482, ptr %1484, align 1
  %1485 = getelementptr [6 x i8], ptr %37, i32 0, i32 %1483
  store i8 0, ptr %1485, align 1
  %1486 = or i32 %1483, 1
  %1487 = getelementptr [6 x i8], ptr %37, i32 0, i32 %1486
  store i8 0, ptr %1487, align 1
  %1488 = load i32, ptr @debug, align 4
  %1489 = icmp ugt i32 %1488, 1
  br i1 %1489, label %1490, label %1492

1490:                                             ; preds = %1481
  %1491 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 54591507, i32 noundef 0, i32 noundef %1475) #10
  br label %1492

1492:                                             ; preds = %1490, %1481
  %1493 = add nuw nsw i32 %1483, 2
  %1494 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1472, ptr noundef nonnull %37, i32 noundef %1493) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %37) #12
  %1495 = icmp slt i32 %1494, 0
  br i1 %1495, label %1831, label %1496

1496:                                             ; preds = %1492
  %1497 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 1, i32 11
  %1498 = load i32, ptr %1497, align 4
  switch i32 %1498, label %1499 [
    i32 7, label %1505
    i32 5, label %1503
    i32 1, label %1507
    i32 3, label %1501
  ]

1499:                                             ; preds = %1496
  %1500 = or i16 %1471, 512
  br label %1507

1501:                                             ; preds = %1496
  %1502 = or i16 %1471, 1024
  br label %1507

1503:                                             ; preds = %1496
  %1504 = or i16 %1471, 1536
  br label %1507

1505:                                             ; preds = %1496
  %1506 = or i16 %1471, 2048
  br label %1507

1507:                                             ; preds = %1505, %1503, %1501, %1499, %1496
  %1508 = phi i16 [ %1500, %1499 ], [ %1502, %1501 ], [ %1504, %1503 ], [ %1506, %1505 ], [ %1471, %1496 ]
  %1509 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 1, i32 7
  %1510 = load i32, ptr %1509, align 4
  switch i32 %1510, label %1831 [
    i32 0, label %1511
    i32 8000000, label %1512
    i32 7000000, label %1607
    i32 6000000, label %1622
  ]

1511:                                             ; preds = %1507
  store i32 8000000, ptr %1509, align 4
  br label %1512

1512:                                             ; preds = %1511, %1507
  %1513 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %36) #12
  %1514 = load i8, ptr %1348, align 1, !range !8
  %1515 = icmp eq i8 %1514, 0
  %1516 = select i1 %1515, i32 0, i32 192
  store i8 -15, ptr %36, align 1
  %1517 = trunc i32 %1516 to i8
  %1518 = or i8 %1517, 3
  %1519 = getelementptr inbounds [6 x i8], ptr %36, i32 0, i32 2
  store i8 %1518, ptr %1519, align 1
  %1520 = getelementptr inbounds [6 x i8], ptr %36, i32 0, i32 3
  store i8 1, ptr %1520, align 1
  %1521 = getelementptr inbounds [6 x i8], ptr %36, i32 0, i32 1
  store i8 -62, ptr %1521, align 1
  %1522 = getelementptr inbounds [6 x i8], ptr %36, i32 0, i32 4
  store i8 -20, ptr %1522, align 1
  %1523 = getelementptr inbounds [6 x i8], ptr %36, i32 0, i32 5
  store i8 11, ptr %1523, align 1
  %1524 = load i32, ptr @debug, align 4
  %1525 = icmp ugt i32 %1524, 1
  br i1 %1525, label %1526, label %1528

1526:                                             ; preds = %1512
  %1527 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 63045880, i32 noundef 3052, i32 noundef %1516) #10
  br label %1528

1528:                                             ; preds = %1526, %1512
  %1529 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1513, ptr noundef nonnull %36, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %36) #12
  %1530 = icmp slt i32 %1529, 0
  br i1 %1530, label %1831, label %1531

1531:                                             ; preds = %1528
  %1532 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  %1533 = load i8, ptr %1348, align 1, !range !8
  %1534 = icmp eq i8 %1533, 0
  %1535 = select i1 %1534, i32 0, i32 192
  store i8 -57, ptr %2, align 1
  %1536 = trunc i32 %1535 to i8
  %1537 = or i8 %1536, 3
  %1538 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %1537, ptr %1538, align 1
  %1539 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  store i8 1, ptr %1539, align 1
  %1540 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 -62, ptr %1540, align 1
  %1541 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  store i8 7, ptr %1541, align 1
  %1542 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  store i8 0, ptr %1542, align 1
  %1543 = load i32, ptr @debug, align 4
  %1544 = icmp ugt i32 %1543, 1
  br i1 %1544, label %1545, label %1547

1545:                                             ; preds = %1531
  %1546 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 63045859, i32 noundef 7, i32 noundef %1535) #10
  br label %1547

1547:                                             ; preds = %1545, %1531
  %1548 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1532, ptr noundef nonnull %2, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %1549 = icmp slt i32 %1548, 0
  br i1 %1549, label %1831, label %1550

1550:                                             ; preds = %1547
  %1551 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  %1552 = load i8, ptr %1348, align 1, !range !8
  %1553 = icmp eq i8 %1552, 0
  %1554 = select i1 %1553, i32 0, i32 192
  store i8 -55, ptr %3, align 1
  %1555 = trunc i32 %1554 to i8
  %1556 = or i8 %1555, 3
  %1557 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %1556, ptr %1557, align 1
  %1558 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 1, ptr %1558, align 1
  %1559 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 -62, ptr %1559, align 1
  %1560 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 7, ptr %1560, align 1
  %1561 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 0, ptr %1561, align 1
  %1562 = load i32, ptr @debug, align 4
  %1563 = icmp ugt i32 %1562, 1
  br i1 %1563, label %1564, label %1566

1564:                                             ; preds = %1550
  %1565 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 63045860, i32 noundef 7, i32 noundef %1554) #10
  br label %1566

1566:                                             ; preds = %1564, %1550
  %1567 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1551, ptr noundef nonnull %3, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %1568 = icmp slt i32 %1567, 0
  br i1 %1568, label %1831, label %1569

1569:                                             ; preds = %1566
  %1570 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  %1571 = load i8, ptr %1348, align 1, !range !8
  %1572 = icmp eq i8 %1571, 0
  %1573 = select i1 %1572, i32 0, i32 192
  store i8 -63, ptr %4, align 1
  %1574 = trunc i32 %1573 to i8
  %1575 = or i8 %1574, 3
  %1576 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %1575, ptr %1576, align 1
  %1577 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 3
  store i8 1, ptr %1577, align 1
  %1578 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 -62, ptr %1578, align 1
  %1579 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 4
  store i8 7, ptr %1579, align 1
  %1580 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 5
  store i8 0, ptr %1580, align 1
  %1581 = load i32, ptr @debug, align 4
  %1582 = icmp ugt i32 %1581, 1
  br i1 %1582, label %1583, label %1585

1583:                                             ; preds = %1569
  %1584 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 63045856, i32 noundef 7, i32 noundef %1573) #10
  br label %1585

1585:                                             ; preds = %1583, %1569
  %1586 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1570, ptr noundef nonnull %4, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %1587 = icmp slt i32 %1586, 0
  br i1 %1587, label %1831, label %1588

1588:                                             ; preds = %1585
  %1589 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  %1590 = load i8, ptr %1348, align 1, !range !8
  %1591 = icmp eq i8 %1590, 0
  %1592 = select i1 %1591, i32 0, i32 192
  store i8 -61, ptr %5, align 1
  %1593 = trunc i32 %1592 to i8
  %1594 = or i8 %1593, 3
  %1595 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %1594, ptr %1595, align 1
  %1596 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  store i8 1, ptr %1596, align 1
  %1597 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 -62, ptr %1597, align 1
  %1598 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  store i8 1, ptr %1598, align 1
  %1599 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  store i8 0, ptr %1599, align 1
  %1600 = load i32, ptr @debug, align 4
  %1601 = icmp ugt i32 %1600, 1
  br i1 %1601, label %1602, label %1604

1602:                                             ; preds = %1588
  %1603 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 63045857, i32 noundef 1, i32 noundef %1592) #10
  br label %1604

1604:                                             ; preds = %1602, %1588
  %1605 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1589, ptr noundef nonnull %5, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %1606 = icmp slt i32 %1605, 0
  br i1 %1606, label %1831, label %1637

1607:                                             ; preds = %1507
  %1608 = call fastcc i32 @write16(ptr noundef %63, i32 noundef 63045880, i16 noundef zeroext 3491) #12
  %1609 = icmp slt i32 %1608, 0
  br i1 %1609, label %1831, label %1610

1610:                                             ; preds = %1607
  %1611 = call fastcc i32 @write16(ptr noundef %63, i32 noundef 63045859, i16 noundef zeroext 8) #12
  %1612 = icmp slt i32 %1611, 0
  br i1 %1612, label %1831, label %1613

1613:                                             ; preds = %1610
  %1614 = call fastcc i32 @write16(ptr noundef %63, i32 noundef 63045860, i16 noundef zeroext 8) #12
  %1615 = icmp slt i32 %1614, 0
  br i1 %1615, label %1831, label %1616

1616:                                             ; preds = %1613
  %1617 = call fastcc i32 @write16(ptr noundef %63, i32 noundef 63045856, i16 noundef zeroext 4) #12
  %1618 = icmp slt i32 %1617, 0
  br i1 %1618, label %1831, label %1619

1619:                                             ; preds = %1616
  %1620 = call fastcc i32 @write16(ptr noundef %63, i32 noundef 63045857, i16 noundef zeroext 1) #12
  %1621 = icmp slt i32 %1620, 0
  br i1 %1621, label %1831, label %1637

1622:                                             ; preds = %1507
  %1623 = call fastcc i32 @write16(ptr noundef %63, i32 noundef 63045880, i16 noundef zeroext 4073) #12
  %1624 = icmp slt i32 %1623, 0
  br i1 %1624, label %1831, label %1625

1625:                                             ; preds = %1622
  %1626 = call fastcc i32 @write16(ptr noundef %63, i32 noundef 63045859, i16 noundef zeroext 19) #12
  %1627 = icmp slt i32 %1626, 0
  br i1 %1627, label %1831, label %1628

1628:                                             ; preds = %1625
  %1629 = call fastcc i32 @write16(ptr noundef %63, i32 noundef 63045860, i16 noundef zeroext 19) #12
  %1630 = icmp slt i32 %1629, 0
  br i1 %1630, label %1831, label %1631

1631:                                             ; preds = %1628
  %1632 = call fastcc i32 @write16(ptr noundef %63, i32 noundef 63045856, i16 noundef zeroext 14) #12
  %1633 = icmp slt i32 %1632, 0
  br i1 %1633, label %1831, label %1634

1634:                                             ; preds = %1631
  %1635 = call fastcc i32 @write16(ptr noundef %63, i32 noundef 63045857, i16 noundef zeroext 1) #12
  %1636 = icmp slt i32 %1635, 0
  br i1 %1636, label %1831, label %1637

1637:                                             ; preds = %1634, %1619, %1604
  %1638 = phi i32 [ 6857142, %1634 ], [ 8000000, %1619 ], [ 9142857, %1604 ]
  %1639 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 26
  %1640 = load i32, ptr %1639, align 4
  %1641 = mul i32 %1640, 1000
  %1642 = sdiv i32 %1641, 3
  %1643 = freeze i32 %1642
  %1644 = udiv i32 %1643, %1638
  %1645 = mul i32 %1644, %1638
  %1646 = sub i32 %1643, %1645
  %1647 = shl nuw nsw i32 %1646, 4
  %1648 = freeze i32 %1647
  %1649 = udiv i32 %1648, %1638
  %1650 = mul i32 %1649, %1638
  %1651 = sub i32 %1648, %1650
  %1652 = shl nuw nsw i32 %1651, 4
  %1653 = shl nuw nsw i32 %1644, 8
  %1654 = shl nuw nsw i32 %1649, 4
  %1655 = or i32 %1654, %1653
  %1656 = freeze i32 %1652
  %1657 = udiv i32 %1656, %1638
  %1658 = or i32 %1655, %1657
  %1659 = mul i32 %1657, %1638
  %1660 = sub i32 %1656, %1659
  %1661 = shl nuw nsw i32 %1660, 4
  %1662 = freeze i32 %1661
  %1663 = udiv i32 %1662, %1638
  %1664 = mul i32 %1663, %1638
  %1665 = sub i32 %1662, %1664
  %1666 = shl nuw nsw i32 %1665, 4
  %1667 = shl nuw nsw i32 %1658, 8
  %1668 = shl nuw nsw i32 %1663, 4
  %1669 = or i32 %1668, %1667
  %1670 = freeze i32 %1666
  %1671 = udiv i32 %1670, %1638
  %1672 = or i32 %1669, %1671
  %1673 = mul i32 %1671, %1638
  %1674 = sub i32 %1670, %1673
  %1675 = shl nuw nsw i32 %1674, 4
  %1676 = freeze i32 %1675
  %1677 = udiv i32 %1676, %1638
  %1678 = mul i32 %1677, %1638
  %1679 = sub i32 %1676, %1678
  %1680 = shl nuw nsw i32 %1679, 4
  %1681 = shl i32 %1672, 8
  %1682 = shl nuw nsw i32 %1677, 4
  %1683 = or i32 %1682, %1681
  %1684 = freeze i32 %1680
  %1685 = udiv i32 %1684, %1638
  %1686 = or i32 %1683, %1685
  %1687 = mul i32 %1685, %1638
  %1688 = sub i32 %1684, %1687
  %1689 = shl nuw nsw i32 %1688, 4
  %1690 = shl i32 %1686, 4
  %1691 = freeze i32 %1689
  %1692 = udiv i32 %1691, %1638
  %1693 = or i32 %1692, %1690
  %1694 = mul i32 %1692, %1638
  %1695 = sub i32 %1691, %1694
  %1696 = shl nuw nsw i32 %1695, 1
  %1697 = and i32 %1696, 33554430
  %1698 = icmp uge i32 %1697, %1638
  %1699 = zext i1 %1698 to i32
  %1700 = add i32 %1693, %1699
  %1701 = and i32 %1700, 64
  %1702 = icmp eq i32 %1701, 0
  %1703 = add i32 %1700, 128
  %1704 = select i1 %1702, i32 %1700, i32 %1703
  %1705 = lshr i32 %1704, 7
  %1706 = add nuw nsw i32 %1705, 8388608
  %1707 = and i32 %1706, 16777215
  %1708 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !9
  %1709 = load i8, ptr %1348, align 1, !range !8
  %1710 = icmp eq i8 %1709, 0
  %1711 = select i1 %1710, i32 0, i32 192
  br i1 %1710, label %1717, label %1712

1712:                                             ; preds = %1637
  store i8 33, ptr %6, align 8
  %1713 = trunc i32 %1711 to i8
  %1714 = or i8 %1713, 1
  %1715 = getelementptr inbounds [8 x i8], ptr %6, i32 0, i32 2
  store i8 %1714, ptr %1715, align 2
  %1716 = getelementptr inbounds [8 x i8], ptr %6, i32 0, i32 3
  store i8 0, ptr %1716, align 1
  br label %1718

1717:                                             ; preds = %1637
  store i8 32, ptr %6, align 8
  br label %1718

1718:                                             ; preds = %1717, %1712
  %1719 = phi i8 [ -124, %1712 ], [ 100, %1717 ]
  %1720 = phi i32 [ 4, %1712 ], [ 2, %1717 ]
  %1721 = getelementptr inbounds [8 x i8], ptr %6, i32 0, i32 1
  store i8 %1719, ptr %1721, align 1
  %1722 = trunc i32 %1706 to i8
  %1723 = getelementptr [8 x i8], ptr %6, i32 0, i32 %1720
  store i8 %1722, ptr %1723, align 2
  %1724 = lshr i32 %1706, 8
  %1725 = trunc i32 %1724 to i8
  %1726 = or i32 %1720, 1
  %1727 = getelementptr [8 x i8], ptr %6, i32 0, i32 %1726
  store i8 %1725, ptr %1727, align 1
  %1728 = lshr i32 %1706, 16
  %1729 = trunc i32 %1728 to i8
  %1730 = add nuw nsw i32 %1720, 2
  %1731 = getelementptr [8 x i8], ptr %6, i32 0, i32 %1730
  store i8 %1729, ptr %1731, align 2
  %1732 = add nuw nsw i32 %1720, 3
  %1733 = getelementptr [8 x i8], ptr %6, i32 0, i32 %1732
  store i8 0, ptr %1733, align 1
  %1734 = load i32, ptr @debug, align 4
  %1735 = icmp ugt i32 %1734, 1
  br i1 %1735, label %1736, label %1738

1736:                                             ; preds = %1718
  %1737 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.write32_flags, i32 noundef 25427984, i32 noundef %1707, i32 noundef %1711) #10
  br label %1738

1738:                                             ; preds = %1736, %1718
  %1739 = add nuw nsw i32 %1720, 4
  %1740 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1708, ptr noundef nonnull %6, i32 noundef %1739) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  %1741 = icmp slt i32 %1740, 0
  br i1 %1741, label %1831, label %1742

1742:                                             ; preds = %1738
  %1743 = call fastcc i32 @set_frequency_shifter(ptr noundef %63, i16 noundef zeroext %1336) #12
  %1744 = icmp slt i32 %1743, 0
  br i1 %1744, label %1831, label %1745

1745:                                             ; preds = %1742
  %1746 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #12, !annotation !9
  %1747 = load i8, ptr %1348, align 1, !range !8
  %1748 = icmp eq i8 %1747, 0
  %1749 = select i1 %1748, i32 0, i32 192
  br i1 %1748, label %1753, label %1750

1750:                                             ; preds = %1745
  store i8 1, ptr %7, align 1
  %1751 = trunc i32 %1749 to i8
  %1752 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %1751, ptr %1752, align 1
  br label %1753

1753:                                             ; preds = %1750, %1745
  %1754 = phi i8 [ -128, %1750 ], [ 32, %1745 ]
  %1755 = phi i32 [ 4, %1750 ], [ 2, %1745 ]
  %1756 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 %1754, ptr %1756, align 1
  %1757 = getelementptr [6 x i8], ptr %7, i32 0, i32 %1755
  store i8 1, ptr %1757, align 1
  %1758 = or i32 %1755, 1
  %1759 = getelementptr [6 x i8], ptr %7, i32 0, i32 %1758
  store i8 0, ptr %1759, align 1
  %1760 = load i32, ptr @debug, align 4
  %1761 = icmp ugt i32 %1760, 1
  br i1 %1761, label %1762, label %1764

1762:                                             ; preds = %1753
  %1763 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8388608, i32 noundef 1, i32 noundef %1749) #10
  br label %1764

1764:                                             ; preds = %1762, %1753
  %1765 = add nuw nsw i32 %1755, 2
  %1766 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1746, ptr noundef nonnull %7, i32 noundef %1765) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %1767 = icmp slt i32 %1766, 0
  br i1 %1767, label %1831, label %1768

1768:                                             ; preds = %1764
  %1769 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i32 6, i1 false) #12, !annotation !9
  %1770 = load i8, ptr %1348, align 1, !range !8
  %1771 = icmp eq i8 %1770, 0
  %1772 = select i1 %1771, i32 0, i32 192
  br i1 %1771, label %1777, label %1773

1773:                                             ; preds = %1768
  store i8 3, ptr %8, align 1
  %1774 = trunc i32 %1772 to i8
  %1775 = or i8 %1774, 3
  %1776 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %1775, ptr %1776, align 1
  br label %1778

1777:                                             ; preds = %1768
  store i8 2, ptr %8, align 1
  br label %1778

1778:                                             ; preds = %1777, %1773
  %1779 = phi i8 [ -64, %1773 ], [ -16, %1777 ]
  %1780 = phi i32 [ 4, %1773 ], [ 2, %1777 ]
  %1781 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 %1779, ptr %1781, align 1
  %1782 = getelementptr [6 x i8], ptr %8, i32 0, i32 %1780
  store i8 0, ptr %1782, align 1
  %1783 = or i32 %1780, 1
  %1784 = getelementptr [6 x i8], ptr %8, i32 0, i32 %1783
  store i8 0, ptr %1784, align 1
  %1785 = load i32, ptr @debug, align 4
  %1786 = icmp ugt i32 %1785, 1
  br i1 %1786, label %1787, label %1789

1787:                                             ; preds = %1778
  %1788 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 62914561, i32 noundef 0, i32 noundef %1772) #10
  br label %1789

1789:                                             ; preds = %1787, %1778
  %1790 = add nuw nsw i32 %1780, 2
  %1791 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1769, ptr noundef nonnull %8, i32 noundef %1790) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %1792 = icmp slt i32 %1791, 0
  br i1 %1792, label %1831, label %1793

1793:                                             ; preds = %1789
  %1794 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 6, i1 false) #12, !annotation !9
  %1795 = load i8, ptr %1348, align 1, !range !8
  %1796 = icmp eq i8 %1795, 0
  %1797 = select i1 %1796, i32 0, i32 192
  br i1 %1796, label %1802, label %1798

1798:                                             ; preds = %1793
  store i8 1, ptr %9, align 1
  %1799 = trunc i32 %1797 to i8
  %1800 = or i8 %1799, 3
  %1801 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %1800, ptr %1801, align 1
  br label %1802

1802:                                             ; preds = %1798, %1793
  %1803 = phi i8 [ -64, %1798 ], [ -16, %1793 ]
  %1804 = phi i32 [ 4, %1798 ], [ 2, %1793 ]
  %1805 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 %1803, ptr %1805, align 1
  %1806 = getelementptr [6 x i8], ptr %9, i32 0, i32 %1804
  store i8 1, ptr %1806, align 1
  %1807 = or i32 %1804, 1
  %1808 = getelementptr [6 x i8], ptr %9, i32 0, i32 %1807
  store i8 0, ptr %1808, align 1
  %1809 = load i32, ptr @debug, align 4
  %1810 = icmp ugt i32 %1809, 1
  br i1 %1810, label %1811, label %1813

1811:                                             ; preds = %1802
  %1812 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 62914560, i32 noundef 1, i32 noundef %1797) #10
  br label %1813

1813:                                             ; preds = %1811, %1802
  %1814 = add nuw nsw i32 %1804, 2
  %1815 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1794, ptr noundef nonnull %9, i32 noundef %1814) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %1816 = icmp slt i32 %1815, 0
  br i1 %1816, label %1831, label %1817

1817:                                             ; preds = %1813
  %1818 = call fastcc i32 @scu_command(ptr noundef %63, i16 noundef zeroext 1028, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, ptr noundef nonnull %42) #12
  %1819 = icmp slt i32 %1818, 0
  br i1 %1819, label %1831, label %1820

1820:                                             ; preds = %1817
  %1821 = call fastcc i32 @dvbt_sc_command(ptr noundef %63, i16 noundef zeroext 3, i16 noundef zeroext %1508, i16 noundef zeroext 31) #12
  %1822 = icmp slt i32 %1821, 0
  br i1 %1822, label %1831, label %1823

1823:                                             ; preds = %1820
  %1824 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 93
  %1825 = load i8, ptr %1824, align 4, !range !8
  %1826 = icmp eq i8 %1825, 0
  br i1 %1826, label %1827, label %1834

1827:                                             ; preds = %1823
  %1828 = getelementptr inbounds %struct.drxk_state, ptr %63, i32 0, i32 81
  %1829 = call fastcc i32 @dvbt_ctrl_set_sqi_speed(ptr noundef %63, ptr noundef %1828) #12
  %1830 = icmp slt i32 %1829, 0
  br i1 %1830, label %1831, label %1834

1831:                                             ; preds = %1827, %1820, %1817, %1813, %1789, %1764, %1742, %1738, %1634, %1631, %1628, %1625, %1622, %1619, %1616, %1613, %1610, %1607, %1604, %1585, %1566, %1547, %1528, %1507, %1492, %1438, %1414, %1390, %1366, %1342
  %1832 = phi i32 [ %1829, %1827 ], [ -22, %1507 ], [ %1605, %1604 ], [ %1586, %1585 ], [ %1567, %1566 ], [ %1548, %1547 ], [ %1529, %1528 ], [ %1620, %1619 ], [ %1617, %1616 ], [ %1614, %1613 ], [ %1611, %1610 ], [ %1608, %1607 ], [ %1821, %1820 ], [ %1818, %1817 ], [ %1815, %1813 ], [ %1791, %1789 ], [ %1766, %1764 ], [ %1743, %1742 ], [ %1740, %1738 ], [ %1635, %1634 ], [ %1632, %1631 ], [ %1629, %1628 ], [ %1626, %1625 ], [ %1623, %1622 ], [ %1494, %1492 ], [ %1440, %1438 ], [ %1416, %1414 ], [ %1392, %1390 ], [ %1368, %1366 ], [ %1343, %1342 ]
  %1833 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %1832, ptr noundef nonnull @__func__.set_dvbt) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #12
  br label %1873

1834:                                             ; preds = %1827, %1823
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #12
  %1835 = load i32, ptr @debug, align 4
  %1836 = icmp eq i32 %1835, 0
  br i1 %1836, label %1839, label %1837

1837:                                             ; preds = %1834
  %1838 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dvbt_start) #10
  br label %1839

1839:                                             ; preds = %1837, %1834
  %1840 = call fastcc i32 @dvbt_sc_command(ptr noundef %63, i16 noundef zeroext 1, i16 noundef zeroext 1, i16 noundef zeroext 1) #12
  %1841 = icmp slt i32 %1840, 0
  br i1 %1841, label %1869, label %1842

1842:                                             ; preds = %1839
  %1843 = call fastcc i32 @mpegts_start(ptr noundef %63) #12
  %1844 = icmp slt i32 %1843, 0
  br i1 %1844, label %1869, label %1845

1845:                                             ; preds = %1842
  %1846 = load i8, ptr %1346, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %35) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %35, i8 0, i32 6, i1 false) #12, !annotation !9
  %1847 = load i8, ptr %1348, align 1, !range !8
  %1848 = icmp eq i8 %1847, 0
  %1849 = select i1 %1848, i32 0, i32 192
  br i1 %1848, label %1854, label %1850

1850:                                             ; preds = %1845
  store i8 1, ptr %35, align 1
  %1851 = trunc i32 %1849 to i8
  %1852 = or i8 %1851, 1
  %1853 = getelementptr inbounds [6 x i8], ptr %35, i32 0, i32 2
  store i8 %1852, ptr %1853, align 1
  br label %1854

1854:                                             ; preds = %1850, %1845
  %1855 = phi i8 [ -64, %1850 ], [ 112, %1845 ]
  %1856 = phi i32 [ 4, %1850 ], [ 2, %1845 ]
  %1857 = getelementptr inbounds [6 x i8], ptr %35, i32 0, i32 1
  store i8 %1855, ptr %1857, align 1
  %1858 = getelementptr [6 x i8], ptr %35, i32 0, i32 %1856
  store i8 1, ptr %1858, align 1
  %1859 = or i32 %1856, 1
  %1860 = getelementptr [6 x i8], ptr %35, i32 0, i32 %1859
  store i8 0, ptr %1860, align 1
  %1861 = load i32, ptr @debug, align 4
  %1862 = icmp ugt i32 %1861, 1
  br i1 %1862, label %1863, label %1865

1863:                                             ; preds = %1854
  %1864 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29360128, i32 noundef 1, i32 noundef %1849) #10
  br label %1865

1865:                                             ; preds = %1863, %1854
  %1866 = add nuw nsw i32 %1856, 2
  %1867 = call fastcc i32 @i2c_write(ptr noundef %63, i8 noundef zeroext %1846, ptr noundef nonnull %35, i32 noundef %1866) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %35) #12
  %1868 = icmp slt i32 %1867, 0
  br i1 %1868, label %1869, label %1872

1869:                                             ; preds = %1865, %1842, %1839
  %1870 = phi i32 [ %1867, %1865 ], [ %1843, %1842 ], [ %1840, %1839 ]
  %1871 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %1870, ptr noundef nonnull @__func__.dvbt_start) #10
  br label %1873

1872:                                             ; preds = %1865
  store i32 2, ptr %69, align 4
  br label %1876

1873:                                             ; preds = %1869, %1831, %1331, %1327, %145, %130
  %1874 = phi i32 [ %1870, %1869 ], [ %1328, %1327 ], [ -22, %130 ], [ %1832, %1831 ], [ %1332, %1331 ], [ -22, %145 ]
  %1875 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %1874, ptr noundef nonnull @__func__.start) #10
  br label %1876

1876:                                             ; preds = %1873, %1872, %1330
  %1877 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %1877, align 1
  %1878 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %1878, align 1
  %1879 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %1879, align 1
  %1880 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %1880, align 1
  %1881 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  store i8 0, ptr %1881, align 1
  %1882 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 0, ptr %1882, align 1
  %1883 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %1883, align 1
  %1884 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %1884, align 1
  br label %1885

1885:                                             ; preds = %1876, %116, %107, %105, %76, %71, %68
  %1886 = phi i32 [ -11, %71 ], [ 0, %1876 ], [ -22, %76 ], [ -19, %68 ], [ -22, %107 ], [ -22, %116 ], [ -22, %105 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %58) #12
  ret i32 %1886
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxk_get_tune_settings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxk_get_tune_settings) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.drxk_state, ptr %4, i32 0, i32 27
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %13 [
    i32 5, label %19
    i32 0, label %12
  ]

12:                                               ; preds = %9
  br label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %19 [
    i32 1, label %16
    i32 18, label %16
    i32 3, label %16
  ]

16:                                               ; preds = %13, %13, %13
  store i32 3000, ptr %1, align 4
  %17 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %13, %12, %9
  %20 = phi i32 [ -11, %12 ], [ 0, %16 ], [ -19, %9 ], [ -22, %13 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxk_read_status(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca [4 x i8], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [4 x i8], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca [4 x i8], align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca [4 x i8], align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca [4 x i8], align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca [4 x i8], align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca [4 x i8], align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca [4 x i8], align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca [4 x i8], align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca [4 x i8], align 4
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x i16], align 4
  %26 = alloca i16, align 2
  %27 = alloca i32, align 4
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxk_read_status) #10
  %34 = load ptr, ptr %28, align 4
  br label %35

35:                                               ; preds = %32, %2
  %36 = phi ptr [ %34, %32 ], [ %29, %2 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #12
  store i16 0, ptr %26, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #12
  store i32 0, ptr %27, align 4, !annotation !9
  %37 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 27
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %40 [
    i32 5, label %539
    i32 0, label %39
  ]

39:                                               ; preds = %35
  br label %539

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 106
  store i32 0, ptr %41, align 4
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_lock_status) #10
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 28
  %48 = load i32, ptr %47, align 4
  switch i32 %48, label %163 [
    i32 1, label %49
    i32 2, label %49
    i32 3, label %49
    i32 4, label %68
  ]

49:                                               ; preds = %46, %46, %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #12
  store i32 0, ptr %25, align 4
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_qam_lock_status) #10
  br label %54

54:                                               ; preds = %52, %49
  %55 = call fastcc i32 @scu_command(ptr noundef %36, i16 noundef zeroext 517, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 2, ptr noundef nonnull %25) #12
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %55, ptr noundef nonnull @__func__.get_qam_lock_status) #10
  br label %59

59:                                               ; preds = %57, %54
  %60 = getelementptr inbounds [2 x i16], ptr %25, i32 0, i32 1
  %61 = load i16, ptr %60, align 2
  %62 = icmp ult i16 %61, 16384
  %63 = icmp sgt i16 %61, -1
  %64 = icmp ult i16 %61, -16384
  %65 = select i1 %64, i32 4, i32 0
  %66 = select i1 %63, i32 2, i32 %65
  %67 = select i1 %62, i32 1, i32 %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #12
  br i1 %56, label %148, label %152

68:                                               ; preds = %46
  %69 = load i32, ptr @debug, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_dvbt_lock_status) #10
  br label %73

73:                                               ; preds = %71, %68
  %74 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 4
  %75 = load i8, ptr %74, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #12
  store i32 0, ptr %23, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #12
  store i16 0, ptr %24, align 2, !annotation !9
  %76 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 102
  %77 = load i8, ptr %76, align 1, !range !8
  %78 = icmp eq i8 %77, 0
  %79 = select i1 %78, i32 0, i32 192
  br i1 %78, label %85, label %80

80:                                               ; preds = %73
  store i8 1, ptr %23, align 4
  %81 = trunc i32 %79 to i8
  %82 = or i8 %81, 3
  %83 = getelementptr inbounds [4 x i8], ptr %23, i32 0, i32 2
  store i8 %82, ptr %83, align 2
  %84 = getelementptr inbounds [4 x i8], ptr %23, i32 0, i32 3
  store i8 0, ptr %84, align 1
  br label %86

85:                                               ; preds = %73
  store i8 0, ptr %23, align 4
  br label %86

86:                                               ; preds = %85, %80
  %87 = phi i8 [ -64, %80 ], [ -16, %85 ]
  %88 = phi i32 [ 4, %80 ], [ 2, %85 ]
  %89 = getelementptr inbounds [4 x i8], ptr %23, i32 0, i32 1
  store i8 %87, ptr %89, align 1
  %90 = load i32, ptr @debug, align 4
  %91 = icmp ugt i32 %90, 1
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 62914560, i32 noundef %79) #10
  br label %94

94:                                               ; preds = %92, %86
  %95 = call fastcc i32 @i2c_read(ptr noundef %36, i8 noundef zeroext %75, ptr noundef nonnull %23, i32 noundef %88, ptr noundef nonnull %24, i32 noundef 2) #12
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #12
  br label %145

98:                                               ; preds = %94
  %99 = load i8, ptr %24, align 2
  %100 = zext i8 %99 to i16
  %101 = getelementptr inbounds [2 x i8], ptr %24, i32 0, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i16
  %104 = shl nuw i16 %103, 8
  %105 = or i16 %104, %100
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #12
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %163, label %107

107:                                              ; preds = %98
  %108 = load i8, ptr %74, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #12
  store i32 0, ptr %21, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #12
  store i16 0, ptr %22, align 2, !annotation !9
  %109 = load i8, ptr %76, align 1, !range !8
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, i32 0, i32 192
  br i1 %110, label %117, label %112

112:                                              ; preds = %107
  store i8 -105, ptr %21, align 4
  %113 = trunc i32 %111 to i8
  %114 = or i8 %113, 3
  %115 = getelementptr inbounds [4 x i8], ptr %21, i32 0, i32 2
  store i8 %114, ptr %115, align 2
  %116 = getelementptr inbounds [4 x i8], ptr %21, i32 0, i32 3
  store i8 0, ptr %116, align 1
  br label %118

117:                                              ; preds = %107
  store i8 -106, ptr %21, align 4
  br label %118

118:                                              ; preds = %117, %112
  %119 = phi i8 [ -62, %112 ], [ -14, %117 ]
  %120 = phi i32 [ 4, %112 ], [ 2, %117 ]
  %121 = getelementptr inbounds [4 x i8], ptr %21, i32 0, i32 1
  store i8 %119, ptr %121, align 1
  %122 = load i32, ptr @debug, align 4
  %123 = icmp ugt i32 %122, 1
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 63045707, i32 noundef %111) #10
  br label %126

126:                                              ; preds = %124, %118
  %127 = call fastcc i32 @i2c_read(ptr noundef %36, i8 noundef zeroext %108, ptr noundef nonnull %21, i32 noundef %120, ptr noundef nonnull %22, i32 noundef 2) #12
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #12
  br label %145

130:                                              ; preds = %126
  %131 = load i8, ptr %22, align 2
  %132 = zext i8 %131 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #12
  %133 = and i32 %132, 6
  %134 = icmp eq i32 %133, 6
  br i1 %134, label %154, label %135

135:                                              ; preds = %130
  %136 = and i32 %132, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = and i32 %132, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  %142 = lshr i32 %132, 3
  %143 = and i32 %142, 1
  %144 = xor i32 %143, 1
  br label %163

145:                                              ; preds = %129, %97
  %146 = phi i32 [ %95, %97 ], [ %127, %129 ]
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %146, ptr noundef nonnull @__func__.get_dvbt_lock_status) #10
  br label %148

148:                                              ; preds = %145, %59
  %149 = phi i32 [ 1, %145 ], [ %67, %59 ]
  %150 = phi i32 [ %146, %145 ], [ %55, %59 ]
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %150, ptr noundef nonnull @__func__.get_lock_status) #10
  br label %152

152:                                              ; preds = %148, %59
  %153 = phi i32 [ %149, %148 ], [ %67, %59 ]
  switch i32 %153, label %163 [
    i32 4, label %154
    i32 2, label %160
  ]

154:                                              ; preds = %152, %130
  %155 = load i32, ptr %41, align 4
  %156 = or i32 %155, 31
  store i32 %156, ptr %41, align 4
  br label %163

157:                                              ; preds = %135
  %158 = load i32, ptr %41, align 4
  %159 = or i32 %158, 15
  store i32 %159, ptr %41, align 4
  br label %163

160:                                              ; preds = %152, %138
  %161 = load i32, ptr %41, align 4
  %162 = or i32 %161, 7
  store i32 %162, ptr %41, align 4
  br label %163

163:                                              ; preds = %160, %157, %154, %152, %141, %98, %46
  %164 = phi i32 [ 3, %157 ], [ 2, %160 ], [ 1, %98 ], [ 1, %46 ], [ 4, %154 ], [ %144, %141 ], [ %153, %152 ]
  %165 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  %166 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 0, ptr %166, align 8
  %167 = load i32, ptr %47, align 4
  %168 = icmp eq i32 %167, 4
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 84
  %171 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 84, i32 2
  %172 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 84, i32 3
  %173 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 85
  br label %187

174:                                              ; preds = %163
  %175 = add i32 %167, -1
  %176 = icmp ult i32 %175, 3
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 74
  %179 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 74, i32 2
  %180 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 74, i32 3
  %181 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 75
  br label %187

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 62
  %184 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 62, i32 2
  %185 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 62, i32 3
  %186 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 63
  br label %187

187:                                              ; preds = %182, %177, %169
  %188 = phi ptr [ %181, %177 ], [ %186, %182 ], [ %173, %169 ]
  %189 = phi ptr [ %178, %177 ], [ %183, %182 ], [ %170, %169 ]
  %190 = phi ptr [ %179, %177 ], [ %184, %182 ], [ %171, %169 ]
  %191 = phi ptr [ %180, %177 ], [ %185, %182 ], [ %172, %169 ]
  %192 = load i16, ptr %191, align 4
  %193 = load i16, ptr %190, align 2
  %194 = load i32, ptr %189, align 4
  %195 = load i32, ptr %188, align 4
  %196 = getelementptr inbounds i8, ptr %188, i32 6
  %197 = load i16, ptr %196, align 2
  %198 = getelementptr inbounds i8, ptr %188, i32 8
  %199 = load i16, ptr %198, align 4
  %200 = icmp eq i32 %194, 0
  br i1 %200, label %201, label %265

201:                                              ; preds = %187
  %202 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 4
  %203 = load i8, ptr %202, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #12
  store i32 1040221067, ptr %19, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #12
  store i16 0, ptr %20, align 2, !annotation !9
  %204 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 102
  %205 = load i8, ptr %204, align 1, !range !8
  %206 = icmp eq i8 %205, 0
  %207 = select i1 %206, i32 0, i32 192
  %208 = trunc i32 %207 to i8
  %209 = getelementptr inbounds [4 x i8], ptr %19, i32 0, i32 2
  store i8 %208, ptr %209, align 2
  %210 = load i32, ptr @debug, align 4
  %211 = icmp ugt i32 %210, 1
  br i1 %211, label %212, label %214

212:                                              ; preds = %201
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593221, i32 noundef %207) #10
  br label %214

214:                                              ; preds = %212, %201
  %215 = call fastcc i32 @i2c_read(ptr noundef %36, i8 noundef zeroext %203, ptr noundef nonnull %19, i32 noundef 4, ptr noundef nonnull %20, i32 noundef 2) #12
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #12
  br label %329

218:                                              ; preds = %214
  %219 = load i8, ptr %20, align 2
  %220 = zext i8 %219 to i32
  %221 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i32
  %224 = shl nuw nsw i32 %223, 8
  %225 = or i32 %224, %220
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #12
  %226 = load i8, ptr %202, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #12
  store i32 1040221071, ptr %17, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #12
  store i16 0, ptr %18, align 2, !annotation !9
  %227 = load i8, ptr %204, align 1, !range !8
  %228 = icmp eq i8 %227, 0
  %229 = select i1 %228, i32 0, i32 192
  %230 = trunc i32 %229 to i8
  %231 = getelementptr inbounds [4 x i8], ptr %17, i32 0, i32 2
  store i8 %230, ptr %231, align 2
  %232 = load i32, ptr @debug, align 4
  %233 = icmp ugt i32 %232, 1
  br i1 %233, label %234, label %236

234:                                              ; preds = %218
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593223, i32 noundef %229) #10
  br label %236

236:                                              ; preds = %234, %218
  %237 = call fastcc i32 @i2c_read(ptr noundef %36, i8 noundef zeroext %226, ptr noundef nonnull %17, i32 noundef 4, ptr noundef nonnull %18, i32 noundef 2) #12
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #12
  br label %329

240:                                              ; preds = %236
  %241 = load i8, ptr %18, align 2
  %242 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  %243 = load i8, ptr %242, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #12
  %244 = icmp eq i16 %192, %193
  br i1 %244, label %262, label %245

245:                                              ; preds = %240
  %246 = zext i8 %243 to i32
  %247 = shl nuw nsw i32 %246, 8
  %248 = zext i8 %241 to i32
  %249 = or i32 %247, %248
  %250 = add nuw nsw i32 %249, %225
  %251 = call i32 @llvm.umin.i32(i32 %250, i32 65535) #12
  %252 = trunc i32 %251 to i16
  %253 = call i16 @llvm.umax.i16(i16 %193, i16 %252) #12
  %254 = call i16 @llvm.umin.i16(i16 %253, i16 %192) #12
  %255 = zext i16 %192 to i32
  %256 = zext i16 %193 to i32
  %257 = sub nsw i32 %255, %256
  %258 = zext i16 %254 to i32
  %259 = sub nsw i32 %258, %256
  %260 = mul nsw i32 %259, 5000
  %261 = udiv i32 %260, %257
  br label %262

262:                                              ; preds = %245, %240
  %263 = phi i32 [ %261, %245 ], [ 0, %240 ]
  %264 = icmp eq i32 %195, 0
  br i1 %264, label %267, label %320

265:                                              ; preds = %187
  %266 = icmp eq i32 %195, 0
  br i1 %266, label %267, label %327

267:                                              ; preds = %265, %262
  %268 = phi i32 [ 0, %265 ], [ %263, %262 ]
  %269 = phi i32 [ 40, %265 ], [ 90, %262 ]
  %270 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 4
  %271 = load i8, ptr %270, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #12
  store i32 1040221057, ptr %15, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #12
  store i16 0, ptr %16, align 2, !annotation !9
  %272 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 102
  %273 = load i8, ptr %272, align 1, !range !8
  %274 = icmp eq i8 %273, 0
  %275 = select i1 %274, i32 0, i32 192
  %276 = trunc i32 %275 to i8
  %277 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 2
  store i8 %276, ptr %277, align 2
  %278 = load i32, ptr @debug, align 4
  %279 = icmp ugt i32 %278, 1
  br i1 %279, label %280, label %282

280:                                              ; preds = %267
  %281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593216, i32 noundef %275) #10
  br label %282

282:                                              ; preds = %280, %267
  %283 = call fastcc i32 @i2c_read(ptr noundef %36, i8 noundef zeroext %271, ptr noundef nonnull %15, i32 noundef 4, ptr noundef nonnull %16, i32 noundef 2) #12
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %301, label %285

285:                                              ; preds = %282
  %286 = load i8, ptr %16, align 2
  %287 = zext i8 %286 to i16
  %288 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  %289 = load i8, ptr %288, align 1
  %290 = zext i8 %289 to i16
  %291 = shl nuw i16 %290, 8
  %292 = or i16 %291, %287
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  %293 = load i8, ptr %270, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  store i32 1040221053, ptr %13, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i16 0, ptr %14, align 2, !annotation !9
  %294 = load i8, ptr %272, align 1, !range !8
  %295 = icmp eq i8 %294, 0
  %296 = select i1 %295, i32 0, i32 192
  %297 = trunc i32 %296 to i8
  %298 = getelementptr inbounds [4 x i8], ptr %13, i32 0, i32 2
  store i8 %297, ptr %298, align 2
  %299 = load i32, ptr @debug, align 4
  %300 = icmp ugt i32 %299, 1
  br i1 %300, label %302, label %304

301:                                              ; preds = %282
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  br label %329

302:                                              ; preds = %285
  %303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593214, i32 noundef %296) #10
  br label %304

304:                                              ; preds = %302, %285
  %305 = call fastcc i32 @i2c_read(ptr noundef %36, i8 noundef zeroext %293, ptr noundef nonnull %13, i32 noundef 4, ptr noundef nonnull %14, i32 noundef 2) #12
  %306 = icmp slt i32 %305, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  br i1 %306, label %329, label %307

307:                                              ; preds = %304
  %308 = icmp eq i16 %199, %197
  br i1 %308, label %320, label %309

309:                                              ; preds = %307
  %310 = call i16 @llvm.umax.i16(i16 %292, i16 %197) #12
  %311 = call i16 @llvm.umin.i16(i16 %310, i16 %199) #12
  %312 = zext i16 %197 to i32
  %313 = zext i16 %199 to i32
  %314 = sub nsw i32 %313, %312
  %315 = zext i16 %311 to i32
  %316 = sub nsw i32 %315, %312
  %317 = mul nsw i32 %316, 4000
  %318 = udiv i32 %317, %314
  %319 = add i32 %318, %268
  br label %320

320:                                              ; preds = %309, %307, %262
  %321 = phi i32 [ %268, %307 ], [ %319, %309 ], [ %263, %262 ]
  %322 = phi i32 [ %269, %307 ], [ %269, %309 ], [ 50, %262 ]
  %323 = mul i32 %321, 65535
  %324 = udiv i32 %323, %322
  %325 = udiv i32 %324, 100
  %326 = zext i32 %325 to i64
  br label %327

327:                                              ; preds = %320, %265
  %328 = phi i64 [ %326, %320 ], [ 65535, %265 ]
  store i64 %328, ptr %166, align 8
  br label %329

329:                                              ; preds = %327, %304, %301, %239, %217
  store i8 2, ptr %165, align 1
  %330 = icmp ugt i32 %164, 1
  br i1 %330, label %333, label %331

331:                                              ; preds = %329
  %332 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %332, align 1
  br label %340

333:                                              ; preds = %329
  call fastcc void @get_signal_to_noise(ptr noundef %36, ptr noundef nonnull %27) #12
  %334 = load i32, ptr %27, align 4
  %335 = mul i32 %334, 100
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %338 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %336, ptr %338, align 1
  store i8 1, ptr %337, align 1
  %339 = icmp eq i32 %164, 2
  br i1 %339, label %340, label %347

340:                                              ; preds = %333, %331
  %341 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %341, align 1
  %342 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %342, align 1
  %343 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  store i8 0, ptr %343, align 1
  %344 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 0, ptr %344, align 1
  %345 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %345, align 1
  %346 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %346, align 1
  br label %541

347:                                              ; preds = %333
  %348 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 4
  %349 = load i8, ptr %348, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  store i32 0, ptr %11, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i16 0, ptr %12, align 2, !annotation !9
  %350 = getelementptr inbounds %struct.drxk_state, ptr %36, i32 0, i32 102
  %351 = load i8, ptr %350, align 1, !range !8
  %352 = icmp eq i8 %351, 0
  %353 = select i1 %352, i32 0, i32 192
  br i1 %352, label %359, label %354

354:                                              ; preds = %347
  store i8 47, ptr %11, align 4
  %355 = trunc i32 %353 to i8
  %356 = or i8 %355, 3
  %357 = getelementptr inbounds [4 x i8], ptr %11, i32 0, i32 2
  store i8 %356, ptr %357, align 2
  %358 = getelementptr inbounds [4 x i8], ptr %11, i32 0, i32 3
  store i8 0, ptr %358, align 1
  br label %360

359:                                              ; preds = %347
  store i8 46, ptr %11, align 4
  br label %360

360:                                              ; preds = %359, %354
  %361 = phi i8 [ 66, %354 ], [ -46, %359 ]
  %362 = phi i32 [ 4, %354 ], [ 2, %359 ]
  %363 = getelementptr inbounds [4 x i8], ptr %11, i32 0, i32 1
  store i8 %361, ptr %363, align 1
  %364 = load i32, ptr @debug, align 4
  %365 = icmp ugt i32 %364, 1
  br i1 %365, label %366, label %368

366:                                              ; preds = %360
  %367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 54657047, i32 noundef %353) #10
  br label %368

368:                                              ; preds = %366, %360
  %369 = call fastcc i32 @i2c_read(ptr noundef %36, i8 noundef zeroext %349, ptr noundef nonnull %11, i32 noundef %362, ptr noundef nonnull %12, i32 noundef 2) #12
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %368
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  br label %539

372:                                              ; preds = %368
  %373 = load i8, ptr %12, align 2
  %374 = zext i8 %373 to i16
  %375 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  %376 = load i8, ptr %375, align 1
  %377 = zext i8 %376 to i16
  %378 = shl nuw i16 %377, 8
  %379 = or i16 %378, %374
  store i16 %379, ptr %26, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  %380 = load i8, ptr %348, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  store i16 0, ptr %10, align 2, !annotation !9
  %381 = load i8, ptr %350, align 1, !range !8
  %382 = icmp eq i8 %381, 0
  %383 = select i1 %382, i32 0, i32 192
  br i1 %382, label %389, label %384

384:                                              ; preds = %372
  store i8 49, ptr %9, align 4
  %385 = trunc i32 %383 to i8
  %386 = or i8 %385, 3
  %387 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 2
  store i8 %386, ptr %387, align 2
  %388 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 3
  store i8 0, ptr %388, align 1
  br label %390

389:                                              ; preds = %372
  store i8 48, ptr %9, align 4
  br label %390

390:                                              ; preds = %389, %384
  %391 = phi i8 [ 66, %384 ], [ -46, %389 ]
  %392 = phi i32 [ 4, %384 ], [ 2, %389 ]
  %393 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 1
  store i8 %391, ptr %393, align 1
  %394 = load i32, ptr @debug, align 4
  %395 = icmp ugt i32 %394, 1
  br i1 %395, label %396, label %398

396:                                              ; preds = %390
  %397 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 54657048, i32 noundef %383) #10
  br label %398

398:                                              ; preds = %396, %390
  %399 = call fastcc i32 @i2c_read(ptr noundef %36, i8 noundef zeroext %380, ptr noundef nonnull %9, i32 noundef %392, ptr noundef nonnull %10, i32 noundef 2) #12
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %398
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %539

402:                                              ; preds = %398
  %403 = load i8, ptr %10, align 2
  %404 = zext i8 %403 to i16
  %405 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  %406 = load i8, ptr %405, align 1
  %407 = zext i8 %406 to i16
  %408 = shl nuw i16 %407, 8
  %409 = or i16 %408, %404
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %410 = load i8, ptr %348, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i16 0, ptr %8, align 2, !annotation !9
  %411 = load i8, ptr %350, align 1, !range !8
  %412 = icmp eq i8 %411, 0
  %413 = select i1 %412, i32 0, i32 192
  br i1 %412, label %419, label %414

414:                                              ; preds = %402
  store i8 41, ptr %7, align 4
  %415 = trunc i32 %413 to i8
  %416 = or i8 %415, 1
  %417 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 2
  store i8 %416, ptr %417, align 2
  %418 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 3
  store i8 0, ptr %418, align 1
  br label %420

419:                                              ; preds = %402
  store i8 40, ptr %7, align 4
  br label %420

420:                                              ; preds = %419, %414
  %421 = phi i8 [ -61, %414 ], [ 115, %419 ]
  %422 = phi i32 [ 4, %414 ], [ 2, %419 ]
  %423 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 1
  store i8 %421, ptr %423, align 1
  %424 = load i32, ptr @debug, align 4
  %425 = icmp ugt i32 %424, 1
  br i1 %425, label %426, label %428

426:                                              ; preds = %420
  %427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 29556756, i32 noundef %413) #10
  br label %428

428:                                              ; preds = %426, %420
  %429 = call fastcc i32 @i2c_read(ptr noundef %36, i8 noundef zeroext %410, ptr noundef nonnull %7, i32 noundef %422, ptr noundef nonnull %8, i32 noundef 2) #12
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %539

432:                                              ; preds = %428
  %433 = load i8, ptr %8, align 2
  %434 = zext i8 %433 to i16
  %435 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %436 = load i8, ptr %435, align 1
  %437 = zext i8 %436 to i16
  %438 = shl nuw i16 %437, 8
  %439 = or i16 %438, %434
  store i16 %439, ptr %26, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %440 = zext i16 %439 to i32
  %441 = load i8, ptr %348, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2, !annotation !9
  %442 = load i8, ptr %350, align 1, !range !8
  %443 = icmp eq i8 %442, 0
  %444 = select i1 %443, i32 0, i32 192
  br i1 %443, label %450, label %445

445:                                              ; preds = %432
  store i8 39, ptr %5, align 4
  %446 = trunc i32 %444 to i8
  %447 = or i8 %446, 1
  %448 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  store i8 %447, ptr %448, align 2
  %449 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  store i8 0, ptr %449, align 1
  br label %451

450:                                              ; preds = %432
  store i8 38, ptr %5, align 4
  br label %451

451:                                              ; preds = %450, %445
  %452 = phi i8 [ -61, %445 ], [ 115, %450 ]
  %453 = phi i32 [ 4, %445 ], [ 2, %450 ]
  %454 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  store i8 %452, ptr %454, align 1
  %455 = load i32, ptr @debug, align 4
  %456 = icmp ugt i32 %455, 1
  br i1 %456, label %457, label %459

457:                                              ; preds = %451
  %458 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 29556755, i32 noundef %444) #10
  br label %459

459:                                              ; preds = %457, %451
  %460 = call fastcc i32 @i2c_read(ptr noundef %36, i8 noundef zeroext %441, ptr noundef nonnull %5, i32 noundef %453, ptr noundef nonnull %6, i32 noundef 2) #12
  %461 = icmp slt i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %459
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %539

463:                                              ; preds = %459
  %464 = load i8, ptr %6, align 2
  %465 = zext i8 %464 to i32
  %466 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %467 = load i8, ptr %466, align 1
  %468 = zext i8 %467 to i32
  %469 = shl nuw nsw i32 %468, 8
  %470 = or i32 %469, %465
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %471 = load i8, ptr %348, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !9
  %472 = load i8, ptr %350, align 1, !range !8
  %473 = icmp eq i8 %472, 0
  %474 = select i1 %473, i32 0, i32 192
  br i1 %473, label %480, label %475

475:                                              ; preds = %463
  store i8 37, ptr %3, align 4
  %476 = trunc i32 %474 to i8
  %477 = or i8 %476, 1
  %478 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %477, ptr %478, align 2
  %479 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %479, align 1
  br label %481

480:                                              ; preds = %463
  store i8 36, ptr %3, align 4
  br label %481

481:                                              ; preds = %480, %475
  %482 = phi i8 [ -61, %475 ], [ 115, %480 ]
  %483 = phi i32 [ 4, %475 ], [ 2, %480 ]
  %484 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 %482, ptr %484, align 1
  %485 = load i32, ptr @debug, align 4
  %486 = icmp ugt i32 %485, 1
  br i1 %486, label %487, label %489

487:                                              ; preds = %481
  %488 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 29556754, i32 noundef %474) #10
  br label %489

489:                                              ; preds = %487, %481
  %490 = call fastcc i32 @i2c_read(ptr noundef %36, i8 noundef zeroext %471, ptr noundef nonnull %3, i32 noundef %483, ptr noundef nonnull %4, i32 noundef 2) #12
  %491 = icmp slt i32 %490, 0
  br i1 %491, label %492, label %493

492:                                              ; preds = %489
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %539

493:                                              ; preds = %489
  %494 = load i8, ptr %4, align 2
  %495 = zext i8 %494 to i16
  %496 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %497 = load i8, ptr %496, align 1
  %498 = zext i8 %497 to i16
  %499 = shl nuw i16 %498, 8
  %500 = or i16 %499, %495
  store i16 %500, ptr %26, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %501 = call fastcc i32 @read16(ptr noundef %36, i32 noundef 8593099, ptr noundef nonnull %26) #12
  %502 = icmp slt i32 %501, 0
  br i1 %502, label %539, label %503

503:                                              ; preds = %493
  %504 = zext i16 %500 to i32
  %505 = load i16, ptr %26, align 2
  %506 = call fastcc i32 @write16(ptr noundef %36, i32 noundef 8593099, i16 noundef zeroext 0) #12
  %507 = mul nuw i32 %470, %440
  %508 = mul nuw nsw i32 %504, 1632
  %509 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 3, ptr %509, align 1
  %510 = zext i16 %505 to i64
  %511 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %512 = load i64, ptr %511, align 1
  %513 = add i64 %512, %510
  store i64 %513, ptr %511, align 1
  %514 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 3, ptr %514, align 1
  %515 = zext i16 %500 to i64
  %516 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %517 = load i64, ptr %516, align 1
  %518 = add i64 %517, %515
  store i64 %518, ptr %516, align 1
  %519 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  store i8 3, ptr %519, align 1
  %520 = zext i16 %379 to i64
  %521 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  %522 = load i64, ptr %521, align 1
  %523 = add i64 %522, %520
  store i64 %523, ptr %521, align 1
  %524 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 3, ptr %524, align 1
  %525 = zext i16 %409 to i64
  %526 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  %527 = load i64, ptr %526, align 1
  %528 = add i64 %527, %525
  store i64 %528, ptr %526, align 1
  %529 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %529, align 1
  %530 = zext i32 %507 to i64
  %531 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %532 = load i64, ptr %531, align 1
  %533 = add i64 %532, %530
  store i64 %533, ptr %531, align 1
  %534 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %534, align 1
  %535 = zext i32 %508 to i64
  %536 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %537 = load i64, ptr %536, align 1
  %538 = add i64 %537, %535
  store i64 %538, ptr %536, align 1
  br label %541

539:                                              ; preds = %493, %492, %462, %431, %401, %371, %39, %35
  %540 = phi i32 [ %490, %492 ], [ %460, %462 ], [ %429, %431 ], [ %399, %401 ], [ %369, %371 ], [ %501, %493 ], [ -19, %35 ], [ -11, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #12
  br label %544

541:                                              ; preds = %503, %340
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #12
  %542 = getelementptr inbounds %struct.drxk_state, ptr %29, i32 0, i32 106
  %543 = load i32, ptr %542, align 4
  store i32 %543, ptr %1, align 4
  br label %544

544:                                              ; preds = %541, %539
  %545 = phi i32 [ 0, %541 ], [ %540, %539 ]
  ret i32 %545
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxk_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxk_read_signal_strength) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.drxk_state, ptr %4, i32 0, i32 27
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %13 [
    i32 5, label %17
    i32 0, label %12
  ]

12:                                               ; preds = %9
  br label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %15 = load i64, ptr %14, align 1
  %16 = trunc i64 %15 to i16
  store i16 %16, ptr %1, align 2
  br label %17

17:                                               ; preds = %13, %12, %9
  %18 = phi i32 [ -11, %12 ], [ 0, %13 ], [ -19, %9 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxk_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxk_read_snr) #10
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.drxk_state, ptr %5, i32 0, i32 27
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %14 [
    i32 5, label %18
    i32 0, label %13
  ]

13:                                               ; preds = %10
  br label %18

14:                                               ; preds = %10
  call fastcc void @get_signal_to_noise(ptr noundef %5, ptr noundef nonnull %3)
  %15 = load i32, ptr %3, align 4
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 0)
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr %1, align 2
  br label %18

18:                                               ; preds = %14, %13, %10
  %19 = phi i32 [ -11, %13 ], [ 0, %14 ], [ -19, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxk_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxk_read_ucblocks) #10
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.drxk_state, ptr %6, i32 0, i32 27
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %15 [
    i32 5, label %49
    i32 0, label %14
  ]

14:                                               ; preds = %11
  br label %49

15:                                               ; preds = %11
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dvbtqam_get_acc_pkt_err) #10
  %20 = load i32, ptr @debug, align 4
  %21 = icmp ugt i32 %20, 1
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ %21, %18 ], [ false, %15 ]
  %24 = getelementptr inbounds %struct.drxk_state, ptr %6, i32 0, i32 4
  %25 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 1023443863, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !9
  %26 = getelementptr inbounds %struct.drxk_state, ptr %6, i32 0, i32 102
  %27 = load i8, ptr %26, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 0, i32 192
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %30, ptr %31, align 2
  br i1 %23, label %32, label %34

32:                                               ; preds = %22
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593099, i32 noundef %29) #10
  br label %34

34:                                               ; preds = %32, %22
  %35 = call fastcc i32 @i2c_read(ptr noundef %6, i8 noundef zeroext %25, ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull %4, i32 noundef 2) #12
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load i8, ptr %4, align 2
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or i32 %43, %39
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %47

45:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %35, ptr noundef nonnull @__func__.dvbtqam_get_acc_pkt_err) #10
  br label %47

47:                                               ; preds = %45, %37
  %48 = phi i32 [ %44, %37 ], [ 0, %45 ]
  store i32 %48, ptr %1, align 4
  br label %49

49:                                               ; preds = %47, %14, %11
  %50 = phi i32 [ -11, %14 ], [ 0, %47 ], [ -19, %11 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drxk_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, ptr @.str.38, ptr @.str.37
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.drxk_gate_ctrl, ptr noundef nonnull %9) #10
  br label %11

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.drxk_state, ptr %4, i32 0, i32 27
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = icmp ne i32 %1, 0
  %17 = tail call fastcc i32 @ConfigureI2CBridge(ptr noundef %4, i1 noundef zeroext %16)
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i32 [ %17, %15 ], [ -19, %11 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpegts_stop(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [4 x i8], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca [6 x i8], align 1
  %6 = alloca [4 x i8], align 4
  %7 = alloca [2 x i8], align 2
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mpegts_stop) #10
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %14 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i16 0, ptr %7, align 2, !annotation !9
  %15 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 0, i32 192
  br i1 %17, label %24, label %19

19:                                               ; preds = %12
  store i8 -127, ptr %6, align 4
  %20 = trunc i32 %18 to i8
  %21 = or i8 %20, 1
  %22 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 2
  store i8 %21, ptr %22, align 2
  %23 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 3
  store i8 0, ptr %23, align 1
  br label %25

24:                                               ; preds = %12
  store i8 -128, ptr %6, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i8 [ -60, %19 ], [ 116, %24 ]
  %27 = phi i32 [ 4, %19 ], [ 2, %24 ]
  %28 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 1
  store i8 %26, ptr %28, align 1
  %29 = load i32, ptr @debug, align 4
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 29622336, i32 noundef %18) #10
  br label %33

33:                                               ; preds = %31, %25
  %34 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %14, ptr noundef nonnull %6, i32 noundef %27, ptr noundef nonnull %7, i32 noundef 2) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %126

37:                                               ; preds = %33
  %38 = load i8, ptr %7, align 2
  %39 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %43 = or i8 %38, 16
  %44 = zext i8 %43 to i32
  %45 = or i32 %42, %44
  %46 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #12, !annotation !9
  %47 = load i8, ptr %15, align 1, !range !8
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %48, i32 0, i32 192
  br i1 %48, label %54, label %50

50:                                               ; preds = %37
  store i8 -127, ptr %5, align 1
  %51 = trunc i32 %49 to i8
  %52 = or i8 %51, 1
  %53 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %52, ptr %53, align 1
  br label %55

54:                                               ; preds = %37
  store i8 -128, ptr %5, align 1
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i8 [ -60, %50 ], [ 116, %54 ]
  %57 = phi i32 [ 4, %50 ], [ 2, %54 ]
  %58 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 %56, ptr %58, align 1
  %59 = getelementptr [6 x i8], ptr %5, i32 0, i32 %57
  store i8 %43, ptr %59, align 1
  %60 = or i32 %57, 1
  %61 = getelementptr [6 x i8], ptr %5, i32 0, i32 %60
  store i8 %40, ptr %61, align 1
  %62 = load i32, ptr @debug, align 4
  %63 = icmp ugt i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622336, i32 noundef %45, i32 noundef %49) #10
  br label %66

66:                                               ; preds = %64, %55
  %67 = add nuw nsw i32 %57, 2
  %68 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %46, ptr noundef nonnull %5, i32 noundef %67) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %126, label %70

70:                                               ; preds = %66
  %71 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !9
  %72 = load i8, ptr %15, align 1, !range !8
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %73, i32 0, i32 192
  br i1 %73, label %80, label %75

75:                                               ; preds = %70
  store i8 -111, ptr %3, align 4
  %76 = trunc i32 %74 to i8
  %77 = or i8 %76, 1
  %78 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %77, ptr %78, align 2
  %79 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %79, align 1
  br label %81

80:                                               ; preds = %70
  store i8 -112, ptr %3, align 4
  br label %81

81:                                               ; preds = %80, %75
  %82 = phi i8 [ -60, %75 ], [ 116, %80 ]
  %83 = phi i32 [ 4, %75 ], [ 2, %80 ]
  %84 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 %82, ptr %84, align 1
  %85 = load i32, ptr @debug, align 4
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 29622344, i32 noundef %74) #10
  br label %89

89:                                               ; preds = %87, %81
  %90 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %71, ptr noundef nonnull %3, i32 noundef %83, ptr noundef nonnull %4, i32 noundef 2) #12
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %126

93:                                               ; preds = %89
  %94 = load i8, ptr %4, align 2
  %95 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %99 = or i8 %94, 4
  %100 = zext i8 %99 to i32
  %101 = or i32 %98, %100
  %102 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %103 = load i8, ptr %15, align 1, !range !8
  %104 = icmp eq i8 %103, 0
  %105 = select i1 %104, i32 0, i32 192
  br i1 %104, label %110, label %106

106:                                              ; preds = %93
  store i8 -111, ptr %2, align 1
  %107 = trunc i32 %105 to i8
  %108 = or i8 %107, 1
  %109 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %108, ptr %109, align 1
  br label %111

110:                                              ; preds = %93
  store i8 -112, ptr %2, align 1
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi i8 [ -60, %106 ], [ 116, %110 ]
  %113 = phi i32 [ 4, %106 ], [ 2, %110 ]
  %114 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %112, ptr %114, align 1
  %115 = getelementptr [6 x i8], ptr %2, i32 0, i32 %113
  store i8 %99, ptr %115, align 1
  %116 = or i32 %113, 1
  %117 = getelementptr [6 x i8], ptr %2, i32 0, i32 %116
  store i8 %96, ptr %117, align 1
  %118 = load i32, ptr @debug, align 4
  %119 = icmp ugt i32 %118, 1
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622344, i32 noundef %101, i32 noundef %105) #10
  br label %122

122:                                              ; preds = %120, %111
  %123 = add nuw nsw i32 %113, 2
  %124 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %102, ptr noundef nonnull %2, i32 noundef %123) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122, %92, %66, %36
  %127 = phi i32 [ %124, %122 ], [ %90, %92 ], [ %34, %36 ], [ %68, %66 ]
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %127, ptr noundef nonnull @__func__.mpegts_stop) #10
  br label %129

129:                                              ; preds = %126, %122
  %130 = phi i32 [ %127, %126 ], [ %124, %122 ]
  ret i32 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !9
  %8 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 0, i32 192
  %12 = xor i1 %10, true
  %13 = and i32 %1, -63897728
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %14, i1 true, i1 %12
  %16 = trunc i32 %1 to i8
  %17 = shl i8 %16, 1
  br i1 %15, label %18, label %28

18:                                               ; preds = %3
  %19 = or i8 %17, 1
  store i8 %19, ptr %4, align 4
  %20 = lshr i32 %1, 16
  %21 = lshr i32 %1, 24
  %22 = or i32 %11, %21
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  store i8 %23, ptr %24, align 2
  %25 = lshr i32 %1, 7
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  store i8 %26, ptr %27, align 1
  br label %34

28:                                               ; preds = %3
  store i8 %17, ptr %4, align 4
  %29 = lshr i32 %1, 16
  %30 = and i32 %29, 15
  %31 = lshr i32 %1, 18
  %32 = and i32 %31, 240
  %33 = or i32 %30, %32
  br label %34

34:                                               ; preds = %28, %18
  %35 = phi i32 [ %20, %18 ], [ %33, %28 ]
  %36 = phi i32 [ 4, %18 ], [ 2, %28 ]
  %37 = trunc i32 %35 to i8
  %38 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  store i8 %37, ptr %38, align 1
  %39 = load i32, ptr @debug, align 4
  %40 = icmp ugt i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef %1, i32 noundef %11) #10
  br label %43

43:                                               ; preds = %41, %34
  %44 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %7, ptr noundef nonnull %4, i32 noundef %36, ptr noundef nonnull %5, i32 noundef 2) #12
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = icmp eq ptr %2, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %46
  %49 = load i8, ptr %5, align 2
  %50 = zext i8 %49 to i16
  %51 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i16
  %54 = shl nuw i16 %53, 8
  %55 = or i16 %54, %50
  store i16 %55, ptr %2, align 2
  br label %56

56:                                               ; preds = %48, %46, %43
  %57 = phi i32 [ %44, %43 ], [ 0, %48 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write16(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [6 x i8], align 1
  %5 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %7 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 0, i32 192
  %11 = xor i1 %9, true
  %12 = and i32 %1, -63897728
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %13, i1 true, i1 %11
  %15 = trunc i32 %1 to i8
  %16 = shl i8 %15, 1
  br i1 %14, label %17, label %27

17:                                               ; preds = %3
  %18 = or i8 %16, 1
  store i8 %18, ptr %4, align 1
  %19 = lshr i32 %1, 16
  %20 = lshr i32 %1, 24
  %21 = or i32 %10, %20
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %22, ptr %23, align 1
  %24 = lshr i32 %1, 7
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 3
  store i8 %25, ptr %26, align 1
  br label %33

27:                                               ; preds = %3
  store i8 %16, ptr %4, align 1
  %28 = lshr i32 %1, 16
  %29 = and i32 %28, 15
  %30 = lshr i32 %1, 18
  %31 = and i32 %30, 240
  %32 = or i32 %29, %31
  br label %33

33:                                               ; preds = %27, %17
  %34 = phi i32 [ %19, %17 ], [ %32, %27 ]
  %35 = phi i32 [ 4, %17 ], [ 2, %27 ]
  %36 = trunc i32 %34 to i8
  %37 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %36, ptr %37, align 1
  %38 = trunc i16 %2 to i8
  %39 = getelementptr [6 x i8], ptr %4, i32 0, i32 %35
  store i8 %38, ptr %39, align 1
  %40 = lshr i16 %2, 8
  %41 = trunc i16 %40 to i8
  %42 = or i32 %35, 1
  %43 = getelementptr [6 x i8], ptr %4, i32 0, i32 %42
  store i8 %41, ptr %43, align 1
  %44 = load i32, ptr @debug, align 4
  %45 = icmp ugt i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = zext i16 %2 to i32
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef %1, i32 noundef %47, i32 noundef %10) #10
  br label %49

49:                                               ; preds = %46, %33
  %50 = add nuw nsw i32 %35, 2
  %51 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %6, ptr noundef nonnull %4, i32 noundef %50) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  ret i32 %51
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %8 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false), !annotation !9
  %9 = zext i8 %1 to i16
  store i16 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  %12 = trunc i32 %3 to i16
  store i16 %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %9, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  %17 = trunc i32 %5 to i16
  store i16 %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 99
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  br i1 %21, label %26, label %24

24:                                               ; preds = %6
  %25 = call i32 @__i2c_transfer(ptr noundef %23, ptr noundef nonnull %7, i32 noundef 2) #12
  br label %28

26:                                               ; preds = %6
  %27 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %7, i32 noundef 2) #12
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = icmp eq i32 %29, 2
  %31 = load i32, ptr @debug, align 4
  %32 = icmp ugt i32 %31, 2
  br i1 %30, label %41, label %33

33:                                               ; preds = %28
  br i1 %32, label %34, label %36

34:                                               ; preds = %33
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %36

36:                                               ; preds = %34, %33
  %37 = icmp sgt i32 %29, -1
  %38 = select i1 %37, i32 -5, i32 %29
  %39 = zext i8 %1 to i32
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %39) #10
  br label %66

41:                                               ; preds = %28
  br i1 %32, label %42, label %66

42:                                               ; preds = %41
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.i2c_read) #10
  %44 = icmp sgt i32 %3, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %45, %42
  %46 = phi i32 [ %51, %45 ], [ 0, %42 ]
  %47 = getelementptr i8, ptr %2, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %49) #10
  %51 = add nuw nsw i32 %46, 1
  %52 = icmp eq i32 %51, %3
  br i1 %52, label %53, label %45

53:                                               ; preds = %45, %42
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  %55 = icmp sgt i32 %5, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %56, %53
  %57 = phi i32 [ %62, %56 ], [ 0, %53 ]
  %58 = getelementptr i8, ptr %4, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %60) #10
  %62 = add nuw nsw i32 %57, 1
  %63 = icmp eq i32 %62, %5
  br i1 %63, label %64, label %56

64:                                               ; preds = %56, %53
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %66

66:                                               ; preds = %64, %41, %36
  %67 = phi i32 [ %38, %36 ], [ 0, %64 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @i2c_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = zext i8 %1 to i16
  store i16 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  %10 = trunc i32 %3 to i16
  store i16 %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = load i32, ptr @debug, align 4
  %13 = icmp ugt i32 %12, 2
  br i1 %13, label %14, label %30

14:                                               ; preds = %4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.i2c_write) #10
  %16 = load i32, ptr @debug, align 4
  %17 = icmp ugt i32 %16, 2
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %20, %18
  %21 = phi i32 [ %26, %20 ], [ 0, %18 ]
  %22 = getelementptr i8, ptr %2, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %24) #10
  %26 = add nuw nsw i32 %21, 1
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %18
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %30

30:                                               ; preds = %28, %14, %4
  %31 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 99
  %32 = load i8, ptr %31, align 4, !range !8
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  br i1 %33, label %38, label %36

36:                                               ; preds = %30
  %37 = call i32 @__i2c_transfer(ptr noundef %35, ptr noundef nonnull %5, i32 noundef 1) #12
  br label %40

38:                                               ; preds = %30
  %39 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %5, i32 noundef 1) #12
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = icmp sgt i32 %41, -1
  %43 = icmp ne i32 %41, 1
  %44 = and i1 %42, %43
  %45 = select i1 %44, i32 -5, i32 %41
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = zext i8 %1 to i32
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %48) #10
  br label %50

50:                                               ; preds = %47, %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @setoperation_mode(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca [6 x i8], align 1
  %12 = alloca [6 x i8], align 1
  %13 = alloca [6 x i8], align 1
  %14 = alloca [6 x i8], align 1
  %15 = alloca [6 x i8], align 1
  %16 = alloca [6 x i8], align 1
  %17 = alloca [6 x i8], align 1
  %18 = alloca [6 x i8], align 1
  %19 = alloca [6 x i8], align 1
  %20 = alloca i32, align 4
  %21 = alloca [6 x i8], align 1
  %22 = alloca [6 x i8], align 1
  %23 = alloca [6 x i8], align 1
  %24 = alloca [6 x i8], align 1
  %25 = alloca [6 x i8], align 1
  %26 = alloca [6 x i8], align 1
  %27 = alloca [6 x i8], align 1
  %28 = alloca i32, align 4
  %29 = alloca i16, align 2
  %30 = alloca i16, align 2
  %31 = alloca [6 x i8], align 1
  %32 = load i32, ptr @debug, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.setoperation_mode) #10
  %36 = load i32, ptr @debug, align 4
  br label %37

37:                                               ; preds = %34, %2
  %38 = phi i32 [ %36, %34 ], [ 0, %2 ]
  %39 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %40 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %31) #12
  %41 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %42 = load i8, ptr %41, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i32 0, i32 192
  store i8 -113, ptr %31, align 1
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds [6 x i8], ptr %31, i32 0, i32 2
  store i8 %45, ptr %46, align 1
  %47 = getelementptr inbounds [6 x i8], ptr %31, i32 0, i32 3
  store i8 61, ptr %47, align 1
  %48 = getelementptr inbounds [6 x i8], ptr %31, i32 0, i32 1
  store i8 -125, ptr %48, align 1
  %49 = getelementptr inbounds [6 x i8], ptr %31, i32 0, i32 4
  store i8 0, ptr %49, align 1
  %50 = getelementptr inbounds [6 x i8], ptr %31, i32 0, i32 5
  store i8 0, ptr %50, align 1
  %51 = icmp ugt i32 %38, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593095, i32 noundef 0, i32 noundef %44) #10
  br label %54

54:                                               ; preds = %52, %37
  %55 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %40, ptr noundef nonnull %31, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %31) #12
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %943, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 28
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %1
  br i1 %60, label %946, label %61

61:                                               ; preds = %57
  switch i32 %59, label %943 [
    i32 0, label %75
    i32 4, label %62
    i32 1, label %68
    i32 3, label %68
  ]

62:                                               ; preds = %61
  %63 = call fastcc i32 @mpegts_stop(ptr noundef %0)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %943, label %65

65:                                               ; preds = %62
  %66 = call fastcc i32 @power_down_dvbt(ptr noundef %0, i1 noundef zeroext true)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %943, label %74

68:                                               ; preds = %61, %61
  %69 = call fastcc i32 @mpegts_stop(ptr noundef %0)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %943, label %71

71:                                               ; preds = %68
  %72 = call fastcc i32 @power_down_qam(ptr noundef %0)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %943, label %74

74:                                               ; preds = %71, %65
  store i32 0, ptr %58, align 4
  br label %75

75:                                               ; preds = %74, %61
  switch i32 %1, label %943 [
    i32 4, label %76
    i32 1, label %409
    i32 3, label %409
  ]

76:                                               ; preds = %75
  %77 = load i32, ptr @debug, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 4, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #12
  store i16 0, ptr %29, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #12
  store i16 0, ptr %30, align 2
  br label %84

80:                                               ; preds = %76
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.setoperation_mode) #10
  %82 = load i32, ptr @debug, align 4
  store i32 4, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #12
  store i16 0, ptr %29, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #12
  store i16 0, ptr %30, align 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #12
  store i32 0, ptr %28, align 4
  br label %91

85:                                               ; preds = %80
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_dvbt_standard) #10
  %87 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #12
  store i32 0, ptr %28, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.power_up_dvbt) #10
  br label %91

91:                                               ; preds = %89, %85, %84
  %92 = call fastcc i32 @ctrl_power_mode(ptr noundef %0, ptr noundef nonnull %28) #12
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %92, ptr noundef nonnull @__func__.power_up_dvbt) #10
  br label %96

96:                                               ; preds = %94, %91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #12
  %97 = load i32, ptr @debug, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.switch_antenna_to_dvbt) #10
  br label %101

101:                                              ; preds = %99, %96
  %102 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 105
  %103 = load i16, ptr %102, align 4
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %124, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 82
  %107 = load i16, ptr %106, align 4
  %108 = and i16 %107, %103
  %109 = icmp ne i16 %108, 0
  %110 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 104
  %111 = load i8, ptr %110, align 1, !range !8
  %112 = zext i1 %109 to i8
  %113 = icmp eq i8 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %105
  %115 = icmp eq i8 %111, 0
  %116 = xor i16 %103, -1
  %117 = and i16 %107, %116
  %118 = or i16 %107, %103
  %119 = select i1 %115, i16 %117, i16 %118
  store i16 %119, ptr %106, align 4
  %120 = call fastcc i32 @write_gpio(ptr noundef %0) #12
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %120, ptr noundef nonnull @__func__.switch_antenna_to_dvbt) #10
  br label %124

124:                                              ; preds = %122, %114, %105, %101
  %125 = call fastcc i32 @scu_command(ptr noundef %0, i16 noundef zeroext 1025, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, ptr noundef nonnull %29) #12
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %406, label %127

127:                                              ; preds = %124
  %128 = call fastcc i32 @scu_command(ptr noundef %0, i16 noundef zeroext 1026, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, ptr noundef nonnull %29) #12
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %406, label %130

130:                                              ; preds = %127
  %131 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %27) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %27, i8 0, i32 6, i1 false) #12, !annotation !9
  %132 = load i8, ptr %41, align 1, !range !8
  %133 = icmp eq i8 %132, 0
  %134 = select i1 %133, i32 0, i32 192
  br i1 %133, label %139, label %135

135:                                              ; preds = %130
  store i8 1, ptr %27, align 1
  %136 = trunc i32 %134 to i8
  %137 = or i8 %136, 3
  %138 = getelementptr inbounds [6 x i8], ptr %27, i32 0, i32 2
  store i8 %137, ptr %138, align 1
  br label %139

139:                                              ; preds = %135, %130
  %140 = phi i8 [ -64, %135 ], [ -16, %130 ]
  %141 = phi i32 [ 4, %135 ], [ 2, %130 ]
  %142 = getelementptr inbounds [6 x i8], ptr %27, i32 0, i32 1
  store i8 %140, ptr %142, align 1
  %143 = getelementptr [6 x i8], ptr %27, i32 0, i32 %141
  store i8 0, ptr %143, align 1
  %144 = or i32 %141, 1
  %145 = getelementptr [6 x i8], ptr %27, i32 0, i32 %144
  store i8 0, ptr %145, align 1
  %146 = load i32, ptr @debug, align 4
  %147 = icmp ugt i32 %146, 1
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 62914560, i32 noundef 0, i32 noundef %134) #10
  br label %150

150:                                              ; preds = %148, %139
  %151 = add nuw nsw i32 %141, 2
  %152 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %131, ptr noundef nonnull %27, i32 noundef %151) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %27) #12
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %406, label %154

154:                                              ; preds = %150
  %155 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %26) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %26, i8 0, i32 6, i1 false) #12, !annotation !9
  %156 = load i8, ptr %41, align 1, !range !8
  %157 = icmp eq i8 %156, 0
  %158 = select i1 %157, i32 0, i32 192
  br i1 %157, label %163, label %159

159:                                              ; preds = %154
  store i8 1, ptr %26, align 1
  %160 = trunc i32 %158 to i8
  %161 = or i8 %160, 3
  %162 = getelementptr inbounds [6 x i8], ptr %26, i32 0, i32 2
  store i8 %161, ptr %162, align 1
  br label %163

163:                                              ; preds = %159, %154
  %164 = phi i8 [ -128, %159 ], [ -32, %154 ]
  %165 = phi i32 [ 4, %159 ], [ 2, %154 ]
  %166 = getelementptr inbounds [6 x i8], ptr %26, i32 0, i32 1
  store i8 %164, ptr %166, align 1
  %167 = getelementptr [6 x i8], ptr %26, i32 0, i32 %165
  store i8 0, ptr %167, align 1
  %168 = or i32 %165, 1
  %169 = getelementptr [6 x i8], ptr %26, i32 0, i32 %168
  store i8 0, ptr %169, align 1
  %170 = load i32, ptr @debug, align 4
  %171 = icmp ugt i32 %170, 1
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 58720256, i32 noundef 0, i32 noundef %158) #10
  br label %174

174:                                              ; preds = %172, %163
  %175 = add nuw nsw i32 %165, 2
  %176 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %155, ptr noundef nonnull %26, i32 noundef %175) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %26) #12
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %406, label %178

178:                                              ; preds = %174
  %179 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %25) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %25, i8 0, i32 6, i1 false) #12, !annotation !9
  %180 = load i8, ptr %41, align 1, !range !8
  %181 = icmp eq i8 %180, 0
  %182 = select i1 %181, i32 0, i32 192
  br i1 %181, label %187, label %183

183:                                              ; preds = %178
  store i8 1, ptr %25, align 1
  %184 = trunc i32 %182 to i8
  %185 = or i8 %184, 1
  %186 = getelementptr inbounds [6 x i8], ptr %25, i32 0, i32 2
  store i8 %185, ptr %186, align 1
  br label %187

187:                                              ; preds = %183, %178
  %188 = phi i8 [ -128, %183 ], [ 96, %178 ]
  %189 = phi i32 [ 4, %183 ], [ 2, %178 ]
  %190 = getelementptr inbounds [6 x i8], ptr %25, i32 0, i32 1
  store i8 %188, ptr %190, align 1
  %191 = getelementptr [6 x i8], ptr %25, i32 0, i32 %189
  store i8 0, ptr %191, align 1
  %192 = or i32 %189, 1
  %193 = getelementptr [6 x i8], ptr %25, i32 0, i32 %192
  store i8 0, ptr %193, align 1
  %194 = load i32, ptr @debug, align 4
  %195 = icmp ugt i32 %194, 1
  br i1 %195, label %196, label %198

196:                                              ; preds = %187
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25165824, i32 noundef 0, i32 noundef %182) #10
  br label %198

198:                                              ; preds = %196, %187
  %199 = add nuw nsw i32 %189, 2
  %200 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %179, ptr noundef nonnull %25, i32 noundef %199) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %25) #12
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %406, label %202

202:                                              ; preds = %198
  %203 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %24) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %24, i8 0, i32 6, i1 false) #12, !annotation !9
  %204 = load i8, ptr %41, align 1, !range !8
  %205 = icmp eq i8 %204, 0
  %206 = select i1 %205, i32 0, i32 192
  br i1 %205, label %211, label %207

207:                                              ; preds = %202
  store i8 95, ptr %24, align 1
  %208 = trunc i32 %206 to i8
  %209 = or i8 %208, 1
  %210 = getelementptr inbounds [6 x i8], ptr %24, i32 0, i32 2
  store i8 %209, ptr %210, align 1
  br label %212

211:                                              ; preds = %202
  store i8 94, ptr %24, align 1
  br label %212

212:                                              ; preds = %211, %207
  %213 = phi i8 [ -121, %207 ], [ 103, %211 ]
  %214 = phi i32 [ 4, %207 ], [ 2, %211 ]
  %215 = getelementptr inbounds [6 x i8], ptr %24, i32 0, i32 1
  store i8 %213, ptr %215, align 1
  %216 = getelementptr [6 x i8], ptr %24, i32 0, i32 %214
  store i8 1, ptr %216, align 1
  %217 = or i32 %214, 1
  %218 = getelementptr [6 x i8], ptr %24, i32 0, i32 %217
  store i8 0, ptr %218, align 1
  %219 = load i32, ptr @debug, align 4
  %220 = icmp ugt i32 %219, 1
  br i1 %220, label %221, label %223

221:                                              ; preds = %212
  %222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624623, i32 noundef 1, i32 noundef %206) #10
  br label %223

223:                                              ; preds = %221, %212
  %224 = add nuw nsw i32 %214, 2
  %225 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %203, ptr noundef nonnull %24, i32 noundef %224) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %24) #12
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %406, label %227

227:                                              ; preds = %223
  %228 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %23) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %23, i8 0, i32 6, i1 false) #12, !annotation !9
  %229 = load i8, ptr %41, align 1, !range !8
  %230 = icmp eq i8 %229, 0
  %231 = select i1 %230, i32 0, i32 192
  br i1 %230, label %236, label %232

232:                                              ; preds = %227
  store i8 71, ptr %23, align 1
  %233 = trunc i32 %231 to i8
  %234 = or i8 %233, 1
  %235 = getelementptr inbounds [6 x i8], ptr %23, i32 0, i32 2
  store i8 %234, ptr %235, align 1
  br label %237

236:                                              ; preds = %227
  store i8 70, ptr %23, align 1
  br label %237

237:                                              ; preds = %236, %232
  %238 = phi i8 [ -121, %232 ], [ 103, %236 ]
  %239 = phi i32 [ 4, %232 ], [ 2, %236 ]
  %240 = getelementptr inbounds [6 x i8], ptr %23, i32 0, i32 1
  store i8 %238, ptr %240, align 1
  %241 = getelementptr [6 x i8], ptr %23, i32 0, i32 %239
  store i8 0, ptr %241, align 1
  %242 = or i32 %239, 1
  %243 = getelementptr [6 x i8], ptr %23, i32 0, i32 %242
  store i8 0, ptr %243, align 1
  %244 = load i32, ptr @debug, align 4
  %245 = icmp ugt i32 %244, 1
  br i1 %245, label %246, label %248

246:                                              ; preds = %237
  %247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624611, i32 noundef 0, i32 noundef %231) #10
  br label %248

248:                                              ; preds = %246, %237
  %249 = add nuw nsw i32 %239, 2
  %250 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %228, ptr noundef nonnull %23, i32 noundef %249) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %23) #12
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %406, label %252

252:                                              ; preds = %248
  %253 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %22) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %22, i8 0, i32 6, i1 false) #12, !annotation !9
  %254 = load i8, ptr %41, align 1, !range !8
  %255 = icmp eq i8 %254, 0
  %256 = select i1 %255, i32 0, i32 192
  br i1 %255, label %261, label %257

257:                                              ; preds = %252
  store i8 77, ptr %22, align 1
  %258 = trunc i32 %256 to i8
  %259 = or i8 %258, 1
  %260 = getelementptr inbounds [6 x i8], ptr %22, i32 0, i32 2
  store i8 %259, ptr %260, align 1
  br label %262

261:                                              ; preds = %252
  store i8 76, ptr %22, align 1
  br label %262

262:                                              ; preds = %261, %257
  %263 = phi i8 [ -121, %257 ], [ 103, %261 ]
  %264 = phi i32 [ 4, %257 ], [ 2, %261 ]
  %265 = getelementptr inbounds [6 x i8], ptr %22, i32 0, i32 1
  store i8 %263, ptr %265, align 1
  %266 = getelementptr [6 x i8], ptr %22, i32 0, i32 %264
  store i8 0, ptr %266, align 1
  %267 = or i32 %264, 1
  %268 = getelementptr [6 x i8], ptr %22, i32 0, i32 %267
  store i8 0, ptr %268, align 1
  %269 = load i32, ptr @debug, align 4
  %270 = icmp ugt i32 %269, 1
  br i1 %270, label %271, label %273

271:                                              ; preds = %262
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624614, i32 noundef 0, i32 noundef %256) #10
  br label %273

273:                                              ; preds = %271, %262
  %274 = add nuw nsw i32 %264, 2
  %275 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %253, ptr noundef nonnull %22, i32 noundef %274) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %22) #12
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %406, label %277

277:                                              ; preds = %273
  %278 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %21) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %21, i8 0, i32 6, i1 false) #12, !annotation !9
  %279 = load i8, ptr %41, align 1, !range !8
  %280 = icmp eq i8 %279, 0
  %281 = select i1 %280, i32 0, i32 192
  br i1 %280, label %286, label %282

282:                                              ; preds = %277
  store i8 91, ptr %21, align 1
  %283 = trunc i32 %281 to i8
  %284 = or i8 %283, 1
  %285 = getelementptr inbounds [6 x i8], ptr %21, i32 0, i32 2
  store i8 %284, ptr %285, align 1
  br label %287

286:                                              ; preds = %277
  store i8 90, ptr %21, align 1
  br label %287

287:                                              ; preds = %286, %282
  %288 = phi i8 [ -121, %282 ], [ 103, %286 ]
  %289 = phi i32 [ 4, %282 ], [ 2, %286 ]
  %290 = getelementptr inbounds [6 x i8], ptr %21, i32 0, i32 1
  store i8 %288, ptr %290, align 1
  %291 = getelementptr [6 x i8], ptr %21, i32 0, i32 %289
  store i8 1, ptr %291, align 1
  %292 = or i32 %289, 1
  %293 = getelementptr [6 x i8], ptr %21, i32 0, i32 %292
  store i8 0, ptr %293, align 1
  %294 = load i32, ptr @debug, align 4
  %295 = icmp ugt i32 %294, 1
  br i1 %295, label %296, label %298

296:                                              ; preds = %287
  %297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624621, i32 noundef 1, i32 noundef %281) #10
  br label %298

298:                                              ; preds = %296, %287
  %299 = add nuw nsw i32 %289, 2
  %300 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %278, ptr noundef nonnull %21, i32 noundef %299) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %21) #12
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %406, label %302

302:                                              ; preds = %298
  %303 = call fastcc i32 @set_iqm_af(ptr noundef %0, i1 noundef zeroext true) #12
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %406, label %305

305:                                              ; preds = %302
  %306 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25624617, i16 noundef zeroext 0) #12
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %406, label %308

308:                                              ; preds = %305
  %309 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25624628, i16 noundef zeroext 0) #12
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %406, label %311

311:                                              ; preds = %308
  %312 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559140, i16 noundef zeroext 0) #12
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %406, label %314

314:                                              ; preds = %311
  %315 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559139, i16 noundef zeroext 3) #12
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %406, label %317

317:                                              ; preds = %314
  %318 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25427990, i16 noundef zeroext 16) #12
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %406, label %320

320:                                              ; preds = %317
  %321 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559058, i16 noundef zeroext 4) #12
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %406, label %323

323:                                              ; preds = %320
  %324 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559065, i16 noundef zeroext 4) #12
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %406, label %326

326:                                              ; preds = %323
  %327 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559060, i16 noundef zeroext 1600) #12
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %406, label %329

329:                                              ; preds = %326
  %330 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559061, i16 noundef zeroext 0) #12
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %406, label %332

332:                                              ; preds = %329
  %333 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25624612, i16 noundef zeroext 448) #12
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %406, label %335

335:                                              ; preds = %332
  %336 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559137, i16 noundef zeroext 495) #12
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %406, label %338

338:                                              ; preds = %335
  %339 = call fastcc i32 @bl_chain_cmd(ptr noundef %0, i16 noundef zeroext 56, i16 noundef zeroext 2) #12
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %406, label %341

341:                                              ; preds = %338
  %342 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559138, i16 noundef zeroext 2) #12
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %406, label %344

344:                                              ; preds = %341
  %345 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559063, i16 noundef zeroext 2) #12
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %406, label %347

347:                                              ; preds = %344
  %348 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559046, i16 noundef zeroext 1) #12
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %406, label %350

350:                                              ; preds = %347
  %351 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25165824, i16 noundef zeroext 1) #12
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %406, label %353

353:                                              ; preds = %350
  %354 = call fastcc i32 @adc_synchronization(ptr noundef %0) #12
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %406, label %356

356:                                              ; preds = %353
  %357 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 86
  %358 = call fastcc i32 @set_pre_saw(ptr noundef %0, ptr noundef %357) #12
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %406, label %360

360:                                              ; preds = %356
  %361 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8388608, i16 noundef zeroext 2) #12
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %406, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 84
  %365 = call fastcc i32 @set_agc_rf(ptr noundef %0, ptr noundef %364) #12
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %406, label %367

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 85
  %369 = call fastcc i32 @set_agc_if(ptr noundef %0, ptr noundef %368) #12
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %406, label %371

371:                                              ; preds = %367
  %372 = call fastcc i32 @read16(ptr noundef %0, i32 noundef 63045712, ptr noundef nonnull %30) #12
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %406, label %374

374:                                              ; preds = %371
  %375 = load i16, ptr %30, align 2
  %376 = or i16 %375, 2048
  store i16 %376, ptr %30, align 2
  %377 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 63045712, i16 noundef zeroext %376) #12
  %378 = icmp slt i32 %377, 0
  br i1 %378, label %406, label %379

379:                                              ; preds = %374
  %380 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8388608, i16 noundef zeroext 1) #12
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %406, label %382

382:                                              ; preds = %379
  %383 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 93
  %384 = load i8, ptr %383, align 4, !range !8
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %382
  %387 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 85, i32 8
  %388 = load i16, ptr %387, align 2
  %389 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593386, i16 noundef zeroext %388) #12
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %406, label %391

391:                                              ; preds = %386, %382
  %392 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 29491222, i16 noundef zeroext 1) #12
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %406, label %394

394:                                              ; preds = %391
  %395 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 29556754, i16 noundef zeroext 4096) #12
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %406, label %397

397:                                              ; preds = %394
  %398 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 29556755, i16 noundef zeroext 1) #12
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %406, label %400

400:                                              ; preds = %397
  %401 = call fastcc i32 @mpegts_dto_setup(ptr noundef %0, i32 noundef 4) #12
  %402 = icmp slt i32 %401, 0
  br i1 %402, label %406, label %403

403:                                              ; preds = %400
  %404 = call fastcc i32 @dvbt_activate_presets(ptr noundef %0) #12
  %405 = icmp slt i32 %404, 0
  br i1 %405, label %406, label %942

406:                                              ; preds = %403, %400, %397, %394, %391, %386, %379, %374, %371, %367, %363, %360, %356, %353, %350, %347, %344, %341, %338, %335, %332, %329, %326, %323, %320, %317, %314, %311, %308, %305, %302, %298, %273, %248, %223, %198, %174, %150, %127, %124
  %407 = phi i32 [ %404, %403 ], [ %389, %386 ], [ %401, %400 ], [ %398, %397 ], [ %395, %394 ], [ %392, %391 ], [ %380, %379 ], [ %377, %374 ], [ %372, %371 ], [ %369, %367 ], [ %365, %363 ], [ %361, %360 ], [ %358, %356 ], [ %354, %353 ], [ %351, %350 ], [ %348, %347 ], [ %345, %344 ], [ %342, %341 ], [ %339, %338 ], [ %336, %335 ], [ %333, %332 ], [ %330, %329 ], [ %327, %326 ], [ %324, %323 ], [ %321, %320 ], [ %318, %317 ], [ %315, %314 ], [ %312, %311 ], [ %309, %308 ], [ %306, %305 ], [ %303, %302 ], [ %300, %298 ], [ %275, %273 ], [ %250, %248 ], [ %225, %223 ], [ %200, %198 ], [ %176, %174 ], [ %152, %150 ], [ %128, %127 ], [ %125, %124 ]
  %408 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %407, ptr noundef nonnull @__func__.set_dvbt_standard) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #12
  br label %943

409:                                              ; preds = %75, %75
  %410 = load i32, ptr @debug, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %409
  store i32 %1, ptr %58, align 4
  br label %423

413:                                              ; preds = %409
  %414 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.setoperation_mode, i32 noundef 67) #10
  %415 = load i32, ptr @debug, align 4
  store i32 %1, ptr %58, align 4
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %423, label %417

417:                                              ; preds = %413
  %418 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_qam_standard) #10
  %419 = load i32, ptr @debug, align 4
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %417
  %422 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.switch_antenna_to_qam) #10
  br label %423

423:                                              ; preds = %421, %417, %413, %412
  %424 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 105
  %425 = load i16, ptr %424, align 4
  %426 = icmp eq i16 %425, 0
  br i1 %426, label %446, label %427

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 82
  %429 = load i16, ptr %428, align 4
  %430 = and i16 %429, %425
  %431 = icmp ne i16 %430, 0
  %432 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 104
  %433 = load i8, ptr %432, align 1, !range !8
  %434 = zext i1 %431 to i8
  %435 = icmp eq i8 %433, %434
  br i1 %435, label %446, label %436

436:                                              ; preds = %427
  %437 = icmp eq i8 %433, 0
  %438 = or i16 %429, %425
  %439 = xor i16 %425, -1
  %440 = and i16 %429, %439
  %441 = select i1 %437, i16 %438, i16 %440
  store i16 %441, ptr %428, align 4
  %442 = call fastcc i32 @write_gpio(ptr noundef %0) #12
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %444, label %446

444:                                              ; preds = %436
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %442, ptr noundef nonnull @__func__.switch_antenna_to_qam) #10
  br label %446

446:                                              ; preds = %444, %436, %427, %423
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #12
  store i32 1, ptr %20, align 4
  %447 = load i32, ptr @debug, align 4
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %451, label %449

449:                                              ; preds = %446
  %450 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.power_up_qam) #10
  br label %451

451:                                              ; preds = %449, %446
  %452 = call fastcc i32 @ctrl_power_mode(ptr noundef %0, ptr noundef nonnull %20) #12
  %453 = icmp slt i32 %452, 0
  br i1 %453, label %454, label %456

454:                                              ; preds = %451
  %455 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %452, ptr noundef nonnull @__func__.power_up_qam) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #12
  br label %939

456:                                              ; preds = %451
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #12
  %457 = call fastcc i32 @qam_reset_qam(ptr noundef %0) #12
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %939, label %459

459:                                              ; preds = %456
  %460 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %19) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %19, i8 0, i32 6, i1 false) #12, !annotation !9
  %461 = load i8, ptr %41, align 1, !range !8
  %462 = icmp eq i8 %461, 0
  %463 = select i1 %462, i32 0, i32 192
  br i1 %462, label %468, label %464

464:                                              ; preds = %459
  store i8 1, ptr %19, align 1
  %465 = trunc i32 %463 to i8
  %466 = or i8 %465, 1
  %467 = getelementptr inbounds [6 x i8], ptr %19, i32 0, i32 2
  store i8 %466, ptr %467, align 1
  br label %468

468:                                              ; preds = %464, %459
  %469 = phi i8 [ -128, %464 ], [ 96, %459 ]
  %470 = phi i32 [ 4, %464 ], [ 2, %459 ]
  %471 = getelementptr inbounds [6 x i8], ptr %19, i32 0, i32 1
  store i8 %469, ptr %471, align 1
  %472 = getelementptr [6 x i8], ptr %19, i32 0, i32 %470
  store i8 0, ptr %472, align 1
  %473 = or i32 %470, 1
  %474 = getelementptr [6 x i8], ptr %19, i32 0, i32 %473
  store i8 0, ptr %474, align 1
  %475 = load i32, ptr @debug, align 4
  %476 = icmp ugt i32 %475, 1
  br i1 %476, label %477, label %479

477:                                              ; preds = %468
  %478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25165824, i32 noundef 0, i32 noundef %463) #10
  br label %479

479:                                              ; preds = %477, %468
  %480 = add nuw nsw i32 %470, 2
  %481 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %460, ptr noundef nonnull %19, i32 noundef %480) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %19) #12
  %482 = icmp slt i32 %481, 0
  br i1 %482, label %939, label %483

483:                                              ; preds = %479
  %484 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %18) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %18, i8 0, i32 6, i1 false) #12, !annotation !9
  %485 = load i8, ptr %41, align 1, !range !8
  %486 = icmp eq i8 %485, 0
  %487 = select i1 %486, i32 0, i32 192
  br i1 %486, label %492, label %488

488:                                              ; preds = %483
  store i8 91, ptr %18, align 1
  %489 = trunc i32 %487 to i8
  %490 = or i8 %489, 1
  %491 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 2
  store i8 %490, ptr %491, align 1
  br label %493

492:                                              ; preds = %483
  store i8 90, ptr %18, align 1
  br label %493

493:                                              ; preds = %492, %488
  %494 = phi i8 [ -121, %488 ], [ 103, %492 ]
  %495 = phi i32 [ 4, %488 ], [ 2, %492 ]
  %496 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 1
  store i8 %494, ptr %496, align 1
  %497 = getelementptr [6 x i8], ptr %18, i32 0, i32 %495
  store i8 1, ptr %497, align 1
  %498 = or i32 %495, 1
  %499 = getelementptr [6 x i8], ptr %18, i32 0, i32 %498
  store i8 0, ptr %499, align 1
  %500 = load i32, ptr @debug, align 4
  %501 = icmp ugt i32 %500, 1
  br i1 %501, label %502, label %504

502:                                              ; preds = %493
  %503 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624621, i32 noundef 1, i32 noundef %487) #10
  br label %504

504:                                              ; preds = %502, %493
  %505 = add nuw nsw i32 %495, 2
  %506 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %484, ptr noundef nonnull %18, i32 noundef %505) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %18) #12
  %507 = icmp slt i32 %506, 0
  br i1 %507, label %939, label %508

508:                                              ; preds = %504
  switch i32 %1, label %939 [
    i32 1, label %509
    i32 3, label %511
  ]

509:                                              ; preds = %508
  %510 = call fastcc i32 @bl_chain_cmd(ptr noundef %0, i16 noundef zeroext 64, i16 noundef zeroext 2) #12
  br label %516

511:                                              ; preds = %508
  %512 = call fastcc i32 @bl_direct_cmd(ptr noundef %0, i32 noundef 25559072) #12
  %513 = icmp slt i32 %512, 0
  br i1 %513, label %939, label %514

514:                                              ; preds = %511
  %515 = call fastcc i32 @bl_direct_cmd(ptr noundef %0, i32 noundef 25559104) #12
  br label %516

516:                                              ; preds = %514, %509
  %517 = phi i32 [ %515, %514 ], [ %510, %509 ]
  %518 = icmp slt i32 %517, 0
  br i1 %518, label %939, label %519

519:                                              ; preds = %516
  %520 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %17) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %17, i8 0, i32 6, i1 false) #12, !annotation !9
  %521 = load i8, ptr %41, align 1, !range !8
  %522 = icmp eq i8 %521, 0
  %523 = select i1 %522, i32 0, i32 192
  br i1 %522, label %528, label %524

524:                                              ; preds = %519
  store i8 37, ptr %17, align 1
  %525 = trunc i32 %523 to i8
  %526 = or i8 %525, 1
  %527 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 2
  store i8 %526, ptr %527, align 1
  br label %529

528:                                              ; preds = %519
  store i8 36, ptr %17, align 1
  br label %529

529:                                              ; preds = %528, %524
  %530 = phi i8 [ -122, %524 ], [ 102, %528 ]
  %531 = phi i32 [ 4, %524 ], [ 2, %528 ]
  %532 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 1
  store i8 %530, ptr %532, align 1
  %533 = getelementptr [6 x i8], ptr %17, i32 0, i32 %531
  store i8 2, ptr %533, align 1
  %534 = or i32 %531, 1
  %535 = getelementptr [6 x i8], ptr %17, i32 0, i32 %534
  store i8 0, ptr %535, align 1
  %536 = load i32, ptr @debug, align 4
  %537 = icmp ugt i32 %536, 1
  br i1 %537, label %538, label %540

538:                                              ; preds = %529
  %539 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25559058, i32 noundef 2, i32 noundef %523) #10
  br label %540

540:                                              ; preds = %538, %529
  %541 = add nuw nsw i32 %531, 2
  %542 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %520, ptr noundef nonnull %17, i32 noundef %541) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %17) #12
  %543 = icmp slt i32 %542, 0
  br i1 %543, label %939, label %544

544:                                              ; preds = %540
  %545 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %16) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %16, i8 0, i32 6, i1 false) #12, !annotation !9
  %546 = load i8, ptr %41, align 1, !range !8
  %547 = icmp eq i8 %546, 0
  %548 = select i1 %547, i32 0, i32 192
  br i1 %547, label %553, label %549

549:                                              ; preds = %544
  store i8 33, ptr %16, align 1
  %550 = trunc i32 %548 to i8
  %551 = or i8 %550, 1
  %552 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 2
  store i8 %551, ptr %552, align 1
  br label %554

553:                                              ; preds = %544
  store i8 32, ptr %16, align 1
  br label %554

554:                                              ; preds = %553, %549
  %555 = phi i8 [ -122, %549 ], [ 102, %553 ]
  %556 = phi i32 [ 4, %549 ], [ 2, %553 ]
  %557 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 1
  store i8 %555, ptr %557, align 1
  %558 = getelementptr [6 x i8], ptr %16, i32 0, i32 %556
  store i8 0, ptr %558, align 1
  %559 = or i32 %556, 1
  %560 = getelementptr [6 x i8], ptr %16, i32 0, i32 %559
  store i8 0, ptr %560, align 1
  %561 = load i32, ptr @debug, align 4
  %562 = icmp ugt i32 %561, 1
  br i1 %562, label %563, label %565

563:                                              ; preds = %554
  %564 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25559056, i32 noundef 0, i32 noundef %548) #10
  br label %565

565:                                              ; preds = %563, %554
  %566 = add nuw nsw i32 %556, 2
  %567 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %545, ptr noundef nonnull %16, i32 noundef %566) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %16) #12
  %568 = icmp slt i32 %567, 0
  br i1 %568, label %939, label %569

569:                                              ; preds = %565
  %570 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %15) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %15, i8 0, i32 6, i1 false) #12, !annotation !9
  %571 = load i8, ptr %41, align 1, !range !8
  %572 = icmp eq i8 %571, 0
  %573 = select i1 %572, i32 0, i32 192
  br i1 %572, label %578, label %574

574:                                              ; preds = %569
  store i8 35, ptr %15, align 1
  %575 = trunc i32 %573 to i8
  %576 = or i8 %575, 1
  %577 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 2
  store i8 %576, ptr %577, align 1
  br label %579

578:                                              ; preds = %569
  store i8 34, ptr %15, align 1
  br label %579

579:                                              ; preds = %578, %574
  %580 = phi i8 [ -122, %574 ], [ 102, %578 ]
  %581 = phi i32 [ 4, %574 ], [ 2, %578 ]
  %582 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 1
  store i8 %580, ptr %582, align 1
  %583 = getelementptr [6 x i8], ptr %15, i32 0, i32 %581
  store i8 3, ptr %583, align 1
  %584 = or i32 %581, 1
  %585 = getelementptr [6 x i8], ptr %15, i32 0, i32 %584
  store i8 0, ptr %585, align 1
  %586 = load i32, ptr @debug, align 4
  %587 = icmp ugt i32 %586, 1
  br i1 %587, label %588, label %590

588:                                              ; preds = %579
  %589 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25559057, i32 noundef 3, i32 noundef %573) #10
  br label %590

590:                                              ; preds = %588, %579
  %591 = add nuw nsw i32 %581, 2
  %592 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %570, ptr noundef nonnull %15, i32 noundef %591) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %15) #12
  %593 = icmp slt i32 %592, 0
  br i1 %593, label %939, label %594

594:                                              ; preds = %590
  %595 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %14) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %14, i8 0, i32 6, i1 false) #12, !annotation !9
  %596 = load i8, ptr %41, align 1, !range !8
  %597 = icmp eq i8 %596, 0
  %598 = select i1 %597, i32 0, i32 192
  br i1 %597, label %603, label %599

599:                                              ; preds = %594
  store i8 45, ptr %14, align 1
  %600 = trunc i32 %598 to i8
  %601 = or i8 %600, 1
  %602 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 2
  store i8 %601, ptr %602, align 1
  br label %604

603:                                              ; preds = %594
  store i8 44, ptr %14, align 1
  br label %604

604:                                              ; preds = %603, %599
  %605 = phi i8 [ -124, %599 ], [ 100, %603 ]
  %606 = phi i32 [ 4, %599 ], [ 2, %603 ]
  %607 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 1
  store i8 %605, ptr %607, align 1
  %608 = getelementptr [6 x i8], ptr %14, i32 0, i32 %606
  store i8 21, ptr %608, align 1
  %609 = or i32 %606, 1
  %610 = getelementptr [6 x i8], ptr %14, i32 0, i32 %609
  store i8 0, ptr %610, align 1
  %611 = load i32, ptr @debug, align 4
  %612 = icmp ugt i32 %611, 1
  br i1 %612, label %613, label %615

613:                                              ; preds = %604
  %614 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25427990, i32 noundef 21, i32 noundef %598) #10
  br label %615

615:                                              ; preds = %613, %604
  %616 = add nuw nsw i32 %606, 2
  %617 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %595, ptr noundef nonnull %14, i32 noundef %616) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #12
  %618 = icmp slt i32 %617, 0
  br i1 %618, label %939, label %619

619:                                              ; preds = %615
  %620 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %621 = load i8, ptr %41, align 1, !range !8
  %622 = icmp eq i8 %621, 0
  %623 = select i1 %622, i32 0, i32 192
  br i1 %622, label %628, label %624

624:                                              ; preds = %619
  store i8 71, ptr %3, align 1
  %625 = trunc i32 %623 to i8
  %626 = or i8 %625, 1
  %627 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %626, ptr %627, align 1
  br label %629

628:                                              ; preds = %619
  store i8 70, ptr %3, align 1
  br label %629

629:                                              ; preds = %628, %624
  %630 = phi i8 [ -121, %624 ], [ 103, %628 ]
  %631 = phi i32 [ 4, %624 ], [ 2, %628 ]
  %632 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %630, ptr %632, align 1
  %633 = getelementptr [6 x i8], ptr %3, i32 0, i32 %631
  store i8 0, ptr %633, align 1
  %634 = or i32 %631, 1
  %635 = getelementptr [6 x i8], ptr %3, i32 0, i32 %634
  store i8 0, ptr %635, align 1
  %636 = load i32, ptr @debug, align 4
  %637 = icmp ugt i32 %636, 1
  br i1 %637, label %638, label %640

638:                                              ; preds = %629
  %639 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624611, i32 noundef 0, i32 noundef %623) #10
  br label %640

640:                                              ; preds = %638, %629
  %641 = add nuw nsw i32 %631, 2
  %642 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %620, ptr noundef nonnull %3, i32 noundef %641) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %643 = icmp slt i32 %642, 0
  br i1 %643, label %939, label %644

644:                                              ; preds = %640
  %645 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %646 = load i8, ptr %41, align 1, !range !8
  %647 = icmp eq i8 %646, 0
  %648 = select i1 %647, i32 0, i32 192
  br i1 %647, label %653, label %649

649:                                              ; preds = %644
  store i8 73, ptr %4, align 1
  %650 = trunc i32 %648 to i8
  %651 = or i8 %650, 1
  %652 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %651, ptr %652, align 1
  br label %654

653:                                              ; preds = %644
  store i8 72, ptr %4, align 1
  br label %654

654:                                              ; preds = %653, %649
  %655 = phi i8 [ -121, %649 ], [ 103, %653 ]
  %656 = phi i32 [ 4, %649 ], [ 2, %653 ]
  %657 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %655, ptr %657, align 1
  %658 = getelementptr [6 x i8], ptr %4, i32 0, i32 %656
  store i8 -64, ptr %658, align 1
  %659 = or i32 %656, 1
  %660 = getelementptr [6 x i8], ptr %4, i32 0, i32 %659
  store i8 1, ptr %660, align 1
  %661 = load i32, ptr @debug, align 4
  %662 = icmp ugt i32 %661, 1
  br i1 %662, label %663, label %665

663:                                              ; preds = %654
  %664 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624612, i32 noundef 448, i32 noundef %648) #10
  br label %665

665:                                              ; preds = %663, %654
  %666 = add nuw nsw i32 %656, 2
  %667 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %645, ptr noundef nonnull %4, i32 noundef %666) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %668 = icmp slt i32 %667, 0
  br i1 %668, label %939, label %669

669:                                              ; preds = %665
  %670 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #12, !annotation !9
  %671 = load i8, ptr %41, align 1, !range !8
  %672 = icmp eq i8 %671, 0
  %673 = select i1 %672, i32 0, i32 192
  br i1 %672, label %678, label %674

674:                                              ; preds = %669
  store i8 77, ptr %5, align 1
  %675 = trunc i32 %673 to i8
  %676 = or i8 %675, 1
  %677 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %676, ptr %677, align 1
  br label %679

678:                                              ; preds = %669
  store i8 76, ptr %5, align 1
  br label %679

679:                                              ; preds = %678, %674
  %680 = phi i8 [ -121, %674 ], [ 103, %678 ]
  %681 = phi i32 [ 4, %674 ], [ 2, %678 ]
  %682 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 %680, ptr %682, align 1
  %683 = getelementptr [6 x i8], ptr %5, i32 0, i32 %681
  store i8 0, ptr %683, align 1
  %684 = or i32 %681, 1
  %685 = getelementptr [6 x i8], ptr %5, i32 0, i32 %684
  store i8 0, ptr %685, align 1
  %686 = load i32, ptr @debug, align 4
  %687 = icmp ugt i32 %686, 1
  br i1 %687, label %688, label %690

688:                                              ; preds = %679
  %689 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624614, i32 noundef 0, i32 noundef %673) #10
  br label %690

690:                                              ; preds = %688, %679
  %691 = add nuw nsw i32 %681, 2
  %692 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %670, ptr noundef nonnull %5, i32 noundef %691) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %693 = icmp slt i32 %692, 0
  br i1 %693, label %939, label %694

694:                                              ; preds = %690
  %695 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #12, !annotation !9
  %696 = load i8, ptr %41, align 1, !range !8
  %697 = icmp eq i8 %696, 0
  %698 = select i1 %697, i32 0, i32 192
  br i1 %697, label %703, label %699

699:                                              ; preds = %694
  store i8 47, ptr %6, align 1
  %700 = trunc i32 %698 to i8
  %701 = or i8 %700, 1
  %702 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %701, ptr %702, align 1
  br label %704

703:                                              ; preds = %694
  store i8 46, ptr %6, align 1
  br label %704

704:                                              ; preds = %703, %699
  %705 = phi i8 [ -122, %699 ], [ 102, %703 ]
  %706 = phi i32 [ 4, %699 ], [ 2, %703 ]
  %707 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 %705, ptr %707, align 1
  %708 = getelementptr [6 x i8], ptr %6, i32 0, i32 %706
  store i8 0, ptr %708, align 1
  %709 = or i32 %706, 1
  %710 = getelementptr [6 x i8], ptr %6, i32 0, i32 %709
  store i8 0, ptr %710, align 1
  %711 = load i32, ptr @debug, align 4
  %712 = icmp ugt i32 %711, 1
  br i1 %712, label %713, label %715

713:                                              ; preds = %704
  %714 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25559063, i32 noundef 0, i32 noundef %698) #10
  br label %715

715:                                              ; preds = %713, %704
  %716 = add nuw nsw i32 %706, 2
  %717 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %695, ptr noundef nonnull %6, i32 noundef %716) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %718 = icmp slt i32 %717, 0
  br i1 %718, label %939, label %719

719:                                              ; preds = %715
  %720 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #12, !annotation !9
  %721 = load i8, ptr %41, align 1, !range !8
  %722 = icmp eq i8 %721, 0
  %723 = select i1 %722, i32 0, i32 192
  br i1 %722, label %728, label %724

724:                                              ; preds = %719
  store i8 41, ptr %7, align 1
  %725 = trunc i32 %723 to i8
  %726 = or i8 %725, 1
  %727 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %726, ptr %727, align 1
  br label %729

728:                                              ; preds = %719
  store i8 40, ptr %7, align 1
  br label %729

729:                                              ; preds = %728, %724
  %730 = phi i8 [ -126, %724 ], [ 98, %728 ]
  %731 = phi i32 [ 4, %724 ], [ 2, %728 ]
  %732 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 %730, ptr %732, align 1
  %733 = getelementptr [6 x i8], ptr %7, i32 0, i32 %731
  store i8 1, ptr %733, align 1
  %734 = or i32 %731, 1
  %735 = getelementptr [6 x i8], ptr %7, i32 0, i32 %734
  store i8 0, ptr %735, align 1
  %736 = load i32, ptr @debug, align 4
  %737 = icmp ugt i32 %736, 1
  br i1 %737, label %738, label %740

738:                                              ; preds = %729
  %739 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25296916, i32 noundef 1, i32 noundef %723) #10
  br label %740

740:                                              ; preds = %738, %729
  %741 = add nuw nsw i32 %731, 2
  %742 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %720, ptr noundef nonnull %7, i32 noundef %741) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %743 = icmp slt i32 %742, 0
  br i1 %743, label %939, label %744

744:                                              ; preds = %740
  %745 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i32 6, i1 false) #12, !annotation !9
  %746 = load i8, ptr %41, align 1, !range !8
  %747 = icmp eq i8 %746, 0
  %748 = select i1 %747, i32 0, i32 192
  br i1 %747, label %753, label %749

749:                                              ; preds = %744
  store i8 41, ptr %8, align 1
  %750 = trunc i32 %748 to i8
  %751 = or i8 %750, 1
  %752 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %751, ptr %752, align 1
  br label %754

753:                                              ; preds = %744
  store i8 40, ptr %8, align 1
  br label %754

754:                                              ; preds = %753, %749
  %755 = phi i8 [ -124, %749 ], [ 100, %753 ]
  %756 = phi i32 [ 4, %749 ], [ 2, %753 ]
  %757 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 %755, ptr %757, align 1
  %758 = getelementptr [6 x i8], ptr %8, i32 0, i32 %756
  store i8 1, ptr %758, align 1
  %759 = or i32 %756, 1
  %760 = getelementptr [6 x i8], ptr %8, i32 0, i32 %759
  store i8 0, ptr %760, align 1
  %761 = load i32, ptr @debug, align 4
  %762 = icmp ugt i32 %761, 1
  br i1 %762, label %763, label %765

763:                                              ; preds = %754
  %764 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25427988, i32 noundef 1, i32 noundef %748) #10
  br label %765

765:                                              ; preds = %763, %754
  %766 = add nuw nsw i32 %756, 2
  %767 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %745, ptr noundef nonnull %8, i32 noundef %766) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %768 = icmp slt i32 %767, 0
  br i1 %768, label %939, label %769

769:                                              ; preds = %765
  %770 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 6, i1 false) #12, !annotation !9
  %771 = load i8, ptr %41, align 1, !range !8
  %772 = icmp eq i8 %771, 0
  %773 = select i1 %772, i32 0, i32 192
  br i1 %772, label %778, label %774

774:                                              ; preds = %769
  store i8 39, ptr %9, align 1
  %775 = trunc i32 %773 to i8
  %776 = or i8 %775, 1
  %777 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %776, ptr %777, align 1
  br label %779

778:                                              ; preds = %769
  store i8 38, ptr %9, align 1
  br label %779

779:                                              ; preds = %778, %774
  %780 = phi i8 [ -122, %774 ], [ 102, %778 ]
  %781 = phi i32 [ 4, %774 ], [ 2, %778 ]
  %782 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 %780, ptr %782, align 1
  %783 = getelementptr [6 x i8], ptr %9, i32 0, i32 %781
  store i8 1, ptr %783, align 1
  %784 = or i32 %781, 1
  %785 = getelementptr [6 x i8], ptr %9, i32 0, i32 %784
  store i8 0, ptr %785, align 1
  %786 = load i32, ptr @debug, align 4
  %787 = icmp ugt i32 %786, 1
  br i1 %787, label %788, label %790

788:                                              ; preds = %779
  %789 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25559059, i32 noundef 1, i32 noundef %773) #10
  br label %790

790:                                              ; preds = %788, %779
  %791 = add nuw nsw i32 %781, 2
  %792 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %770, ptr noundef nonnull %9, i32 noundef %791) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %793 = icmp slt i32 %792, 0
  br i1 %793, label %939, label %794

794:                                              ; preds = %790
  %795 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %10, i8 0, i32 6, i1 false) #12, !annotation !9
  %796 = load i8, ptr %41, align 1, !range !8
  %797 = icmp eq i8 %796, 0
  %798 = select i1 %797, i32 0, i32 192
  br i1 %797, label %803, label %799

799:                                              ; preds = %794
  store i8 95, ptr %10, align 1
  %800 = trunc i32 %798 to i8
  %801 = or i8 %800, 1
  %802 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %801, ptr %802, align 1
  br label %804

803:                                              ; preds = %794
  store i8 94, ptr %10, align 1
  br label %804

804:                                              ; preds = %803, %799
  %805 = phi i8 [ -121, %799 ], [ 103, %803 ]
  %806 = phi i32 [ 4, %799 ], [ 2, %803 ]
  %807 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 %805, ptr %807, align 1
  %808 = getelementptr [6 x i8], ptr %10, i32 0, i32 %806
  store i8 0, ptr %808, align 1
  %809 = or i32 %806, 1
  %810 = getelementptr [6 x i8], ptr %10, i32 0, i32 %809
  store i8 0, ptr %810, align 1
  %811 = load i32, ptr @debug, align 4
  %812 = icmp ugt i32 %811, 1
  br i1 %812, label %813, label %815

813:                                              ; preds = %804
  %814 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624623, i32 noundef 0, i32 noundef %798) #10
  br label %815

815:                                              ; preds = %813, %804
  %816 = add nuw nsw i32 %806, 2
  %817 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %795, ptr noundef nonnull %10, i32 noundef %816) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %818 = icmp slt i32 %817, 0
  br i1 %818, label %939, label %819

819:                                              ; preds = %815
  %820 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %11, i8 0, i32 6, i1 false) #12, !annotation !9
  %821 = load i8, ptr %41, align 1, !range !8
  %822 = icmp eq i8 %821, 0
  %823 = select i1 %822, i32 0, i32 192
  br i1 %822, label %828, label %824

824:                                              ; preds = %819
  store i8 -63, ptr %11, align 1
  %825 = trunc i32 %823 to i8
  %826 = or i8 %825, 1
  %827 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 2
  store i8 %826, ptr %827, align 1
  br label %829

828:                                              ; preds = %819
  store i8 -64, ptr %11, align 1
  br label %829

829:                                              ; preds = %828, %824
  %830 = phi i8 [ -122, %824 ], [ 102, %828 ]
  %831 = phi i32 [ 4, %824 ], [ 2, %828 ]
  %832 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 1
  store i8 %830, ptr %832, align 1
  %833 = getelementptr [6 x i8], ptr %11, i32 0, i32 %831
  store i8 -12, ptr %833, align 1
  %834 = or i32 %831, 1
  %835 = getelementptr [6 x i8], ptr %11, i32 0, i32 %834
  store i8 1, ptr %835, align 1
  %836 = load i32, ptr @debug, align 4
  %837 = icmp ugt i32 %836, 1
  br i1 %837, label %838, label %840

838:                                              ; preds = %829
  %839 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25559136, i32 noundef 500, i32 noundef %823) #10
  br label %840

840:                                              ; preds = %838, %829
  %841 = add nuw nsw i32 %831, 2
  %842 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %820, ptr noundef nonnull %11, i32 noundef %841) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #12
  %843 = icmp slt i32 %842, 0
  br i1 %843, label %939, label %844

844:                                              ; preds = %840
  %845 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %12) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %12, i8 0, i32 6, i1 false) #12, !annotation !9
  %846 = load i8, ptr %41, align 1, !range !8
  %847 = icmp eq i8 %846, 0
  %848 = select i1 %847, i32 0, i32 192
  br i1 %847, label %853, label %849

849:                                              ; preds = %844
  store i8 -61, ptr %12, align 1
  %850 = trunc i32 %848 to i8
  %851 = or i8 %850, 1
  %852 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 2
  store i8 %851, ptr %852, align 1
  br label %854

853:                                              ; preds = %844
  store i8 -62, ptr %12, align 1
  br label %854

854:                                              ; preds = %853, %849
  %855 = phi i8 [ -122, %849 ], [ 102, %853 ]
  %856 = phi i32 [ 4, %849 ], [ 2, %853 ]
  %857 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 1
  store i8 %855, ptr %857, align 1
  %858 = getelementptr [6 x i8], ptr %12, i32 0, i32 %856
  store i8 -24, ptr %858, align 1
  %859 = or i32 %856, 1
  %860 = getelementptr [6 x i8], ptr %12, i32 0, i32 %859
  store i8 3, ptr %860, align 1
  %861 = load i32, ptr @debug, align 4
  %862 = icmp ugt i32 %861, 1
  br i1 %862, label %863, label %865

863:                                              ; preds = %854
  %864 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25559137, i32 noundef 1000, i32 noundef %848) #10
  br label %865

865:                                              ; preds = %863, %854
  %866 = add nuw nsw i32 %856, 2
  %867 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %845, ptr noundef nonnull %12, i32 noundef %866) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12) #12
  %868 = icmp slt i32 %867, 0
  br i1 %868, label %939, label %869

869:                                              ; preds = %865
  %870 = load i8, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %13) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %13, i8 0, i32 6, i1 false) #12, !annotation !9
  %871 = load i8, ptr %41, align 1, !range !8
  %872 = icmp eq i8 %871, 0
  %873 = select i1 %872, i32 0, i32 192
  br i1 %872, label %878, label %874

874:                                              ; preds = %869
  store i8 -49, ptr %13, align 1
  %875 = trunc i32 %873 to i8
  %876 = or i8 %875, 1
  %877 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 2
  store i8 %876, ptr %877, align 1
  br label %879

878:                                              ; preds = %869
  store i8 -50, ptr %13, align 1
  br label %879

879:                                              ; preds = %878, %874
  %880 = phi i8 [ -122, %874 ], [ 102, %878 ]
  %881 = phi i32 [ 4, %874 ], [ 2, %878 ]
  %882 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 1
  store i8 %880, ptr %882, align 1
  %883 = getelementptr [6 x i8], ptr %13, i32 0, i32 %881
  store i8 1, ptr %883, align 1
  %884 = or i32 %881, 1
  %885 = getelementptr [6 x i8], ptr %13, i32 0, i32 %884
  store i8 0, ptr %885, align 1
  %886 = load i32, ptr @debug, align 4
  %887 = icmp ugt i32 %886, 1
  br i1 %887, label %888, label %890

888:                                              ; preds = %879
  %889 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25559143, i32 noundef 1, i32 noundef %873) #10
  br label %890

890:                                              ; preds = %888, %879
  %891 = add nuw nsw i32 %881, 2
  %892 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %870, ptr noundef nonnull %13, i32 noundef %891) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %13) #12
  %893 = icmp slt i32 %892, 0
  br i1 %893, label %939, label %894

894:                                              ; preds = %890
  %895 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559140, i16 noundef zeroext 0) #12
  %896 = icmp slt i32 %895, 0
  br i1 %896, label %939, label %897

897:                                              ; preds = %894
  %898 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559139, i16 noundef zeroext 1) #12
  %899 = icmp slt i32 %898, 0
  br i1 %899, label %939, label %900

900:                                              ; preds = %897
  %901 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25559138, i16 noundef zeroext 1) #12
  %902 = icmp slt i32 %901, 0
  br i1 %902, label %939, label %903

903:                                              ; preds = %900
  %904 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25624630, i16 noundef zeroext 1) #12
  %905 = icmp slt i32 %904, 0
  br i1 %905, label %939, label %906

906:                                              ; preds = %903
  %907 = call fastcc i32 @set_iqm_af(ptr noundef %0, i1 noundef zeroext true) #12
  %908 = icmp slt i32 %907, 0
  br i1 %908, label %939, label %909

909:                                              ; preds = %906
  %910 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 25624603, i16 noundef zeroext 1) #12
  %911 = icmp slt i32 %910, 0
  br i1 %911, label %939, label %912

912:                                              ; preds = %909
  %913 = call fastcc i32 @adc_synchronization(ptr noundef %0) #12
  %914 = icmp slt i32 %913, 0
  br i1 %914, label %939, label %915

915:                                              ; preds = %912
  %916 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593092, i16 noundef zeroext 2000) #12
  %917 = icmp slt i32 %916, 0
  br i1 %917, label %939, label %918

918:                                              ; preds = %915
  %919 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8388608, i16 noundef zeroext 2) #12
  %920 = icmp slt i32 %919, 0
  br i1 %920, label %939, label %921

921:                                              ; preds = %918
  %922 = call fastcc i32 @init_agc(ptr noundef %0) #12
  %923 = icmp slt i32 %922, 0
  br i1 %923, label %939, label %924

924:                                              ; preds = %921
  %925 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 77
  %926 = call fastcc i32 @set_pre_saw(ptr noundef %0, ptr noundef %925) #12
  %927 = icmp slt i32 %926, 0
  br i1 %927, label %939, label %928

928:                                              ; preds = %924
  %929 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 74
  %930 = call fastcc i32 @set_agc_rf(ptr noundef %0, ptr noundef %929) #12
  %931 = icmp slt i32 %930, 0
  br i1 %931, label %939, label %932

932:                                              ; preds = %928
  %933 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 75
  %934 = call fastcc i32 @set_agc_if(ptr noundef %0, ptr noundef %933) #12
  %935 = icmp slt i32 %934, 0
  br i1 %935, label %939, label %936

936:                                              ; preds = %932
  %937 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8388608, i16 noundef zeroext 1) #12
  %938 = icmp slt i32 %937, 0
  br i1 %938, label %939, label %946

939:                                              ; preds = %936, %932, %928, %924, %921, %918, %915, %912, %909, %906, %903, %900, %897, %894, %890, %865, %840, %815, %790, %765, %740, %715, %690, %665, %640, %615, %590, %565, %540, %516, %511, %508, %504, %479, %456, %454
  %940 = phi i32 [ %937, %936 ], [ %452, %454 ], [ %512, %511 ], [ %934, %932 ], [ %930, %928 ], [ %926, %924 ], [ %922, %921 ], [ %919, %918 ], [ %916, %915 ], [ %913, %912 ], [ %910, %909 ], [ %907, %906 ], [ %904, %903 ], [ %901, %900 ], [ %898, %897 ], [ %895, %894 ], [ %892, %890 ], [ %867, %865 ], [ %842, %840 ], [ %817, %815 ], [ %792, %790 ], [ %767, %765 ], [ %742, %740 ], [ %717, %715 ], [ %692, %690 ], [ %667, %665 ], [ %642, %640 ], [ %617, %615 ], [ %592, %590 ], [ %567, %565 ], [ %542, %540 ], [ %517, %516 ], [ %506, %504 ], [ %481, %479 ], [ %457, %456 ], [ -22, %508 ]
  %941 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %940, ptr noundef nonnull @__func__.set_qam_standard) #10
  br label %943

942:                                              ; preds = %403
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #12
  br label %946

943:                                              ; preds = %939, %406, %75, %71, %68, %65, %62, %61, %54
  %944 = phi i32 [ %407, %406 ], [ %940, %939 ], [ -22, %75 ], [ -22, %61 ], [ %66, %65 ], [ %63, %62 ], [ %72, %71 ], [ %69, %68 ], [ %55, %54 ]
  %945 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %944, ptr noundef nonnull @__func__.setoperation_mode) #10
  br label %946

946:                                              ; preds = %943, %942, %936, %57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @power_down_dvbt(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [4 x i8], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 1, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i16 0, ptr %9, align 2
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.power_down_dvbt) #10
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %16 = load i8, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i16 0, ptr %7, align 2, !annotation !9
  %17 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i32 0, i32 192
  br i1 %19, label %25, label %21

21:                                               ; preds = %14
  store i8 1, ptr %6, align 4
  %22 = trunc i32 %20 to i8
  %23 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 2
  store i8 %22, ptr %23, align 2
  %24 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 3
  store i8 0, ptr %24, align 1
  br label %26

25:                                               ; preds = %14
  store i8 0, ptr %6, align 4
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i8 [ -128, %21 ], [ 32, %25 ]
  %28 = phi i32 [ 4, %21 ], [ 2, %25 ]
  %29 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 1
  store i8 %27, ptr %29, align 1
  %30 = load i32, ptr @debug, align 4
  %31 = icmp ugt i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8388608, i32 noundef %20) #10
  br label %34

34:                                               ; preds = %32, %26
  %35 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %16, ptr noundef nonnull %6, i32 noundef %28, ptr noundef nonnull %7, i32 noundef 2) #12
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %134

38:                                               ; preds = %34
  %39 = load i8, ptr %7, align 2
  %40 = zext i8 %39 to i16
  %41 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i16
  %44 = shl nuw i16 %43, 8
  %45 = or i16 %44, %40
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = call fastcc i32 @scu_command(ptr noundef %0, i16 noundef zeroext 1033, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, ptr noundef nonnull %9)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %134, label %50

50:                                               ; preds = %47
  %51 = call fastcc i32 @scu_command(ptr noundef %0, i16 noundef zeroext 1025, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, ptr noundef nonnull %9)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %134, label %53

53:                                               ; preds = %50, %38
  %54 = load i8, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #12, !annotation !9
  %55 = load i8, ptr %17, align 1, !range !8
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, i32 0, i32 192
  br i1 %56, label %62, label %58

58:                                               ; preds = %53
  store i8 1, ptr %5, align 1
  %59 = trunc i32 %57 to i8
  %60 = or i8 %59, 3
  %61 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %60, ptr %61, align 1
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi i8 [ -64, %58 ], [ -16, %53 ]
  %64 = phi i32 [ 4, %58 ], [ 2, %53 ]
  %65 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 %63, ptr %65, align 1
  %66 = getelementptr [6 x i8], ptr %5, i32 0, i32 %64
  store i8 0, ptr %66, align 1
  %67 = or i32 %64, 1
  %68 = getelementptr [6 x i8], ptr %5, i32 0, i32 %67
  store i8 0, ptr %68, align 1
  %69 = load i32, ptr @debug, align 4
  %70 = icmp ugt i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 62914560, i32 noundef 0, i32 noundef %57) #10
  br label %73

73:                                               ; preds = %71, %62
  %74 = add nuw nsw i32 %64, 2
  %75 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %54, ptr noundef nonnull %5, i32 noundef %74) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %134, label %77

77:                                               ; preds = %73
  %78 = load i8, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %79 = load i8, ptr %17, align 1, !range !8
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, i32 0, i32 192
  br i1 %80, label %86, label %82

82:                                               ; preds = %77
  store i8 1, ptr %4, align 1
  %83 = trunc i32 %81 to i8
  %84 = or i8 %83, 3
  %85 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %84, ptr %85, align 1
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi i8 [ -128, %82 ], [ -32, %77 ]
  %88 = phi i32 [ 4, %82 ], [ 2, %77 ]
  %89 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %87, ptr %89, align 1
  %90 = getelementptr [6 x i8], ptr %4, i32 0, i32 %88
  store i8 0, ptr %90, align 1
  %91 = or i32 %88, 1
  %92 = getelementptr [6 x i8], ptr %4, i32 0, i32 %91
  store i8 0, ptr %92, align 1
  %93 = load i32, ptr @debug, align 4
  %94 = icmp ugt i32 %93, 1
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 58720256, i32 noundef 0, i32 noundef %81) #10
  br label %97

97:                                               ; preds = %95, %86
  %98 = add nuw nsw i32 %88, 2
  %99 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %78, ptr noundef nonnull %4, i32 noundef %98) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %134, label %101

101:                                              ; preds = %97
  %102 = load i8, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %103 = load i8, ptr %17, align 1, !range !8
  %104 = icmp eq i8 %103, 0
  %105 = select i1 %104, i32 0, i32 192
  br i1 %104, label %110, label %106

106:                                              ; preds = %101
  store i8 1, ptr %3, align 1
  %107 = trunc i32 %105 to i8
  %108 = or i8 %107, 1
  %109 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %108, ptr %109, align 1
  br label %110

110:                                              ; preds = %106, %101
  %111 = phi i8 [ -128, %106 ], [ 96, %101 ]
  %112 = phi i32 [ 4, %106 ], [ 2, %101 ]
  %113 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %111, ptr %113, align 1
  %114 = getelementptr [6 x i8], ptr %3, i32 0, i32 %112
  store i8 0, ptr %114, align 1
  %115 = or i32 %112, 1
  %116 = getelementptr [6 x i8], ptr %3, i32 0, i32 %115
  store i8 0, ptr %116, align 1
  %117 = load i32, ptr @debug, align 4
  %118 = icmp ugt i32 %117, 1
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25165824, i32 noundef 0, i32 noundef %105) #10
  br label %121

121:                                              ; preds = %119, %110
  %122 = add nuw nsw i32 %112, 2
  %123 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %102, ptr noundef nonnull %3, i32 noundef %122) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %121
  %126 = call fastcc i32 @set_iqm_af(ptr noundef %0, i1 noundef zeroext false)
  %127 = icmp sgt i32 %126, -1
  %128 = and i1 %127, %1
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call fastcc i32 @ctrl_power_mode(ptr noundef %0, ptr noundef nonnull %8)
  br label %131

131:                                              ; preds = %129, %125
  %132 = phi i32 [ %126, %125 ], [ %130, %129 ]
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131, %121, %97, %73, %50, %47, %37
  %135 = phi i32 [ %132, %131 ], [ %35, %37 ], [ %123, %121 ], [ %99, %97 ], [ %75, %73 ], [ %51, %50 ], [ %48, %47 ]
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %135, ptr noundef nonnull @__func__.power_down_dvbt) #10
  br label %137

137:                                              ; preds = %134, %131
  %138 = phi i32 [ %135, %134 ], [ %132, %131 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @power_down_qam(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [4 x i8], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !9
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.power_down_qam) #10
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !9
  %13 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 0, i32 192
  br i1 %15, label %21, label %17

17:                                               ; preds = %10
  store i8 1, ptr %3, align 4
  %18 = trunc i32 %16 to i8
  %19 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %18, ptr %19, align 2
  %20 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %20, align 1
  br label %22

21:                                               ; preds = %10
  store i8 0, ptr %3, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i8 [ -128, %17 ], [ 32, %21 ]
  %24 = phi i32 [ 4, %17 ], [ 2, %21 ]
  %25 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 %23, ptr %25, align 1
  %26 = load i32, ptr @debug, align 4
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8388608, i32 noundef %16) #10
  br label %30

30:                                               ; preds = %28, %22
  %31 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %12, ptr noundef nonnull %3, i32 noundef %24, ptr noundef nonnull %4, i32 noundef 2) #12
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %73

34:                                               ; preds = %30
  %35 = load i8, ptr %4, align 2
  %36 = zext i8 %35 to i16
  %37 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i16
  %40 = shl nuw i16 %39, 8
  %41 = or i16 %40, %36
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %42 = icmp eq i16 %41, 1
  br i1 %42, label %43, label %70

43:                                               ; preds = %34
  %44 = load i8, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %45 = load i8, ptr %13, align 1, !range !8
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i32 0, i32 192
  br i1 %46, label %52, label %48

48:                                               ; preds = %43
  store i8 1, ptr %2, align 1
  %49 = trunc i32 %47 to i8
  %50 = or i8 %49, 1
  %51 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %50, ptr %51, align 1
  br label %52

52:                                               ; preds = %48, %43
  %53 = phi i8 [ 64, %48 ], [ 80, %43 ]
  %54 = phi i32 [ 4, %48 ], [ 2, %43 ]
  %55 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %53, ptr %55, align 1
  %56 = getelementptr [6 x i8], ptr %2, i32 0, i32 %54
  store i8 0, ptr %56, align 1
  %57 = or i32 %54, 1
  %58 = getelementptr [6 x i8], ptr %2, i32 0, i32 %57
  store i8 0, ptr %58, align 1
  %59 = load i32, ptr @debug, align 4
  %60 = icmp ugt i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 20971520, i32 noundef 0, i32 noundef %47) #10
  br label %63

63:                                               ; preds = %61, %52
  %64 = add nuw nsw i32 %54, 2
  %65 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %44, ptr noundef nonnull %2, i32 noundef %64) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = call fastcc i32 @scu_command(ptr noundef %0, i16 noundef zeroext 521, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, ptr noundef nonnull %5)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67, %34
  %71 = call fastcc i32 @set_iqm_af(ptr noundef %0, i1 noundef zeroext false)
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70, %67, %63, %33
  %74 = phi i32 [ %71, %70 ], [ %31, %33 ], [ %68, %67 ], [ %65, %63 ]
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %74, ptr noundef nonnull @__func__.power_down_qam) #10
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i32 [ %74, %73 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scu_command(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef readonly %3, i8 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [4 x i8], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca [34 x i8], align 1
  %10 = alloca [30 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(34) %9, i8 0, i32 34, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(30) %10, i8 0, i32 30, i1 false), !annotation !9
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.scu_command) #10
  br label %15

15:                                               ; preds = %13, %6
  %16 = zext i16 %1 to i32
  %17 = zext i8 %2 to i32
  %18 = icmp ne i8 %2, 0
  %19 = icmp eq ptr %3, null
  %20 = and i1 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = zext i8 %4 to i32
  %23 = icmp eq ptr %5, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %15
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef -22, ptr noundef nonnull @__func__.scu_command) #10
  br label %118

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %27) #12
  %28 = icmp eq i8 %2, 0
  %29 = or i1 %19, %28
  br i1 %29, label %44, label %30

30:                                               ; preds = %30, %26
  %31 = phi i32 [ %33, %30 ], [ %17, %26 ]
  %32 = phi i32 [ %41, %30 ], [ 0, %26 ]
  %33 = add nsw i32 %31, -1
  %34 = getelementptr i16, ptr %3, i32 %33
  %35 = load i16, ptr %34, align 2
  %36 = trunc i16 %35 to i8
  %37 = or i32 %32, 1
  %38 = getelementptr [34 x i8], ptr %9, i32 0, i32 %32
  store i8 %36, ptr %38, align 1
  %39 = lshr i16 %35, 8
  %40 = trunc i16 %39 to i8
  %41 = add nuw nsw i32 %32, 2
  %42 = getelementptr [34 x i8], ptr %9, i32 0, i32 %37
  store i8 %40, ptr %42, align 1
  %43 = icmp ugt i32 %31, 1
  br i1 %43, label %30, label %44

44:                                               ; preds = %30, %26
  %45 = phi i32 [ 0, %26 ], [ %41, %30 ]
  %46 = trunc i16 %1 to i8
  %47 = or i32 %45, 1
  %48 = getelementptr [34 x i8], ptr %9, i32 0, i32 %45
  store i8 %46, ptr %48, align 1
  %49 = lshr i16 %1, 8
  %50 = trunc i16 %49 to i8
  %51 = add i32 %45, 2
  %52 = getelementptr [34 x i8], ptr %9, i32 0, i32 %47
  store i8 %50, ptr %52, align 1
  %53 = sub nuw nsw i32 8593405, %17
  %54 = call fastcc i32 @write_block(ptr noundef %0, i32 noundef %53, i32 noundef %51, ptr noundef nonnull %9)
  %55 = load volatile i32, ptr @jiffies, align 64
  %56 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %57 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %58 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 2
  %59 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %60 = sub i32 -20, %55
  br label %61

61:                                               ; preds = %83, %44
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %62 = load i8, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 1056998395, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i16 0, ptr %8, align 2, !annotation !9
  %63 = load i8, ptr %57, align 1, !range !8
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, i32 0, i32 192
  %66 = trunc i32 %65 to i8
  store i8 %66, ptr %58, align 2
  %67 = load i32, ptr @debug, align 4
  %68 = icmp ugt i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593405, i32 noundef %65) #10
  br label %71

71:                                               ; preds = %69, %61
  %72 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %62, ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull %8, i32 noundef 2) #12
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %113

75:                                               ; preds = %71
  %76 = load i8, ptr %8, align 2
  %77 = zext i8 %76 to i16
  %78 = load i8, ptr %59, align 1
  %79 = zext i8 %78 to i16
  %80 = shl nuw i16 %79, 8
  %81 = or i16 %80, %77
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %75
  %84 = load volatile i32, ptr @jiffies, align 64
  %85 = add i32 %60, %84
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %61, label %87

87:                                               ; preds = %83
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %116

89:                                               ; preds = %92, %75
  %90 = phi i32 [ %93, %92 ], [ %22, %75 ]
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = add nsw i32 %90, -1
  %94 = sub nsw i32 8593405, %90
  %95 = getelementptr i16, ptr %5, i32 %93
  %96 = call fastcc i32 @read16(ptr noundef %0, i32 noundef %94, ptr noundef %95)
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %113, label %89

98:                                               ; preds = %89
  %99 = load i16, ptr %5, align 2
  %100 = sext i16 %99 to i32
  %101 = icmp sgt i16 %99, -1
  br i1 %101, label %116, label %102

102:                                              ; preds = %98
  %103 = icmp ugt i16 %99, -5
  br i1 %103, label %106, label %104

104:                                              ; preds = %102
  %105 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.23, i32 noundef %100)
  br label %110

106:                                              ; preds = %102
  %107 = add nsw i32 %100, 4
  %108 = getelementptr inbounds [4 x ptr], ptr @switch.table.scu_command, i32 0, i32 %107
  %109 = load ptr, ptr %108, align 4
  br label %110

110:                                              ; preds = %106, %104
  %111 = phi ptr [ %10, %104 ], [ %109, %106 ]
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %111, i32 noundef %16) #10
  br label %116

113:                                              ; preds = %92, %74
  %114 = phi i32 [ %72, %74 ], [ %96, %92 ]
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %114, ptr noundef nonnull @__func__.scu_command) #10
  br label %116

116:                                              ; preds = %113, %110, %98, %87
  %117 = phi i32 [ %114, %113 ], [ -5, %87 ], [ -22, %110 ], [ 0, %98 ]
  call void @mutex_unlock(ptr noundef %27) #12
  br label %118

118:                                              ; preds = %116, %24
  %119 = phi i32 [ -22, %24 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %9) #12
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_iqm_af(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x i8], align 2
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_iqm_af) #10
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !9
  %13 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 0, i32 192
  br i1 %15, label %22, label %17

17:                                               ; preds = %10
  store i8 89, ptr %4, align 4
  %18 = trunc i32 %16 to i8
  %19 = or i8 %18, 1
  %20 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  store i8 %19, ptr %20, align 2
  %21 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  store i8 0, ptr %21, align 1
  br label %23

22:                                               ; preds = %10
  store i8 88, ptr %4, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i8 [ -121, %17 ], [ 103, %22 ]
  %25 = phi i32 [ 4, %17 ], [ 2, %22 ]
  %26 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  store i8 %24, ptr %26, align 1
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 25624620, i32 noundef %16) #10
  br label %31

31:                                               ; preds = %29, %23
  %32 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %12, ptr noundef nonnull %4, i32 noundef %25, ptr noundef nonnull %5, i32 noundef 2) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %72

35:                                               ; preds = %31
  %36 = load i8, ptr %5, align 2
  %37 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i16
  %40 = shl nuw i16 %39, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %41 = and i8 %36, -63
  %42 = zext i8 %41 to i16
  %43 = or i16 %40, %42
  %44 = select i1 %1, i16 0, i16 62
  %45 = or i16 %43, %44
  %46 = load i8, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %47 = load i8, ptr %13, align 1, !range !8
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %48, i32 0, i32 192
  br i1 %48, label %54, label %50

50:                                               ; preds = %35
  store i8 89, ptr %3, align 1
  %51 = trunc i32 %49 to i8
  %52 = or i8 %51, 1
  %53 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %52, ptr %53, align 1
  br label %55

54:                                               ; preds = %35
  store i8 88, ptr %3, align 1
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i8 [ -121, %50 ], [ 103, %54 ]
  %57 = phi i32 [ 4, %50 ], [ 2, %54 ]
  %58 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %56, ptr %58, align 1
  %59 = trunc i16 %45 to i8
  %60 = getelementptr [6 x i8], ptr %3, i32 0, i32 %57
  store i8 %59, ptr %60, align 1
  %61 = or i32 %57, 1
  %62 = getelementptr [6 x i8], ptr %3, i32 0, i32 %61
  store i8 %38, ptr %62, align 1
  %63 = load i32, ptr @debug, align 4
  %64 = icmp ugt i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = zext i16 %45 to i32
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624620, i32 noundef %66, i32 noundef %49) #10
  br label %68

68:                                               ; preds = %65, %55
  %69 = add nuw nsw i32 %57, 2
  %70 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %46, ptr noundef nonnull %3, i32 noundef %69) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %34
  %73 = phi i32 [ %32, %34 ], [ %70, %68 ]
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %73, ptr noundef nonnull @__func__.set_iqm_af) #10
  br label %75

75:                                               ; preds = %72, %68
  %76 = phi i32 [ %73, %72 ], [ %70, %68 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_power_mode(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ctrl_power_mode) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %122, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %1, align 4
  switch i32 %12, label %122 [
    i32 0, label %17
    i32 1, label %13
    i32 9, label %14
    i32 10, label %15
    i32 255, label %16
  ]

13:                                               ; preds = %11
  br label %17

14:                                               ; preds = %11
  br label %17

15:                                               ; preds = %11
  br label %17

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %11
  %18 = phi i16 [ 4, %16 ], [ 3, %15 ], [ 2, %14 ], [ 1, %13 ], [ 0, %11 ]
  %19 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 98
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %12
  br i1 %21, label %122, label %22

22:                                               ; preds = %17
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %22
  %25 = tail call fastcc i32 @power_up_device(ptr noundef %0)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %119, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc i32 @dvbt_enable_ofdm_token_ring(ptr noundef %0, i1 noundef zeroext true)
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %119, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %1, align 4
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi i32 [ %31, %30 ], [ %12, %22 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %116, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 28
  %37 = load i32, ptr %36, align 4
  switch i32 %37, label %50 [
    i32 4, label %38
    i32 1, label %44
    i32 3, label %44
  ]

38:                                               ; preds = %35
  %39 = tail call fastcc i32 @mpegts_stop(ptr noundef %0)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %119, label %41

41:                                               ; preds = %38
  %42 = tail call fastcc i32 @power_down_dvbt(ptr noundef %0, i1 noundef zeroext false)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %119, label %50

44:                                               ; preds = %35, %35
  %45 = tail call fastcc i32 @mpegts_stop(ptr noundef %0)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %119, label %47

47:                                               ; preds = %44
  %48 = tail call fastcc i32 @power_down_qam(ptr noundef %0)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %119, label %50

50:                                               ; preds = %47, %41, %35
  %51 = tail call fastcc i32 @dvbt_enable_ofdm_token_ring(ptr noundef %0, i1 noundef zeroext false)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %119, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %55 = load i8, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %56 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %57 = load i8, ptr %56, align 1, !range !8
  %58 = icmp eq i8 %57, 0
  %59 = select i1 %58, i32 0, i32 192
  br i1 %58, label %63, label %60

60:                                               ; preds = %53
  store i8 43, ptr %4, align 1
  %61 = trunc i32 %59 to i8
  %62 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %61, ptr %62, align 1
  br label %64

63:                                               ; preds = %53
  store i8 42, ptr %4, align 1
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i8 [ 69, %60 ], [ 21, %63 ]
  %66 = phi i32 [ 4, %60 ], [ 2, %63 ]
  %67 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %65, ptr %67, align 1
  %68 = trunc i16 %18 to i8
  %69 = getelementptr [6 x i8], ptr %4, i32 0, i32 %66
  store i8 %68, ptr %69, align 1
  %70 = or i32 %66, 1
  %71 = getelementptr [6 x i8], ptr %4, i32 0, i32 %70
  store i8 0, ptr %71, align 1
  %72 = load i32, ptr @debug, align 4
  %73 = icmp ugt i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = zext i16 %18 to i32
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4522005, i32 noundef %75, i32 noundef %59) #10
  br label %77

77:                                               ; preds = %74, %64
  %78 = add nuw nsw i32 %66, 2
  %79 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %55, ptr noundef nonnull %4, i32 noundef %78) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %119, label %81

81:                                               ; preds = %77
  %82 = load i8, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %83 = load i8, ptr %56, align 1, !range !8
  %84 = icmp eq i8 %83, 0
  %85 = select i1 %84, i32 0, i32 192
  br i1 %84, label %89, label %86

86:                                               ; preds = %81
  store i8 47, ptr %3, align 1
  %87 = trunc i32 %85 to i8
  %88 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %87, ptr %88, align 1
  br label %90

89:                                               ; preds = %81
  store i8 46, ptr %3, align 1
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i8 [ 69, %86 ], [ 21, %89 ]
  %92 = phi i32 [ 4, %86 ], [ 2, %89 ]
  %93 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %91, ptr %93, align 1
  %94 = getelementptr [6 x i8], ptr %3, i32 0, i32 %92
  store i8 -70, ptr %94, align 1
  %95 = or i32 %92, 1
  %96 = getelementptr [6 x i8], ptr %3, i32 0, i32 %95
  store i8 -6, ptr %96, align 1
  %97 = load i32, ptr @debug, align 4
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4522007, i32 noundef 64186, i32 noundef %85) #10
  br label %101

101:                                              ; preds = %99, %90
  %102 = add nuw nsw i32 %92, 2
  %103 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %82, ptr noundef nonnull %3, i32 noundef %102) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %101
  %106 = load i32, ptr %1, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %116, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 25
  %110 = load i16, ptr %109, align 4
  %111 = or i16 %110, 8
  store i16 %111, ptr %109, align 4
  %112 = call fastcc i32 @hi_cfg_command(ptr noundef %0)
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %108
  %115 = load i32, ptr %1, align 4
  br label %116

116:                                              ; preds = %114, %105, %32
  %117 = phi i32 [ 0, %32 ], [ %115, %114 ], [ 1, %105 ]
  %118 = phi i32 [ 0, %32 ], [ %112, %114 ], [ %103, %105 ]
  store i32 %117, ptr %19, align 4
  br label %122

119:                                              ; preds = %108, %101, %77, %50, %47, %44, %41, %38, %27, %24
  %120 = phi i32 [ %42, %41 ], [ %39, %38 ], [ %48, %47 ], [ %45, %44 ], [ %112, %108 ], [ %103, %101 ], [ %79, %77 ], [ %51, %50 ], [ %28, %27 ], [ %25, %24 ]
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %120, ptr noundef nonnull @__func__.ctrl_power_mode) #10
  br label %122

122:                                              ; preds = %119, %116, %17, %11, %9
  %123 = phi i32 [ -22, %9 ], [ -22, %11 ], [ 0, %17 ], [ %120, %119 ], [ %118, %116 ]
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_block(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 0, i32 192
  %9 = xor i1 %7, true
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %85

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 8
  %13 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 9
  %14 = getelementptr %struct.drxk_state, ptr %0, i32 0, i32 9, i32 1
  %15 = getelementptr %struct.drxk_state, ptr %0, i32 0, i32 9, i32 2
  %16 = getelementptr %struct.drxk_state, ptr %0, i32 0, i32 9, i32 3
  %17 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  br label %18

18:                                               ; preds = %79, %11
  %19 = phi i32 [ %1, %11 ], [ %82, %79 ]
  %20 = phi ptr [ %3, %11 ], [ %80, %79 ]
  %21 = phi i32 [ %2, %11 ], [ %83, %79 ]
  %22 = load i32, ptr %12, align 4
  %23 = tail call i32 @llvm.smin.i32(i32 %21, i32 %22)
  %24 = and i32 %19, -63897728
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %25, i1 true, i1 %9
  %27 = trunc i32 %19 to i8
  %28 = shl i8 %27, 1
  br i1 %26, label %29, label %41

29:                                               ; preds = %18
  %30 = or i8 %28, 1
  store i8 %30, ptr %13, align 1
  %31 = lshr i32 %19, 16
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr %14, align 1
  %33 = lshr i32 %19, 24
  %34 = lshr i32 %19, 7
  %35 = trunc i32 %34 to i8
  store i8 %35, ptr %16, align 1
  %36 = or i32 %33, %8
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %15, align 1
  %38 = icmp sgt i32 %22, %21
  %39 = add i32 %23, -2
  %40 = select i1 %38, i32 %23, i32 %39
  br label %48

41:                                               ; preds = %18
  store i8 %28, ptr %13, align 1
  %42 = lshr i32 %19, 16
  %43 = and i32 %42, 15
  %44 = lshr i32 %19, 18
  %45 = and i32 %44, 240
  %46 = or i32 %43, %45
  %47 = trunc i32 %46 to i8
  store i8 %47, ptr %14, align 1
  br label %48

48:                                               ; preds = %41, %29
  %49 = phi i32 [ %23, %41 ], [ %40, %29 ]
  %50 = phi i32 [ 2, %41 ], [ 4, %29 ]
  %51 = getelementptr %struct.drxk_state, ptr %0, i32 0, i32 9, i32 %50
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %51, ptr align 1 %20, i32 %49, i1 false)
  %52 = load i32, ptr @debug, align 4
  %53 = icmp ugt i32 %52, 1
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.write_block, i32 noundef %19, i32 noundef %8) #10
  %56 = load i32, ptr @debug, align 4
  %57 = icmp ugt i32 %56, 1
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = icmp ne ptr %20, null
  %60 = icmp sgt i32 %49, 0
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %70

62:                                               ; preds = %62, %58
  %63 = phi i32 [ %68, %62 ], [ 0, %58 ]
  %64 = getelementptr i8, ptr %20, i32 %63
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %66) #10
  %68 = add nuw nsw i32 %63, 1
  %69 = icmp eq i32 %68, %49
  br i1 %69, label %70, label %62

70:                                               ; preds = %62, %58
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %72

72:                                               ; preds = %70, %54, %48
  %73 = load i8, ptr %17, align 4
  %74 = add i32 %50, %49
  %75 = tail call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %73, ptr noundef %13, i32 noundef %74)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.write_block, i32 noundef %19) #10
  br label %85

79:                                               ; preds = %72
  %80 = getelementptr i8, ptr %20, i32 %49
  %81 = ashr i32 %49, 1
  %82 = add i32 %81, %19
  %83 = sub i32 %21, %49
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %18, label %85

85:                                               ; preds = %79, %77, %4
  %86 = phi i32 [ %75, %77 ], [ 0, %4 ], [ %75, %79 ]
  ret i32 %86
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @power_up_device(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [1 x %struct.i2c_msg], align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #12
  store i8 0, ptr %7, align 1
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.power_up_device) #10
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %14 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #12
  %15 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 1, ptr %15, align 4, !annotation !9
  %16 = zext i8 %14 to i16
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %18, align 4
  %19 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 99
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  br i1 %21, label %26, label %24

24:                                               ; preds = %12
  %25 = call i32 @__i2c_transfer(ptr noundef %23, ptr noundef nonnull %6, i32 noundef 1) #12
  br label %28

26:                                               ; preds = %12
  %27 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %6, i32 noundef 1) #12
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #12
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %5, i32 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  br label %35

35:                                               ; preds = %53, %31
  %36 = phi i16 [ %39, %53 ], [ 0, %31 ]
  store i8 0, ptr %7, align 1
  %37 = load i8, ptr %13, align 4
  %38 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %37, ptr noundef nonnull %7, i32 noundef 1)
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #12
  %39 = add nuw nsw i16 %36, 1
  %40 = icmp slt i32 %38, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  store i32 1, ptr %32, align 4, !annotation !9
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %5, align 4
  store i16 1, ptr %33, align 2
  store ptr %7, ptr %34, align 4
  %44 = load i8, ptr %19, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = load ptr, ptr %22, align 4
  br i1 %45, label %49, label %47

47:                                               ; preds = %41
  %48 = call i32 @__i2c_transfer(ptr noundef %46, ptr noundef nonnull %5, i32 noundef 1) #12
  br label %51

49:                                               ; preds = %41
  %50 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %5, i32 noundef 1) #12
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  br label %53

53:                                               ; preds = %51, %35
  %54 = phi i32 [ %38, %35 ], [ %52, %51 ]
  %55 = icmp slt i32 %54, 0
  %56 = icmp ult i16 %36, 19
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %35, label %58

58:                                               ; preds = %53
  %59 = icmp ugt i16 %36, 18
  %60 = select i1 %55, i1 %59, i1 false
  br i1 %60, label %136, label %61

61:                                               ; preds = %58, %28
  %62 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %63 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %64 = load i8, ptr %63, align 1, !range !8
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, i32 0, i32 192
  br i1 %65, label %70, label %67

67:                                               ; preds = %61
  store i8 43, ptr %4, align 1
  %68 = trunc i32 %66 to i8
  %69 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %68, ptr %69, align 1
  br label %71

70:                                               ; preds = %61
  store i8 42, ptr %4, align 1
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i8 [ 69, %67 ], [ 21, %70 ]
  %73 = phi i32 [ 4, %67 ], [ 2, %70 ]
  %74 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %72, ptr %74, align 1
  %75 = getelementptr [6 x i8], ptr %4, i32 0, i32 %73
  store i8 0, ptr %75, align 1
  %76 = or i32 %73, 1
  %77 = getelementptr [6 x i8], ptr %4, i32 0, i32 %76
  store i8 0, ptr %77, align 1
  %78 = load i32, ptr @debug, align 4
  %79 = icmp ugt i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4522005, i32 noundef 0, i32 noundef %66) #10
  br label %82

82:                                               ; preds = %80, %71
  %83 = add nuw nsw i32 %73, 2
  %84 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %62, ptr noundef nonnull %4, i32 noundef %83) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %136, label %86

86:                                               ; preds = %82
  %87 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %88 = load i8, ptr %63, align 1, !range !8
  %89 = icmp eq i8 %88, 0
  %90 = select i1 %89, i32 0, i32 192
  br i1 %89, label %94, label %91

91:                                               ; preds = %86
  store i8 47, ptr %3, align 1
  %92 = trunc i32 %90 to i8
  %93 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %92, ptr %93, align 1
  br label %95

94:                                               ; preds = %86
  store i8 46, ptr %3, align 1
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i8 [ 69, %91 ], [ 21, %94 ]
  %97 = phi i32 [ 4, %91 ], [ 2, %94 ]
  %98 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %96, ptr %98, align 1
  %99 = getelementptr [6 x i8], ptr %3, i32 0, i32 %97
  store i8 -70, ptr %99, align 1
  %100 = or i32 %97, 1
  %101 = getelementptr [6 x i8], ptr %3, i32 0, i32 %100
  store i8 -6, ptr %101, align 1
  %102 = load i32, ptr @debug, align 4
  %103 = icmp ugt i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4522007, i32 noundef 64186, i32 noundef %90) #10
  br label %106

106:                                              ; preds = %104, %95
  %107 = add nuw nsw i32 %97, 2
  %108 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %87, ptr noundef nonnull %3, i32 noundef %107) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %136, label %110

110:                                              ; preds = %106
  %111 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %112 = load i8, ptr %63, align 1, !range !8
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, i32 0, i32 192
  br i1 %113, label %118, label %115

115:                                              ; preds = %110
  store i8 37, ptr %2, align 1
  %116 = trunc i32 %114 to i8
  %117 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %116, ptr %117, align 1
  br label %119

118:                                              ; preds = %110
  store i8 36, ptr %2, align 1
  br label %119

119:                                              ; preds = %118, %115
  %120 = phi i8 [ 69, %115 ], [ 21, %118 ]
  %121 = phi i32 [ 4, %115 ], [ 2, %118 ]
  %122 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %120, ptr %122, align 1
  %123 = getelementptr [6 x i8], ptr %2, i32 0, i32 %121
  store i8 1, ptr %123, align 1
  %124 = or i32 %121, 1
  %125 = getelementptr [6 x i8], ptr %2, i32 0, i32 %124
  store i8 0, ptr %125, align 1
  %126 = load i32, ptr @debug, align 4
  %127 = icmp ugt i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4522002, i32 noundef 1, i32 noundef %114) #10
  br label %130

130:                                              ; preds = %128, %119
  %131 = add nuw nsw i32 %121, 2
  %132 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %111, ptr noundef nonnull %2, i32 noundef %131) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 98
  store i32 0, ptr %135, align 4
  br label %139

136:                                              ; preds = %130, %106, %82, %58
  %137 = phi i32 [ %132, %130 ], [ %108, %106 ], [ %84, %82 ], [ %54, %58 ]
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %137, ptr noundef nonnull @__func__.power_up_device) #10
  br label %139

139:                                              ; preds = %136, %134
  %140 = phi i32 [ %137, %136 ], [ %132, %134 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #12
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbt_enable_ofdm_token_ring(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca [6 x i8], align 1
  %6 = alloca [4 x i8], align 4
  %7 = alloca [2 x i8], align 2
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dvbt_enable_ofdm_token_ring) #10
  br label %12

12:                                               ; preds = %10, %2
  %13 = zext i1 %1 to i16
  %14 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %15 = load i8, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #12
  store i16 0, ptr %7, align 2, !annotation !9
  %16 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 0, i32 192
  br i1 %18, label %24, label %20

20:                                               ; preds = %12
  store i8 37, ptr %6, align 4
  %21 = trunc i32 %19 to i8
  %22 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 2
  store i8 %21, ptr %22, align 2
  %23 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 3
  store i8 0, ptr %23, align 1
  br label %25

24:                                               ; preds = %12
  store i8 36, ptr %6, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i8 [ 71, %20 ], [ 23, %24 ]
  %27 = phi i32 [ 4, %20 ], [ 2, %24 ]
  %28 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 1
  store i8 %26, ptr %28, align 1
  %29 = load i32, ptr @debug, align 4
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 4653074, i32 noundef %19) #10
  br label %33

33:                                               ; preds = %31, %25
  %34 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %15, ptr noundef nonnull %6, i32 noundef %27, ptr noundef nonnull %7, i32 noundef 2) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %46

37:                                               ; preds = %33
  %38 = load i8, ptr %7, align 2
  %39 = zext i8 %38 to i16
  %40 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  %43 = shl nuw i16 %42, 8
  %44 = or i16 %43, %39
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %45 = icmp eq i16 %44, %13
  br i1 %45, label %118, label %46

46:                                               ; preds = %37, %36
  %47 = phi i16 [ 0, %36 ], [ %44, %37 ]
  %48 = load i8, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #12, !annotation !9
  %49 = load i8, ptr %16, align 1, !range !8
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i32 0, i32 192
  br i1 %50, label %55, label %52

52:                                               ; preds = %46
  store i8 33, ptr %5, align 1
  %53 = trunc i32 %51 to i8
  %54 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %53, ptr %54, align 1
  br label %56

55:                                               ; preds = %46
  store i8 32, ptr %5, align 1
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i8 [ 71, %52 ], [ 23, %55 ]
  %58 = phi i32 [ 4, %52 ], [ 2, %55 ]
  %59 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 %57, ptr %59, align 1
  %60 = zext i1 %1 to i8
  %61 = getelementptr [6 x i8], ptr %5, i32 0, i32 %58
  store i8 %60, ptr %61, align 1
  %62 = or i32 %58, 1
  %63 = getelementptr [6 x i8], ptr %5, i32 0, i32 %62
  store i8 0, ptr %63, align 1
  %64 = load i32, ptr @debug, align 4
  %65 = icmp ugt i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = zext i1 %1 to i32
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4653072, i32 noundef %67, i32 noundef %51) #10
  br label %69

69:                                               ; preds = %66, %56
  %70 = add nuw nsw i32 %58, 2
  %71 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %48, ptr noundef nonnull %5, i32 noundef %70) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %72 = load volatile i32, ptr @jiffies, align 64
  %73 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %74 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  %75 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  %76 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %77 = sub i32 -20, %72
  br label %78

78:                                               ; preds = %114, %69
  %79 = phi i16 [ %47, %69 ], [ %110, %114 ]
  %80 = load i8, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !9
  %81 = load i8, ptr %16, align 1, !range !8
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, i32 0, i32 192
  br i1 %82, label %86, label %84

84:                                               ; preds = %78
  store i8 37, ptr %3, align 4
  %85 = trunc i32 %83 to i8
  store i8 %85, ptr %74, align 2
  store i8 0, ptr %75, align 1
  br label %87

86:                                               ; preds = %78
  store i8 36, ptr %3, align 4
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i8 [ 71, %84 ], [ 23, %86 ]
  %89 = phi i32 [ 4, %84 ], [ 2, %86 ]
  store i8 %88, ptr %73, align 1
  %90 = load i32, ptr @debug, align 4
  %91 = icmp ugt i32 %90, 1
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 4653074, i32 noundef %83) #10
  br label %94

94:                                               ; preds = %92, %87
  %95 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %80, ptr noundef nonnull %3, i32 noundef %89, ptr noundef nonnull %4, i32 noundef 2) #12
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %98 = icmp eq i16 %79, %13
  br label %107

99:                                               ; preds = %94
  %100 = load i8, ptr %4, align 2
  %101 = zext i8 %100 to i16
  %102 = load i8, ptr %76, align 1
  %103 = zext i8 %102 to i16
  %104 = shl nuw i16 %103, 8
  %105 = or i16 %104, %101
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %106 = icmp eq i16 %105, %13
  br i1 %106, label %118, label %107

107:                                              ; preds = %99, %97
  %108 = phi i1 [ %98, %97 ], [ false, %99 ]
  %109 = phi i32 [ %95, %97 ], [ 0, %99 ]
  %110 = phi i16 [ %79, %97 ], [ %105, %99 ]
  %111 = load volatile i32, ptr @jiffies, align 64
  %112 = add i32 %77, %111
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  br label %78

115:                                              ; preds = %107
  br i1 %108, label %118, label %116

116:                                              ; preds = %115
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %118

118:                                              ; preds = %116, %115, %99, %37
  %119 = phi i32 [ -22, %116 ], [ 0, %37 ], [ %109, %115 ], [ 0, %99 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hi_cfg_command(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.hi_cfg_command) #10
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 24
  %15 = load i16, ptr %14, align 2
  %16 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #12, !annotation !9
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 0, i32 192
  br i1 %20, label %25, label %22

22:                                               ; preds = %12
  store i8 113, ptr %7, align 1
  %23 = trunc i32 %21 to i8
  %24 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %23, ptr %24, align 1
  br label %26

25:                                               ; preds = %12
  store i8 112, ptr %7, align 1
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i8 [ 66, %22 ], [ 18, %25 ]
  %28 = phi i32 [ 4, %22 ], [ 2, %25 ]
  %29 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 %27, ptr %29, align 1
  %30 = trunc i16 %15 to i8
  %31 = getelementptr [6 x i8], ptr %7, i32 0, i32 %28
  store i8 %30, ptr %31, align 1
  %32 = lshr i16 %15, 8
  %33 = trunc i16 %32 to i8
  %34 = or i32 %28, 1
  %35 = getelementptr [6 x i8], ptr %7, i32 0, i32 %34
  store i8 %33, ptr %35, align 1
  %36 = load i32, ptr @debug, align 4
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = zext i16 %15 to i32
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4325432, i32 noundef %39, i32 noundef %21) #10
  br label %41

41:                                               ; preds = %38, %26
  %42 = add nuw nsw i32 %28, 2
  %43 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %17, ptr noundef nonnull %7, i32 noundef %42) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %195, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 25
  %47 = load i16, ptr %46, align 4
  %48 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #12, !annotation !9
  %49 = load i8, ptr %18, align 1, !range !8
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i32 0, i32 192
  br i1 %50, label %55, label %52

52:                                               ; preds = %45
  store i8 111, ptr %6, align 1
  %53 = trunc i32 %51 to i8
  %54 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %53, ptr %54, align 1
  br label %56

55:                                               ; preds = %45
  store i8 110, ptr %6, align 1
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i8 [ 66, %52 ], [ 18, %55 ]
  %58 = phi i32 [ 4, %52 ], [ 2, %55 ]
  %59 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 %57, ptr %59, align 1
  %60 = trunc i16 %47 to i8
  %61 = getelementptr [6 x i8], ptr %6, i32 0, i32 %58
  store i8 %60, ptr %61, align 1
  %62 = lshr i16 %47, 8
  %63 = trunc i16 %62 to i8
  %64 = or i32 %58, 1
  %65 = getelementptr [6 x i8], ptr %6, i32 0, i32 %64
  store i8 %63, ptr %65, align 1
  %66 = load i32, ptr @debug, align 4
  %67 = icmp ugt i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = zext i16 %47 to i32
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4325431, i32 noundef %69, i32 noundef %51) #10
  br label %71

71:                                               ; preds = %68, %56
  %72 = add nuw nsw i32 %58, 2
  %73 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %48, ptr noundef nonnull %6, i32 noundef %72) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %195, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 23
  %77 = load i16, ptr %76, align 4
  %78 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #12, !annotation !9
  %79 = load i8, ptr %18, align 1, !range !8
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, i32 0, i32 192
  br i1 %80, label %85, label %82

82:                                               ; preds = %75
  store i8 109, ptr %5, align 1
  %83 = trunc i32 %81 to i8
  %84 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %83, ptr %84, align 1
  br label %86

85:                                               ; preds = %75
  store i8 108, ptr %5, align 1
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i8 [ 66, %82 ], [ 18, %85 ]
  %88 = phi i32 [ 4, %82 ], [ 2, %85 ]
  %89 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 %87, ptr %89, align 1
  %90 = trunc i16 %77 to i8
  %91 = getelementptr [6 x i8], ptr %5, i32 0, i32 %88
  store i8 %90, ptr %91, align 1
  %92 = lshr i16 %77, 8
  %93 = trunc i16 %92 to i8
  %94 = or i32 %88, 1
  %95 = getelementptr [6 x i8], ptr %5, i32 0, i32 %94
  store i8 %93, ptr %95, align 1
  %96 = load i32, ptr @debug, align 4
  %97 = icmp ugt i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = zext i16 %77 to i32
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4325430, i32 noundef %99, i32 noundef %81) #10
  br label %101

101:                                              ; preds = %98, %86
  %102 = add nuw nsw i32 %88, 2
  %103 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %78, ptr noundef nonnull %5, i32 noundef %102) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %195, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 22
  %107 = load i16, ptr %106, align 2
  %108 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %109 = load i8, ptr %18, align 1, !range !8
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, i32 0, i32 192
  br i1 %110, label %115, label %112

112:                                              ; preds = %105
  store i8 107, ptr %4, align 1
  %113 = trunc i32 %111 to i8
  %114 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %113, ptr %114, align 1
  br label %116

115:                                              ; preds = %105
  store i8 106, ptr %4, align 1
  br label %116

116:                                              ; preds = %115, %112
  %117 = phi i8 [ 66, %112 ], [ 18, %115 ]
  %118 = phi i32 [ 4, %112 ], [ 2, %115 ]
  %119 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %117, ptr %119, align 1
  %120 = trunc i16 %107 to i8
  %121 = getelementptr [6 x i8], ptr %4, i32 0, i32 %118
  store i8 %120, ptr %121, align 1
  %122 = lshr i16 %107, 8
  %123 = trunc i16 %122 to i8
  %124 = or i32 %118, 1
  %125 = getelementptr [6 x i8], ptr %4, i32 0, i32 %124
  store i8 %123, ptr %125, align 1
  %126 = load i32, ptr @debug, align 4
  %127 = icmp ugt i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %116
  %129 = zext i16 %107 to i32
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4325429, i32 noundef %129, i32 noundef %111) #10
  br label %131

131:                                              ; preds = %128, %116
  %132 = add nuw nsw i32 %118, 2
  %133 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %108, ptr noundef nonnull %4, i32 noundef %132) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %195, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 21
  %137 = load i16, ptr %136, align 4
  %138 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %139 = load i8, ptr %18, align 1, !range !8
  %140 = icmp eq i8 %139, 0
  %141 = select i1 %140, i32 0, i32 192
  br i1 %140, label %145, label %142

142:                                              ; preds = %135
  store i8 105, ptr %3, align 1
  %143 = trunc i32 %141 to i8
  %144 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %143, ptr %144, align 1
  br label %146

145:                                              ; preds = %135
  store i8 104, ptr %3, align 1
  br label %146

146:                                              ; preds = %145, %142
  %147 = phi i8 [ 66, %142 ], [ 18, %145 ]
  %148 = phi i32 [ 4, %142 ], [ 2, %145 ]
  %149 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %147, ptr %149, align 1
  %150 = trunc i16 %137 to i8
  %151 = getelementptr [6 x i8], ptr %3, i32 0, i32 %148
  store i8 %150, ptr %151, align 1
  %152 = lshr i16 %137, 8
  %153 = trunc i16 %152 to i8
  %154 = or i32 %148, 1
  %155 = getelementptr [6 x i8], ptr %3, i32 0, i32 %154
  store i8 %153, ptr %155, align 1
  %156 = load i32, ptr @debug, align 4
  %157 = icmp ugt i32 %156, 1
  br i1 %157, label %158, label %161

158:                                              ; preds = %146
  %159 = zext i16 %137 to i32
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4325428, i32 noundef %159, i32 noundef %141) #10
  br label %161

161:                                              ; preds = %158, %146
  %162 = add nuw nsw i32 %148, 2
  %163 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %138, ptr noundef nonnull %3, i32 noundef %162) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %195, label %165

165:                                              ; preds = %161
  %166 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %167 = load i8, ptr %18, align 1, !range !8
  %168 = icmp eq i8 %167, 0
  %169 = select i1 %168, i32 0, i32 192
  br i1 %168, label %173, label %170

170:                                              ; preds = %165
  store i8 103, ptr %2, align 1
  %171 = trunc i32 %169 to i8
  %172 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %171, ptr %172, align 1
  br label %174

173:                                              ; preds = %165
  store i8 102, ptr %2, align 1
  br label %174

174:                                              ; preds = %173, %170
  %175 = phi i8 [ 66, %170 ], [ 18, %173 ]
  %176 = phi i32 [ 4, %170 ], [ 2, %173 ]
  %177 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %175, ptr %177, align 1
  %178 = getelementptr [6 x i8], ptr %2, i32 0, i32 %176
  store i8 69, ptr %178, align 1
  %179 = or i32 %176, 1
  %180 = getelementptr [6 x i8], ptr %2, i32 0, i32 %179
  store i8 57, ptr %180, align 1
  %181 = load i32, ptr @debug, align 4
  %182 = icmp ugt i32 %181, 1
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4325427, i32 noundef 14661, i32 noundef %169) #10
  br label %185

185:                                              ; preds = %183, %174
  %186 = add nuw nsw i32 %176, 2
  %187 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %166, ptr noundef nonnull %2, i32 noundef %186) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %185
  %190 = call fastcc i32 @hi_command(ptr noundef %0, i16 noundef zeroext 3)
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load i16, ptr %46, align 4
  %194 = and i16 %193, -9
  store i16 %194, ptr %46, align 4
  call void @mutex_unlock(ptr noundef %13) #12
  br label %198

195:                                              ; preds = %189, %185, %161, %131, %101, %71, %41
  %196 = phi i32 [ %190, %189 ], [ %187, %185 ], [ %163, %161 ], [ %133, %131 ], [ %103, %101 ], [ %73, %71 ], [ %43, %41 ]
  call void @mutex_unlock(ptr noundef %13) #12
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %196, ptr noundef nonnull @__func__.hi_cfg_command) #10
  br label %198

198:                                              ; preds = %195, %192
  %199 = phi i32 [ %196, %195 ], [ %190, %192 ]
  ret i32 %199
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hi_command(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca [4 x i8], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [6 x i8], align 1
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.hi_command) #10
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %14 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #12, !annotation !9
  %15 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 0, i32 192
  br i1 %17, label %22, label %19

19:                                               ; preds = %12
  store i8 101, ptr %7, align 1
  %20 = trunc i32 %18 to i8
  %21 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %20, ptr %21, align 1
  br label %23

22:                                               ; preds = %12
  store i8 100, ptr %7, align 1
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i8 [ 66, %19 ], [ 18, %22 ]
  %25 = phi i32 [ 4, %19 ], [ 2, %22 ]
  %26 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 %24, ptr %26, align 1
  %27 = trunc i16 %1 to i8
  %28 = getelementptr [6 x i8], ptr %7, i32 0, i32 %25
  store i8 %27, ptr %28, align 1
  %29 = lshr i16 %1, 8
  %30 = trunc i16 %29 to i8
  %31 = or i32 %25, 1
  %32 = getelementptr [6 x i8], ptr %7, i32 0, i32 %31
  store i8 %30, ptr %32, align 1
  %33 = load i32, ptr @debug, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = zext i16 %1 to i32
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4325426, i32 noundef %36, i32 noundef %18) #10
  br label %38

38:                                               ; preds = %35, %23
  %39 = add nuw nsw i32 %25, 2
  %40 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %14, ptr noundef nonnull %7, i32 noundef %39) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %109, label %42

42:                                               ; preds = %38
  %43 = icmp eq i16 %1, 3
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 25
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, 8
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %112

49:                                               ; preds = %44, %42
  %50 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  %51 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  %52 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  %53 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  br label %54

54:                                               ; preds = %72, %49
  %55 = phi i16 [ 0, %49 ], [ %81, %72 ]
  %56 = phi i32 [ 0, %49 ], [ %57, %72 ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %57 = add nuw nsw i32 %56, 1
  %58 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2, !annotation !9
  %59 = load i8, ptr %15, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, i32 0, i32 192
  br i1 %60, label %64, label %62

62:                                               ; preds = %54
  store i8 101, ptr %5, align 4
  %63 = trunc i32 %61 to i8
  store i8 %63, ptr %50, align 2
  store i8 0, ptr %51, align 1
  br label %65

64:                                               ; preds = %54
  store i8 100, ptr %5, align 4
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i8 [ 66, %62 ], [ 18, %64 ]
  %67 = phi i32 [ 4, %62 ], [ 2, %64 ]
  store i8 %66, ptr %52, align 1
  %68 = load i32, ptr @debug, align 4
  %69 = icmp ugt i32 %68, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 4325426, i32 noundef %61) #10
  br label %72

72:                                               ; preds = %70, %65
  %73 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %58, ptr noundef nonnull %5, i32 noundef %67, ptr noundef nonnull %6, i32 noundef 2) #12
  %74 = icmp slt i32 %73, 0
  %75 = load i8, ptr %6, align 2
  %76 = zext i8 %75 to i16
  %77 = load i8, ptr %53, align 1
  %78 = zext i8 %77 to i16
  %79 = shl nuw i16 %78, 8
  %80 = or i16 %79, %76
  %81 = select i1 %74, i16 %55, i16 %80
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %82 = icmp ne i16 %81, 0
  %83 = select i1 %74, i1 true, i1 %82
  %84 = icmp ult i32 %56, 99
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %54, label %86

86:                                               ; preds = %72
  %87 = call i32 @llvm.smin.i32(i32 %73, i32 0)
  br i1 %74, label %109, label %88

88:                                               ; preds = %86
  %89 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !9
  %90 = load i8, ptr %15, align 1, !range !8
  %91 = icmp eq i8 %90, 0
  %92 = select i1 %91, i32 0, i32 192
  br i1 %91, label %97, label %93

93:                                               ; preds = %88
  store i8 99, ptr %3, align 4
  %94 = trunc i32 %92 to i8
  %95 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %94, ptr %95, align 2
  %96 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %96, align 1
  br label %98

97:                                               ; preds = %88
  store i8 98, ptr %3, align 4
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i8 [ 66, %93 ], [ 18, %97 ]
  %100 = phi i32 [ 4, %93 ], [ 2, %97 ]
  %101 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 %99, ptr %101, align 1
  %102 = load i32, ptr @debug, align 4
  %103 = icmp ugt i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 4325425, i32 noundef %92) #10
  br label %106

106:                                              ; preds = %104, %98
  %107 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %89, ptr noundef nonnull %3, i32 noundef %100, ptr noundef nonnull %4, i32 noundef 2) #12
  %108 = icmp slt i32 %107, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br i1 %108, label %109, label %112

109:                                              ; preds = %106, %86, %38
  %110 = phi i32 [ %87, %86 ], [ %40, %38 ], [ %107, %106 ]
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %110, ptr noundef nonnull @__func__.hi_command) #10
  br label %112

112:                                              ; preds = %109, %106, %44
  %113 = phi i32 [ %110, %109 ], [ %40, %44 ], [ 0, %106 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bl_chain_cmd(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.bl_chain_cmd) #10
  br label %14

14:                                               ; preds = %12, %3
  %15 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %15) #12
  %16 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 6, i1 false) #12, !annotation !9
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 0, i32 192
  br i1 %20, label %25, label %22

22:                                               ; preds = %14
  store i8 35, ptr %9, align 1
  %23 = trunc i32 %21 to i8
  %24 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %23, ptr %24, align 1
  br label %26

25:                                               ; preds = %14
  store i8 34, ptr %9, align 1
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i8 [ 72, %22 ], [ 24, %25 ]
  %28 = phi i32 [ 4, %22 ], [ 2, %25 ]
  %29 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 %27, ptr %29, align 1
  %30 = getelementptr [6 x i8], ptr %9, i32 0, i32 %28
  store i8 1, ptr %30, align 1
  %31 = or i32 %28, 1
  %32 = getelementptr [6 x i8], ptr %9, i32 0, i32 %31
  store i8 0, ptr %32, align 1
  %33 = load i32, ptr @debug, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4718609, i32 noundef 1, i32 noundef %21) #10
  br label %37

37:                                               ; preds = %35, %26
  %38 = add nuw nsw i32 %28, 2
  %39 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %17, ptr noundef nonnull %9, i32 noundef %38) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %161, label %41

41:                                               ; preds = %37
  %42 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i32 6, i1 false) #12, !annotation !9
  %43 = load i8, ptr %18, align 1, !range !8
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i32 0, i32 192
  br i1 %44, label %49, label %46

46:                                               ; preds = %41
  store i8 49, ptr %8, align 1
  %47 = trunc i32 %45 to i8
  %48 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %47, ptr %48, align 1
  br label %50

49:                                               ; preds = %41
  store i8 48, ptr %8, align 1
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i8 [ 72, %46 ], [ 24, %49 ]
  %52 = phi i32 [ 4, %46 ], [ 2, %49 ]
  %53 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 %51, ptr %53, align 1
  %54 = trunc i16 %1 to i8
  %55 = getelementptr [6 x i8], ptr %8, i32 0, i32 %52
  store i8 %54, ptr %55, align 1
  %56 = lshr i16 %1, 8
  %57 = trunc i16 %56 to i8
  %58 = or i32 %52, 1
  %59 = getelementptr [6 x i8], ptr %8, i32 0, i32 %58
  store i8 %57, ptr %59, align 1
  %60 = load i32, ptr @debug, align 4
  %61 = icmp ugt i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = zext i16 %1 to i32
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4718616, i32 noundef %63, i32 noundef %45) #10
  br label %65

65:                                               ; preds = %62, %50
  %66 = add nuw nsw i32 %52, 2
  %67 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %42, ptr noundef nonnull %8, i32 noundef %66) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %161, label %69

69:                                               ; preds = %65
  %70 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #12, !annotation !9
  %71 = load i8, ptr %18, align 1, !range !8
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i32 0, i32 192
  br i1 %72, label %77, label %74

74:                                               ; preds = %69
  store i8 51, ptr %7, align 1
  %75 = trunc i32 %73 to i8
  %76 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %75, ptr %76, align 1
  br label %78

77:                                               ; preds = %69
  store i8 50, ptr %7, align 1
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i8 [ 72, %74 ], [ 24, %77 ]
  %80 = phi i32 [ 4, %74 ], [ 2, %77 ]
  %81 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 %79, ptr %81, align 1
  %82 = trunc i16 %2 to i8
  %83 = getelementptr [6 x i8], ptr %7, i32 0, i32 %80
  store i8 %82, ptr %83, align 1
  %84 = lshr i16 %2, 8
  %85 = trunc i16 %84 to i8
  %86 = or i32 %80, 1
  %87 = getelementptr [6 x i8], ptr %7, i32 0, i32 %86
  store i8 %85, ptr %87, align 1
  %88 = load i32, ptr @debug, align 4
  %89 = icmp ugt i32 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = zext i16 %2 to i32
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4718617, i32 noundef %91, i32 noundef %73) #10
  br label %93

93:                                               ; preds = %90, %78
  %94 = add nuw nsw i32 %80, 2
  %95 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %70, ptr noundef nonnull %7, i32 noundef %94) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %161, label %97

97:                                               ; preds = %93
  %98 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #12, !annotation !9
  %99 = load i8, ptr %18, align 1, !range !8
  %100 = icmp eq i8 %99, 0
  %101 = select i1 %100, i32 0, i32 192
  br i1 %100, label %105, label %102

102:                                              ; preds = %97
  store i8 37, ptr %6, align 1
  %103 = trunc i32 %101 to i8
  %104 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %103, ptr %104, align 1
  br label %106

105:                                              ; preds = %97
  store i8 36, ptr %6, align 1
  br label %106

106:                                              ; preds = %105, %102
  %107 = phi i8 [ 72, %102 ], [ 24, %105 ]
  %108 = phi i32 [ 4, %102 ], [ 2, %105 ]
  %109 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 %107, ptr %109, align 1
  %110 = getelementptr [6 x i8], ptr %6, i32 0, i32 %108
  store i8 1, ptr %110, align 1
  %111 = or i32 %108, 1
  %112 = getelementptr [6 x i8], ptr %6, i32 0, i32 %111
  store i8 0, ptr %112, align 1
  %113 = load i32, ptr @debug, align 4
  %114 = icmp ugt i32 %113, 1
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4718610, i32 noundef 1, i32 noundef %101) #10
  br label %117

117:                                              ; preds = %115, %106
  %118 = add nuw nsw i32 %108, 2
  %119 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %98, ptr noundef nonnull %6, i32 noundef %118) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %161, label %121

121:                                              ; preds = %117
  %122 = load volatile i32, ptr @jiffies, align 64
  %123 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  %124 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  %125 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  %126 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %127 = sub i32 -10, %122
  br label %128

128:                                              ; preds = %155, %121
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %129 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !9
  %130 = load i8, ptr %18, align 1, !range !8
  %131 = icmp eq i8 %130, 0
  %132 = select i1 %131, i32 0, i32 192
  br i1 %131, label %135, label %133

133:                                              ; preds = %128
  store i8 33, ptr %4, align 4
  %134 = trunc i32 %132 to i8
  store i8 %134, ptr %123, align 2
  store i8 0, ptr %124, align 1
  br label %136

135:                                              ; preds = %128
  store i8 32, ptr %4, align 4
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i8 [ 72, %133 ], [ 24, %135 ]
  %138 = phi i32 [ 4, %133 ], [ 2, %135 ]
  store i8 %137, ptr %125, align 1
  %139 = load i32, ptr @debug, align 4
  %140 = icmp ugt i32 %139, 1
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 4718608, i32 noundef %132) #10
  br label %143

143:                                              ; preds = %141, %136
  %144 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %129, ptr noundef nonnull %4, i32 noundef %138, ptr noundef nonnull %5, i32 noundef 2) #12
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %161

147:                                              ; preds = %143
  %148 = load i8, ptr %5, align 2
  %149 = zext i8 %148 to i16
  %150 = load i8, ptr %126, align 1
  %151 = zext i8 %150 to i16
  %152 = shl nuw i16 %151, 8
  %153 = or i16 %152, %149
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %154 = icmp eq i16 %153, 1
  br i1 %154, label %155, label %164

155:                                              ; preds = %147
  %156 = load volatile i32, ptr @jiffies, align 64
  %157 = add i32 %127, %156
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %128, label %159

159:                                              ; preds = %155
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %164

161:                                              ; preds = %146, %117, %93, %65, %37
  %162 = phi i32 [ %144, %146 ], [ %119, %117 ], [ %95, %93 ], [ %67, %65 ], [ %39, %37 ]
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %162, ptr noundef nonnull @__func__.bl_chain_cmd) #10
  br label %164

164:                                              ; preds = %161, %159, %147
  %165 = phi i32 [ %162, %161 ], [ -22, %159 ], [ 0, %147 ]
  call void @mutex_unlock(ptr noundef %15) #12
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adc_synchronization(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [4 x i8], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.adc_synchronization) #10
  br label %10

10:                                               ; preds = %8, %1
  %11 = call fastcc i32 @adc_sync_measurement(ptr noundef %0, ptr noundef nonnull %5)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %88, label %13

13:                                               ; preds = %10
  %14 = load i16, ptr %5, align 2
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %84

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %18 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !9
  %19 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 0, i32 192
  br i1 %21, label %28, label %23

23:                                               ; preds = %16
  store i8 37, ptr %3, align 4
  %24 = trunc i32 %22 to i8
  %25 = or i8 %24, 1
  %26 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %25, ptr %26, align 2
  %27 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %27, align 1
  br label %29

28:                                               ; preds = %16
  store i8 36, ptr %3, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i8 [ -121, %23 ], [ 103, %28 ]
  %31 = phi i32 [ 4, %23 ], [ 2, %28 ]
  %32 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 %30, ptr %32, align 1
  %33 = load i32, ptr @debug, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 25624594, i32 noundef %22) #10
  br label %37

37:                                               ; preds = %35, %29
  %38 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %18, ptr noundef nonnull %3, i32 noundef %31, ptr noundef nonnull %4, i32 noundef 2) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %88

41:                                               ; preds = %37
  %42 = load i8, ptr %4, align 2
  %43 = zext i8 %42 to i16
  %44 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  %47 = shl nuw i16 %46, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %48 = and i16 %43, 2
  %49 = and i16 %43, 253
  %50 = or i16 %47, %49
  %51 = or i16 %50, %48
  %52 = xor i16 %51, 2
  %53 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %54 = load i8, ptr %19, align 1, !range !8
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %55, i32 0, i32 192
  br i1 %55, label %61, label %57

57:                                               ; preds = %41
  store i8 37, ptr %2, align 1
  %58 = trunc i32 %56 to i8
  %59 = or i8 %58, 1
  %60 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %59, ptr %60, align 1
  br label %62

61:                                               ; preds = %41
  store i8 36, ptr %2, align 1
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi i8 [ -121, %57 ], [ 103, %61 ]
  %64 = phi i32 [ 4, %57 ], [ 2, %61 ]
  %65 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %63, ptr %65, align 1
  %66 = trunc i16 %52 to i8
  %67 = getelementptr [6 x i8], ptr %2, i32 0, i32 %64
  store i8 %66, ptr %67, align 1
  %68 = or i32 %64, 1
  %69 = getelementptr [6 x i8], ptr %2, i32 0, i32 %68
  store i8 %45, ptr %69, align 1
  %70 = load i32, ptr @debug, align 4
  %71 = icmp ugt i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = zext i16 %52 to i32
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624594, i32 noundef %73, i32 noundef %56) #10
  br label %75

75:                                               ; preds = %72, %62
  %76 = add nuw nsw i32 %64, 2
  %77 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %53, ptr noundef nonnull %2, i32 noundef %76) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = call fastcc i32 @adc_sync_measurement(ptr noundef %0, ptr noundef nonnull %5)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load i16, ptr %5, align 2
  br label %84

84:                                               ; preds = %82, %13
  %85 = phi i16 [ %83, %82 ], [ %14, %13 ]
  %86 = phi i32 [ 0, %82 ], [ %11, %13 ]
  %87 = icmp ult i16 %85, 2
  br i1 %87, label %88, label %91

88:                                               ; preds = %84, %79, %75, %40, %10
  %89 = phi i32 [ %11, %10 ], [ -22, %84 ], [ %77, %75 ], [ %38, %40 ], [ %80, %79 ]
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %89, ptr noundef nonnull @__func__.adc_synchronization) #10
  br label %91

91:                                               ; preds = %88, %84
  %92 = phi i32 [ %89, %88 ], [ %86, %84 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_pre_saw(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_pre_saw) #10
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %8
  %11 = load i16, ptr %1, align 2
  %12 = icmp ugt i16 %11, 31
  br i1 %12, label %44, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %15 = load i8, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %16 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 0, i32 192
  br i1 %18, label %24, label %20

20:                                               ; preds = %13
  store i8 87, ptr %3, align 1
  %21 = trunc i32 %19 to i8
  %22 = or i8 %21, 1
  %23 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %22, ptr %23, align 1
  br label %25

24:                                               ; preds = %13
  store i8 86, ptr %3, align 1
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i8 [ -121, %20 ], [ 103, %24 ]
  %27 = phi i32 [ 4, %20 ], [ 2, %24 ]
  %28 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %26, ptr %28, align 1
  %29 = trunc i16 %11 to i8
  %30 = getelementptr [6 x i8], ptr %3, i32 0, i32 %27
  store i8 %29, ptr %30, align 1
  %31 = lshr i16 %11, 8
  %32 = trunc i16 %31 to i8
  %33 = or i32 %27, 1
  %34 = getelementptr [6 x i8], ptr %3, i32 0, i32 %33
  store i8 %32, ptr %34, align 1
  %35 = load i32, ptr @debug, align 4
  %36 = icmp ugt i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = zext i16 %11 to i32
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624619, i32 noundef %38, i32 noundef %19) #10
  br label %40

40:                                               ; preds = %37, %25
  %41 = add nuw nsw i32 %27, 2
  %42 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %15, ptr noundef nonnull %3, i32 noundef %41) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %10, %8
  %45 = phi i32 [ %42, %40 ], [ -22, %8 ], [ -22, %10 ]
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %45, ptr noundef nonnull @__func__.set_pre_saw) #10
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i32 [ %45, %44 ], [ %42, %40 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_agc_rf(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [6 x i8], align 1
  %7 = alloca [4 x i8], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca [4 x i8], align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca [6 x i8], align 1
  %14 = alloca [4 x i8], align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca [4 x i8], align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca [6 x i8], align 1
  %19 = alloca [4 x i8], align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca [6 x i8], align 1
  %22 = alloca [4 x i8], align 4
  %23 = alloca [2 x i8], align 2
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_agc_rf) #10
  br label %28

28:                                               ; preds = %26, %2
  %29 = icmp eq ptr %1, null
  br i1 %29, label %437, label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %1, align 4
  switch i32 %31, label %437 [
    i32 0, label %32
    i32 1, label %205
    i32 2, label %336
  ]

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %34 = load i8, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #12
  store i32 0, ptr %22, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #12
  store i16 0, ptr %23, align 2, !annotation !9
  %35 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 0, i32 192
  br i1 %37, label %44, label %39

39:                                               ; preds = %32
  store i8 89, ptr %22, align 4
  %40 = trunc i32 %38 to i8
  %41 = or i8 %40, 1
  %42 = getelementptr inbounds [4 x i8], ptr %22, i32 0, i32 2
  store i8 %41, ptr %42, align 2
  %43 = getelementptr inbounds [4 x i8], ptr %22, i32 0, i32 3
  store i8 0, ptr %43, align 1
  br label %45

44:                                               ; preds = %32
  store i8 88, ptr %22, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = phi i8 [ -121, %39 ], [ 103, %44 ]
  %47 = phi i32 [ 4, %39 ], [ 2, %44 ]
  %48 = getelementptr inbounds [4 x i8], ptr %22, i32 0, i32 1
  store i8 %46, ptr %48, align 1
  %49 = load i32, ptr @debug, align 4
  %50 = icmp ugt i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 25624620, i32 noundef %38) #10
  br label %53

53:                                               ; preds = %51, %45
  %54 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %34, ptr noundef nonnull %22, i32 noundef %47, ptr noundef nonnull %23, i32 noundef 2) #12
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #12
  br label %437

57:                                               ; preds = %53
  %58 = load i8, ptr %23, align 2
  %59 = getelementptr inbounds [2 x i8], ptr %23, i32 0, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #12
  %63 = and i8 %58, -33
  %64 = zext i8 %63 to i32
  %65 = or i32 %62, %64
  %66 = load i8, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %21) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %21, i8 0, i32 6, i1 false) #12, !annotation !9
  %67 = load i8, ptr %35, align 1, !range !8
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, i32 0, i32 192
  br i1 %68, label %74, label %70

70:                                               ; preds = %57
  store i8 89, ptr %21, align 1
  %71 = trunc i32 %69 to i8
  %72 = or i8 %71, 1
  %73 = getelementptr inbounds [6 x i8], ptr %21, i32 0, i32 2
  store i8 %72, ptr %73, align 1
  br label %75

74:                                               ; preds = %57
  store i8 88, ptr %21, align 1
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i8 [ -121, %70 ], [ 103, %74 ]
  %77 = phi i32 [ 4, %70 ], [ 2, %74 ]
  %78 = getelementptr inbounds [6 x i8], ptr %21, i32 0, i32 1
  store i8 %76, ptr %78, align 1
  %79 = getelementptr [6 x i8], ptr %21, i32 0, i32 %77
  store i8 %63, ptr %79, align 1
  %80 = or i32 %77, 1
  %81 = getelementptr [6 x i8], ptr %21, i32 0, i32 %80
  store i8 %60, ptr %81, align 1
  %82 = load i32, ptr @debug, align 4
  %83 = icmp ugt i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624620, i32 noundef %65, i32 noundef %69) #10
  br label %86

86:                                               ; preds = %84, %75
  %87 = add nuw nsw i32 %77, 2
  %88 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %66, ptr noundef nonnull %21, i32 noundef %87) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %21) #12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %437, label %90

90:                                               ; preds = %86
  %91 = load i8, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #12
  store i32 1040221001, ptr %19, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #12
  store i16 0, ptr %20, align 2, !annotation !9
  %92 = load i8, ptr %35, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, i32 0, i32 192
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [4 x i8], ptr %19, i32 0, i32 2
  store i8 %95, ptr %96, align 2
  %97 = load i32, ptr @debug, align 4
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593188, i32 noundef %94) #10
  br label %101

101:                                              ; preds = %99, %90
  %102 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %91, ptr noundef nonnull %19, i32 noundef 4, ptr noundef nonnull %20, i32 noundef 2) #12
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #12
  br label %437

105:                                              ; preds = %101
  %106 = load i8, ptr %20, align 2
  %107 = zext i8 %106 to i16
  %108 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i16
  %111 = shl nuw i16 %110, 8
  %112 = or i16 %111, %107
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #12
  %113 = and i16 %112, -514
  %114 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 60
  %115 = load i8, ptr %114, align 1, !range !8
  %116 = icmp eq i8 %115, 0
  %117 = or i16 %113, 512
  %118 = select i1 %116, i16 %113, i16 %117
  %119 = load i8, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %18) #12
  %120 = load i8, ptr %35, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  %122 = select i1 %121, i32 0, i32 192
  store i8 73, ptr %18, align 1
  %123 = trunc i32 %122 to i8
  %124 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 2
  store i8 %123, ptr %124, align 1
  %125 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 3
  store i8 62, ptr %125, align 1
  %126 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 1
  store i8 -125, ptr %126, align 1
  %127 = trunc i16 %118 to i8
  %128 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 4
  store i8 %127, ptr %128, align 1
  %129 = lshr i16 %118, 8
  %130 = trunc i16 %129 to i8
  %131 = getelementptr inbounds [6 x i8], ptr %18, i32 0, i32 5
  store i8 %130, ptr %131, align 1
  %132 = load i32, ptr @debug, align 4
  %133 = icmp ugt i32 %132, 1
  br i1 %133, label %134, label %137

134:                                              ; preds = %105
  %135 = zext i16 %118 to i32
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593188, i32 noundef %135, i32 noundef %122) #10
  br label %137

137:                                              ; preds = %134, %105
  %138 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %119, ptr noundef nonnull %18, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %18) #12
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %437, label %140

140:                                              ; preds = %137
  %141 = load i8, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #12
  store i32 1040221005, ptr %16, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #12
  store i16 0, ptr %17, align 2, !annotation !9
  %142 = load i8, ptr %35, align 1, !range !8
  %143 = icmp eq i8 %142, 0
  %144 = select i1 %143, i32 0, i32 192
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds [4 x i8], ptr %16, i32 0, i32 2
  store i8 %145, ptr %146, align 2
  %147 = load i32, ptr @debug, align 4
  %148 = icmp ugt i32 %147, 1
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593190, i32 noundef %144) #10
  br label %151

151:                                              ; preds = %149, %140
  %152 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %141, ptr noundef nonnull %16, i32 noundef 4, ptr noundef nonnull %17, i32 noundef 2) #12
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #12
  br label %437

155:                                              ; preds = %151
  %156 = load i8, ptr %17, align 2
  %157 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i16
  %160 = shl nuw i16 %159, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #12
  %161 = and i8 %156, -13
  %162 = zext i8 %161 to i16
  %163 = or i16 %160, %162
  %164 = getelementptr inbounds %struct.s_cfg_agc, ptr %1, i32 0, i32 4
  %165 = load i16, ptr %164, align 2
  %166 = shl i16 %165, 2
  %167 = and i16 %166, 12
  %168 = or i16 %167, %163
  %169 = xor i16 %168, 12
  %170 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593190, i16 noundef zeroext %169)
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %437, label %172

172:                                              ; preds = %155
  %173 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 28
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 4
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 85
  br label %185

178:                                              ; preds = %172
  %179 = add i32 %174, -1
  %180 = icmp ult i32 %179, 3
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 75
  br label %185

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 63
  br label %185

185:                                              ; preds = %183, %181, %176
  %186 = phi ptr [ %177, %176 ], [ %182, %181 ], [ %184, %183 ]
  %187 = icmp eq ptr %186, null
  br i1 %187, label %437, label %188

188:                                              ; preds = %185
  %189 = load i32, ptr %186, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.s_cfg_agc, ptr %1, i32 0, i32 5
  %193 = load i16, ptr %192, align 4
  %194 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593220, i16 noundef zeroext %193)
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %437, label %196

196:                                              ; preds = %191, %188
  %197 = getelementptr inbounds %struct.s_cfg_agc, ptr %1, i32 0, i32 6
  %198 = load i16, ptr %197, align 2
  %199 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593223, i16 noundef zeroext %198)
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %437, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.s_cfg_agc, ptr %1, i32 0, i32 3
  %203 = load i16, ptr %202, align 4
  %204 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593179, i16 noundef zeroext %203)
  br label %434

205:                                              ; preds = %30
  %206 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %207 = load i8, ptr %206, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #12
  store i32 0, ptr %14, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #12
  store i16 0, ptr %15, align 2, !annotation !9
  %208 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %209 = load i8, ptr %208, align 1, !range !8
  %210 = icmp eq i8 %209, 0
  %211 = select i1 %210, i32 0, i32 192
  br i1 %210, label %217, label %212

212:                                              ; preds = %205
  store i8 89, ptr %14, align 4
  %213 = trunc i32 %211 to i8
  %214 = or i8 %213, 1
  %215 = getelementptr inbounds [4 x i8], ptr %14, i32 0, i32 2
  store i8 %214, ptr %215, align 2
  %216 = getelementptr inbounds [4 x i8], ptr %14, i32 0, i32 3
  store i8 0, ptr %216, align 1
  br label %218

217:                                              ; preds = %205
  store i8 88, ptr %14, align 4
  br label %218

218:                                              ; preds = %217, %212
  %219 = phi i8 [ -121, %212 ], [ 103, %217 ]
  %220 = phi i32 [ 4, %212 ], [ 2, %217 ]
  %221 = getelementptr inbounds [4 x i8], ptr %14, i32 0, i32 1
  store i8 %219, ptr %221, align 1
  %222 = load i32, ptr @debug, align 4
  %223 = icmp ugt i32 %222, 1
  br i1 %223, label %224, label %226

224:                                              ; preds = %218
  %225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 25624620, i32 noundef %211) #10
  br label %226

226:                                              ; preds = %224, %218
  %227 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %207, ptr noundef nonnull %14, i32 noundef %220, ptr noundef nonnull %15, i32 noundef 2) #12
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %226
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  br label %437

230:                                              ; preds = %226
  %231 = load i8, ptr %15, align 2
  %232 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i32
  %235 = shl nuw nsw i32 %234, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  %236 = and i8 %231, -33
  %237 = zext i8 %236 to i32
  %238 = or i32 %235, %237
  %239 = load i8, ptr %206, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %13) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %13, i8 0, i32 6, i1 false) #12, !annotation !9
  %240 = load i8, ptr %208, align 1, !range !8
  %241 = icmp eq i8 %240, 0
  %242 = select i1 %241, i32 0, i32 192
  br i1 %241, label %247, label %243

243:                                              ; preds = %230
  store i8 89, ptr %13, align 1
  %244 = trunc i32 %242 to i8
  %245 = or i8 %244, 1
  %246 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 2
  store i8 %245, ptr %246, align 1
  br label %248

247:                                              ; preds = %230
  store i8 88, ptr %13, align 1
  br label %248

248:                                              ; preds = %247, %243
  %249 = phi i8 [ -121, %243 ], [ 103, %247 ]
  %250 = phi i32 [ 4, %243 ], [ 2, %247 ]
  %251 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 1
  store i8 %249, ptr %251, align 1
  %252 = getelementptr [6 x i8], ptr %13, i32 0, i32 %250
  store i8 %236, ptr %252, align 1
  %253 = or i32 %250, 1
  %254 = getelementptr [6 x i8], ptr %13, i32 0, i32 %253
  store i8 %233, ptr %254, align 1
  %255 = load i32, ptr @debug, align 4
  %256 = icmp ugt i32 %255, 1
  br i1 %256, label %257, label %259

257:                                              ; preds = %248
  %258 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624620, i32 noundef %238, i32 noundef %242) #10
  br label %259

259:                                              ; preds = %257, %248
  %260 = add nuw nsw i32 %250, 2
  %261 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %239, ptr noundef nonnull %13, i32 noundef %260) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %13) #12
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %437, label %263

263:                                              ; preds = %259
  %264 = load i8, ptr %206, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  store i32 1040221001, ptr %11, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i16 0, ptr %12, align 2, !annotation !9
  %265 = load i8, ptr %208, align 1, !range !8
  %266 = icmp eq i8 %265, 0
  %267 = select i1 %266, i32 0, i32 192
  %268 = trunc i32 %267 to i8
  %269 = getelementptr inbounds [4 x i8], ptr %11, i32 0, i32 2
  store i8 %268, ptr %269, align 2
  %270 = load i32, ptr @debug, align 4
  %271 = icmp ugt i32 %270, 1
  br i1 %271, label %272, label %274

272:                                              ; preds = %263
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593188, i32 noundef %267) #10
  br label %274

274:                                              ; preds = %272, %263
  %275 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %264, ptr noundef nonnull %11, i32 noundef 4, ptr noundef nonnull %12, i32 noundef 2) #12
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %274
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  br label %437

278:                                              ; preds = %274
  %279 = load i8, ptr %12, align 2
  %280 = zext i8 %279 to i16
  %281 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  %282 = load i8, ptr %281, align 1
  %283 = zext i8 %282 to i16
  %284 = shl nuw i16 %283, 8
  %285 = or i16 %284, %280
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  %286 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 60
  %287 = load i8, ptr %286, align 1, !range !8
  %288 = icmp eq i8 %287, 0
  %289 = and i16 %285, -514
  %290 = or i16 %289, 1
  %291 = or i16 %285, 513
  %292 = select i1 %288, i16 %290, i16 %291
  %293 = load i8, ptr %206, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  %294 = load i8, ptr %208, align 1, !range !8
  %295 = icmp eq i8 %294, 0
  %296 = select i1 %295, i32 0, i32 192
  store i8 73, ptr %10, align 1
  %297 = trunc i32 %296 to i8
  %298 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %297, ptr %298, align 1
  %299 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 62, ptr %299, align 1
  %300 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 -125, ptr %300, align 1
  %301 = trunc i16 %292 to i8
  %302 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 %301, ptr %302, align 1
  %303 = lshr i16 %292, 8
  %304 = trunc i16 %303 to i8
  %305 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 %304, ptr %305, align 1
  %306 = load i32, ptr @debug, align 4
  %307 = icmp ugt i32 %306, 1
  br i1 %307, label %308, label %311

308:                                              ; preds = %278
  %309 = zext i16 %292 to i32
  %310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593188, i32 noundef %309, i32 noundef %296) #10
  br label %311

311:                                              ; preds = %308, %278
  %312 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %293, ptr noundef nonnull %10, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %437, label %314

314:                                              ; preds = %311
  %315 = load i8, ptr %206, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  %316 = load i8, ptr %208, align 1, !range !8
  %317 = icmp eq i8 %316, 0
  %318 = select i1 %317, i32 0, i32 192
  store i8 -113, ptr %9, align 1
  %319 = trunc i32 %318 to i8
  %320 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %319, ptr %320, align 1
  %321 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  store i8 62, ptr %321, align 1
  %322 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 -125, ptr %322, align 1
  %323 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  store i8 0, ptr %323, align 1
  %324 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  store i8 0, ptr %324, align 1
  %325 = load i32, ptr @debug, align 4
  %326 = icmp ugt i32 %325, 1
  br i1 %326, label %327, label %329

327:                                              ; preds = %314
  %328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593223, i32 noundef 0, i32 noundef %318) #10
  br label %329

329:                                              ; preds = %327, %314
  %330 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %315, ptr noundef nonnull %9, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %437, label %332

332:                                              ; preds = %329
  %333 = getelementptr inbounds %struct.s_cfg_agc, ptr %1, i32 0, i32 1
  %334 = load i16, ptr %333, align 4
  %335 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593221, i16 noundef zeroext %334)
  br label %434

336:                                              ; preds = %30
  %337 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %338 = load i8, ptr %337, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i16 0, ptr %8, align 2, !annotation !9
  %339 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %340 = load i8, ptr %339, align 1, !range !8
  %341 = icmp eq i8 %340, 0
  %342 = select i1 %341, i32 0, i32 192
  br i1 %341, label %348, label %343

343:                                              ; preds = %336
  store i8 89, ptr %7, align 4
  %344 = trunc i32 %342 to i8
  %345 = or i8 %344, 1
  %346 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 2
  store i8 %345, ptr %346, align 2
  %347 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 3
  store i8 0, ptr %347, align 1
  br label %349

348:                                              ; preds = %336
  store i8 88, ptr %7, align 4
  br label %349

349:                                              ; preds = %348, %343
  %350 = phi i8 [ -121, %343 ], [ 103, %348 ]
  %351 = phi i32 [ 4, %343 ], [ 2, %348 ]
  %352 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 1
  store i8 %350, ptr %352, align 1
  %353 = load i32, ptr @debug, align 4
  %354 = icmp ugt i32 %353, 1
  br i1 %354, label %355, label %357

355:                                              ; preds = %349
  %356 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 25624620, i32 noundef %342) #10
  br label %357

357:                                              ; preds = %355, %349
  %358 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %338, ptr noundef nonnull %7, i32 noundef %351, ptr noundef nonnull %8, i32 noundef 2) #12
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %437

361:                                              ; preds = %357
  %362 = load i8, ptr %8, align 2
  %363 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %364 = load i8, ptr %363, align 1
  %365 = zext i8 %364 to i32
  %366 = shl nuw nsw i32 %365, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %367 = or i8 %362, 32
  %368 = zext i8 %367 to i32
  %369 = or i32 %366, %368
  %370 = load i8, ptr %337, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #12, !annotation !9
  %371 = load i8, ptr %339, align 1, !range !8
  %372 = icmp eq i8 %371, 0
  %373 = select i1 %372, i32 0, i32 192
  br i1 %372, label %378, label %374

374:                                              ; preds = %361
  store i8 89, ptr %6, align 1
  %375 = trunc i32 %373 to i8
  %376 = or i8 %375, 1
  %377 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %376, ptr %377, align 1
  br label %379

378:                                              ; preds = %361
  store i8 88, ptr %6, align 1
  br label %379

379:                                              ; preds = %378, %374
  %380 = phi i8 [ -121, %374 ], [ 103, %378 ]
  %381 = phi i32 [ 4, %374 ], [ 2, %378 ]
  %382 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 %380, ptr %382, align 1
  %383 = getelementptr [6 x i8], ptr %6, i32 0, i32 %381
  store i8 %367, ptr %383, align 1
  %384 = or i32 %381, 1
  %385 = getelementptr [6 x i8], ptr %6, i32 0, i32 %384
  store i8 %364, ptr %385, align 1
  %386 = load i32, ptr @debug, align 4
  %387 = icmp ugt i32 %386, 1
  br i1 %387, label %388, label %390

388:                                              ; preds = %379
  %389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624620, i32 noundef %369, i32 noundef %373) #10
  br label %390

390:                                              ; preds = %388, %379
  %391 = add nuw nsw i32 %381, 2
  %392 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %370, ptr noundef nonnull %6, i32 noundef %391) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %437, label %394

394:                                              ; preds = %390
  %395 = load i8, ptr %337, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 1040221001, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !9
  %396 = load i8, ptr %339, align 1, !range !8
  %397 = icmp eq i8 %396, 0
  %398 = select i1 %397, i32 0, i32 192
  %399 = trunc i32 %398 to i8
  %400 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  store i8 %399, ptr %400, align 2
  %401 = load i32, ptr @debug, align 4
  %402 = icmp ugt i32 %401, 1
  br i1 %402, label %403, label %405

403:                                              ; preds = %394
  %404 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593188, i32 noundef %398) #10
  br label %405

405:                                              ; preds = %403, %394
  %406 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %395, ptr noundef nonnull %4, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 2) #12
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %405
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %437

409:                                              ; preds = %405
  %410 = load i8, ptr %5, align 2
  %411 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %412 = load i8, ptr %411, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %413 = or i8 %410, 1
  %414 = load i8, ptr %337, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  %415 = load i8, ptr %339, align 1, !range !8
  %416 = icmp eq i8 %415, 0
  %417 = select i1 %416, i32 0, i32 192
  store i8 73, ptr %3, align 1
  %418 = trunc i32 %417 to i8
  %419 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %418, ptr %419, align 1
  %420 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 62, ptr %420, align 1
  %421 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 -125, ptr %421, align 1
  %422 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 %413, ptr %422, align 1
  %423 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 %412, ptr %423, align 1
  %424 = load i32, ptr @debug, align 4
  %425 = icmp ugt i32 %424, 1
  br i1 %425, label %426, label %432

426:                                              ; preds = %409
  %427 = zext i8 %413 to i32
  %428 = zext i8 %412 to i32
  %429 = shl nuw nsw i32 %428, 8
  %430 = or i32 %429, %427
  %431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593188, i32 noundef %430, i32 noundef %417) #10
  br label %432

432:                                              ; preds = %426, %409
  %433 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %414, ptr noundef nonnull %3, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  br label %434

434:                                              ; preds = %432, %332, %201
  %435 = phi i32 [ %433, %432 ], [ %335, %332 ], [ %204, %201 ]
  %436 = icmp slt i32 %435, 0
  br i1 %436, label %437, label %440

437:                                              ; preds = %434, %408, %390, %360, %329, %311, %277, %259, %229, %196, %191, %185, %155, %154, %137, %104, %86, %56, %30, %28
  %438 = phi i32 [ %435, %434 ], [ %406, %408 ], [ %358, %360 ], [ %275, %277 ], [ %227, %229 ], [ %152, %154 ], [ %102, %104 ], [ %54, %56 ], [ -22, %30 ], [ -22, %185 ], [ %199, %196 ], [ %194, %191 ], [ %170, %155 ], [ %138, %137 ], [ %88, %86 ], [ %330, %329 ], [ %312, %311 ], [ %261, %259 ], [ %392, %390 ], [ -22, %28 ]
  %439 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %438, ptr noundef nonnull @__func__.set_agc_rf) #10
  br label %440

440:                                              ; preds = %437, %434
  %441 = phi i32 [ %438, %437 ], [ %435, %434 ]
  ret i32 %441
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_agc_if(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [4 x i8], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [6 x i8], align 1
  %8 = alloca [4 x i8], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [6 x i8], align 1
  %11 = alloca [6 x i8], align 1
  %12 = alloca [4 x i8], align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca [6 x i8], align 1
  %15 = alloca [4 x i8], align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca [6 x i8], align 1
  %18 = alloca [4 x i8], align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca [6 x i8], align 1
  %21 = alloca [4 x i8], align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca [6 x i8], align 1
  %24 = alloca [4 x i8], align 4
  %25 = alloca [2 x i8], align 2
  %26 = load i32, ptr @debug, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_agc_if) #10
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i32, ptr %1, align 4
  switch i32 %31, label %435 [
    i32 0, label %32
    i32 1, label %203
    i32 2, label %336
  ]

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %34 = load i8, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #12
  store i32 0, ptr %24, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #12
  store i16 0, ptr %25, align 2, !annotation !9
  %35 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 0, i32 192
  br i1 %37, label %44, label %39

39:                                               ; preds = %32
  store i8 89, ptr %24, align 4
  %40 = trunc i32 %38 to i8
  %41 = or i8 %40, 1
  %42 = getelementptr inbounds [4 x i8], ptr %24, i32 0, i32 2
  store i8 %41, ptr %42, align 2
  %43 = getelementptr inbounds [4 x i8], ptr %24, i32 0, i32 3
  store i8 0, ptr %43, align 1
  br label %45

44:                                               ; preds = %32
  store i8 88, ptr %24, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = phi i8 [ -121, %39 ], [ 103, %44 ]
  %47 = phi i32 [ 4, %39 ], [ 2, %44 ]
  %48 = getelementptr inbounds [4 x i8], ptr %24, i32 0, i32 1
  store i8 %46, ptr %48, align 1
  %49 = load i32, ptr @debug, align 4
  %50 = icmp ugt i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 25624620, i32 noundef %38) #10
  br label %53

53:                                               ; preds = %51, %45
  %54 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %34, ptr noundef nonnull %24, i32 noundef %47, ptr noundef nonnull %25, i32 noundef 2) #12
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #12
  br label %461

57:                                               ; preds = %53
  %58 = load i8, ptr %25, align 2
  %59 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #12
  %63 = and i8 %58, -17
  %64 = zext i8 %63 to i32
  %65 = or i32 %62, %64
  %66 = load i8, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %23) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %23, i8 0, i32 6, i1 false) #12, !annotation !9
  %67 = load i8, ptr %35, align 1, !range !8
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, i32 0, i32 192
  br i1 %68, label %74, label %70

70:                                               ; preds = %57
  store i8 89, ptr %23, align 1
  %71 = trunc i32 %69 to i8
  %72 = or i8 %71, 1
  %73 = getelementptr inbounds [6 x i8], ptr %23, i32 0, i32 2
  store i8 %72, ptr %73, align 1
  br label %75

74:                                               ; preds = %57
  store i8 88, ptr %23, align 1
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i8 [ -121, %70 ], [ 103, %74 ]
  %77 = phi i32 [ 4, %70 ], [ 2, %74 ]
  %78 = getelementptr inbounds [6 x i8], ptr %23, i32 0, i32 1
  store i8 %76, ptr %78, align 1
  %79 = getelementptr [6 x i8], ptr %23, i32 0, i32 %77
  store i8 %63, ptr %79, align 1
  %80 = or i32 %77, 1
  %81 = getelementptr [6 x i8], ptr %23, i32 0, i32 %80
  store i8 %60, ptr %81, align 1
  %82 = load i32, ptr @debug, align 4
  %83 = icmp ugt i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624620, i32 noundef %65, i32 noundef %69) #10
  br label %86

86:                                               ; preds = %84, %75
  %87 = add nuw nsw i32 %77, 2
  %88 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %66, ptr noundef nonnull %23, i32 noundef %87) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %23) #12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %461, label %90

90:                                               ; preds = %86
  %91 = load i8, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #12
  store i32 1040221001, ptr %21, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #12
  store i16 0, ptr %22, align 2, !annotation !9
  %92 = load i8, ptr %35, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, i32 0, i32 192
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [4 x i8], ptr %21, i32 0, i32 2
  store i8 %95, ptr %96, align 2
  %97 = load i32, ptr @debug, align 4
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593188, i32 noundef %94) #10
  br label %101

101:                                              ; preds = %99, %90
  %102 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %91, ptr noundef nonnull %21, i32 noundef 4, ptr noundef nonnull %22, i32 noundef 2) #12
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #12
  br label %461

105:                                              ; preds = %101
  %106 = load i8, ptr %22, align 2
  %107 = zext i8 %106 to i16
  %108 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i16
  %111 = shl nuw i16 %110, 8
  %112 = or i16 %111, %107
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #12
  %113 = and i16 %112, -259
  %114 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 61
  %115 = load i8, ptr %114, align 2, !range !8
  %116 = icmp eq i8 %115, 0
  %117 = or i16 %113, 256
  %118 = select i1 %116, i16 %113, i16 %117
  %119 = load i8, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %20) #12
  %120 = load i8, ptr %35, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  %122 = select i1 %121, i32 0, i32 192
  store i8 73, ptr %20, align 1
  %123 = trunc i32 %122 to i8
  %124 = getelementptr inbounds [6 x i8], ptr %20, i32 0, i32 2
  store i8 %123, ptr %124, align 1
  %125 = getelementptr inbounds [6 x i8], ptr %20, i32 0, i32 3
  store i8 62, ptr %125, align 1
  %126 = getelementptr inbounds [6 x i8], ptr %20, i32 0, i32 1
  store i8 -125, ptr %126, align 1
  %127 = trunc i16 %118 to i8
  %128 = getelementptr inbounds [6 x i8], ptr %20, i32 0, i32 4
  store i8 %127, ptr %128, align 1
  %129 = lshr i16 %118, 8
  %130 = trunc i16 %129 to i8
  %131 = getelementptr inbounds [6 x i8], ptr %20, i32 0, i32 5
  store i8 %130, ptr %131, align 1
  %132 = load i32, ptr @debug, align 4
  %133 = icmp ugt i32 %132, 1
  br i1 %133, label %134, label %137

134:                                              ; preds = %105
  %135 = zext i16 %118 to i32
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593188, i32 noundef %135, i32 noundef %122) #10
  br label %137

137:                                              ; preds = %134, %105
  %138 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %119, ptr noundef nonnull %20, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %20) #12
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %461, label %140

140:                                              ; preds = %137
  %141 = load i8, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #12
  store i32 1040221005, ptr %18, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #12
  store i16 0, ptr %19, align 2, !annotation !9
  %142 = load i8, ptr %35, align 1, !range !8
  %143 = icmp eq i8 %142, 0
  %144 = select i1 %143, i32 0, i32 192
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds [4 x i8], ptr %18, i32 0, i32 2
  store i8 %145, ptr %146, align 2
  %147 = load i32, ptr @debug, align 4
  %148 = icmp ugt i32 %147, 1
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593190, i32 noundef %144) #10
  br label %151

151:                                              ; preds = %149, %140
  %152 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %141, ptr noundef nonnull %18, i32 noundef 4, ptr noundef nonnull %19, i32 noundef 2) #12
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #12
  br label %461

155:                                              ; preds = %151
  %156 = load i8, ptr %19, align 2
  %157 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i16
  %160 = shl nuw i16 %159, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #12
  %161 = and i8 %156, -49
  %162 = zext i8 %161 to i16
  %163 = or i16 %160, %162
  %164 = getelementptr inbounds %struct.s_cfg_agc, ptr %1, i32 0, i32 4
  %165 = load i16, ptr %164, align 2
  %166 = shl i16 %165, 4
  %167 = and i16 %166, 48
  %168 = or i16 %167, %163
  %169 = xor i16 %168, 48
  %170 = load i8, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %17) #12
  %171 = load i8, ptr %35, align 1, !range !8
  %172 = icmp eq i8 %171, 0
  %173 = select i1 %172, i32 0, i32 192
  store i8 77, ptr %17, align 1
  %174 = trunc i32 %173 to i8
  %175 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 2
  store i8 %174, ptr %175, align 1
  %176 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 3
  store i8 62, ptr %176, align 1
  %177 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 1
  store i8 -125, ptr %177, align 1
  %178 = trunc i16 %169 to i8
  %179 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 4
  store i8 %178, ptr %179, align 1
  %180 = getelementptr inbounds [6 x i8], ptr %17, i32 0, i32 5
  store i8 %158, ptr %180, align 1
  %181 = load i32, ptr @debug, align 4
  %182 = icmp ugt i32 %181, 1
  br i1 %182, label %183, label %186

183:                                              ; preds = %155
  %184 = zext i16 %169 to i32
  %185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593190, i32 noundef %184, i32 noundef %173) #10
  br label %186

186:                                              ; preds = %183, %155
  %187 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %170, ptr noundef nonnull %17, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %17) #12
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %461, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 28
  %191 = load i32, ptr %190, align 4
  %192 = add i32 %191, -1
  %193 = icmp ult i32 %192, 3
  %194 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 74
  %195 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 62
  %196 = select i1 %193, ptr %194, ptr %195
  %197 = icmp eq ptr %196, null
  br i1 %197, label %464, label %198

198:                                              ; preds = %189
  %199 = getelementptr inbounds %struct.s_cfg_agc, ptr %196, i32 0, i32 5
  %200 = load i16, ptr %199, align 4
  %201 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593220, i16 noundef zeroext %200)
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %461, label %435

203:                                              ; preds = %30
  %204 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %205 = load i8, ptr %204, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #12
  store i32 0, ptr %15, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #12
  store i16 0, ptr %16, align 2, !annotation !9
  %206 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %207 = load i8, ptr %206, align 1, !range !8
  %208 = icmp eq i8 %207, 0
  %209 = select i1 %208, i32 0, i32 192
  br i1 %208, label %215, label %210

210:                                              ; preds = %203
  store i8 89, ptr %15, align 4
  %211 = trunc i32 %209 to i8
  %212 = or i8 %211, 1
  %213 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 2
  store i8 %212, ptr %213, align 2
  %214 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 3
  store i8 0, ptr %214, align 1
  br label %216

215:                                              ; preds = %203
  store i8 88, ptr %15, align 4
  br label %216

216:                                              ; preds = %215, %210
  %217 = phi i8 [ -121, %210 ], [ 103, %215 ]
  %218 = phi i32 [ 4, %210 ], [ 2, %215 ]
  %219 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 1
  store i8 %217, ptr %219, align 1
  %220 = load i32, ptr @debug, align 4
  %221 = icmp ugt i32 %220, 1
  br i1 %221, label %222, label %224

222:                                              ; preds = %216
  %223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 25624620, i32 noundef %209) #10
  br label %224

224:                                              ; preds = %222, %216
  %225 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %205, ptr noundef nonnull %15, i32 noundef %218, ptr noundef nonnull %16, i32 noundef 2) #12
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  br label %461

228:                                              ; preds = %224
  %229 = load i8, ptr %16, align 2
  %230 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i32
  %233 = shl nuw nsw i32 %232, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  %234 = and i8 %229, -17
  %235 = zext i8 %234 to i32
  %236 = or i32 %233, %235
  %237 = load i8, ptr %204, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %14) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %14, i8 0, i32 6, i1 false) #12, !annotation !9
  %238 = load i8, ptr %206, align 1, !range !8
  %239 = icmp eq i8 %238, 0
  %240 = select i1 %239, i32 0, i32 192
  br i1 %239, label %245, label %241

241:                                              ; preds = %228
  store i8 89, ptr %14, align 1
  %242 = trunc i32 %240 to i8
  %243 = or i8 %242, 1
  %244 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 2
  store i8 %243, ptr %244, align 1
  br label %246

245:                                              ; preds = %228
  store i8 88, ptr %14, align 1
  br label %246

246:                                              ; preds = %245, %241
  %247 = phi i8 [ -121, %241 ], [ 103, %245 ]
  %248 = phi i32 [ 4, %241 ], [ 2, %245 ]
  %249 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 1
  store i8 %247, ptr %249, align 1
  %250 = getelementptr [6 x i8], ptr %14, i32 0, i32 %248
  store i8 %234, ptr %250, align 1
  %251 = or i32 %248, 1
  %252 = getelementptr [6 x i8], ptr %14, i32 0, i32 %251
  store i8 %231, ptr %252, align 1
  %253 = load i32, ptr @debug, align 4
  %254 = icmp ugt i32 %253, 1
  br i1 %254, label %255, label %257

255:                                              ; preds = %246
  %256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624620, i32 noundef %236, i32 noundef %240) #10
  br label %257

257:                                              ; preds = %255, %246
  %258 = add nuw nsw i32 %248, 2
  %259 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %237, ptr noundef nonnull %14, i32 noundef %258) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #12
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %461, label %261

261:                                              ; preds = %257
  %262 = load i8, ptr %204, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  store i32 1040221001, ptr %12, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #12
  store i16 0, ptr %13, align 2, !annotation !9
  %263 = load i8, ptr %206, align 1, !range !8
  %264 = icmp eq i8 %263, 0
  %265 = select i1 %264, i32 0, i32 192
  %266 = trunc i32 %265 to i8
  %267 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 2
  store i8 %266, ptr %267, align 2
  %268 = load i32, ptr @debug, align 4
  %269 = icmp ugt i32 %268, 1
  br i1 %269, label %270, label %272

270:                                              ; preds = %261
  %271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593188, i32 noundef %265) #10
  br label %272

272:                                              ; preds = %270, %261
  %273 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %262, ptr noundef nonnull %12, i32 noundef 4, ptr noundef nonnull %13, i32 noundef 2) #12
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %272
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  br label %461

276:                                              ; preds = %272
  %277 = load i8, ptr %13, align 2
  %278 = zext i8 %277 to i16
  %279 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i16
  %282 = shl nuw i16 %281, 8
  %283 = or i16 %282, %278
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  %284 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 61
  %285 = load i8, ptr %284, align 2, !range !8
  %286 = icmp eq i8 %285, 0
  %287 = and i16 %283, -259
  %288 = or i16 %287, 2
  %289 = or i16 %283, 258
  %290 = select i1 %286, i16 %288, i16 %289
  %291 = load i8, ptr %204, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #12
  %292 = load i8, ptr %206, align 1, !range !8
  %293 = icmp eq i8 %292, 0
  %294 = select i1 %293, i32 0, i32 192
  store i8 73, ptr %11, align 1
  %295 = trunc i32 %294 to i8
  %296 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 2
  store i8 %295, ptr %296, align 1
  %297 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 3
  store i8 62, ptr %297, align 1
  %298 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 1
  store i8 -125, ptr %298, align 1
  %299 = trunc i16 %290 to i8
  %300 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 4
  store i8 %299, ptr %300, align 1
  %301 = lshr i16 %290, 8
  %302 = trunc i16 %301 to i8
  %303 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 5
  store i8 %302, ptr %303, align 1
  %304 = load i32, ptr @debug, align 4
  %305 = icmp ugt i32 %304, 1
  br i1 %305, label %306, label %309

306:                                              ; preds = %276
  %307 = zext i16 %290 to i32
  %308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593188, i32 noundef %307, i32 noundef %294) #10
  br label %309

309:                                              ; preds = %306, %276
  %310 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %291, ptr noundef nonnull %11, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #12
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %461, label %312

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.s_cfg_agc, ptr %1, i32 0, i32 1
  %314 = load i16, ptr %313, align 4
  %315 = load i8, ptr %204, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  %316 = load i8, ptr %206, align 1, !range !8
  %317 = icmp eq i8 %316, 0
  %318 = select i1 %317, i32 0, i32 192
  store i8 -119, ptr %10, align 1
  %319 = trunc i32 %318 to i8
  %320 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %319, ptr %320, align 1
  %321 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 62, ptr %321, align 1
  %322 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 -125, ptr %322, align 1
  %323 = trunc i16 %314 to i8
  %324 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 %323, ptr %324, align 1
  %325 = lshr i16 %314, 8
  %326 = trunc i16 %325 to i8
  %327 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 %326, ptr %327, align 1
  %328 = load i32, ptr @debug, align 4
  %329 = icmp ugt i32 %328, 1
  br i1 %329, label %330, label %333

330:                                              ; preds = %312
  %331 = zext i16 %314 to i32
  %332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593220, i32 noundef %331, i32 noundef %318) #10
  br label %333

333:                                              ; preds = %330, %312
  %334 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %315, ptr noundef nonnull %10, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %461, label %435

336:                                              ; preds = %30
  %337 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %338 = load i8, ptr %337, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i16 0, ptr %9, align 2, !annotation !9
  %339 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %340 = load i8, ptr %339, align 1, !range !8
  %341 = icmp eq i8 %340, 0
  %342 = select i1 %341, i32 0, i32 192
  br i1 %341, label %348, label %343

343:                                              ; preds = %336
  store i8 89, ptr %8, align 4
  %344 = trunc i32 %342 to i8
  %345 = or i8 %344, 1
  %346 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 2
  store i8 %345, ptr %346, align 2
  %347 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 3
  store i8 0, ptr %347, align 1
  br label %349

348:                                              ; preds = %336
  store i8 88, ptr %8, align 4
  br label %349

349:                                              ; preds = %348, %343
  %350 = phi i8 [ -121, %343 ], [ 103, %348 ]
  %351 = phi i32 [ 4, %343 ], [ 2, %348 ]
  %352 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 1
  store i8 %350, ptr %352, align 1
  %353 = load i32, ptr @debug, align 4
  %354 = icmp ugt i32 %353, 1
  br i1 %354, label %355, label %357

355:                                              ; preds = %349
  %356 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 25624620, i32 noundef %342) #10
  br label %357

357:                                              ; preds = %355, %349
  %358 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %338, ptr noundef nonnull %8, i32 noundef %351, ptr noundef nonnull %9, i32 noundef 2) #12
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %461

361:                                              ; preds = %357
  %362 = load i8, ptr %9, align 2
  %363 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %364 = load i8, ptr %363, align 1
  %365 = zext i8 %364 to i32
  %366 = shl nuw nsw i32 %365, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %367 = or i8 %362, 16
  %368 = zext i8 %367 to i32
  %369 = or i32 %366, %368
  %370 = load i8, ptr %337, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #12, !annotation !9
  %371 = load i8, ptr %339, align 1, !range !8
  %372 = icmp eq i8 %371, 0
  %373 = select i1 %372, i32 0, i32 192
  br i1 %372, label %378, label %374

374:                                              ; preds = %361
  store i8 89, ptr %7, align 1
  %375 = trunc i32 %373 to i8
  %376 = or i8 %375, 1
  %377 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %376, ptr %377, align 1
  br label %379

378:                                              ; preds = %361
  store i8 88, ptr %7, align 1
  br label %379

379:                                              ; preds = %378, %374
  %380 = phi i8 [ -121, %374 ], [ 103, %378 ]
  %381 = phi i32 [ 4, %374 ], [ 2, %378 ]
  %382 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 %380, ptr %382, align 1
  %383 = getelementptr [6 x i8], ptr %7, i32 0, i32 %381
  store i8 %367, ptr %383, align 1
  %384 = or i32 %381, 1
  %385 = getelementptr [6 x i8], ptr %7, i32 0, i32 %384
  store i8 %364, ptr %385, align 1
  %386 = load i32, ptr @debug, align 4
  %387 = icmp ugt i32 %386, 1
  br i1 %387, label %388, label %390

388:                                              ; preds = %379
  %389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624620, i32 noundef %369, i32 noundef %373) #10
  br label %390

390:                                              ; preds = %388, %379
  %391 = add nuw nsw i32 %381, 2
  %392 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %370, ptr noundef nonnull %7, i32 noundef %391) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %461, label %394

394:                                              ; preds = %390
  %395 = load i8, ptr %337, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 1040221001, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2, !annotation !9
  %396 = load i8, ptr %339, align 1, !range !8
  %397 = icmp eq i8 %396, 0
  %398 = select i1 %397, i32 0, i32 192
  %399 = trunc i32 %398 to i8
  %400 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  store i8 %399, ptr %400, align 2
  %401 = load i32, ptr @debug, align 4
  %402 = icmp ugt i32 %401, 1
  br i1 %402, label %403, label %405

403:                                              ; preds = %394
  %404 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8593188, i32 noundef %398) #10
  br label %405

405:                                              ; preds = %403, %394
  %406 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %395, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull %6, i32 noundef 2) #12
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %405
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %461

409:                                              ; preds = %405
  %410 = load i8, ptr %6, align 2
  %411 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %412 = load i8, ptr %411, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %413 = or i8 %410, 2
  %414 = load i8, ptr %337, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  %415 = load i8, ptr %339, align 1, !range !8
  %416 = icmp eq i8 %415, 0
  %417 = select i1 %416, i32 0, i32 192
  store i8 73, ptr %4, align 1
  %418 = trunc i32 %417 to i8
  %419 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %418, ptr %419, align 1
  %420 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 3
  store i8 62, ptr %420, align 1
  %421 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 -125, ptr %421, align 1
  %422 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 4
  store i8 %413, ptr %422, align 1
  %423 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 5
  store i8 %412, ptr %423, align 1
  %424 = load i32, ptr @debug, align 4
  %425 = icmp ugt i32 %424, 1
  br i1 %425, label %426, label %432

426:                                              ; preds = %409
  %427 = zext i8 %413 to i32
  %428 = zext i8 %412 to i32
  %429 = shl nuw nsw i32 %428, 8
  %430 = or i32 %429, %427
  %431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593188, i32 noundef %430, i32 noundef %417) #10
  br label %432

432:                                              ; preds = %426, %409
  %433 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %414, ptr noundef nonnull %4, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %434 = icmp slt i32 %433, 0
  br i1 %434, label %461, label %435

435:                                              ; preds = %432, %333, %198, %30
  %436 = getelementptr inbounds %struct.s_cfg_agc, ptr %1, i32 0, i32 5
  %437 = load i16, ptr %436, align 4
  %438 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %439 = load i8, ptr %438, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  %440 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %441 = load i8, ptr %440, align 1, !range !8
  %442 = icmp eq i8 %441, 0
  %443 = select i1 %442, i32 0, i32 192
  store i8 125, ptr %3, align 1
  %444 = trunc i32 %443 to i8
  %445 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %444, ptr %445, align 1
  %446 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 62, ptr %446, align 1
  %447 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 -125, ptr %447, align 1
  %448 = trunc i16 %437 to i8
  %449 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 %448, ptr %449, align 1
  %450 = lshr i16 %437, 8
  %451 = trunc i16 %450 to i8
  %452 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 %451, ptr %452, align 1
  %453 = load i32, ptr @debug, align 4
  %454 = icmp ugt i32 %453, 1
  br i1 %454, label %455, label %458

455:                                              ; preds = %435
  %456 = zext i16 %437 to i32
  %457 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593214, i32 noundef %456, i32 noundef %443) #10
  br label %458

458:                                              ; preds = %455, %435
  %459 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %439, ptr noundef nonnull %3, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %460 = icmp slt i32 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %458, %432, %408, %390, %360, %333, %309, %275, %257, %227, %198, %186, %154, %137, %104, %86, %56
  %462 = phi i32 [ %459, %458 ], [ %406, %408 ], [ %358, %360 ], [ %273, %275 ], [ %225, %227 ], [ %152, %154 ], [ %102, %104 ], [ %54, %56 ], [ %201, %198 ], [ %187, %186 ], [ %138, %137 ], [ %88, %86 ], [ %334, %333 ], [ %310, %309 ], [ %259, %257 ], [ %433, %432 ], [ %392, %390 ]
  %463 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %462, ptr noundef nonnull @__func__.set_agc_if) #10
  br label %464

464:                                              ; preds = %461, %458, %189
  %465 = phi i32 [ -1, %189 ], [ %462, %461 ], [ %459, %458 ]
  ret i32 %465
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpegts_dto_setup(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [4 x i8], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [4 x i8], align 4
  %11 = alloca [2 x i8], align 2
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mpegts_dto_setup) #10
  br label %16

16:                                               ; preds = %14, %2
  %17 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %18 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  store i32 0, ptr %10, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #12
  store i16 0, ptr %11, align 2, !annotation !9
  %19 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 0, i32 192
  br i1 %21, label %28, label %23

23:                                               ; preds = %16
  store i8 35, ptr %10, align 4
  %24 = trunc i32 %22 to i8
  %25 = or i8 %24, 1
  %26 = getelementptr inbounds [4 x i8], ptr %10, i32 0, i32 2
  store i8 %25, ptr %26, align 2
  %27 = getelementptr inbounds [4 x i8], ptr %10, i32 0, i32 3
  store i8 0, ptr %27, align 1
  br label %29

28:                                               ; preds = %16
  store i8 34, ptr %10, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i8 [ -60, %23 ], [ 116, %28 ]
  %31 = phi i32 [ 4, %23 ], [ 2, %28 ]
  %32 = getelementptr inbounds [4 x i8], ptr %10, i32 0, i32 1
  store i8 %30, ptr %32, align 1
  %33 = load i32, ptr @debug, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 29622289, i32 noundef %22) #10
  br label %37

37:                                               ; preds = %35, %29
  %38 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %18, ptr noundef nonnull %10, i32 noundef %31, ptr noundef nonnull %11, i32 noundef 2) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  br label %276

41:                                               ; preds = %37
  %42 = load i8, ptr %11, align 2
  %43 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i16
  %46 = shl nuw i16 %45, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  %47 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i16 0, ptr %9, align 2, !annotation !9
  %48 = load i8, ptr %19, align 1, !range !8
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 0, i32 192
  br i1 %49, label %56, label %51

51:                                               ; preds = %41
  store i8 -111, ptr %8, align 4
  %52 = trunc i32 %50 to i8
  %53 = or i8 %52, 1
  %54 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 2
  store i8 %53, ptr %54, align 2
  %55 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 3
  store i8 0, ptr %55, align 1
  br label %57

56:                                               ; preds = %41
  store i8 -112, ptr %8, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = phi i8 [ -60, %51 ], [ 116, %56 ]
  %59 = phi i32 [ 4, %51 ], [ 2, %56 ]
  %60 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 1
  store i8 %58, ptr %60, align 1
  %61 = load i32, ptr @debug, align 4
  %62 = icmp ugt i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 29622344, i32 noundef %50) #10
  br label %65

65:                                               ; preds = %63, %57
  %66 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %47, ptr noundef nonnull %8, i32 noundef %59, ptr noundef nonnull %9, i32 noundef 2) #12
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %276

69:                                               ; preds = %65
  %70 = load i8, ptr %9, align 2
  %71 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i16
  %74 = shl nuw i16 %73, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %75 = and i8 %42, -2
  %76 = zext i8 %75 to i16
  %77 = or i16 %46, %76
  %78 = and i8 %70, -17
  %79 = zext i8 %78 to i16
  %80 = or i16 %74, %79
  %81 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 41
  %82 = load i8, ptr %81, align 1, !range !8
  %83 = icmp eq i8 %82, 0
  %84 = or i16 %80, 16
  %85 = xor i1 %83, true
  %86 = zext i1 %85 to i16
  %87 = or i16 %77, %86
  %88 = select i1 %83, i16 %80, i16 %84
  %89 = select i1 %83, i16 188, i16 204
  %90 = and i16 %88, -2
  %91 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 42
  %92 = load i8, ptr %91, align 2, !range !8
  %93 = xor i8 %92, 1
  %94 = zext i8 %93 to i16
  %95 = or i16 %90, %94
  switch i32 %1, label %276 [
    i32 4, label %96
    i32 1, label %101
    i32 3, label %101
  ]

96:                                               ; preds = %69
  %97 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 50
  %98 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 49
  %99 = load i8, ptr %98, align 1, !range !8
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %121, label %106

101:                                              ; preds = %69, %69
  %102 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 51
  %103 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 48
  %104 = load i8, ptr %103, align 4, !range !8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %101, %96
  %107 = phi ptr [ %97, %96 ], [ %102, %101 ]
  %108 = phi i16 [ 3, %96 ], [ 4, %101 ]
  %109 = phi i32 [ 12582912, %96 ], [ 13808878, %101 ]
  %110 = load i32, ptr %107, align 4
  %111 = call i32 @llvm.umin.i32(i32 %110, i32 75900000)
  %112 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 26
  %113 = load i32, ptr %112, align 4
  %114 = mul i32 %113, 1000
  %115 = udiv i32 %114, %111
  %116 = and i32 %115, 65535
  %117 = icmp ult i32 %116, 3
  %118 = trunc i32 %115 to i16
  %119 = add i16 %118, -2
  %120 = select i1 %117, i16 0, i16 %119
  br label %121

121:                                              ; preds = %106, %101, %96
  %122 = phi i16 [ %108, %106 ], [ 4, %101 ], [ 3, %96 ]
  %123 = phi i32 [ %109, %106 ], [ 13808878, %101 ], [ 12582912, %96 ]
  %124 = phi i16 [ %120, %106 ], [ 2, %101 ], [ 2, %96 ]
  %125 = phi i16 [ 8, %106 ], [ 5, %101 ], [ 5, %96 ]
  %126 = phi i16 [ 3, %106 ], [ 0, %101 ], [ 0, %96 ]
  %127 = phi i16 [ 5, %106 ], [ 1, %101 ], [ 1, %96 ]
  %128 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #12, !annotation !9
  %129 = load i8, ptr %19, align 1, !range !8
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, i32 0, i32 192
  br i1 %130, label %136, label %132

132:                                              ; preds = %121
  store i8 49, ptr %7, align 1
  %133 = trunc i32 %131 to i8
  %134 = or i8 %133, 1
  %135 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %134, ptr %135, align 1
  br label %137

136:                                              ; preds = %121
  store i8 48, ptr %7, align 1
  br label %137

137:                                              ; preds = %136, %132
  %138 = phi i8 [ -60, %132 ], [ 116, %136 ]
  %139 = phi i32 [ 4, %132 ], [ 2, %136 ]
  %140 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 %138, ptr %140, align 1
  %141 = trunc i16 %89 to i8
  %142 = getelementptr [6 x i8], ptr %7, i32 0, i32 %139
  store i8 %141, ptr %142, align 1
  %143 = or i32 %139, 1
  %144 = getelementptr [6 x i8], ptr %7, i32 0, i32 %143
  store i8 0, ptr %144, align 1
  %145 = load i32, ptr @debug, align 4
  %146 = icmp ugt i32 %145, 1
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = zext i16 %89 to i32
  %149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622296, i32 noundef %148, i32 noundef %131) #10
  br label %150

150:                                              ; preds = %147, %137
  %151 = add nuw nsw i32 %139, 2
  %152 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %128, ptr noundef nonnull %7, i32 noundef %151) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %276, label %154

154:                                              ; preds = %150
  %155 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #12, !annotation !9
  %156 = load i8, ptr %19, align 1, !range !8
  %157 = icmp eq i8 %156, 0
  %158 = select i1 %157, i32 0, i32 192
  br i1 %157, label %163, label %159

159:                                              ; preds = %154
  store i8 43, ptr %6, align 1
  %160 = trunc i32 %158 to i8
  %161 = or i8 %160, 1
  %162 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %161, ptr %162, align 1
  br label %164

163:                                              ; preds = %154
  store i8 42, ptr %6, align 1
  br label %164

164:                                              ; preds = %163, %159
  %165 = phi i8 [ -60, %159 ], [ 116, %163 ]
  %166 = phi i32 [ 4, %159 ], [ 2, %163 ]
  %167 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 %165, ptr %167, align 1
  %168 = trunc i16 %124 to i8
  %169 = getelementptr [6 x i8], ptr %6, i32 0, i32 %166
  store i8 %168, ptr %169, align 1
  %170 = lshr i16 %124, 8
  %171 = trunc i16 %170 to i8
  %172 = or i32 %166, 1
  %173 = getelementptr [6 x i8], ptr %6, i32 0, i32 %172
  store i8 %171, ptr %173, align 1
  %174 = load i32, ptr @debug, align 4
  %175 = icmp ugt i32 %174, 1
  br i1 %175, label %176, label %179

176:                                              ; preds = %164
  %177 = zext i16 %124 to i32
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622293, i32 noundef %177, i32 noundef %158) #10
  br label %179

179:                                              ; preds = %176, %164
  %180 = add nuw nsw i32 %166, 2
  %181 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %155, ptr noundef nonnull %6, i32 noundef %180) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %276, label %183

183:                                              ; preds = %179
  %184 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #12, !annotation !9
  %185 = load i8, ptr %19, align 1, !range !8
  %186 = icmp eq i8 %185, 0
  %187 = select i1 %186, i32 0, i32 192
  br i1 %186, label %192, label %188

188:                                              ; preds = %183
  store i8 41, ptr %5, align 1
  %189 = trunc i32 %187 to i8
  %190 = or i8 %189, 1
  %191 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %190, ptr %191, align 1
  br label %193

192:                                              ; preds = %183
  store i8 40, ptr %5, align 1
  br label %193

193:                                              ; preds = %192, %188
  %194 = phi i8 [ -60, %188 ], [ 116, %192 ]
  %195 = phi i32 [ 4, %188 ], [ 2, %192 ]
  %196 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 %194, ptr %196, align 1
  %197 = trunc i16 %127 to i8
  %198 = getelementptr [6 x i8], ptr %5, i32 0, i32 %195
  store i8 %197, ptr %198, align 1
  %199 = or i32 %195, 1
  %200 = getelementptr [6 x i8], ptr %5, i32 0, i32 %199
  store i8 0, ptr %200, align 1
  %201 = load i32, ptr @debug, align 4
  %202 = icmp ugt i32 %201, 1
  br i1 %202, label %203, label %206

203:                                              ; preds = %193
  %204 = zext i16 %127 to i32
  %205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622292, i32 noundef %204, i32 noundef %187) #10
  br label %206

206:                                              ; preds = %203, %193
  %207 = add nuw nsw i32 %195, 2
  %208 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %184, ptr noundef nonnull %5, i32 noundef %207) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %276, label %210

210:                                              ; preds = %206
  %211 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %212 = load i8, ptr %19, align 1, !range !8
  %213 = icmp eq i8 %212, 0
  %214 = select i1 %213, i32 0, i32 192
  br i1 %213, label %219, label %215

215:                                              ; preds = %210
  store i8 53, ptr %4, align 1
  %216 = trunc i32 %214 to i8
  %217 = or i8 %216, 1
  %218 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %217, ptr %218, align 1
  br label %220

219:                                              ; preds = %210
  store i8 52, ptr %4, align 1
  br label %220

220:                                              ; preds = %219, %215
  %221 = phi i8 [ -60, %215 ], [ 116, %219 ]
  %222 = phi i32 [ 4, %215 ], [ 2, %219 ]
  %223 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %221, ptr %223, align 1
  %224 = trunc i16 %126 to i8
  %225 = getelementptr [6 x i8], ptr %4, i32 0, i32 %222
  store i8 %224, ptr %225, align 1
  %226 = or i32 %222, 1
  %227 = getelementptr [6 x i8], ptr %4, i32 0, i32 %226
  store i8 0, ptr %227, align 1
  %228 = load i32, ptr @debug, align 4
  %229 = icmp ugt i32 %228, 1
  br i1 %229, label %230, label %233

230:                                              ; preds = %220
  %231 = zext i16 %126 to i32
  %232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622298, i32 noundef %231, i32 noundef %214) #10
  br label %233

233:                                              ; preds = %230, %220
  %234 = add nuw nsw i32 %222, 2
  %235 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %211, ptr noundef nonnull %4, i32 noundef %234) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %276, label %237

237:                                              ; preds = %233
  %238 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %239 = load i8, ptr %19, align 1, !range !8
  %240 = icmp eq i8 %239, 0
  %241 = select i1 %240, i32 0, i32 192
  br i1 %240, label %246, label %242

242:                                              ; preds = %237
  store i8 35, ptr %3, align 1
  %243 = trunc i32 %241 to i8
  %244 = or i8 %243, 1
  %245 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %244, ptr %245, align 1
  br label %247

246:                                              ; preds = %237
  store i8 34, ptr %3, align 1
  br label %247

247:                                              ; preds = %246, %242
  %248 = phi i8 [ -60, %242 ], [ 116, %246 ]
  %249 = phi i32 [ 4, %242 ], [ 2, %246 ]
  %250 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %248, ptr %250, align 1
  %251 = trunc i16 %87 to i8
  %252 = getelementptr [6 x i8], ptr %3, i32 0, i32 %249
  store i8 %251, ptr %252, align 1
  %253 = or i32 %249, 1
  %254 = getelementptr [6 x i8], ptr %3, i32 0, i32 %253
  store i8 %44, ptr %254, align 1
  %255 = load i32, ptr @debug, align 4
  %256 = icmp ugt i32 %255, 1
  br i1 %256, label %257, label %260

257:                                              ; preds = %247
  %258 = zext i16 %87 to i32
  %259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622289, i32 noundef %258, i32 noundef %241) #10
  br label %260

260:                                              ; preds = %257, %247
  %261 = add nuw nsw i32 %249, 2
  %262 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %238, ptr noundef nonnull %3, i32 noundef %261) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %276, label %264

264:                                              ; preds = %260
  %265 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 29622344, i16 noundef zeroext %95)
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %276, label %267

267:                                              ; preds = %264
  %268 = call fastcc i32 @write32(ptr noundef %0, i32 noundef 29622320, i32 noundef %123)
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %267
  %271 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 29622307, i16 noundef zeroext %125)
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %270
  %274 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 29622302, i16 noundef zeroext %122)
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273, %270, %267, %264, %260, %233, %206, %179, %150, %69, %68, %40
  %277 = phi i32 [ %274, %273 ], [ -22, %69 ], [ %66, %68 ], [ %38, %40 ], [ %271, %270 ], [ %268, %267 ], [ %265, %264 ], [ %262, %260 ], [ %235, %233 ], [ %208, %206 ], [ %181, %179 ], [ %152, %150 ]
  %278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %277, ptr noundef nonnull @__func__.mpegts_dto_setup) #10
  br label %279

279:                                              ; preds = %276, %273
  %280 = phi i32 [ %277, %276 ], [ %274, %273 ]
  ret i32 %280
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbt_activate_presets(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca %struct.drxk_cfg_dvbt_echo_thres_t, align 8
  %6 = alloca %struct.drxk_cfg_dvbt_echo_thres_t, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 8589934592, ptr %6, align 8
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dvbt_activate_presets) #10
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dvbt_ctrl_set_inc_enable) #10
  br label %15

15:                                               ; preds = %13, %9, %1
  %16 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 0, i32 192
  br i1 %20, label %26, label %22

22:                                               ; preds = %15
  store i8 -49, ptr %4, align 1
  %23 = trunc i32 %21 to i8
  %24 = or i8 %23, 1
  %25 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %24, ptr %25, align 1
  br label %27

26:                                               ; preds = %15
  store i8 -50, ptr %4, align 1
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i8 [ -122, %22 ], [ 102, %26 ]
  %29 = phi i32 [ 4, %22 ], [ 2, %26 ]
  %30 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %28, ptr %30, align 1
  %31 = getelementptr [6 x i8], ptr %4, i32 0, i32 %29
  store i8 1, ptr %31, align 1
  %32 = or i32 %29, 1
  %33 = getelementptr [6 x i8], ptr %4, i32 0, i32 %32
  store i8 0, ptr %33, align 1
  %34 = load i32, ptr @debug, align 4
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25559143, i32 noundef 1, i32 noundef %21) #10
  br label %38

38:                                               ; preds = %36, %27
  %39 = add nuw nsw i32 %29, 2
  %40 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %17, ptr noundef nonnull %4, i32 noundef %39) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %40, ptr noundef nonnull @__func__.dvbt_ctrl_set_inc_enable) #10
  br label %106

44:                                               ; preds = %38
  %45 = load i32, ptr @debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dvbt_ctrl_set_fr_enable) #10
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %51 = load i8, ptr %18, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 0, i32 192
  br i1 %52, label %58, label %54

54:                                               ; preds = %49
  store i8 -5, ptr %3, align 1
  %55 = trunc i32 %53 to i8
  %56 = or i8 %55, 3
  %57 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %56, ptr %57, align 1
  br label %59

58:                                               ; preds = %49
  store i8 -6, ptr %3, align 1
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i8 [ -62, %54 ], [ -14, %58 ]
  %61 = phi i32 [ 4, %54 ], [ 2, %58 ]
  %62 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %60, ptr %62, align 1
  %63 = getelementptr [6 x i8], ptr %3, i32 0, i32 %61
  store i8 -96, ptr %63, align 1
  %64 = or i32 %61, 1
  %65 = getelementptr [6 x i8], ptr %3, i32 0, i32 %64
  store i8 15, ptr %65, align 1
  %66 = load i32, ptr @debug, align 4
  %67 = icmp ugt i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 63045757, i32 noundef 4000, i32 noundef %53) #10
  br label %70

70:                                               ; preds = %68, %59
  %71 = add nuw nsw i32 %61, 2
  %72 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %50, ptr noundef nonnull %3, i32 noundef %71) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %72, ptr noundef nonnull @__func__.dvbt_ctrl_set_fr_enable) #10
  br label %106

76:                                               ; preds = %70
  %77 = call fastcc i32 @dvbt_ctrl_set_echo_threshold(ptr noundef %0, ptr noundef nonnull %5)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %106, label %79

79:                                               ; preds = %76
  %80 = call fastcc i32 @dvbt_ctrl_set_echo_threshold(ptr noundef %0, ptr noundef nonnull %6)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %106, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 85, i32 7
  %84 = load i16, ptr %83, align 4
  %85 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  %86 = load i8, ptr %18, align 1, !range !8
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %87, i32 0, i32 192
  store i8 127, ptr %2, align 1
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %89, ptr %90, align 1
  %91 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  store i8 62, ptr %91, align 1
  %92 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 -125, ptr %92, align 1
  %93 = trunc i16 %84 to i8
  %94 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  store i8 %93, ptr %94, align 1
  %95 = lshr i16 %84, 8
  %96 = trunc i16 %95 to i8
  %97 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  store i8 %96, ptr %97, align 1
  %98 = load i32, ptr @debug, align 4
  %99 = icmp ugt i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %82
  %101 = zext i16 %84 to i32
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593215, i32 noundef %101, i32 noundef %88) #10
  br label %103

103:                                              ; preds = %100, %82
  %104 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %85, ptr noundef nonnull %2, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103, %79, %76, %74, %42
  %107 = phi i32 [ %104, %103 ], [ %72, %74 ], [ %40, %42 ], [ %80, %79 ], [ %77, %76 ]
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %107, ptr noundef nonnull @__func__.dvbt_activate_presets) #10
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i32 [ %107, %106 ], [ %104, %103 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_gpio(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [4 x i8], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [6 x i8], align 1
  %11 = alloca [6 x i8], align 1
  %12 = alloca [4 x i8], align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca [6 x i8], align 1
  %15 = alloca [6 x i8], align 1
  %16 = alloca [6 x i8], align 1
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.write_gpio) #10
  %21 = load i32, ptr @debug, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = phi i32 [ %21, %19 ], [ 0, %1 ]
  %24 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %25 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %16) #12
  %26 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %27 = load i8, ptr %26, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 0, i32 192
  store i8 -113, ptr %16, align 1
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 2
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 3
  store i8 61, ptr %32, align 1
  %33 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 1
  store i8 -125, ptr %33, align 1
  %34 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 4
  store i8 0, ptr %34, align 1
  %35 = getelementptr inbounds [6 x i8], ptr %16, i32 0, i32 5
  store i8 0, ptr %35, align 1
  %36 = icmp ugt i32 %23, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593095, i32 noundef 0, i32 noundef %29) #10
  br label %39

39:                                               ; preds = %37, %22
  %40 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %25, ptr noundef nonnull %16, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %16) #12
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %327, label %42

42:                                               ; preds = %39
  %43 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %15) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %15, i8 0, i32 6, i1 false) #12, !annotation !9
  %44 = load i8, ptr %26, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 0, i32 192
  br i1 %45, label %50, label %47

47:                                               ; preds = %42
  store i8 31, ptr %15, align 1
  %48 = trunc i32 %46 to i8
  %49 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 2
  store i8 %48, ptr %49, align 1
  br label %51

50:                                               ; preds = %42
  store i8 30, ptr %15, align 1
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i8 [ 65, %47 ], [ 17, %50 ]
  %53 = phi i32 [ 4, %47 ], [ 2, %50 ]
  %54 = getelementptr inbounds [6 x i8], ptr %15, i32 0, i32 1
  store i8 %52, ptr %54, align 1
  %55 = getelementptr [6 x i8], ptr %15, i32 0, i32 %53
  store i8 -70, ptr %55, align 1
  %56 = or i32 %53, 1
  %57 = getelementptr [6 x i8], ptr %15, i32 0, i32 %56
  store i8 -6, ptr %57, align 1
  %58 = load i32, ptr @debug, align 4
  %59 = icmp ugt i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4259855, i32 noundef 64186, i32 noundef %46) #10
  br label %62

62:                                               ; preds = %60, %51
  %63 = add nuw nsw i32 %53, 2
  %64 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %43, ptr noundef nonnull %15, i32 noundef %63) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %15) #12
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %327, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 16
  %68 = load i8, ptr %67, align 2, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %303, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 100
  %72 = load i16, ptr %71, align 2
  %73 = and i16 %72, 1
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %149, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 83
  %77 = load i16, ptr %76, align 2
  %78 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %14) #12
  %79 = load i8, ptr %26, align 1, !range !8
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, i32 0, i32 192
  store i8 113, ptr %14, align 1
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 2
  store i8 %82, ptr %83, align 1
  %84 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 3
  store i8 0, ptr %84, align 1
  %85 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 1
  store i8 127, ptr %85, align 1
  %86 = trunc i16 %77 to i8
  %87 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 4
  store i8 %86, ptr %87, align 1
  %88 = lshr i16 %77, 8
  %89 = trunc i16 %88 to i8
  %90 = getelementptr inbounds [6 x i8], ptr %14, i32 0, i32 5
  store i8 %89, ptr %90, align 1
  %91 = load i32, ptr @debug, align 4
  %92 = icmp ugt i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %75
  %94 = zext i16 %77 to i32
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323128, i32 noundef %94, i32 noundef %81) #10
  br label %96

96:                                               ; preds = %93, %75
  %97 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %78, ptr noundef nonnull %14, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #12
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %327, label %99

99:                                               ; preds = %96
  %100 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  store i32 32557, ptr %12, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #12
  store i16 0, ptr %13, align 2, !annotation !9
  %101 = load i8, ptr %26, align 1, !range !8
  %102 = icmp eq i8 %101, 0
  %103 = select i1 %102, i32 0, i32 192
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 2
  store i8 %104, ptr %105, align 2
  %106 = load i32, ptr @debug, align 4
  %107 = icmp ugt i32 %106, 1
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8323094, i32 noundef %103) #10
  br label %110

110:                                              ; preds = %108, %99
  %111 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %100, ptr noundef nonnull %12, i32 noundef 4, ptr noundef nonnull %13, i32 noundef 2) #12
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  br label %327

114:                                              ; preds = %110
  %115 = load i8, ptr %13, align 2
  %116 = zext i8 %115 to i16
  %117 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i16
  %120 = shl nuw i16 %119, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  %121 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 82
  %122 = load i16, ptr %121, align 4
  %123 = and i16 %120, 32512
  %124 = or i16 %123, %116
  %125 = shl i16 %122, 15
  %126 = or i16 %124, %125
  %127 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #12
  %128 = load i8, ptr %26, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  %130 = select i1 %129, i32 0, i32 192
  store i8 45, ptr %11, align 1
  %131 = trunc i32 %130 to i8
  %132 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 2
  store i8 %131, ptr %132, align 1
  %133 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 3
  store i8 0, ptr %133, align 1
  %134 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 1
  store i8 127, ptr %134, align 1
  %135 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 4
  store i8 %115, ptr %135, align 1
  %136 = lshr i16 %126, 8
  %137 = trunc i16 %136 to i8
  %138 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 5
  store i8 %137, ptr %138, align 1
  %139 = load i32, ptr @debug, align 4
  %140 = icmp ugt i32 %139, 1
  br i1 %140, label %141, label %144

141:                                              ; preds = %114
  %142 = zext i16 %126 to i32
  %143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323094, i32 noundef %142, i32 noundef %130) #10
  br label %144

144:                                              ; preds = %141, %114
  %145 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %127, ptr noundef nonnull %11, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #12
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %327, label %147

147:                                              ; preds = %144
  %148 = load i16, ptr %71, align 2
  br label %149

149:                                              ; preds = %147, %70
  %150 = phi i16 [ %148, %147 ], [ %72, %70 ]
  %151 = and i16 %150, 2
  %152 = icmp eq i16 %151, 0
  br i1 %152, label %228, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 83
  %155 = load i16, ptr %154, align 2
  %156 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  %157 = load i8, ptr %26, align 1, !range !8
  %158 = icmp eq i8 %157, 0
  %159 = select i1 %158, i32 0, i32 192
  store i8 111, ptr %10, align 1
  %160 = trunc i32 %159 to i8
  %161 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %160, ptr %161, align 1
  %162 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 0, ptr %162, align 1
  %163 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 127, ptr %163, align 1
  %164 = trunc i16 %155 to i8
  %165 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 %164, ptr %165, align 1
  %166 = lshr i16 %155, 8
  %167 = trunc i16 %166 to i8
  %168 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 %167, ptr %168, align 1
  %169 = load i32, ptr @debug, align 4
  %170 = icmp ugt i32 %169, 1
  br i1 %170, label %171, label %174

171:                                              ; preds = %153
  %172 = zext i16 %155 to i32
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323127, i32 noundef %172, i32 noundef %159) #10
  br label %174

174:                                              ; preds = %171, %153
  %175 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %156, ptr noundef nonnull %10, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %327, label %177

177:                                              ; preds = %174
  %178 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 32557, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i16 0, ptr %9, align 2, !annotation !9
  %179 = load i8, ptr %26, align 1, !range !8
  %180 = icmp eq i8 %179, 0
  %181 = select i1 %180, i32 0, i32 192
  %182 = trunc i32 %181 to i8
  %183 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 2
  store i8 %182, ptr %183, align 2
  %184 = load i32, ptr @debug, align 4
  %185 = icmp ugt i32 %184, 1
  br i1 %185, label %186, label %188

186:                                              ; preds = %177
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8323094, i32 noundef %181) #10
  br label %188

188:                                              ; preds = %186, %177
  %189 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %178, ptr noundef nonnull %8, i32 noundef 4, ptr noundef nonnull %9, i32 noundef 2) #12
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %327

192:                                              ; preds = %188
  %193 = load i8, ptr %9, align 2
  %194 = zext i8 %193 to i16
  %195 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i16
  %198 = shl nuw i16 %197, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %199 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 82
  %200 = load i16, ptr %199, align 4
  %201 = and i16 %198, -16640
  %202 = or i16 %201, %194
  %203 = shl i16 %200, 13
  %204 = and i16 %203, 16384
  %205 = or i16 %202, %204
  %206 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  %207 = load i8, ptr %26, align 1, !range !8
  %208 = icmp eq i8 %207, 0
  %209 = select i1 %208, i32 0, i32 192
  store i8 45, ptr %7, align 1
  %210 = trunc i32 %209 to i8
  %211 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %210, ptr %211, align 1
  %212 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 3
  store i8 0, ptr %212, align 1
  %213 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 127, ptr %213, align 1
  %214 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 4
  store i8 %193, ptr %214, align 1
  %215 = lshr i16 %205, 8
  %216 = trunc i16 %215 to i8
  %217 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 5
  store i8 %216, ptr %217, align 1
  %218 = load i32, ptr @debug, align 4
  %219 = icmp ugt i32 %218, 1
  br i1 %219, label %220, label %223

220:                                              ; preds = %192
  %221 = zext i16 %205 to i32
  %222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323094, i32 noundef %221, i32 noundef %209) #10
  br label %223

223:                                              ; preds = %220, %192
  %224 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %206, ptr noundef nonnull %7, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %327, label %226

226:                                              ; preds = %223
  %227 = load i16, ptr %71, align 2
  br label %228

228:                                              ; preds = %226, %149
  %229 = phi i16 [ %227, %226 ], [ %150, %149 ]
  %230 = and i16 %229, 4
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %303, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 83
  %234 = load i16, ptr %233, align 2
  %235 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  %236 = load i8, ptr %26, align 1, !range !8
  %237 = icmp eq i8 %236, 0
  %238 = select i1 %237, i32 0, i32 192
  store i8 67, ptr %6, align 1
  %239 = trunc i32 %238 to i8
  %240 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %239, ptr %240, align 1
  %241 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  store i8 0, ptr %241, align 1
  %242 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 127, ptr %242, align 1
  %243 = trunc i16 %234 to i8
  %244 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  store i8 %243, ptr %244, align 1
  %245 = lshr i16 %234, 8
  %246 = trunc i16 %245 to i8
  %247 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  store i8 %246, ptr %247, align 1
  %248 = load i32, ptr @debug, align 4
  %249 = icmp ugt i32 %248, 1
  br i1 %249, label %250, label %253

250:                                              ; preds = %232
  %251 = zext i16 %234 to i32
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323105, i32 noundef %251, i32 noundef %238) #10
  br label %253

253:                                              ; preds = %250, %232
  %254 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %235, ptr noundef nonnull %6, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %327, label %256

256:                                              ; preds = %253
  %257 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 32557, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !9
  %258 = load i8, ptr %26, align 1, !range !8
  %259 = icmp eq i8 %258, 0
  %260 = select i1 %259, i32 0, i32 192
  %261 = trunc i32 %260 to i8
  %262 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  store i8 %261, ptr %262, align 2
  %263 = load i32, ptr @debug, align 4
  %264 = icmp ugt i32 %263, 1
  br i1 %264, label %265, label %267

265:                                              ; preds = %256
  %266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8323094, i32 noundef %260) #10
  br label %267

267:                                              ; preds = %265, %256
  %268 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %257, ptr noundef nonnull %4, i32 noundef 4, ptr noundef nonnull %5, i32 noundef 2) #12
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %327

271:                                              ; preds = %267
  %272 = load i8, ptr %5, align 2
  %273 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %274 = load i8, ptr %273, align 1
  %275 = zext i8 %274 to i16
  %276 = shl nuw i16 %275, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %277 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 82
  %278 = load i16, ptr %277, align 4
  %279 = and i16 %278, 4
  %280 = and i8 %272, -5
  %281 = zext i8 %280 to i16
  %282 = or i16 %276, %281
  %283 = or i16 %279, %282
  %284 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  %285 = load i8, ptr %26, align 1, !range !8
  %286 = icmp eq i8 %285, 0
  %287 = select i1 %286, i32 0, i32 192
  store i8 45, ptr %3, align 1
  %288 = trunc i32 %287 to i8
  %289 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %288, ptr %289, align 1
  %290 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %290, align 1
  %291 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 127, ptr %291, align 1
  %292 = trunc i16 %283 to i8
  %293 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 %292, ptr %293, align 1
  %294 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 %274, ptr %294, align 1
  %295 = load i32, ptr @debug, align 4
  %296 = icmp ugt i32 %295, 1
  br i1 %296, label %297, label %300

297:                                              ; preds = %271
  %298 = zext i16 %283 to i32
  %299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323094, i32 noundef %298, i32 noundef %287) #10
  br label %300

300:                                              ; preds = %297, %271
  %301 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %284, ptr noundef nonnull %3, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %327, label %303

303:                                              ; preds = %300, %228, %66
  %304 = load i8, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %305 = load i8, ptr %26, align 1, !range !8
  %306 = icmp eq i8 %305, 0
  %307 = select i1 %306, i32 0, i32 192
  br i1 %306, label %311, label %308

308:                                              ; preds = %303
  store i8 31, ptr %2, align 1
  %309 = trunc i32 %307 to i8
  %310 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %309, ptr %310, align 1
  br label %312

311:                                              ; preds = %303
  store i8 30, ptr %2, align 1
  br label %312

312:                                              ; preds = %311, %308
  %313 = phi i8 [ 65, %308 ], [ 17, %311 ]
  %314 = phi i32 [ 4, %308 ], [ 2, %311 ]
  %315 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %313, ptr %315, align 1
  %316 = getelementptr [6 x i8], ptr %2, i32 0, i32 %314
  store i8 0, ptr %316, align 1
  %317 = or i32 %314, 1
  %318 = getelementptr [6 x i8], ptr %2, i32 0, i32 %317
  store i8 0, ptr %318, align 1
  %319 = load i32, ptr @debug, align 4
  %320 = icmp ugt i32 %319, 1
  br i1 %320, label %321, label %323

321:                                              ; preds = %312
  %322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4259855, i32 noundef 0, i32 noundef %307) #10
  br label %323

323:                                              ; preds = %321, %312
  %324 = add nuw nsw i32 %314, 2
  %325 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %304, ptr noundef nonnull %2, i32 noundef %324) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %323, %300, %270, %253, %223, %191, %174, %144, %113, %96, %62, %39
  %328 = phi i32 [ %325, %323 ], [ %268, %270 ], [ %189, %191 ], [ %111, %113 ], [ %301, %300 ], [ %254, %253 ], [ %224, %223 ], [ %175, %174 ], [ %145, %144 ], [ %97, %96 ], [ %64, %62 ], [ %40, %39 ]
  %329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %328, ptr noundef nonnull @__func__.write_gpio) #10
  br label %330

330:                                              ; preds = %327, %323
  %331 = phi i32 [ %328, %327 ], [ %325, %323 ]
  ret i32 %331
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adc_sync_measurement(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca [4 x i8], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [4 x i8], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.adc_sync_measurement) #10
  br label %15

15:                                               ; preds = %13, %2
  %16 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %10, i8 0, i32 6, i1 false) #12, !annotation !9
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 0, i32 192
  br i1 %20, label %26, label %22

22:                                               ; preds = %15
  store i8 1, ptr %10, align 1
  %23 = trunc i32 %21 to i8
  %24 = or i8 %23, 1
  %25 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %24, ptr %25, align 1
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi i8 [ -121, %22 ], [ 103, %15 ]
  %28 = phi i32 [ 4, %22 ], [ 2, %15 ]
  %29 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 %27, ptr %29, align 1
  %30 = getelementptr [6 x i8], ptr %10, i32 0, i32 %28
  store i8 1, ptr %30, align 1
  %31 = or i32 %28, 1
  %32 = getelementptr [6 x i8], ptr %10, i32 0, i32 %31
  store i8 0, ptr %32, align 1
  %33 = load i32, ptr @debug, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624576, i32 noundef 1, i32 noundef %21) #10
  br label %37

37:                                               ; preds = %35, %26
  %38 = add nuw nsw i32 %28, 2
  %39 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %17, ptr noundef nonnull %10, i32 noundef %38) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %171, label %41

41:                                               ; preds = %37
  %42 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 6, i1 false) #12, !annotation !9
  %43 = load i8, ptr %18, align 1, !range !8
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i32 0, i32 192
  br i1 %44, label %50, label %46

46:                                               ; preds = %41
  store i8 55, ptr %9, align 1
  %47 = trunc i32 %45 to i8
  %48 = or i8 %47, 1
  %49 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %48, ptr %49, align 1
  br label %51

50:                                               ; preds = %41
  store i8 54, ptr %9, align 1
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i8 [ -121, %46 ], [ 103, %50 ]
  %53 = phi i32 [ 4, %46 ], [ 2, %50 ]
  %54 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 %52, ptr %54, align 1
  %55 = getelementptr [6 x i8], ptr %9, i32 0, i32 %53
  store i8 1, ptr %55, align 1
  %56 = or i32 %53, 1
  %57 = getelementptr [6 x i8], ptr %9, i32 0, i32 %56
  store i8 0, ptr %57, align 1
  %58 = load i32, ptr @debug, align 4
  %59 = icmp ugt i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 25624603, i32 noundef 1, i32 noundef %45) #10
  br label %62

62:                                               ; preds = %60, %51
  %63 = add nuw nsw i32 %53, 2
  %64 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %42, ptr noundef nonnull %9, i32 noundef %63) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %171, label %66

66:                                               ; preds = %62
  store i16 0, ptr %1, align 2
  %67 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i16 0, ptr %8, align 2, !annotation !9
  %68 = load i8, ptr %18, align 1, !range !8
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, i32 0, i32 192
  br i1 %69, label %76, label %71

71:                                               ; preds = %66
  store i8 57, ptr %7, align 4
  %72 = trunc i32 %70 to i8
  %73 = or i8 %72, 1
  %74 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 2
  store i8 %73, ptr %74, align 2
  %75 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 3
  store i8 0, ptr %75, align 1
  br label %77

76:                                               ; preds = %66
  store i8 56, ptr %7, align 4
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi i8 [ -121, %71 ], [ 103, %76 ]
  %79 = phi i32 [ 4, %71 ], [ 2, %76 ]
  %80 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 1
  store i8 %78, ptr %80, align 1
  %81 = load i32, ptr @debug, align 4
  %82 = icmp ugt i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 25624604, i32 noundef %70) #10
  br label %85

85:                                               ; preds = %83, %77
  %86 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %67, ptr noundef nonnull %7, i32 noundef %79, ptr noundef nonnull %8, i32 noundef 2) #12
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %171

89:                                               ; preds = %85
  %90 = load i8, ptr %8, align 2
  %91 = zext i8 %90 to i16
  %92 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i16
  %95 = shl nuw i16 %94, 8
  %96 = or i16 %95, %91
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %97 = icmp eq i16 %96, 127
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i16, ptr %1, align 2
  %100 = add i16 %99, 1
  store i16 %100, ptr %1, align 2
  br label %101

101:                                              ; preds = %98, %89
  %102 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2, !annotation !9
  %103 = load i8, ptr %18, align 1, !range !8
  %104 = icmp eq i8 %103, 0
  %105 = select i1 %104, i32 0, i32 192
  br i1 %104, label %111, label %106

106:                                              ; preds = %101
  store i8 59, ptr %5, align 4
  %107 = trunc i32 %105 to i8
  %108 = or i8 %107, 1
  %109 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  store i8 %108, ptr %109, align 2
  %110 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  store i8 0, ptr %110, align 1
  br label %112

111:                                              ; preds = %101
  store i8 58, ptr %5, align 4
  br label %112

112:                                              ; preds = %111, %106
  %113 = phi i8 [ -121, %106 ], [ 103, %111 ]
  %114 = phi i32 [ 4, %106 ], [ 2, %111 ]
  %115 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  store i8 %113, ptr %115, align 1
  %116 = load i32, ptr @debug, align 4
  %117 = icmp ugt i32 %116, 1
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 25624605, i32 noundef %105) #10
  br label %120

120:                                              ; preds = %118, %112
  %121 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %102, ptr noundef nonnull %5, i32 noundef %114, ptr noundef nonnull %6, i32 noundef 2) #12
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %171

124:                                              ; preds = %120
  %125 = load i8, ptr %6, align 2
  %126 = zext i8 %125 to i16
  %127 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i16
  %130 = shl nuw i16 %129, 8
  %131 = or i16 %130, %126
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %132 = icmp eq i16 %131, 127
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load i16, ptr %1, align 2
  %135 = add i16 %134, 1
  store i16 %135, ptr %1, align 2
  br label %136

136:                                              ; preds = %133, %124
  %137 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !9
  %138 = load i8, ptr %18, align 1, !range !8
  %139 = icmp eq i8 %138, 0
  %140 = select i1 %139, i32 0, i32 192
  br i1 %139, label %146, label %141

141:                                              ; preds = %136
  store i8 61, ptr %3, align 4
  %142 = trunc i32 %140 to i8
  %143 = or i8 %142, 1
  %144 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %143, ptr %144, align 2
  %145 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %145, align 1
  br label %147

146:                                              ; preds = %136
  store i8 60, ptr %3, align 4
  br label %147

147:                                              ; preds = %146, %141
  %148 = phi i8 [ -121, %141 ], [ 103, %146 ]
  %149 = phi i32 [ 4, %141 ], [ 2, %146 ]
  %150 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 %148, ptr %150, align 1
  %151 = load i32, ptr @debug, align 4
  %152 = icmp ugt i32 %151, 1
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 25624606, i32 noundef %140) #10
  br label %155

155:                                              ; preds = %153, %147
  %156 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %137, ptr noundef nonnull %3, i32 noundef %149, ptr noundef nonnull %4, i32 noundef 2) #12
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %171

159:                                              ; preds = %155
  %160 = load i8, ptr %4, align 2
  %161 = zext i8 %160 to i16
  %162 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i16
  %165 = shl nuw i16 %164, 8
  %166 = or i16 %165, %161
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %167 = icmp eq i16 %166, 127
  br i1 %167, label %168, label %174

168:                                              ; preds = %159
  %169 = load i16, ptr %1, align 2
  %170 = add i16 %169, 1
  store i16 %170, ptr %1, align 2
  br label %174

171:                                              ; preds = %158, %123, %88, %62, %37
  %172 = phi i32 [ %156, %158 ], [ %121, %123 ], [ %86, %88 ], [ %64, %62 ], [ %39, %37 ]
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %172, ptr noundef nonnull @__func__.adc_sync_measurement) #10
  br label %174

174:                                              ; preds = %171, %168, %159
  %175 = phi i32 [ %172, %171 ], [ 0, %168 ], [ 0, %159 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write32(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [8 x i8], align 8
  %5 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !9
  %7 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 0, i32 192
  %11 = xor i1 %9, true
  %12 = and i32 %1, -63897728
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %13, i1 true, i1 %11
  %15 = trunc i32 %1 to i8
  %16 = shl i8 %15, 1
  br i1 %14, label %17, label %26

17:                                               ; preds = %3
  %18 = or i8 %16, 1
  store i8 %18, ptr %4, align 8
  %19 = lshr i32 %1, 16
  %20 = trunc i32 %10 to i8
  %21 = or i8 %20, 1
  %22 = getelementptr inbounds [8 x i8], ptr %4, i32 0, i32 2
  store i8 %21, ptr %22, align 2
  %23 = lshr i32 %1, 7
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [8 x i8], ptr %4, i32 0, i32 3
  store i8 %24, ptr %25, align 1
  br label %32

26:                                               ; preds = %3
  store i8 %16, ptr %4, align 8
  %27 = lshr i32 %1, 16
  %28 = and i32 %27, 15
  %29 = lshr i32 %1, 18
  %30 = and i32 %29, 240
  %31 = or i32 %28, %30
  br label %32

32:                                               ; preds = %26, %17
  %33 = phi i32 [ %19, %17 ], [ %31, %26 ]
  %34 = phi i32 [ 4, %17 ], [ 2, %26 ]
  %35 = trunc i32 %33 to i8
  %36 = getelementptr inbounds [8 x i8], ptr %4, i32 0, i32 1
  store i8 %35, ptr %36, align 1
  %37 = trunc i32 %2 to i8
  %38 = getelementptr [8 x i8], ptr %4, i32 0, i32 %34
  store i8 %37, ptr %38, align 2
  %39 = lshr i32 %2, 8
  %40 = trunc i32 %39 to i8
  %41 = or i32 %34, 1
  %42 = getelementptr [8 x i8], ptr %4, i32 0, i32 %41
  store i8 %40, ptr %42, align 1
  %43 = lshr i32 %2, 16
  %44 = trunc i32 %43 to i8
  %45 = add nuw nsw i32 %34, 2
  %46 = getelementptr [8 x i8], ptr %4, i32 0, i32 %45
  store i8 %44, ptr %46, align 2
  %47 = lshr i32 %2, 24
  %48 = trunc i32 %47 to i8
  %49 = add nuw nsw i32 %34, 3
  %50 = getelementptr [8 x i8], ptr %4, i32 0, i32 %49
  store i8 %48, ptr %50, align 1
  %51 = load i32, ptr @debug, align 4
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %32
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.write32_flags, i32 noundef %1, i32 noundef %2, i32 noundef %10) #10
  br label %55

55:                                               ; preds = %53, %32
  %56 = add nuw nsw i32 %34, 4
  %57 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %6, ptr noundef nonnull %4, i32 noundef %56) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbt_ctrl_set_echo_threshold(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x i8], align 2
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dvbt_ctrl_set_echo_threshold) #10
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !9
  %13 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 0, i32 192
  br i1 %15, label %22, label %17

17:                                               ; preds = %10
  store i8 -97, ptr %4, align 4
  %18 = trunc i32 %16 to i8
  %19 = or i8 %18, 3
  %20 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  store i8 %19, ptr %20, align 2
  %21 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  store i8 0, ptr %21, align 1
  br label %23

22:                                               ; preds = %10
  store i8 -98, ptr %4, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i8 [ -62, %17 ], [ -14, %22 ]
  %25 = phi i32 [ 4, %17 ], [ 2, %22 ]
  %26 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  store i8 %24, ptr %26, align 1
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 63045711, i32 noundef %16) #10
  br label %31

31:                                               ; preds = %29, %23
  %32 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %12, ptr noundef nonnull %4, i32 noundef %25, ptr noundef nonnull %5, i32 noundef 2) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %82

35:                                               ; preds = %31
  %36 = load i8, ptr %5, align 2
  %37 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %39 = getelementptr inbounds %struct.drxk_cfg_dvbt_echo_thres_t, ptr %1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  switch i32 %40, label %85 [
    i32 0, label %41
    i32 2, label %46
  ]

41:                                               ; preds = %35
  %42 = zext i8 %36 to i16
  %43 = load i16, ptr %1, align 4
  %44 = shl i16 %43, 8
  %45 = or i16 %44, %42
  br label %52

46:                                               ; preds = %35
  %47 = zext i8 %38 to i16
  %48 = shl nuw i16 %47, 8
  %49 = load i16, ptr %1, align 4
  %50 = and i16 %49, 255
  %51 = or i16 %50, %48
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi i16 [ %51, %46 ], [ %45, %41 ]
  %54 = load i8, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %55 = load i8, ptr %13, align 1, !range !8
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, i32 0, i32 192
  br i1 %56, label %62, label %58

58:                                               ; preds = %52
  store i8 -97, ptr %3, align 1
  %59 = trunc i32 %57 to i8
  %60 = or i8 %59, 3
  %61 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %60, ptr %61, align 1
  br label %63

62:                                               ; preds = %52
  store i8 -98, ptr %3, align 1
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i8 [ -62, %58 ], [ -14, %62 ]
  %65 = phi i32 [ 4, %58 ], [ 2, %62 ]
  %66 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %64, ptr %66, align 1
  %67 = trunc i16 %53 to i8
  %68 = getelementptr [6 x i8], ptr %3, i32 0, i32 %65
  store i8 %67, ptr %68, align 1
  %69 = lshr i16 %53, 8
  %70 = trunc i16 %69 to i8
  %71 = or i32 %65, 1
  %72 = getelementptr [6 x i8], ptr %3, i32 0, i32 %71
  store i8 %70, ptr %72, align 1
  %73 = load i32, ptr @debug, align 4
  %74 = icmp ugt i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = zext i16 %53 to i32
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 63045711, i32 noundef %76, i32 noundef %57) #10
  br label %78

78:                                               ; preds = %75, %63
  %79 = add nuw nsw i32 %65, 2
  %80 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %54, ptr noundef nonnull %3, i32 noundef %79) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %34
  %83 = phi i32 [ %32, %34 ], [ %80, %78 ]
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %83, ptr noundef nonnull @__func__.dvbt_ctrl_set_echo_threshold) #10
  br label %85

85:                                               ; preds = %82, %78, %35
  %86 = phi i32 [ -22, %35 ], [ %83, %82 ], [ %80, %78 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @qam_reset_qam(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2, !annotation !9
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.qam_reset_qam) #10
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %11 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 0, i32 192
  br i1 %13, label %19, label %15

15:                                               ; preds = %8
  store i8 1, ptr %2, align 1
  %16 = trunc i32 %14 to i8
  %17 = or i8 %16, 1
  %18 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %17, ptr %18, align 1
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi i8 [ 64, %15 ], [ 80, %8 ]
  %21 = phi i32 [ 4, %15 ], [ 2, %8 ]
  %22 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %20, ptr %22, align 1
  %23 = getelementptr [6 x i8], ptr %2, i32 0, i32 %21
  store i8 0, ptr %23, align 1
  %24 = or i32 %21, 1
  %25 = getelementptr [6 x i8], ptr %2, i32 0, i32 %24
  store i8 0, ptr %25, align 1
  %26 = load i32, ptr @debug, align 4
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 20971520, i32 noundef 0, i32 noundef %14) #10
  br label %30

30:                                               ; preds = %28, %19
  %31 = add nuw nsw i32 %21, 2
  %32 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %10, ptr noundef nonnull %2, i32 noundef %31) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = call fastcc i32 @scu_command(ptr noundef %0, i16 noundef zeroext 513, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, ptr noundef nonnull %3)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %30
  %38 = phi i32 [ %35, %34 ], [ %32, %30 ]
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %38, ptr noundef nonnull @__func__.qam_reset_qam) #10
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %38, %37 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bl_direct_cmd(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.bl_direct_cmd) #10
  br label %15

15:                                               ; preds = %13, %2
  %16 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %16) #12
  %17 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %18 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %10, i8 0, i32 6, i1 false) #12, !annotation !9
  %19 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 0, i32 192
  br i1 %21, label %26, label %23

23:                                               ; preds = %15
  store i8 35, ptr %10, align 1
  %24 = trunc i32 %22 to i8
  %25 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %24, ptr %25, align 1
  br label %27

26:                                               ; preds = %15
  store i8 34, ptr %10, align 1
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i8 [ 72, %23 ], [ 24, %26 ]
  %29 = phi i32 [ 4, %23 ], [ 2, %26 ]
  %30 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 %28, ptr %30, align 1
  %31 = getelementptr [6 x i8], ptr %10, i32 0, i32 %29
  store i8 0, ptr %31, align 1
  %32 = or i32 %29, 1
  %33 = getelementptr [6 x i8], ptr %10, i32 0, i32 %32
  store i8 0, ptr %33, align 1
  %34 = load i32, ptr @debug, align 4
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4718609, i32 noundef 0, i32 noundef %22) #10
  br label %38

38:                                               ; preds = %36, %27
  %39 = add nuw nsw i32 %29, 2
  %40 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %18, ptr noundef nonnull %10, i32 noundef %39) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %206, label %42

42:                                               ; preds = %38
  %43 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 6, i1 false) #12, !annotation !9
  %44 = load i8, ptr %19, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 0, i32 192
  br i1 %45, label %50, label %47

47:                                               ; preds = %42
  store i8 41, ptr %9, align 1
  %48 = trunc i32 %46 to i8
  %49 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %48, ptr %49, align 1
  br label %51

50:                                               ; preds = %42
  store i8 40, ptr %9, align 1
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i8 [ 72, %47 ], [ 24, %50 ]
  %53 = phi i32 [ 4, %47 ], [ 2, %50 ]
  %54 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 %52, ptr %54, align 1
  %55 = getelementptr [6 x i8], ptr %9, i32 0, i32 %53
  store i8 -122, ptr %55, align 1
  %56 = or i32 %53, 1
  %57 = getelementptr [6 x i8], ptr %9, i32 0, i32 %56
  store i8 1, ptr %57, align 1
  %58 = load i32, ptr @debug, align 4
  %59 = icmp ugt i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4718612, i32 noundef 390, i32 noundef %46) #10
  br label %62

62:                                               ; preds = %60, %51
  %63 = add nuw nsw i32 %53, 2
  %64 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %43, ptr noundef nonnull %9, i32 noundef %63) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %206, label %66

66:                                               ; preds = %62
  %67 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i32 6, i1 false) #12, !annotation !9
  %68 = load i8, ptr %19, align 1, !range !8
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, i32 0, i32 192
  br i1 %69, label %74, label %71

71:                                               ; preds = %66
  store i8 43, ptr %8, align 1
  %72 = trunc i32 %70 to i8
  %73 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %72, ptr %73, align 1
  br label %75

74:                                               ; preds = %66
  store i8 42, ptr %8, align 1
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i8 [ 72, %71 ], [ 24, %74 ]
  %77 = phi i32 [ 4, %71 ], [ 2, %74 ]
  %78 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 %76, ptr %78, align 1
  %79 = trunc i32 %1 to i8
  %80 = getelementptr [6 x i8], ptr %8, i32 0, i32 %77
  store i8 %79, ptr %80, align 1
  %81 = lshr i32 %1, 8
  %82 = trunc i32 %81 to i8
  %83 = or i32 %77, 1
  %84 = getelementptr [6 x i8], ptr %8, i32 0, i32 %83
  store i8 %82, ptr %84, align 1
  %85 = load i32, ptr @debug, align 4
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = and i32 %1, 65535
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4718613, i32 noundef %88, i32 noundef %70) #10
  br label %90

90:                                               ; preds = %87, %75
  %91 = add nuw nsw i32 %77, 2
  %92 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %67, ptr noundef nonnull %8, i32 noundef %91) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %206, label %94

94:                                               ; preds = %90
  %95 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #12, !annotation !9
  %96 = load i8, ptr %19, align 1, !range !8
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %97, i32 0, i32 192
  br i1 %97, label %102, label %99

99:                                               ; preds = %94
  store i8 45, ptr %7, align 1
  %100 = trunc i32 %98 to i8
  %101 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %100, ptr %101, align 1
  br label %103

102:                                              ; preds = %94
  store i8 44, ptr %7, align 1
  br label %103

103:                                              ; preds = %102, %99
  %104 = phi i8 [ 72, %99 ], [ 24, %102 ]
  %105 = phi i32 [ 4, %99 ], [ 2, %102 ]
  %106 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 %104, ptr %106, align 1
  %107 = getelementptr [6 x i8], ptr %7, i32 0, i32 %105
  store i8 -32, ptr %107, align 1
  %108 = or i32 %105, 1
  %109 = getelementptr [6 x i8], ptr %7, i32 0, i32 %108
  store i8 95, ptr %109, align 1
  %110 = load i32, ptr @debug, align 4
  %111 = icmp ugt i32 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4718614, i32 noundef 24544, i32 noundef %98) #10
  br label %114

114:                                              ; preds = %112, %103
  %115 = add nuw nsw i32 %105, 2
  %116 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %95, ptr noundef nonnull %7, i32 noundef %115) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %206, label %118

118:                                              ; preds = %114
  %119 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #12, !annotation !9
  %120 = load i8, ptr %19, align 1, !range !8
  %121 = icmp eq i8 %120, 0
  %122 = select i1 %121, i32 0, i32 192
  br i1 %121, label %126, label %123

123:                                              ; preds = %118
  store i8 47, ptr %6, align 1
  %124 = trunc i32 %122 to i8
  %125 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %124, ptr %125, align 1
  br label %127

126:                                              ; preds = %118
  store i8 46, ptr %6, align 1
  br label %127

127:                                              ; preds = %126, %123
  %128 = phi i8 [ 72, %123 ], [ 24, %126 ]
  %129 = phi i32 [ 4, %123 ], [ 2, %126 ]
  %130 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 %128, ptr %130, align 1
  %131 = getelementptr [6 x i8], ptr %6, i32 0, i32 %129
  store i8 28, ptr %131, align 1
  %132 = or i32 %129, 1
  %133 = getelementptr [6 x i8], ptr %6, i32 0, i32 %132
  store i8 0, ptr %133, align 1
  %134 = load i32, ptr @debug, align 4
  %135 = icmp ugt i32 %134, 1
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4718615, i32 noundef 28, i32 noundef %122) #10
  br label %138

138:                                              ; preds = %136, %127
  %139 = add nuw nsw i32 %129, 2
  %140 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %119, ptr noundef nonnull %6, i32 noundef %139) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %206, label %142

142:                                              ; preds = %138
  %143 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #12, !annotation !9
  %144 = load i8, ptr %19, align 1, !range !8
  %145 = icmp eq i8 %144, 0
  %146 = select i1 %145, i32 0, i32 192
  br i1 %145, label %150, label %147

147:                                              ; preds = %142
  store i8 37, ptr %5, align 1
  %148 = trunc i32 %146 to i8
  %149 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %148, ptr %149, align 1
  br label %151

150:                                              ; preds = %142
  store i8 36, ptr %5, align 1
  br label %151

151:                                              ; preds = %150, %147
  %152 = phi i8 [ 72, %147 ], [ 24, %150 ]
  %153 = phi i32 [ 4, %147 ], [ 2, %150 ]
  %154 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 %152, ptr %154, align 1
  %155 = getelementptr [6 x i8], ptr %5, i32 0, i32 %153
  store i8 1, ptr %155, align 1
  %156 = or i32 %153, 1
  %157 = getelementptr [6 x i8], ptr %5, i32 0, i32 %156
  store i8 0, ptr %157, align 1
  %158 = load i32, ptr @debug, align 4
  %159 = icmp ugt i32 %158, 1
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4718610, i32 noundef 1, i32 noundef %146) #10
  br label %162

162:                                              ; preds = %160, %151
  %163 = add nuw nsw i32 %153, 2
  %164 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %143, ptr noundef nonnull %5, i32 noundef %163) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %206, label %166

166:                                              ; preds = %162
  %167 = load volatile i32, ptr @jiffies, align 64
  %168 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %169 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  %170 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  %171 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %172 = sub i32 -10, %167
  br label %173

173:                                              ; preds = %200, %166
  %174 = load i8, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !9
  %175 = load i8, ptr %19, align 1, !range !8
  %176 = icmp eq i8 %175, 0
  %177 = select i1 %176, i32 0, i32 192
  br i1 %176, label %180, label %178

178:                                              ; preds = %173
  store i8 33, ptr %3, align 4
  %179 = trunc i32 %177 to i8
  store i8 %179, ptr %169, align 2
  store i8 0, ptr %170, align 1
  br label %181

180:                                              ; preds = %173
  store i8 32, ptr %3, align 4
  br label %181

181:                                              ; preds = %180, %178
  %182 = phi i8 [ 72, %178 ], [ 24, %180 ]
  %183 = phi i32 [ 4, %178 ], [ 2, %180 ]
  store i8 %182, ptr %168, align 1
  %184 = load i32, ptr @debug, align 4
  %185 = icmp ugt i32 %184, 1
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 4718608, i32 noundef %177) #10
  br label %188

188:                                              ; preds = %186, %181
  %189 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %174, ptr noundef nonnull %3, i32 noundef %183, ptr noundef nonnull %4, i32 noundef 2) #12
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %206

192:                                              ; preds = %188
  %193 = load i8, ptr %4, align 2
  %194 = zext i8 %193 to i16
  %195 = load i8, ptr %171, align 1
  %196 = zext i8 %195 to i16
  %197 = shl nuw i16 %196, 8
  %198 = or i16 %197, %194
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %199 = icmp eq i16 %198, 1
  br i1 %199, label %200, label %209

200:                                              ; preds = %192
  %201 = load volatile i32, ptr @jiffies, align 64
  %202 = add i32 %172, %201
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %173, label %204

204:                                              ; preds = %200
  %205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %209

206:                                              ; preds = %191, %162, %138, %114, %90, %62, %38
  %207 = phi i32 [ %189, %191 ], [ %164, %162 ], [ %140, %138 ], [ %116, %114 ], [ %92, %90 ], [ %64, %62 ], [ %40, %38 ]
  %208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %207, ptr noundef nonnull @__func__.bl_direct_cmd) #10
  br label %209

209:                                              ; preds = %206, %204, %192
  %210 = phi i32 [ %207, %206 ], [ -22, %204 ], [ 0, %192 ]
  call void @mutex_unlock(ptr noundef %16) #12
  ret i32 %210
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_agc(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #12
  store i16 0, ptr %11, align 2
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.init_agc) #10
  br label %16

16:                                               ; preds = %14, %1
  %17 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 28
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.init_agc, i32 noundef %18) #10
  br label %289

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 75, i32 8
  %25 = load i16, ptr %24, align 2
  %26 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %27 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  %28 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i32 0, i32 192
  store i8 -43, ptr %10, align 1
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 63, ptr %34, align 1
  %35 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 -125, ptr %35, align 1
  %36 = trunc i16 %25 to i8
  %37 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 %36, ptr %37, align 1
  %38 = lshr i16 %25, 8
  %39 = trunc i16 %38 to i8
  %40 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 %39, ptr %40, align 1
  %41 = load i32, ptr @debug, align 4
  %42 = icmp ugt i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = zext i16 %25 to i32
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593386, i32 noundef %44, i32 noundef %31) #10
  br label %46

46:                                               ; preds = %43, %23
  %47 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %27, ptr noundef nonnull %10, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %286, label %49

49:                                               ; preds = %46
  %50 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  %51 = load i8, ptr %28, align 1, !range !8
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i32 0, i32 192
  store i8 -111, ptr %9, align 1
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %54, ptr %55, align 1
  %56 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  store i8 61, ptr %56, align 1
  %57 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 -125, ptr %57, align 1
  %58 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  store i8 0, ptr %58, align 1
  %59 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  store i8 0, ptr %59, align 1
  %60 = load i32, ptr @debug, align 4
  %61 = icmp ugt i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593096, i32 noundef 0, i32 noundef %53) #10
  br label %64

64:                                               ; preds = %62, %49
  %65 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %50, ptr noundef nonnull %9, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %286, label %67

67:                                               ; preds = %64
  %68 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  %69 = load i8, ptr %28, align 1, !range !8
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i32 0, i32 192
  store i8 123, ptr %8, align 1
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %72, ptr %73, align 1
  %74 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 3
  store i8 62, ptr %74, align 1
  %75 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 -125, ptr %75, align 1
  %76 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 4
  store i8 17, ptr %76, align 1
  %77 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 5
  store i8 5, ptr %77, align 1
  %78 = load i32, ptr @debug, align 4
  %79 = icmp ugt i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593213, i32 noundef 1297, i32 noundef %71) #10
  br label %82

82:                                               ; preds = %80, %67
  %83 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %68, ptr noundef nonnull %8, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %286, label %85

85:                                               ; preds = %82
  %86 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  %87 = load i8, ptr %28, align 1, !range !8
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, i32 0, i32 192
  store i8 125, ptr %7, align 1
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %90, ptr %91, align 1
  %92 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 3
  store i8 62, ptr %92, align 1
  %93 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 -125, ptr %93, align 1
  %94 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 4
  store i8 17, ptr %94, align 1
  %95 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 5
  store i8 5, ptr %95, align 1
  %96 = load i32, ptr @debug, align 4
  %97 = icmp ugt i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593214, i32 noundef 1297, i32 noundef %89) #10
  br label %100

100:                                              ; preds = %98, %85
  %101 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %86, ptr noundef nonnull %7, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %286, label %103

103:                                              ; preds = %100
  %104 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  %105 = load i8, ptr %28, align 1, !range !8
  %106 = icmp eq i8 %105, 0
  %107 = select i1 %106, i32 0, i32 192
  store i8 127, ptr %6, align 1
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %108, ptr %109, align 1
  %110 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  store i8 62, ptr %110, align 1
  %111 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 -125, ptr %111, align 1
  %112 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  store i8 -1, ptr %112, align 1
  %113 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  store i8 19, ptr %113, align 1
  %114 = load i32, ptr @debug, align 4
  %115 = icmp ugt i32 %114, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %103
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593215, i32 noundef 5119, i32 noundef %107) #10
  br label %118

118:                                              ; preds = %116, %103
  %119 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %104, ptr noundef nonnull %6, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %286, label %121

121:                                              ; preds = %118
  %122 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  %123 = load i8, ptr %28, align 1, !range !8
  %124 = icmp eq i8 %123, 0
  %125 = select i1 %124, i32 0, i32 192
  store i8 -121, ptr %5, align 1
  %126 = trunc i32 %125 to i8
  %127 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %126, ptr %127, align 1
  %128 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  store i8 62, ptr %128, align 1
  %129 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 -125, ptr %129, align 1
  %130 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  store i8 -1, ptr %130, align 1
  %131 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  store i8 7, ptr %131, align 1
  %132 = load i32, ptr @debug, align 4
  %133 = icmp ugt i32 %132, 1
  br i1 %133, label %134, label %136

134:                                              ; preds = %121
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593219, i32 noundef 2047, i32 noundef %125) #10
  br label %136

136:                                              ; preds = %134, %121
  %137 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %122, ptr noundef nonnull %5, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %286, label %139

139:                                              ; preds = %136
  %140 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  %141 = load i8, ptr %28, align 1, !range !8
  %142 = icmp eq i8 %141, 0
  %143 = select i1 %142, i32 0, i32 192
  store i8 -119, ptr %4, align 1
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %144, ptr %145, align 1
  %146 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 3
  store i8 62, ptr %146, align 1
  %147 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 -125, ptr %147, align 1
  %148 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 4
  store i8 -128, ptr %148, align 1
  %149 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 5
  store i8 35, ptr %149, align 1
  %150 = load i32, ptr @debug, align 4
  %151 = icmp ugt i32 %150, 1
  br i1 %151, label %152, label %154

152:                                              ; preds = %139
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593220, i32 noundef 9088, i32 noundef %143) #10
  br label %154

154:                                              ; preds = %152, %139
  %155 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %140, ptr noundef nonnull %4, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %286, label %157

157:                                              ; preds = %154
  %158 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  %159 = load i8, ptr %28, align 1, !range !8
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %160, i32 0, i32 192
  store i8 -127, ptr %3, align 1
  %162 = trunc i32 %161 to i8
  %163 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %162, ptr %163, align 1
  %164 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 62, ptr %164, align 1
  %165 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 -125, ptr %165, align 1
  %166 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 0, ptr %166, align 1
  %167 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 0, ptr %167, align 1
  %168 = load i32, ptr @debug, align 4
  %169 = icmp ugt i32 %168, 1
  br i1 %169, label %170, label %172

170:                                              ; preds = %157
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593216, i32 noundef 0, i32 noundef %161) #10
  br label %172

172:                                              ; preds = %170, %157
  %173 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %158, ptr noundef nonnull %3, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %286, label %175

175:                                              ; preds = %172
  %176 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  %177 = load i8, ptr %28, align 1, !range !8
  %178 = icmp eq i8 %177, 0
  %179 = select i1 %178, i32 0, i32 192
  store i8 -125, ptr %2, align 1
  %180 = trunc i32 %179 to i8
  %181 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %180, ptr %181, align 1
  %182 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  store i8 62, ptr %182, align 1
  %183 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 -125, ptr %183, align 1
  %184 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  store i8 0, ptr %184, align 1
  %185 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  store i8 0, ptr %185, align 1
  %186 = load i32, ptr @debug, align 4
  %187 = icmp ugt i32 %186, 1
  br i1 %187, label %188, label %190

188:                                              ; preds = %175
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593217, i32 noundef 0, i32 noundef %179) #10
  br label %190

190:                                              ; preds = %188, %175
  %191 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %176, ptr noundef nonnull %2, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %286, label %193

193:                                              ; preds = %190
  %194 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593221, i16 noundef zeroext 0)
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %286, label %196

196:                                              ; preds = %193
  %197 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593222, i16 noundef zeroext 0)
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %286, label %199

199:                                              ; preds = %196
  %200 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593199, i16 noundef zeroext 1023)
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %286, label %202

202:                                              ; preds = %199
  %203 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593207, i16 noundef zeroext 1023)
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %286, label %205

205:                                              ; preds = %202
  %206 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593191, i16 noundef zeroext -1030)
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %286, label %208

208:                                              ; preds = %205
  %209 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593218, i16 noundef zeroext 9088)
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %286, label %211

211:                                              ; preds = %208
  %212 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593200, i16 noundef zeroext 500)
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %286, label %214

214:                                              ; preds = %211
  %215 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593177, i16 noundef zeroext 1023)
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %286, label %217

217:                                              ; preds = %214
  %218 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593178, i16 noundef zeroext -1023)
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %286, label %220

220:                                              ; preds = %217
  %221 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593173, i16 noundef zeroext 50)
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %286, label %223

223:                                              ; preds = %220
  %224 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593194, i16 noundef zeroext 20)
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %286, label %226

226:                                              ; preds = %223
  %227 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593198, i16 noundef zeroext 8)
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %286, label %229

229:                                              ; preds = %226
  %230 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593206, i16 noundef zeroext 8)
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %286, label %232

232:                                              ; preds = %229
  %233 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593202, i16 noundef zeroext -9)
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %286, label %235

235:                                              ; preds = %232
  %236 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593209, i16 noundef zeroext -9)
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %286, label %238

238:                                              ; preds = %235
  %239 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593192, i16 noundef zeroext 32767)
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %286, label %241

241:                                              ; preds = %238
  %242 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593193, i16 noundef zeroext 0)
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %286, label %244

244:                                              ; preds = %241
  %245 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593195, i16 noundef zeroext 279)
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %286, label %247

247:                                              ; preds = %244
  %248 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593196, i16 noundef zeroext 1623)
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %286, label %250

250:                                              ; preds = %247
  %251 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593197, i16 noundef zeroext 0)
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %286, label %253

253:                                              ; preds = %250
  %254 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593201, i16 noundef zeroext 0)
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %286, label %256

256:                                              ; preds = %253
  %257 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593203, i16 noundef zeroext 0)
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %286, label %259

259:                                              ; preds = %256
  %260 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593204, i16 noundef zeroext 1)
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %286, label %262

262:                                              ; preds = %259
  %263 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593205, i16 noundef zeroext 0)
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %286, label %265

265:                                              ; preds = %262
  %266 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593208, i16 noundef zeroext 0)
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %286, label %268

268:                                              ; preds = %265
  %269 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593210, i16 noundef zeroext 0)
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %286, label %271

271:                                              ; preds = %268
  %272 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593211, i16 noundef zeroext 1)
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %286, label %274

274:                                              ; preds = %271
  %275 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593176, i16 noundef zeroext 500)
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %286, label %277

277:                                              ; preds = %274
  %278 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593175, i16 noundef zeroext 500)
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %277
  %281 = call fastcc i32 @read16(ptr noundef %0, i32 noundef 8593189, ptr noundef nonnull %11)
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %280
  store i16 1079, ptr %11, align 2
  %284 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593189, i16 noundef zeroext 1079)
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %283, %280, %277, %274, %271, %268, %265, %262, %259, %256, %253, %250, %247, %244, %241, %238, %235, %232, %229, %226, %223, %220, %217, %214, %211, %208, %205, %202, %199, %196, %193, %190, %172, %154, %136, %118, %100, %82, %64, %46
  %287 = phi i32 [ %284, %283 ], [ %281, %280 ], [ %278, %277 ], [ %275, %274 ], [ %272, %271 ], [ %269, %268 ], [ %266, %265 ], [ %263, %262 ], [ %260, %259 ], [ %257, %256 ], [ %254, %253 ], [ %251, %250 ], [ %248, %247 ], [ %245, %244 ], [ %242, %241 ], [ %239, %238 ], [ %236, %235 ], [ %233, %232 ], [ %230, %229 ], [ %227, %226 ], [ %224, %223 ], [ %221, %220 ], [ %218, %217 ], [ %215, %214 ], [ %212, %211 ], [ %209, %208 ], [ %206, %205 ], [ %203, %202 ], [ %200, %199 ], [ %197, %196 ], [ %194, %193 ], [ %191, %190 ], [ %173, %172 ], [ %155, %154 ], [ %137, %136 ], [ %119, %118 ], [ %101, %100 ], [ %83, %82 ], [ %65, %64 ], [ %47, %46 ]
  %288 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %287, ptr noundef nonnull @__func__.init_agc) #10
  br label %289

289:                                              ; preds = %286, %283, %21
  %290 = phi i32 [ -22, %21 ], [ %287, %286 ], [ %284, %283 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #12
  ret i32 %290
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_frequency_shifter(ptr nocapture noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 71
  %5 = load i8, ptr %4, align 2, !range !8
  %6 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 26
  %7 = load i32, ptr %6, align 4
  %8 = sdiv i32 %7, 3
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_frequency_shifter) #10
  br label %13

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 28
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds [4 x i32], ptr @switch.table.set_frequency_shifter, i32 0, i32 %16
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %20, %18 ], [ 0, %13 ]
  %23 = zext i16 %1 to i32
  %24 = lshr i32 %8, 1
  %25 = icmp ult i32 %24, %23
  %26 = sub nsw i32 %8, %23
  %27 = select i1 %25, i32 %26, i32 %23
  %28 = zext i1 %25 to i32
  %29 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 95
  %30 = load i8, ptr %29, align 2, !range !8
  %31 = xor i8 %5, %30
  %32 = xor i8 %31, 1
  %33 = zext i8 %32 to i32
  %34 = xor i32 %33, %28
  %35 = icmp eq i32 %34, %22
  %36 = freeze i32 %27
  %37 = freeze i32 %8
  %38 = udiv i32 %36, %37
  %39 = mul i32 %38, %37
  %40 = sub i32 %36, %39
  %41 = shl i32 %40, 4
  %42 = freeze i32 %8
  %43 = udiv i32 %41, %42
  %44 = mul i32 %43, %42
  %45 = sub i32 %41, %44
  %46 = shl i32 %45, 4
  %47 = shl i32 %38, 8
  %48 = shl i32 %43, 4
  %49 = or i32 %48, %47
  %50 = freeze i32 %46
  %51 = freeze i32 %8
  %52 = udiv i32 %50, %51
  %53 = or i32 %49, %52
  %54 = mul i32 %52, %51
  %55 = sub i32 %50, %54
  %56 = shl i32 %55, 4
  %57 = freeze i32 %8
  %58 = udiv i32 %56, %57
  %59 = mul i32 %58, %57
  %60 = sub i32 %56, %59
  %61 = shl i32 %60, 4
  %62 = shl i32 %53, 8
  %63 = shl i32 %58, 4
  %64 = or i32 %63, %62
  %65 = freeze i32 %61
  %66 = freeze i32 %8
  %67 = udiv i32 %65, %66
  %68 = or i32 %64, %67
  %69 = mul i32 %67, %66
  %70 = sub i32 %65, %69
  %71 = shl i32 %70, 4
  %72 = freeze i32 %8
  %73 = udiv i32 %71, %72
  %74 = mul i32 %73, %72
  %75 = sub i32 %71, %74
  %76 = shl i32 %75, 4
  %77 = shl i32 %68, 8
  %78 = shl i32 %73, 4
  %79 = or i32 %78, %77
  %80 = freeze i32 %76
  %81 = freeze i32 %8
  %82 = udiv i32 %80, %81
  %83 = or i32 %79, %82
  %84 = mul i32 %82, %81
  %85 = sub i32 %80, %84
  %86 = shl i32 %85, 4
  %87 = shl i32 %83, 4
  %88 = freeze i32 %8
  %89 = udiv i32 %86, %88
  %90 = or i32 %89, %87
  %91 = mul i32 %89, %88
  %92 = sub i32 %86, %91
  %93 = shl i32 %92, 1
  %94 = and i32 %93, 536870910
  %95 = icmp uge i32 %94, %8
  %96 = zext i1 %95 to i32
  %97 = add i32 %90, %96
  %98 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 39
  %99 = sub i32 0, %97
  %100 = select i1 %35, i32 %97, i32 %99
  store i32 %100, ptr %98, align 4
  %101 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %102 = load i8, ptr %101, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8, !annotation !9
  %103 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %104 = load i8, ptr %103, align 1, !range !8
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, i32 0, i32 192
  br i1 %105, label %112, label %107

107:                                              ; preds = %21
  store i8 33, ptr %3, align 8
  %108 = trunc i32 %106 to i8
  %109 = or i8 %108, 1
  %110 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 2
  store i8 %109, ptr %110, align 2
  %111 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %111, align 1
  br label %113

112:                                              ; preds = %21
  store i8 32, ptr %3, align 8
  br label %113

113:                                              ; preds = %112, %107
  %114 = phi i8 [ -126, %107 ], [ 98, %112 ]
  %115 = phi i32 [ 4, %107 ], [ 2, %112 ]
  %116 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 1
  store i8 %114, ptr %116, align 1
  %117 = trunc i32 %100 to i8
  %118 = getelementptr [8 x i8], ptr %3, i32 0, i32 %115
  store i8 %117, ptr %118, align 2
  %119 = lshr i32 %100, 8
  %120 = trunc i32 %119 to i8
  %121 = or i32 %115, 1
  %122 = getelementptr [8 x i8], ptr %3, i32 0, i32 %121
  store i8 %120, ptr %122, align 1
  %123 = lshr i32 %100, 16
  %124 = trunc i32 %123 to i8
  %125 = add nuw nsw i32 %115, 2
  %126 = getelementptr [8 x i8], ptr %3, i32 0, i32 %125
  store i8 %124, ptr %126, align 2
  %127 = lshr i32 %100, 24
  %128 = trunc i32 %127 to i8
  %129 = add nuw nsw i32 %115, 3
  %130 = getelementptr [8 x i8], ptr %3, i32 0, i32 %129
  store i8 %128, ptr %130, align 1
  %131 = load i32, ptr @debug, align 4
  %132 = icmp ugt i32 %131, 1
  br i1 %132, label %133, label %135

133:                                              ; preds = %113
  %134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.write32_flags, i32 noundef 25296912, i32 noundef %100, i32 noundef %106) #10
  br label %135

135:                                              ; preds = %133, %113
  %136 = add nuw nsw i32 %115, 4
  %137 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %102, ptr noundef nonnull %3, i32 noundef %136) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %137, ptr noundef nonnull @__func__.set_frequency_shifter) #10
  br label %141

141:                                              ; preds = %139, %135
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_qam16(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_qam16) #10
  %15 = load i32, ptr @debug, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  %20 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 0, i32 192
  store i8 91, ptr %10, align 1
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 63, ptr %26, align 1
  %27 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 -125, ptr %27, align 1
  %28 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 -51, ptr %28, align 1
  %29 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 52, ptr %29, align 1
  %30 = icmp ugt i32 %17, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593325, i32 noundef 13517, i32 noundef %23) #10
  br label %33

33:                                               ; preds = %31, %16
  %34 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %19, ptr noundef nonnull %10, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %330, label %36

36:                                               ; preds = %33
  %37 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  %38 = load i8, ptr %20, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i32 0, i32 192
  store i8 93, ptr %9, align 1
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  store i8 63, ptr %43, align 1
  %44 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 -125, ptr %44, align 1
  %45 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  store i8 -51, ptr %45, align 1
  %46 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  store i8 52, ptr %46, align 1
  %47 = load i32, ptr @debug, align 4
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593326, i32 noundef 13517, i32 noundef %40) #10
  br label %51

51:                                               ; preds = %49, %36
  %52 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %37, ptr noundef nonnull %9, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %330, label %54

54:                                               ; preds = %51
  %55 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  %56 = load i8, ptr %20, align 1, !range !8
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %57, i32 0, i32 192
  store i8 95, ptr %8, align 1
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %59, ptr %60, align 1
  %61 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 3
  store i8 63, ptr %61, align 1
  %62 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 -125, ptr %62, align 1
  %63 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 4
  store i8 -51, ptr %63, align 1
  %64 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 5
  store i8 52, ptr %64, align 1
  %65 = load i32, ptr @debug, align 4
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593327, i32 noundef 13517, i32 noundef %58) #10
  br label %69

69:                                               ; preds = %67, %54
  %70 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %55, ptr noundef nonnull %8, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %330, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  %74 = load i8, ptr %20, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, i32 0, i32 192
  store i8 97, ptr %7, align 1
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 3
  store i8 63, ptr %79, align 1
  %80 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 -125, ptr %80, align 1
  %81 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 4
  store i8 -51, ptr %81, align 1
  %82 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 5
  store i8 52, ptr %82, align 1
  %83 = load i32, ptr @debug, align 4
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593328, i32 noundef 13517, i32 noundef %76) #10
  br label %87

87:                                               ; preds = %85, %72
  %88 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %73, ptr noundef nonnull %7, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %330, label %90

90:                                               ; preds = %87
  %91 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  %92 = load i8, ptr %20, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, i32 0, i32 192
  store i8 99, ptr %6, align 1
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %95, ptr %96, align 1
  %97 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  store i8 63, ptr %97, align 1
  %98 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 -125, ptr %98, align 1
  %99 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  store i8 -51, ptr %99, align 1
  %100 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  store i8 52, ptr %100, align 1
  %101 = load i32, ptr @debug, align 4
  %102 = icmp ugt i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593329, i32 noundef 13517, i32 noundef %94) #10
  br label %105

105:                                              ; preds = %103, %90
  %106 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %91, ptr noundef nonnull %6, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %330, label %108

108:                                              ; preds = %105
  %109 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  %110 = load i8, ptr %20, align 1, !range !8
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i32 0, i32 192
  store i8 101, ptr %5, align 1
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %113, ptr %114, align 1
  %115 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  store i8 63, ptr %115, align 1
  %116 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 -125, ptr %116, align 1
  %117 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  store i8 -51, ptr %117, align 1
  %118 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  store i8 52, ptr %118, align 1
  %119 = load i32, ptr @debug, align 4
  %120 = icmp ugt i32 %119, 1
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593330, i32 noundef 13517, i32 noundef %112) #10
  br label %123

123:                                              ; preds = %121, %108
  %124 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %109, ptr noundef nonnull %5, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %330, label %126

126:                                              ; preds = %123
  %127 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %128 = load i8, ptr %20, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  %130 = select i1 %129, i32 0, i32 192
  br i1 %129, label %135, label %131

131:                                              ; preds = %126
  store i8 49, ptr %4, align 1
  %132 = trunc i32 %130 to i8
  %133 = or i8 %132, 1
  %134 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %133, ptr %134, align 1
  br label %136

135:                                              ; preds = %126
  store i8 48, ptr %4, align 1
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i8 [ 68, %131 ], [ 84, %135 ]
  %138 = phi i32 [ 4, %131 ], [ 2, %135 ]
  %139 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %137, ptr %139, align 1
  %140 = getelementptr [6 x i8], ptr %4, i32 0, i32 %138
  store i8 2, ptr %140, align 1
  %141 = or i32 %138, 1
  %142 = getelementptr [6 x i8], ptr %4, i32 0, i32 %141
  store i8 0, ptr %142, align 1
  %143 = load i32, ptr @debug, align 4
  %144 = icmp ugt i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233688, i32 noundef 2, i32 noundef %130) #10
  br label %147

147:                                              ; preds = %145, %136
  %148 = add nuw nsw i32 %138, 2
  %149 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %127, ptr noundef nonnull %4, i32 noundef %148) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %330, label %151

151:                                              ; preds = %147
  %152 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %153 = load i8, ptr %20, align 1, !range !8
  %154 = icmp eq i8 %153, 0
  %155 = select i1 %154, i32 0, i32 192
  br i1 %154, label %160, label %156

156:                                              ; preds = %151
  store i8 51, ptr %3, align 1
  %157 = trunc i32 %155 to i8
  %158 = or i8 %157, 1
  %159 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %158, ptr %159, align 1
  br label %161

160:                                              ; preds = %151
  store i8 50, ptr %3, align 1
  br label %161

161:                                              ; preds = %160, %156
  %162 = phi i8 [ 68, %156 ], [ 84, %160 ]
  %163 = phi i32 [ 4, %156 ], [ 2, %160 ]
  %164 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %162, ptr %164, align 1
  %165 = getelementptr [6 x i8], ptr %3, i32 0, i32 %163
  store i8 2, ptr %165, align 1
  %166 = or i32 %163, 1
  %167 = getelementptr [6 x i8], ptr %3, i32 0, i32 %166
  store i8 0, ptr %167, align 1
  %168 = load i32, ptr @debug, align 4
  %169 = icmp ugt i32 %168, 1
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233689, i32 noundef 2, i32 noundef %155) #10
  br label %172

172:                                              ; preds = %170, %161
  %173 = add nuw nsw i32 %163, 2
  %174 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %152, ptr noundef nonnull %3, i32 noundef %173) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %330, label %176

176:                                              ; preds = %172
  %177 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %178 = load i8, ptr %20, align 1, !range !8
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i32 0, i32 192
  br i1 %179, label %185, label %181

181:                                              ; preds = %176
  store i8 53, ptr %2, align 1
  %182 = trunc i32 %180 to i8
  %183 = or i8 %182, 1
  %184 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %183, ptr %184, align 1
  br label %186

185:                                              ; preds = %176
  store i8 52, ptr %2, align 1
  br label %186

186:                                              ; preds = %185, %181
  %187 = phi i8 [ 68, %181 ], [ 84, %185 ]
  %188 = phi i32 [ 4, %181 ], [ 2, %185 ]
  %189 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %187, ptr %189, align 1
  %190 = getelementptr [6 x i8], ptr %2, i32 0, i32 %188
  store i8 2, ptr %190, align 1
  %191 = or i32 %188, 1
  %192 = getelementptr [6 x i8], ptr %2, i32 0, i32 %191
  store i8 0, ptr %192, align 1
  %193 = load i32, ptr @debug, align 4
  %194 = icmp ugt i32 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233690, i32 noundef 2, i32 noundef %180) #10
  br label %197

197:                                              ; preds = %195, %186
  %198 = add nuw nsw i32 %188, 2
  %199 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %177, ptr noundef nonnull %2, i32 noundef %198) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %330, label %201

201:                                              ; preds = %197
  %202 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233691, i16 noundef zeroext 2)
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %330, label %204

204:                                              ; preds = %201
  %205 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233692, i16 noundef zeroext 2)
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %330, label %207

207:                                              ; preds = %204
  %208 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233693, i16 noundef zeroext 0)
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %330, label %210

210:                                              ; preds = %207
  %211 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430292, i16 noundef zeroext 5)
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %330, label %213

213:                                              ; preds = %210
  %214 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430291, i16 noundef zeroext 4)
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %330, label %216

216:                                              ; preds = %213
  %217 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430290, i16 noundef zeroext 3)
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %330, label %219

219:                                              ; preds = %216
  %220 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593324, i16 noundef zeroext -24576)
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %330, label %222

222:                                              ; preds = %219
  %223 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593305, i16 noundef zeroext 15)
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %330, label %225

225:                                              ; preds = %222
  %226 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593303, i16 noundef zeroext 40)
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %330, label %228

228:                                              ; preds = %225
  %229 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593314, i16 noundef zeroext 12)
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %330, label %231

231:                                              ; preds = %228
  %232 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593313, i16 noundef zeroext 24)
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %330, label %234

234:                                              ; preds = %231
  %235 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593312, i16 noundef zeroext 24)
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %330, label %237

237:                                              ; preds = %234
  %238 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593317, i16 noundef zeroext 12)
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %330, label %240

240:                                              ; preds = %237
  %241 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593316, i16 noundef zeroext 16)
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %330, label %243

243:                                              ; preds = %240
  %244 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593315, i16 noundef zeroext 16)
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %330, label %246

246:                                              ; preds = %243
  %247 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593308, i16 noundef zeroext 5)
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %330, label %249

249:                                              ; preds = %246
  %250 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593307, i16 noundef zeroext 20)
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %330, label %252

252:                                              ; preds = %249
  %253 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593306, i16 noundef zeroext 80)
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %330, label %255

255:                                              ; preds = %252
  %256 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593311, i16 noundef zeroext 5)
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %330, label %258

258:                                              ; preds = %255
  %259 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593310, i16 noundef zeroext 20)
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %330, label %261

261:                                              ; preds = %258
  %262 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593309, i16 noundef zeroext 50)
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %330, label %264

264:                                              ; preds = %261
  %265 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593320, i16 noundef zeroext 16)
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %330, label %267

267:                                              ; preds = %264
  %268 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593319, i16 noundef zeroext 16)
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %330, label %270

270:                                              ; preds = %267
  %271 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593318, i16 noundef zeroext 32)
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %330, label %273

273:                                              ; preds = %270
  %274 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593323, i16 noundef zeroext 5)
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %330, label %276

276:                                              ; preds = %273
  %277 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593322, i16 noundef zeroext 10)
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %330, label %279

279:                                              ; preds = %276
  %280 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593321, i16 noundef zeroext 10)
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %330, label %282

282:                                              ; preds = %279
  %283 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593294, i16 noundef zeroext 140)
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %330, label %285

285:                                              ; preds = %282
  %286 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593295, i16 noundef zeroext 50)
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %330, label %288

288:                                              ; preds = %285
  %289 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593298, i16 noundef zeroext 95)
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %330, label %291

291:                                              ; preds = %288
  %292 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593296, i16 noundef zeroext 120)
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %330, label %294

294:                                              ; preds = %291
  %295 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593299, i16 noundef zeroext 230)
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %330, label %297

297:                                              ; preds = %294
  %298 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593297, i16 noundef zeroext 105)
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %330, label %300

300:                                              ; preds = %297
  %301 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593300, i16 noundef zeroext 40)
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %330, label %303

303:                                              ; preds = %300
  %304 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593302, i16 noundef zeroext 4)
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %330, label %306

306:                                              ; preds = %303
  %307 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593301, i16 noundef zeroext 24)
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %330, label %309

309:                                              ; preds = %306
  %310 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593284, i16 noundef zeroext 16)
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %330, label %312

312:                                              ; preds = %309
  %313 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593285, i16 noundef zeroext 220)
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %330, label %315

315:                                              ; preds = %312
  %316 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593286, i16 noundef zeroext 25)
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %330, label %318

318:                                              ; preds = %315
  %319 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593287, i16 noundef zeroext 6)
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %330, label %321

321:                                              ; preds = %318
  %322 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593288, i16 noundef zeroext -24)
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %330, label %324

324:                                              ; preds = %321
  %325 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593289, i16 noundef zeroext -65)
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593290, i16 noundef zeroext -127)
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327, %324, %321, %318, %315, %312, %309, %306, %303, %300, %297, %294, %291, %288, %285, %282, %279, %276, %273, %270, %267, %264, %261, %258, %255, %252, %249, %246, %243, %240, %237, %234, %231, %228, %225, %222, %219, %216, %213, %210, %207, %204, %201, %197, %172, %147, %123, %105, %87, %69, %51, %33
  %331 = phi i32 [ %328, %327 ], [ %325, %324 ], [ %322, %321 ], [ %319, %318 ], [ %316, %315 ], [ %313, %312 ], [ %310, %309 ], [ %307, %306 ], [ %304, %303 ], [ %301, %300 ], [ %298, %297 ], [ %295, %294 ], [ %292, %291 ], [ %289, %288 ], [ %286, %285 ], [ %283, %282 ], [ %280, %279 ], [ %277, %276 ], [ %274, %273 ], [ %271, %270 ], [ %268, %267 ], [ %265, %264 ], [ %262, %261 ], [ %259, %258 ], [ %256, %255 ], [ %253, %252 ], [ %250, %249 ], [ %247, %246 ], [ %244, %243 ], [ %241, %240 ], [ %238, %237 ], [ %235, %234 ], [ %232, %231 ], [ %229, %228 ], [ %226, %225 ], [ %223, %222 ], [ %220, %219 ], [ %217, %216 ], [ %214, %213 ], [ %211, %210 ], [ %208, %207 ], [ %205, %204 ], [ %202, %201 ], [ %199, %197 ], [ %174, %172 ], [ %149, %147 ], [ %124, %123 ], [ %106, %105 ], [ %88, %87 ], [ %70, %69 ], [ %52, %51 ], [ %34, %33 ]
  %332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %331, ptr noundef nonnull @__func__.set_qam16) #10
  br label %333

333:                                              ; preds = %330, %327
  %334 = phi i32 [ %331, %330 ], [ %328, %327 ]
  ret i32 %334
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_qam32(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_qam32) #10
  %15 = load i32, ptr @debug, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  %20 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 0, i32 192
  store i8 91, ptr %10, align 1
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 63, ptr %26, align 1
  %27 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 -125, ptr %27, align 1
  %28 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 51, ptr %28, align 1
  %29 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 26, ptr %29, align 1
  %30 = icmp ugt i32 %17, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593325, i32 noundef 6707, i32 noundef %23) #10
  br label %33

33:                                               ; preds = %31, %16
  %34 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %19, ptr noundef nonnull %10, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %330, label %36

36:                                               ; preds = %33
  %37 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  %38 = load i8, ptr %20, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i32 0, i32 192
  store i8 93, ptr %9, align 1
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  store i8 63, ptr %43, align 1
  %44 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 -125, ptr %44, align 1
  %45 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  store i8 51, ptr %45, align 1
  %46 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  store i8 26, ptr %46, align 1
  %47 = load i32, ptr @debug, align 4
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593326, i32 noundef 6707, i32 noundef %40) #10
  br label %51

51:                                               ; preds = %49, %36
  %52 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %37, ptr noundef nonnull %9, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %330, label %54

54:                                               ; preds = %51
  %55 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  %56 = load i8, ptr %20, align 1, !range !8
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %57, i32 0, i32 192
  store i8 95, ptr %8, align 1
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %59, ptr %60, align 1
  %61 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 3
  store i8 63, ptr %61, align 1
  %62 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 -125, ptr %62, align 1
  %63 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 4
  store i8 51, ptr %63, align 1
  %64 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 5
  store i8 26, ptr %64, align 1
  %65 = load i32, ptr @debug, align 4
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593327, i32 noundef 6707, i32 noundef %58) #10
  br label %69

69:                                               ; preds = %67, %54
  %70 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %55, ptr noundef nonnull %8, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %330, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  %74 = load i8, ptr %20, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, i32 0, i32 192
  store i8 97, ptr %7, align 1
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 3
  store i8 63, ptr %79, align 1
  %80 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 -125, ptr %80, align 1
  %81 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 4
  store i8 51, ptr %81, align 1
  %82 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 5
  store i8 26, ptr %82, align 1
  %83 = load i32, ptr @debug, align 4
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593328, i32 noundef 6707, i32 noundef %76) #10
  br label %87

87:                                               ; preds = %85, %72
  %88 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %73, ptr noundef nonnull %7, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %330, label %90

90:                                               ; preds = %87
  %91 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  %92 = load i8, ptr %20, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, i32 0, i32 192
  store i8 99, ptr %6, align 1
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %95, ptr %96, align 1
  %97 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  store i8 63, ptr %97, align 1
  %98 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 -125, ptr %98, align 1
  %99 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  store i8 51, ptr %99, align 1
  %100 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  store i8 26, ptr %100, align 1
  %101 = load i32, ptr @debug, align 4
  %102 = icmp ugt i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593329, i32 noundef 6707, i32 noundef %94) #10
  br label %105

105:                                              ; preds = %103, %90
  %106 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %91, ptr noundef nonnull %6, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %330, label %108

108:                                              ; preds = %105
  %109 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  %110 = load i8, ptr %20, align 1, !range !8
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i32 0, i32 192
  store i8 101, ptr %5, align 1
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %113, ptr %114, align 1
  %115 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  store i8 63, ptr %115, align 1
  %116 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 -125, ptr %116, align 1
  %117 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  store i8 51, ptr %117, align 1
  %118 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  store i8 26, ptr %118, align 1
  %119 = load i32, ptr @debug, align 4
  %120 = icmp ugt i32 %119, 1
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593330, i32 noundef 6707, i32 noundef %112) #10
  br label %123

123:                                              ; preds = %121, %108
  %124 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %109, ptr noundef nonnull %5, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %330, label %126

126:                                              ; preds = %123
  %127 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %128 = load i8, ptr %20, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  %130 = select i1 %129, i32 0, i32 192
  br i1 %129, label %135, label %131

131:                                              ; preds = %126
  store i8 49, ptr %4, align 1
  %132 = trunc i32 %130 to i8
  %133 = or i8 %132, 1
  %134 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %133, ptr %134, align 1
  br label %136

135:                                              ; preds = %126
  store i8 48, ptr %4, align 1
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i8 [ 68, %131 ], [ 84, %135 ]
  %138 = phi i32 [ 4, %131 ], [ 2, %135 ]
  %139 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %137, ptr %139, align 1
  %140 = getelementptr [6 x i8], ptr %4, i32 0, i32 %138
  store i8 3, ptr %140, align 1
  %141 = or i32 %138, 1
  %142 = getelementptr [6 x i8], ptr %4, i32 0, i32 %141
  store i8 0, ptr %142, align 1
  %143 = load i32, ptr @debug, align 4
  %144 = icmp ugt i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233688, i32 noundef 3, i32 noundef %130) #10
  br label %147

147:                                              ; preds = %145, %136
  %148 = add nuw nsw i32 %138, 2
  %149 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %127, ptr noundef nonnull %4, i32 noundef %148) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %330, label %151

151:                                              ; preds = %147
  %152 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %153 = load i8, ptr %20, align 1, !range !8
  %154 = icmp eq i8 %153, 0
  %155 = select i1 %154, i32 0, i32 192
  br i1 %154, label %160, label %156

156:                                              ; preds = %151
  store i8 51, ptr %3, align 1
  %157 = trunc i32 %155 to i8
  %158 = or i8 %157, 1
  %159 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %158, ptr %159, align 1
  br label %161

160:                                              ; preds = %151
  store i8 50, ptr %3, align 1
  br label %161

161:                                              ; preds = %160, %156
  %162 = phi i8 [ 68, %156 ], [ 84, %160 ]
  %163 = phi i32 [ 4, %156 ], [ 2, %160 ]
  %164 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %162, ptr %164, align 1
  %165 = getelementptr [6 x i8], ptr %3, i32 0, i32 %163
  store i8 3, ptr %165, align 1
  %166 = or i32 %163, 1
  %167 = getelementptr [6 x i8], ptr %3, i32 0, i32 %166
  store i8 0, ptr %167, align 1
  %168 = load i32, ptr @debug, align 4
  %169 = icmp ugt i32 %168, 1
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233689, i32 noundef 3, i32 noundef %155) #10
  br label %172

172:                                              ; preds = %170, %161
  %173 = add nuw nsw i32 %163, 2
  %174 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %152, ptr noundef nonnull %3, i32 noundef %173) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %330, label %176

176:                                              ; preds = %172
  %177 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %178 = load i8, ptr %20, align 1, !range !8
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i32 0, i32 192
  br i1 %179, label %185, label %181

181:                                              ; preds = %176
  store i8 53, ptr %2, align 1
  %182 = trunc i32 %180 to i8
  %183 = or i8 %182, 1
  %184 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %183, ptr %184, align 1
  br label %186

185:                                              ; preds = %176
  store i8 52, ptr %2, align 1
  br label %186

186:                                              ; preds = %185, %181
  %187 = phi i8 [ 68, %181 ], [ 84, %185 ]
  %188 = phi i32 [ 4, %181 ], [ 2, %185 ]
  %189 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %187, ptr %189, align 1
  %190 = getelementptr [6 x i8], ptr %2, i32 0, i32 %188
  store i8 3, ptr %190, align 1
  %191 = or i32 %188, 1
  %192 = getelementptr [6 x i8], ptr %2, i32 0, i32 %191
  store i8 0, ptr %192, align 1
  %193 = load i32, ptr @debug, align 4
  %194 = icmp ugt i32 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233690, i32 noundef 3, i32 noundef %180) #10
  br label %197

197:                                              ; preds = %195, %186
  %198 = add nuw nsw i32 %188, 2
  %199 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %177, ptr noundef nonnull %2, i32 noundef %198) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %330, label %201

201:                                              ; preds = %197
  %202 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233691, i16 noundef zeroext 3)
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %330, label %204

204:                                              ; preds = %201
  %205 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233692, i16 noundef zeroext 3)
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %330, label %207

207:                                              ; preds = %204
  %208 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233693, i16 noundef zeroext 0)
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %330, label %210

210:                                              ; preds = %207
  %211 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430292, i16 noundef zeroext 6)
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %330, label %213

213:                                              ; preds = %210
  %214 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430291, i16 noundef zeroext 5)
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %330, label %216

216:                                              ; preds = %213
  %217 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430290, i16 noundef zeroext 3)
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %330, label %219

219:                                              ; preds = %216
  %220 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593324, i16 noundef zeroext 20480)
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %330, label %222

222:                                              ; preds = %219
  %223 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593305, i16 noundef zeroext 15)
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %330, label %225

225:                                              ; preds = %222
  %226 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593303, i16 noundef zeroext 40)
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %330, label %228

228:                                              ; preds = %225
  %229 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593314, i16 noundef zeroext 12)
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %330, label %231

231:                                              ; preds = %228
  %232 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593313, i16 noundef zeroext 24)
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %330, label %234

234:                                              ; preds = %231
  %235 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593312, i16 noundef zeroext 24)
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %330, label %237

237:                                              ; preds = %234
  %238 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593317, i16 noundef zeroext 12)
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %330, label %240

240:                                              ; preds = %237
  %241 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593316, i16 noundef zeroext 16)
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %330, label %243

243:                                              ; preds = %240
  %244 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593315, i16 noundef zeroext 16)
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %330, label %246

246:                                              ; preds = %243
  %247 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593308, i16 noundef zeroext 5)
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %330, label %249

249:                                              ; preds = %246
  %250 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593307, i16 noundef zeroext 20)
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %330, label %252

252:                                              ; preds = %249
  %253 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593306, i16 noundef zeroext 80)
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %330, label %255

255:                                              ; preds = %252
  %256 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593311, i16 noundef zeroext 5)
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %330, label %258

258:                                              ; preds = %255
  %259 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593310, i16 noundef zeroext 20)
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %330, label %261

261:                                              ; preds = %258
  %262 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593309, i16 noundef zeroext 50)
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %330, label %264

264:                                              ; preds = %261
  %265 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593320, i16 noundef zeroext 16)
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %330, label %267

267:                                              ; preds = %264
  %268 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593319, i16 noundef zeroext 16)
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %330, label %270

270:                                              ; preds = %267
  %271 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593318, i16 noundef zeroext 16)
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %330, label %273

273:                                              ; preds = %270
  %274 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593323, i16 noundef zeroext 5)
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %330, label %276

276:                                              ; preds = %273
  %277 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593322, i16 noundef zeroext 10)
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %330, label %279

279:                                              ; preds = %276
  %280 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593321, i16 noundef zeroext 0)
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %330, label %282

282:                                              ; preds = %279
  %283 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593294, i16 noundef zeroext 90)
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %330, label %285

285:                                              ; preds = %282
  %286 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593295, i16 noundef zeroext 50)
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %330, label %288

288:                                              ; preds = %285
  %289 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593298, i16 noundef zeroext 80)
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %330, label %291

291:                                              ; preds = %288
  %292 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593296, i16 noundef zeroext 100)
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %330, label %294

294:                                              ; preds = %291
  %295 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593299, i16 noundef zeroext 170)
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %330, label %297

297:                                              ; preds = %294
  %298 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593297, i16 noundef zeroext 100)
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %330, label %300

300:                                              ; preds = %297
  %301 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593300, i16 noundef zeroext 40)
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %330, label %303

303:                                              ; preds = %300
  %304 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593302, i16 noundef zeroext 4)
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %330, label %306

306:                                              ; preds = %303
  %307 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593301, i16 noundef zeroext 10)
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %330, label %309

309:                                              ; preds = %306
  %310 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593284, i16 noundef zeroext 12)
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %330, label %312

312:                                              ; preds = %309
  %313 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593285, i16 noundef zeroext 140)
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %330, label %315

315:                                              ; preds = %312
  %316 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593286, i16 noundef zeroext -8)
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %330, label %318

318:                                              ; preds = %315
  %319 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593287, i16 noundef zeroext -16)
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %330, label %321

321:                                              ; preds = %318
  %322 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593288, i16 noundef zeroext -26)
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %330, label %324

324:                                              ; preds = %321
  %325 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593289, i16 noundef zeroext -56)
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593290, i16 noundef zeroext -86)
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327, %324, %321, %318, %315, %312, %309, %306, %303, %300, %297, %294, %291, %288, %285, %282, %279, %276, %273, %270, %267, %264, %261, %258, %255, %252, %249, %246, %243, %240, %237, %234, %231, %228, %225, %222, %219, %216, %213, %210, %207, %204, %201, %197, %172, %147, %123, %105, %87, %69, %51, %33
  %331 = phi i32 [ %328, %327 ], [ %325, %324 ], [ %322, %321 ], [ %319, %318 ], [ %316, %315 ], [ %313, %312 ], [ %310, %309 ], [ %307, %306 ], [ %304, %303 ], [ %301, %300 ], [ %298, %297 ], [ %295, %294 ], [ %292, %291 ], [ %289, %288 ], [ %286, %285 ], [ %283, %282 ], [ %280, %279 ], [ %277, %276 ], [ %274, %273 ], [ %271, %270 ], [ %268, %267 ], [ %265, %264 ], [ %262, %261 ], [ %259, %258 ], [ %256, %255 ], [ %253, %252 ], [ %250, %249 ], [ %247, %246 ], [ %244, %243 ], [ %241, %240 ], [ %238, %237 ], [ %235, %234 ], [ %232, %231 ], [ %229, %228 ], [ %226, %225 ], [ %223, %222 ], [ %220, %219 ], [ %217, %216 ], [ %214, %213 ], [ %211, %210 ], [ %208, %207 ], [ %205, %204 ], [ %202, %201 ], [ %199, %197 ], [ %174, %172 ], [ %149, %147 ], [ %124, %123 ], [ %106, %105 ], [ %88, %87 ], [ %70, %69 ], [ %52, %51 ], [ %34, %33 ]
  %332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %331, ptr noundef nonnull @__func__.set_qam32) #10
  br label %333

333:                                              ; preds = %330, %327
  %334 = phi i32 [ %331, %330 ], [ %328, %327 ]
  ret i32 %334
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_qam64(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_qam64) #10
  %15 = load i32, ptr @debug, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  %20 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 0, i32 192
  store i8 91, ptr %10, align 1
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 63, ptr %26, align 1
  %27 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 -125, ptr %27, align 1
  %28 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 24, ptr %28, align 1
  %29 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 52, ptr %29, align 1
  %30 = icmp ugt i32 %17, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593325, i32 noundef 13336, i32 noundef %23) #10
  br label %33

33:                                               ; preds = %31, %16
  %34 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %19, ptr noundef nonnull %10, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %330, label %36

36:                                               ; preds = %33
  %37 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  %38 = load i8, ptr %20, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i32 0, i32 192
  store i8 93, ptr %9, align 1
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  store i8 63, ptr %43, align 1
  %44 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 -125, ptr %44, align 1
  %45 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  store i8 74, ptr %45, align 1
  %46 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  store i8 49, ptr %46, align 1
  %47 = load i32, ptr @debug, align 4
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593326, i32 noundef 12618, i32 noundef %40) #10
  br label %51

51:                                               ; preds = %49, %36
  %52 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %37, ptr noundef nonnull %9, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %330, label %54

54:                                               ; preds = %51
  %55 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  %56 = load i8, ptr %20, align 1, !range !8
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %57, i32 0, i32 192
  store i8 95, ptr %8, align 1
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %59, ptr %60, align 1
  %61 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 3
  store i8 63, ptr %61, align 1
  %62 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 -125, ptr %62, align 1
  %63 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 4
  store i8 -44, ptr %63, align 1
  %64 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 5
  store i8 46, ptr %64, align 1
  %65 = load i32, ptr @debug, align 4
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593327, i32 noundef 11988, i32 noundef %58) #10
  br label %69

69:                                               ; preds = %67, %54
  %70 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %55, ptr noundef nonnull %8, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %330, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  %74 = load i8, ptr %20, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, i32 0, i32 192
  store i8 97, ptr %7, align 1
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 3
  store i8 63, ptr %79, align 1
  %80 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 -125, ptr %80, align 1
  %81 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 4
  store i8 -15, ptr %81, align 1
  %82 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 5
  store i8 53, ptr %82, align 1
  %83 = load i32, ptr @debug, align 4
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593328, i32 noundef 13809, i32 noundef %76) #10
  br label %87

87:                                               ; preds = %85, %72
  %88 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %73, ptr noundef nonnull %7, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %330, label %90

90:                                               ; preds = %87
  %91 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  %92 = load i8, ptr %20, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, i32 0, i32 192
  store i8 99, ptr %6, align 1
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %95, ptr %96, align 1
  %97 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  store i8 63, ptr %97, align 1
  %98 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 -125, ptr %98, align 1
  %99 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  store i8 -15, ptr %99, align 1
  %100 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  store i8 53, ptr %100, align 1
  %101 = load i32, ptr @debug, align 4
  %102 = icmp ugt i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593329, i32 noundef 13809, i32 noundef %94) #10
  br label %105

105:                                              ; preds = %103, %90
  %106 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %91, ptr noundef nonnull %6, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %330, label %108

108:                                              ; preds = %105
  %109 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  %110 = load i8, ptr %20, align 1, !range !8
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i32 0, i32 192
  store i8 101, ptr %5, align 1
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %113, ptr %114, align 1
  %115 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  store i8 63, ptr %115, align 1
  %116 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 -125, ptr %116, align 1
  %117 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  store i8 -7, ptr %117, align 1
  %118 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  store i8 60, ptr %118, align 1
  %119 = load i32, ptr @debug, align 4
  %120 = icmp ugt i32 %119, 1
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593330, i32 noundef 15609, i32 noundef %112) #10
  br label %123

123:                                              ; preds = %121, %108
  %124 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %109, ptr noundef nonnull %5, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %330, label %126

126:                                              ; preds = %123
  %127 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %128 = load i8, ptr %20, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  %130 = select i1 %129, i32 0, i32 192
  br i1 %129, label %135, label %131

131:                                              ; preds = %126
  store i8 49, ptr %4, align 1
  %132 = trunc i32 %130 to i8
  %133 = or i8 %132, 1
  %134 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %133, ptr %134, align 1
  br label %136

135:                                              ; preds = %126
  store i8 48, ptr %4, align 1
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i8 [ 68, %131 ], [ 84, %135 ]
  %138 = phi i32 [ 4, %131 ], [ 2, %135 ]
  %139 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %137, ptr %139, align 1
  %140 = getelementptr [6 x i8], ptr %4, i32 0, i32 %138
  store i8 4, ptr %140, align 1
  %141 = or i32 %138, 1
  %142 = getelementptr [6 x i8], ptr %4, i32 0, i32 %141
  store i8 0, ptr %142, align 1
  %143 = load i32, ptr @debug, align 4
  %144 = icmp ugt i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233688, i32 noundef 4, i32 noundef %130) #10
  br label %147

147:                                              ; preds = %145, %136
  %148 = add nuw nsw i32 %138, 2
  %149 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %127, ptr noundef nonnull %4, i32 noundef %148) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %330, label %151

151:                                              ; preds = %147
  %152 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %153 = load i8, ptr %20, align 1, !range !8
  %154 = icmp eq i8 %153, 0
  %155 = select i1 %154, i32 0, i32 192
  br i1 %154, label %160, label %156

156:                                              ; preds = %151
  store i8 51, ptr %3, align 1
  %157 = trunc i32 %155 to i8
  %158 = or i8 %157, 1
  %159 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %158, ptr %159, align 1
  br label %161

160:                                              ; preds = %151
  store i8 50, ptr %3, align 1
  br label %161

161:                                              ; preds = %160, %156
  %162 = phi i8 [ 68, %156 ], [ 84, %160 ]
  %163 = phi i32 [ 4, %156 ], [ 2, %160 ]
  %164 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %162, ptr %164, align 1
  %165 = getelementptr [6 x i8], ptr %3, i32 0, i32 %163
  store i8 4, ptr %165, align 1
  %166 = or i32 %163, 1
  %167 = getelementptr [6 x i8], ptr %3, i32 0, i32 %166
  store i8 0, ptr %167, align 1
  %168 = load i32, ptr @debug, align 4
  %169 = icmp ugt i32 %168, 1
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233689, i32 noundef 4, i32 noundef %155) #10
  br label %172

172:                                              ; preds = %170, %161
  %173 = add nuw nsw i32 %163, 2
  %174 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %152, ptr noundef nonnull %3, i32 noundef %173) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %330, label %176

176:                                              ; preds = %172
  %177 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %178 = load i8, ptr %20, align 1, !range !8
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i32 0, i32 192
  br i1 %179, label %185, label %181

181:                                              ; preds = %176
  store i8 53, ptr %2, align 1
  %182 = trunc i32 %180 to i8
  %183 = or i8 %182, 1
  %184 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %183, ptr %184, align 1
  br label %186

185:                                              ; preds = %176
  store i8 52, ptr %2, align 1
  br label %186

186:                                              ; preds = %185, %181
  %187 = phi i8 [ 68, %181 ], [ 84, %185 ]
  %188 = phi i32 [ 4, %181 ], [ 2, %185 ]
  %189 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %187, ptr %189, align 1
  %190 = getelementptr [6 x i8], ptr %2, i32 0, i32 %188
  store i8 4, ptr %190, align 1
  %191 = or i32 %188, 1
  %192 = getelementptr [6 x i8], ptr %2, i32 0, i32 %191
  store i8 0, ptr %192, align 1
  %193 = load i32, ptr @debug, align 4
  %194 = icmp ugt i32 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233690, i32 noundef 4, i32 noundef %180) #10
  br label %197

197:                                              ; preds = %195, %186
  %198 = add nuw nsw i32 %188, 2
  %199 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %177, ptr noundef nonnull %2, i32 noundef %198) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %330, label %201

201:                                              ; preds = %197
  %202 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233691, i16 noundef zeroext 4)
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %330, label %204

204:                                              ; preds = %201
  %205 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233692, i16 noundef zeroext 3)
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %330, label %207

207:                                              ; preds = %204
  %208 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233693, i16 noundef zeroext 0)
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %330, label %210

210:                                              ; preds = %207
  %211 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430292, i16 noundef zeroext 5)
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %330, label %213

213:                                              ; preds = %210
  %214 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430291, i16 noundef zeroext 4)
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %330, label %216

216:                                              ; preds = %213
  %217 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430290, i16 noundef zeroext 3)
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %330, label %219

219:                                              ; preds = %216
  %220 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593324, i16 noundef zeroext -22528)
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %330, label %222

222:                                              ; preds = %219
  %223 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593305, i16 noundef zeroext 15)
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %330, label %225

225:                                              ; preds = %222
  %226 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593303, i16 noundef zeroext 40)
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %330, label %228

228:                                              ; preds = %225
  %229 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593314, i16 noundef zeroext 12)
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %330, label %231

231:                                              ; preds = %228
  %232 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593313, i16 noundef zeroext 24)
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %330, label %234

234:                                              ; preds = %231
  %235 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593312, i16 noundef zeroext 24)
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %330, label %237

237:                                              ; preds = %234
  %238 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593317, i16 noundef zeroext 12)
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %330, label %240

240:                                              ; preds = %237
  %241 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593316, i16 noundef zeroext 16)
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %330, label %243

243:                                              ; preds = %240
  %244 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593315, i16 noundef zeroext 16)
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %330, label %246

246:                                              ; preds = %243
  %247 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593308, i16 noundef zeroext 5)
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %330, label %249

249:                                              ; preds = %246
  %250 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593307, i16 noundef zeroext 30)
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %330, label %252

252:                                              ; preds = %249
  %253 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593306, i16 noundef zeroext 100)
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %330, label %255

255:                                              ; preds = %252
  %256 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593311, i16 noundef zeroext 5)
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %330, label %258

258:                                              ; preds = %255
  %259 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593310, i16 noundef zeroext 30)
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %330, label %261

261:                                              ; preds = %258
  %262 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593309, i16 noundef zeroext 50)
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %330, label %264

264:                                              ; preds = %261
  %265 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593320, i16 noundef zeroext 16)
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %330, label %267

267:                                              ; preds = %264
  %268 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593319, i16 noundef zeroext 25)
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %330, label %270

270:                                              ; preds = %267
  %271 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593318, i16 noundef zeroext 48)
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %330, label %273

273:                                              ; preds = %270
  %274 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593323, i16 noundef zeroext 5)
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %330, label %276

276:                                              ; preds = %273
  %277 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593322, i16 noundef zeroext 10)
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %330, label %279

279:                                              ; preds = %276
  %280 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593321, i16 noundef zeroext 10)
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %330, label %282

282:                                              ; preds = %279
  %283 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593294, i16 noundef zeroext 100)
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %330, label %285

285:                                              ; preds = %282
  %286 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593295, i16 noundef zeroext 60)
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %330, label %288

288:                                              ; preds = %285
  %289 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593298, i16 noundef zeroext 80)
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %330, label %291

291:                                              ; preds = %288
  %292 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593296, i16 noundef zeroext 110)
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %330, label %294

294:                                              ; preds = %291
  %295 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593299, i16 noundef zeroext 200)
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %330, label %297

297:                                              ; preds = %294
  %298 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593297, i16 noundef zeroext 95)
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %330, label %300

300:                                              ; preds = %297
  %301 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593300, i16 noundef zeroext 40)
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %330, label %303

303:                                              ; preds = %300
  %304 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593302, i16 noundef zeroext 4)
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %330, label %306

306:                                              ; preds = %303
  %307 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593301, i16 noundef zeroext 15)
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %330, label %309

309:                                              ; preds = %306
  %310 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593284, i16 noundef zeroext 12)
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %330, label %312

312:                                              ; preds = %309
  %313 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593285, i16 noundef zeroext 141)
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %330, label %315

315:                                              ; preds = %312
  %316 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593286, i16 noundef zeroext 7)
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %330, label %318

318:                                              ; preds = %315
  %319 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593287, i16 noundef zeroext 0)
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %330, label %321

321:                                              ; preds = %318
  %322 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593288, i16 noundef zeroext -15)
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %330, label %324

324:                                              ; preds = %321
  %325 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593289, i16 noundef zeroext -45)
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593290, i16 noundef zeroext -80)
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327, %324, %321, %318, %315, %312, %309, %306, %303, %300, %297, %294, %291, %288, %285, %282, %279, %276, %273, %270, %267, %264, %261, %258, %255, %252, %249, %246, %243, %240, %237, %234, %231, %228, %225, %222, %219, %216, %213, %210, %207, %204, %201, %197, %172, %147, %123, %105, %87, %69, %51, %33
  %331 = phi i32 [ %328, %327 ], [ %325, %324 ], [ %322, %321 ], [ %319, %318 ], [ %316, %315 ], [ %313, %312 ], [ %310, %309 ], [ %307, %306 ], [ %304, %303 ], [ %301, %300 ], [ %298, %297 ], [ %295, %294 ], [ %292, %291 ], [ %289, %288 ], [ %286, %285 ], [ %283, %282 ], [ %280, %279 ], [ %277, %276 ], [ %274, %273 ], [ %271, %270 ], [ %268, %267 ], [ %265, %264 ], [ %262, %261 ], [ %259, %258 ], [ %256, %255 ], [ %253, %252 ], [ %250, %249 ], [ %247, %246 ], [ %244, %243 ], [ %241, %240 ], [ %238, %237 ], [ %235, %234 ], [ %232, %231 ], [ %229, %228 ], [ %226, %225 ], [ %223, %222 ], [ %220, %219 ], [ %217, %216 ], [ %214, %213 ], [ %211, %210 ], [ %208, %207 ], [ %205, %204 ], [ %202, %201 ], [ %199, %197 ], [ %174, %172 ], [ %149, %147 ], [ %124, %123 ], [ %106, %105 ], [ %88, %87 ], [ %70, %69 ], [ %52, %51 ], [ %34, %33 ]
  %332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %331, ptr noundef nonnull @__func__.set_qam64) #10
  br label %333

333:                                              ; preds = %330, %327
  %334 = phi i32 [ %331, %330 ], [ %328, %327 ]
  ret i32 %334
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_qam128(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_qam128) #10
  %15 = load i32, ptr @debug, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  %20 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 0, i32 192
  store i8 91, ptr %10, align 1
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 63, ptr %26, align 1
  %27 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 -125, ptr %27, align 1
  %28 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 -92, ptr %28, align 1
  %29 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 25, ptr %29, align 1
  %30 = icmp ugt i32 %17, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593325, i32 noundef 6564, i32 noundef %23) #10
  br label %33

33:                                               ; preds = %31, %16
  %34 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %19, ptr noundef nonnull %10, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %330, label %36

36:                                               ; preds = %33
  %37 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  %38 = load i8, ptr %20, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i32 0, i32 192
  store i8 93, ptr %9, align 1
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  store i8 63, ptr %43, align 1
  %44 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 -125, ptr %44, align 1
  %45 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  store i8 -58, ptr %45, align 1
  %46 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  store i8 25, ptr %46, align 1
  %47 = load i32, ptr @debug, align 4
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593326, i32 noundef 6598, i32 noundef %40) #10
  br label %51

51:                                               ; preds = %49, %36
  %52 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %37, ptr noundef nonnull %9, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %330, label %54

54:                                               ; preds = %51
  %55 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  %56 = load i8, ptr %20, align 1, !range !8
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %57, i32 0, i32 192
  store i8 95, ptr %8, align 1
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %59, ptr %60, align 1
  %61 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 3
  store i8 63, ptr %61, align 1
  %62 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 -125, ptr %62, align 1
  %63 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 4
  store i8 -6, ptr %63, align 1
  %64 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 5
  store i8 24, ptr %64, align 1
  %65 = load i32, ptr @debug, align 4
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593327, i32 noundef 6394, i32 noundef %58) #10
  br label %69

69:                                               ; preds = %67, %54
  %70 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %55, ptr noundef nonnull %8, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %330, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  %74 = load i8, ptr %20, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, i32 0, i32 192
  store i8 97, ptr %7, align 1
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 3
  store i8 63, ptr %79, align 1
  %80 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 -125, ptr %80, align 1
  %81 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 4
  store i8 9, ptr %81, align 1
  %82 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 5
  store i8 25, ptr %82, align 1
  %83 = load i32, ptr @debug, align 4
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593328, i32 noundef 6409, i32 noundef %76) #10
  br label %87

87:                                               ; preds = %85, %72
  %88 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %73, ptr noundef nonnull %7, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %330, label %90

90:                                               ; preds = %87
  %91 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  %92 = load i8, ptr %20, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, i32 0, i32 192
  store i8 99, ptr %6, align 1
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %95, ptr %96, align 1
  %97 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  store i8 63, ptr %97, align 1
  %98 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 -125, ptr %98, align 1
  %99 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  store i8 0, ptr %99, align 1
  %100 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  store i8 26, ptr %100, align 1
  %101 = load i32, ptr @debug, align 4
  %102 = icmp ugt i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593329, i32 noundef 6656, i32 noundef %94) #10
  br label %105

105:                                              ; preds = %103, %90
  %106 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %91, ptr noundef nonnull %6, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %330, label %108

108:                                              ; preds = %105
  %109 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  %110 = load i8, ptr %20, align 1, !range !8
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i32 0, i32 192
  store i8 101, ptr %5, align 1
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %113, ptr %114, align 1
  %115 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  store i8 63, ptr %115, align 1
  %116 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 -125, ptr %116, align 1
  %117 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  store i8 70, ptr %117, align 1
  %118 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  store i8 28, ptr %118, align 1
  %119 = load i32, ptr @debug, align 4
  %120 = icmp ugt i32 %119, 1
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593330, i32 noundef 7238, i32 noundef %112) #10
  br label %123

123:                                              ; preds = %121, %108
  %124 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %109, ptr noundef nonnull %5, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %330, label %126

126:                                              ; preds = %123
  %127 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %128 = load i8, ptr %20, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  %130 = select i1 %129, i32 0, i32 192
  br i1 %129, label %135, label %131

131:                                              ; preds = %126
  store i8 49, ptr %4, align 1
  %132 = trunc i32 %130 to i8
  %133 = or i8 %132, 1
  %134 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %133, ptr %134, align 1
  br label %136

135:                                              ; preds = %126
  store i8 48, ptr %4, align 1
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i8 [ 68, %131 ], [ 84, %135 ]
  %138 = phi i32 [ 4, %131 ], [ 2, %135 ]
  %139 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %137, ptr %139, align 1
  %140 = getelementptr [6 x i8], ptr %4, i32 0, i32 %138
  store i8 6, ptr %140, align 1
  %141 = or i32 %138, 1
  %142 = getelementptr [6 x i8], ptr %4, i32 0, i32 %141
  store i8 0, ptr %142, align 1
  %143 = load i32, ptr @debug, align 4
  %144 = icmp ugt i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233688, i32 noundef 6, i32 noundef %130) #10
  br label %147

147:                                              ; preds = %145, %136
  %148 = add nuw nsw i32 %138, 2
  %149 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %127, ptr noundef nonnull %4, i32 noundef %148) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %330, label %151

151:                                              ; preds = %147
  %152 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %153 = load i8, ptr %20, align 1, !range !8
  %154 = icmp eq i8 %153, 0
  %155 = select i1 %154, i32 0, i32 192
  br i1 %154, label %160, label %156

156:                                              ; preds = %151
  store i8 51, ptr %3, align 1
  %157 = trunc i32 %155 to i8
  %158 = or i8 %157, 1
  %159 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %158, ptr %159, align 1
  br label %161

160:                                              ; preds = %151
  store i8 50, ptr %3, align 1
  br label %161

161:                                              ; preds = %160, %156
  %162 = phi i8 [ 68, %156 ], [ 84, %160 ]
  %163 = phi i32 [ 4, %156 ], [ 2, %160 ]
  %164 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %162, ptr %164, align 1
  %165 = getelementptr [6 x i8], ptr %3, i32 0, i32 %163
  store i8 6, ptr %165, align 1
  %166 = or i32 %163, 1
  %167 = getelementptr [6 x i8], ptr %3, i32 0, i32 %166
  store i8 0, ptr %167, align 1
  %168 = load i32, ptr @debug, align 4
  %169 = icmp ugt i32 %168, 1
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233689, i32 noundef 6, i32 noundef %155) #10
  br label %172

172:                                              ; preds = %170, %161
  %173 = add nuw nsw i32 %163, 2
  %174 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %152, ptr noundef nonnull %3, i32 noundef %173) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %330, label %176

176:                                              ; preds = %172
  %177 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %178 = load i8, ptr %20, align 1, !range !8
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i32 0, i32 192
  br i1 %179, label %185, label %181

181:                                              ; preds = %176
  store i8 53, ptr %2, align 1
  %182 = trunc i32 %180 to i8
  %183 = or i8 %182, 1
  %184 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %183, ptr %184, align 1
  br label %186

185:                                              ; preds = %176
  store i8 52, ptr %2, align 1
  br label %186

186:                                              ; preds = %185, %181
  %187 = phi i8 [ 68, %181 ], [ 84, %185 ]
  %188 = phi i32 [ 4, %181 ], [ 2, %185 ]
  %189 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %187, ptr %189, align 1
  %190 = getelementptr [6 x i8], ptr %2, i32 0, i32 %188
  store i8 6, ptr %190, align 1
  %191 = or i32 %188, 1
  %192 = getelementptr [6 x i8], ptr %2, i32 0, i32 %191
  store i8 0, ptr %192, align 1
  %193 = load i32, ptr @debug, align 4
  %194 = icmp ugt i32 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233690, i32 noundef 6, i32 noundef %180) #10
  br label %197

197:                                              ; preds = %195, %186
  %198 = add nuw nsw i32 %188, 2
  %199 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %177, ptr noundef nonnull %2, i32 noundef %198) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %330, label %201

201:                                              ; preds = %197
  %202 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233691, i16 noundef zeroext 6)
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %330, label %204

204:                                              ; preds = %201
  %205 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233692, i16 noundef zeroext 5)
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %330, label %207

207:                                              ; preds = %204
  %208 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233693, i16 noundef zeroext 0)
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %330, label %210

210:                                              ; preds = %207
  %211 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430292, i16 noundef zeroext 6)
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %330, label %213

213:                                              ; preds = %210
  %214 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430291, i16 noundef zeroext 5)
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %330, label %216

216:                                              ; preds = %213
  %217 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430290, i16 noundef zeroext 3)
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %330, label %219

219:                                              ; preds = %216
  %220 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593324, i16 noundef zeroext 20992)
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %330, label %222

222:                                              ; preds = %219
  %223 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593305, i16 noundef zeroext 15)
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %330, label %225

225:                                              ; preds = %222
  %226 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593303, i16 noundef zeroext 40)
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %330, label %228

228:                                              ; preds = %225
  %229 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593314, i16 noundef zeroext 12)
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %330, label %231

231:                                              ; preds = %228
  %232 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593313, i16 noundef zeroext 24)
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %330, label %234

234:                                              ; preds = %231
  %235 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593312, i16 noundef zeroext 24)
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %330, label %237

237:                                              ; preds = %234
  %238 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593317, i16 noundef zeroext 12)
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %330, label %240

240:                                              ; preds = %237
  %241 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593316, i16 noundef zeroext 16)
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %330, label %243

243:                                              ; preds = %240
  %244 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593315, i16 noundef zeroext 16)
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %330, label %246

246:                                              ; preds = %243
  %247 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593308, i16 noundef zeroext 5)
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %330, label %249

249:                                              ; preds = %246
  %250 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593307, i16 noundef zeroext 40)
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %330, label %252

252:                                              ; preds = %249
  %253 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593306, i16 noundef zeroext 120)
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %330, label %255

255:                                              ; preds = %252
  %256 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593311, i16 noundef zeroext 5)
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %330, label %258

258:                                              ; preds = %255
  %259 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593310, i16 noundef zeroext 40)
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %330, label %261

261:                                              ; preds = %258
  %262 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593309, i16 noundef zeroext 60)
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %330, label %264

264:                                              ; preds = %261
  %265 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593320, i16 noundef zeroext 16)
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %330, label %267

267:                                              ; preds = %264
  %268 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593319, i16 noundef zeroext 25)
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %330, label %270

270:                                              ; preds = %267
  %271 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593318, i16 noundef zeroext 64)
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %330, label %273

273:                                              ; preds = %270
  %274 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593323, i16 noundef zeroext 5)
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %330, label %276

276:                                              ; preds = %273
  %277 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593322, i16 noundef zeroext 10)
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %330, label %279

279:                                              ; preds = %276
  %280 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593321, i16 noundef zeroext 0)
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %330, label %282

282:                                              ; preds = %279
  %283 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593294, i16 noundef zeroext 50)
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %330, label %285

285:                                              ; preds = %282
  %286 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593295, i16 noundef zeroext 60)
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %330, label %288

288:                                              ; preds = %285
  %289 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593298, i16 noundef zeroext 80)
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %330, label %291

291:                                              ; preds = %288
  %292 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593296, i16 noundef zeroext 100)
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %330, label %294

294:                                              ; preds = %291
  %295 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593299, i16 noundef zeroext 140)
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %330, label %297

297:                                              ; preds = %294
  %298 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593297, i16 noundef zeroext 100)
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %330, label %300

300:                                              ; preds = %297
  %301 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593300, i16 noundef zeroext 40)
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %330, label %303

303:                                              ; preds = %300
  %304 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593302, i16 noundef zeroext 5)
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %330, label %306

306:                                              ; preds = %303
  %307 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593301, i16 noundef zeroext 12)
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %330, label %309

309:                                              ; preds = %306
  %310 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593284, i16 noundef zeroext 8)
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %330, label %312

312:                                              ; preds = %309
  %313 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593285, i16 noundef zeroext 65)
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %330, label %315

315:                                              ; preds = %312
  %316 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593286, i16 noundef zeroext 5)
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %330, label %318

318:                                              ; preds = %315
  %319 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593287, i16 noundef zeroext 3)
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %330, label %321

321:                                              ; preds = %318
  %322 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593288, i16 noundef zeroext -1)
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %330, label %324

324:                                              ; preds = %321
  %325 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593289, i16 noundef zeroext -12)
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593290, i16 noundef zeroext -23)
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327, %324, %321, %318, %315, %312, %309, %306, %303, %300, %297, %294, %291, %288, %285, %282, %279, %276, %273, %270, %267, %264, %261, %258, %255, %252, %249, %246, %243, %240, %237, %234, %231, %228, %225, %222, %219, %216, %213, %210, %207, %204, %201, %197, %172, %147, %123, %105, %87, %69, %51, %33
  %331 = phi i32 [ %328, %327 ], [ %325, %324 ], [ %322, %321 ], [ %319, %318 ], [ %316, %315 ], [ %313, %312 ], [ %310, %309 ], [ %307, %306 ], [ %304, %303 ], [ %301, %300 ], [ %298, %297 ], [ %295, %294 ], [ %292, %291 ], [ %289, %288 ], [ %286, %285 ], [ %283, %282 ], [ %280, %279 ], [ %277, %276 ], [ %274, %273 ], [ %271, %270 ], [ %268, %267 ], [ %265, %264 ], [ %262, %261 ], [ %259, %258 ], [ %256, %255 ], [ %253, %252 ], [ %250, %249 ], [ %247, %246 ], [ %244, %243 ], [ %241, %240 ], [ %238, %237 ], [ %235, %234 ], [ %232, %231 ], [ %229, %228 ], [ %226, %225 ], [ %223, %222 ], [ %220, %219 ], [ %217, %216 ], [ %214, %213 ], [ %211, %210 ], [ %208, %207 ], [ %205, %204 ], [ %202, %201 ], [ %199, %197 ], [ %174, %172 ], [ %149, %147 ], [ %124, %123 ], [ %106, %105 ], [ %88, %87 ], [ %70, %69 ], [ %52, %51 ], [ %34, %33 ]
  %332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %331, ptr noundef nonnull @__func__.set_qam128) #10
  br label %333

333:                                              ; preds = %330, %327
  %334 = phi i32 [ %331, %330 ], [ %328, %327 ]
  ret i32 %334
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_qam256(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_qam256) #10
  %15 = load i32, ptr @debug, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  %20 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 0, i32 192
  store i8 91, ptr %10, align 1
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 63, ptr %26, align 1
  %27 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 -125, ptr %27, align 1
  %28 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 -18, ptr %28, align 1
  %29 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 44, ptr %29, align 1
  %30 = icmp ugt i32 %17, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593325, i32 noundef 11502, i32 noundef %23) #10
  br label %33

33:                                               ; preds = %31, %16
  %34 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %19, ptr noundef nonnull %10, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %330, label %36

36:                                               ; preds = %33
  %37 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  %38 = load i8, ptr %20, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i32 0, i32 192
  store i8 93, ptr %9, align 1
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  store i8 63, ptr %43, align 1
  %44 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 -125, ptr %44, align 1
  %45 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  store i8 52, ptr %45, align 1
  %46 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  store i8 47, ptr %46, align 1
  %47 = load i32, ptr @debug, align 4
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593326, i32 noundef 12084, i32 noundef %40) #10
  br label %51

51:                                               ; preds = %49, %36
  %52 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %37, ptr noundef nonnull %9, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %330, label %54

54:                                               ; preds = %51
  %55 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  %56 = load i8, ptr %20, align 1, !range !8
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %57, i32 0, i32 192
  store i8 95, ptr %8, align 1
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %59, ptr %60, align 1
  %61 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 3
  store i8 63, ptr %61, align 1
  %62 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 -125, ptr %62, align 1
  %63 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 4
  store i8 -1, ptr %63, align 1
  %64 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 5
  store i8 48, ptr %64, align 1
  %65 = load i32, ptr @debug, align 4
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593327, i32 noundef 12543, i32 noundef %58) #10
  br label %69

69:                                               ; preds = %67, %54
  %70 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %55, ptr noundef nonnull %8, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %330, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  %74 = load i8, ptr %20, align 1, !range !8
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %75, i32 0, i32 192
  store i8 97, ptr %7, align 1
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 3
  store i8 63, ptr %79, align 1
  %80 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 -125, ptr %80, align 1
  %81 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 4
  store i8 -125, ptr %81, align 1
  %82 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 5
  store i8 50, ptr %82, align 1
  %83 = load i32, ptr @debug, align 4
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593328, i32 noundef 12931, i32 noundef %76) #10
  br label %87

87:                                               ; preds = %85, %72
  %88 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %73, ptr noundef nonnull %7, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %330, label %90

90:                                               ; preds = %87
  %91 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  %92 = load i8, ptr %20, align 1, !range !8
  %93 = icmp eq i8 %92, 0
  %94 = select i1 %93, i32 0, i32 192
  store i8 99, ptr %6, align 1
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %95, ptr %96, align 1
  %97 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  store i8 63, ptr %97, align 1
  %98 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 -125, ptr %98, align 1
  %99 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  store i8 61, ptr %99, align 1
  %100 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  store i8 53, ptr %100, align 1
  %101 = load i32, ptr @debug, align 4
  %102 = icmp ugt i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593329, i32 noundef 13629, i32 noundef %94) #10
  br label %105

105:                                              ; preds = %103, %90
  %106 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %91, ptr noundef nonnull %6, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %330, label %108

108:                                              ; preds = %105
  %109 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  %110 = load i8, ptr %20, align 1, !range !8
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i32 0, i32 192
  store i8 101, ptr %5, align 1
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %113, ptr %114, align 1
  %115 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  store i8 63, ptr %115, align 1
  %116 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 -125, ptr %116, align 1
  %117 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  store i8 25, ptr %117, align 1
  %118 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  store i8 60, ptr %118, align 1
  %119 = load i32, ptr @debug, align 4
  %120 = icmp ugt i32 %119, 1
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593330, i32 noundef 15385, i32 noundef %112) #10
  br label %123

123:                                              ; preds = %121, %108
  %124 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %109, ptr noundef nonnull %5, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %330, label %126

126:                                              ; preds = %123
  %127 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %128 = load i8, ptr %20, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  %130 = select i1 %129, i32 0, i32 192
  br i1 %129, label %135, label %131

131:                                              ; preds = %126
  store i8 49, ptr %4, align 1
  %132 = trunc i32 %130 to i8
  %133 = or i8 %132, 1
  %134 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %133, ptr %134, align 1
  br label %136

135:                                              ; preds = %126
  store i8 48, ptr %4, align 1
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i8 [ 68, %131 ], [ 84, %135 ]
  %138 = phi i32 [ 4, %131 ], [ 2, %135 ]
  %139 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %137, ptr %139, align 1
  %140 = getelementptr [6 x i8], ptr %4, i32 0, i32 %138
  store i8 8, ptr %140, align 1
  %141 = or i32 %138, 1
  %142 = getelementptr [6 x i8], ptr %4, i32 0, i32 %141
  store i8 0, ptr %142, align 1
  %143 = load i32, ptr @debug, align 4
  %144 = icmp ugt i32 %143, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233688, i32 noundef 8, i32 noundef %130) #10
  br label %147

147:                                              ; preds = %145, %136
  %148 = add nuw nsw i32 %138, 2
  %149 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %127, ptr noundef nonnull %4, i32 noundef %148) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %330, label %151

151:                                              ; preds = %147
  %152 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %153 = load i8, ptr %20, align 1, !range !8
  %154 = icmp eq i8 %153, 0
  %155 = select i1 %154, i32 0, i32 192
  br i1 %154, label %160, label %156

156:                                              ; preds = %151
  store i8 51, ptr %3, align 1
  %157 = trunc i32 %155 to i8
  %158 = or i8 %157, 1
  %159 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %158, ptr %159, align 1
  br label %161

160:                                              ; preds = %151
  store i8 50, ptr %3, align 1
  br label %161

161:                                              ; preds = %160, %156
  %162 = phi i8 [ 68, %156 ], [ 84, %160 ]
  %163 = phi i32 [ 4, %156 ], [ 2, %160 ]
  %164 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %162, ptr %164, align 1
  %165 = getelementptr [6 x i8], ptr %3, i32 0, i32 %163
  store i8 8, ptr %165, align 1
  %166 = or i32 %163, 1
  %167 = getelementptr [6 x i8], ptr %3, i32 0, i32 %166
  store i8 0, ptr %167, align 1
  %168 = load i32, ptr @debug, align 4
  %169 = icmp ugt i32 %168, 1
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233689, i32 noundef 8, i32 noundef %155) #10
  br label %172

172:                                              ; preds = %170, %161
  %173 = add nuw nsw i32 %163, 2
  %174 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %152, ptr noundef nonnull %3, i32 noundef %173) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %330, label %176

176:                                              ; preds = %172
  %177 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %178 = load i8, ptr %20, align 1, !range !8
  %179 = icmp eq i8 %178, 0
  %180 = select i1 %179, i32 0, i32 192
  br i1 %179, label %185, label %181

181:                                              ; preds = %176
  store i8 53, ptr %2, align 1
  %182 = trunc i32 %180 to i8
  %183 = or i8 %182, 1
  %184 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %183, ptr %184, align 1
  br label %186

185:                                              ; preds = %176
  store i8 52, ptr %2, align 1
  br label %186

186:                                              ; preds = %185, %181
  %187 = phi i8 [ 68, %181 ], [ 84, %185 ]
  %188 = phi i32 [ 4, %181 ], [ 2, %185 ]
  %189 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %187, ptr %189, align 1
  %190 = getelementptr [6 x i8], ptr %2, i32 0, i32 %188
  store i8 8, ptr %190, align 1
  %191 = or i32 %188, 1
  %192 = getelementptr [6 x i8], ptr %2, i32 0, i32 %191
  store i8 0, ptr %192, align 1
  %193 = load i32, ptr @debug, align 4
  %194 = icmp ugt i32 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 21233690, i32 noundef 8, i32 noundef %180) #10
  br label %197

197:                                              ; preds = %195, %186
  %198 = add nuw nsw i32 %188, 2
  %199 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %177, ptr noundef nonnull %2, i32 noundef %198) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %330, label %201

201:                                              ; preds = %197
  %202 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233691, i16 noundef zeroext 8)
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %330, label %204

204:                                              ; preds = %201
  %205 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233692, i16 noundef zeroext 6)
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %330, label %207

207:                                              ; preds = %204
  %208 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21233693, i16 noundef zeroext 0)
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %330, label %210

210:                                              ; preds = %207
  %211 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430292, i16 noundef zeroext 5)
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %330, label %213

213:                                              ; preds = %210
  %214 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430291, i16 noundef zeroext 4)
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %330, label %216

216:                                              ; preds = %213
  %217 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 21430290, i16 noundef zeroext 3)
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %330, label %219

219:                                              ; preds = %216
  %220 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593324, i16 noundef zeroext -22016)
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %330, label %222

222:                                              ; preds = %219
  %223 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593305, i16 noundef zeroext 15)
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %330, label %225

225:                                              ; preds = %222
  %226 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593303, i16 noundef zeroext 40)
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %330, label %228

228:                                              ; preds = %225
  %229 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593314, i16 noundef zeroext 12)
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %330, label %231

231:                                              ; preds = %228
  %232 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593313, i16 noundef zeroext 24)
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %330, label %234

234:                                              ; preds = %231
  %235 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593312, i16 noundef zeroext 24)
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %330, label %237

237:                                              ; preds = %234
  %238 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593317, i16 noundef zeroext 12)
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %330, label %240

240:                                              ; preds = %237
  %241 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593316, i16 noundef zeroext 16)
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %330, label %243

243:                                              ; preds = %240
  %244 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593315, i16 noundef zeroext 16)
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %330, label %246

246:                                              ; preds = %243
  %247 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593308, i16 noundef zeroext 5)
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %330, label %249

249:                                              ; preds = %246
  %250 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593307, i16 noundef zeroext 50)
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %330, label %252

252:                                              ; preds = %249
  %253 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593306, i16 noundef zeroext 250)
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %330, label %255

255:                                              ; preds = %252
  %256 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593311, i16 noundef zeroext 5)
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %330, label %258

258:                                              ; preds = %255
  %259 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593310, i16 noundef zeroext 50)
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %330, label %261

261:                                              ; preds = %258
  %262 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593309, i16 noundef zeroext 125)
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %330, label %264

264:                                              ; preds = %261
  %265 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593320, i16 noundef zeroext 16)
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %330, label %267

267:                                              ; preds = %264
  %268 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593319, i16 noundef zeroext 25)
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %330, label %270

270:                                              ; preds = %267
  %271 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593318, i16 noundef zeroext 48)
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %330, label %273

273:                                              ; preds = %270
  %274 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593323, i16 noundef zeroext 5)
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %330, label %276

276:                                              ; preds = %273
  %277 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593322, i16 noundef zeroext 10)
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %330, label %279

279:                                              ; preds = %276
  %280 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593321, i16 noundef zeroext 10)
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %330, label %282

282:                                              ; preds = %279
  %283 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593294, i16 noundef zeroext 50)
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %330, label %285

285:                                              ; preds = %282
  %286 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593295, i16 noundef zeroext 60)
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %330, label %288

288:                                              ; preds = %285
  %289 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593298, i16 noundef zeroext 80)
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %330, label %291

291:                                              ; preds = %288
  %292 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593296, i16 noundef zeroext 100)
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %330, label %294

294:                                              ; preds = %291
  %295 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593299, i16 noundef zeroext 150)
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %330, label %297

297:                                              ; preds = %294
  %298 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593297, i16 noundef zeroext 110)
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %330, label %300

300:                                              ; preds = %297
  %301 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593300, i16 noundef zeroext 40)
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %330, label %303

303:                                              ; preds = %300
  %304 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593302, i16 noundef zeroext 4)
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %330, label %306

306:                                              ; preds = %303
  %307 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593301, i16 noundef zeroext 12)
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %330, label %309

309:                                              ; preds = %306
  %310 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593284, i16 noundef zeroext 8)
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %330, label %312

312:                                              ; preds = %309
  %313 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593285, i16 noundef zeroext 74)
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %330, label %315

315:                                              ; preds = %312
  %316 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593286, i16 noundef zeroext 18)
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %330, label %318

318:                                              ; preds = %315
  %319 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593287, i16 noundef zeroext 13)
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %330, label %321

321:                                              ; preds = %318
  %322 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593288, i16 noundef zeroext 7)
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %330, label %324

324:                                              ; preds = %321
  %325 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593289, i16 noundef zeroext 0)
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8593290, i16 noundef zeroext -8)
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327, %324, %321, %318, %315, %312, %309, %306, %303, %300, %297, %294, %291, %288, %285, %282, %279, %276, %273, %270, %267, %264, %261, %258, %255, %252, %249, %246, %243, %240, %237, %234, %231, %228, %225, %222, %219, %216, %213, %210, %207, %204, %201, %197, %172, %147, %123, %105, %87, %69, %51, %33
  %331 = phi i32 [ %328, %327 ], [ %325, %324 ], [ %322, %321 ], [ %319, %318 ], [ %316, %315 ], [ %313, %312 ], [ %310, %309 ], [ %307, %306 ], [ %304, %303 ], [ %301, %300 ], [ %298, %297 ], [ %295, %294 ], [ %292, %291 ], [ %289, %288 ], [ %286, %285 ], [ %283, %282 ], [ %280, %279 ], [ %277, %276 ], [ %274, %273 ], [ %271, %270 ], [ %268, %267 ], [ %265, %264 ], [ %262, %261 ], [ %259, %258 ], [ %256, %255 ], [ %253, %252 ], [ %250, %249 ], [ %247, %246 ], [ %244, %243 ], [ %241, %240 ], [ %238, %237 ], [ %235, %234 ], [ %232, %231 ], [ %229, %228 ], [ %226, %225 ], [ %223, %222 ], [ %220, %219 ], [ %217, %216 ], [ %214, %213 ], [ %211, %210 ], [ %208, %207 ], [ %205, %204 ], [ %202, %201 ], [ %199, %197 ], [ %174, %172 ], [ %149, %147 ], [ %124, %123 ], [ %106, %105 ], [ %88, %87 ], [ %70, %69 ], [ %52, %51 ], [ %34, %33 ]
  %332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %331, ptr noundef nonnull @__func__.set_qam256) #10
  br label %333

333:                                              ; preds = %330, %327
  %334 = phi i32 [ %331, %330 ], [ %328, %327 ]
  ret i32 %334
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpegts_start(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [4 x i8], align 4
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #12
  store i16 0, ptr %5, align 2, !annotation !9
  %8 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 0, i32 192
  br i1 %10, label %17, label %12

12:                                               ; preds = %1
  store i8 -127, ptr %4, align 4
  %13 = trunc i32 %11 to i8
  %14 = or i8 %13, 1
  %15 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  store i8 %14, ptr %15, align 2
  %16 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  store i8 0, ptr %16, align 1
  br label %18

17:                                               ; preds = %1
  store i8 -128, ptr %4, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i8 [ -60, %12 ], [ 116, %17 ]
  %20 = phi i32 [ 4, %12 ], [ 2, %17 ]
  %21 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  store i8 %19, ptr %21, align 1
  %22 = load i32, ptr @debug, align 4
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 29622336, i32 noundef %11) #10
  br label %26

26:                                               ; preds = %24, %18
  %27 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %7, ptr noundef nonnull %4, i32 noundef %20, ptr noundef nonnull %5, i32 noundef 2) #12
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %88

30:                                               ; preds = %26
  %31 = load i8, ptr %5, align 2
  %32 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %36 = and i8 %31, -17
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = load i8, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %40 = load i8, ptr %8, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i32 0, i32 192
  br i1 %41, label %47, label %43

43:                                               ; preds = %30
  store i8 -127, ptr %3, align 1
  %44 = trunc i32 %42 to i8
  %45 = or i8 %44, 1
  %46 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %45, ptr %46, align 1
  br label %48

47:                                               ; preds = %30
  store i8 -128, ptr %3, align 1
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i8 [ -60, %43 ], [ 116, %47 ]
  %50 = phi i32 [ 4, %43 ], [ 2, %47 ]
  %51 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %49, ptr %51, align 1
  %52 = getelementptr [6 x i8], ptr %3, i32 0, i32 %50
  store i8 %36, ptr %52, align 1
  %53 = or i32 %50, 1
  %54 = getelementptr [6 x i8], ptr %3, i32 0, i32 %53
  store i8 %33, ptr %54, align 1
  %55 = load i32, ptr @debug, align 4
  %56 = icmp ugt i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622336, i32 noundef %38, i32 noundef %42) #10
  br label %59

59:                                               ; preds = %57, %48
  %60 = add nuw nsw i32 %50, 2
  %61 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %39, ptr noundef nonnull %3, i32 noundef %60) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %88, label %63

63:                                               ; preds = %59
  %64 = load i8, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %65 = load i8, ptr %8, align 1, !range !8
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %66, i32 0, i32 192
  br i1 %66, label %72, label %68

68:                                               ; preds = %63
  store i8 -121, ptr %2, align 1
  %69 = trunc i32 %67 to i8
  %70 = or i8 %69, 1
  %71 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %70, ptr %71, align 1
  br label %73

72:                                               ; preds = %63
  store i8 -122, ptr %2, align 1
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i8 [ -60, %68 ], [ 116, %72 ]
  %75 = phi i32 [ 4, %68 ], [ 2, %72 ]
  %76 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %74, ptr %76, align 1
  %77 = getelementptr [6 x i8], ptr %2, i32 0, i32 %75
  store i8 1, ptr %77, align 1
  %78 = or i32 %75, 1
  %79 = getelementptr [6 x i8], ptr %2, i32 0, i32 %78
  store i8 0, ptr %79, align 1
  %80 = load i32, ptr @debug, align 4
  %81 = icmp ugt i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622339, i32 noundef 1, i32 noundef %67) #10
  br label %84

84:                                               ; preds = %82, %73
  %85 = add nuw nsw i32 %75, 2
  %86 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %64, ptr noundef nonnull %2, i32 noundef %85) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84, %59, %29
  %89 = phi i32 [ %86, %84 ], [ %27, %29 ], [ %61, %59 ]
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %89, ptr noundef nonnull @__func__.mpegts_start) #10
  br label %91

91:                                               ; preds = %88, %84
  %92 = phi i32 [ %89, %88 ], [ %86, %84 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbt_sc_command(ptr noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [4 x i8], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [4 x i8], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca [6 x i8], align 1
  %12 = alloca [6 x i8], align 1
  %13 = alloca [4 x i8], align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca [4 x i8], align 4
  %16 = alloca [2 x i8], align 2
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dvbt_sc_command) #10
  br label %21

21:                                               ; preds = %19, %4
  %22 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %23 = load i8, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #12
  store i32 0, ptr %15, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #12
  store i16 0, ptr %16, align 2, !annotation !9
  %24 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %25 = load i8, ptr %24, align 1, !range !8
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, i32 0, i32 192
  br i1 %26, label %33, label %28

28:                                               ; preds = %21
  store i8 1, ptr %15, align 4
  %29 = trunc i32 %27 to i8
  %30 = or i8 %29, 3
  %31 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 2
  store i8 %30, ptr %31, align 2
  %32 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 3
  store i8 0, ptr %32, align 1
  br label %34

33:                                               ; preds = %21
  store i8 0, ptr %15, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = phi i8 [ -64, %28 ], [ -16, %33 ]
  %36 = phi i32 [ 4, %28 ], [ 2, %33 ]
  %37 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 1
  store i8 %35, ptr %37, align 1
  %38 = load i32, ptr @debug, align 4
  %39 = icmp ugt i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 62914560, i32 noundef %27) #10
  br label %42

42:                                               ; preds = %40, %34
  %43 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %23, ptr noundef nonnull %15, i32 noundef %36, ptr noundef nonnull %16, i32 noundef 2) #12
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  br label %283

46:                                               ; preds = %42
  %47 = load i8, ptr %16, align 2
  %48 = zext i8 %47 to i16
  %49 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i16
  %52 = shl nuw i16 %51, 8
  %53 = or i16 %52, %48
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  %54 = icmp eq i16 %53, 1
  br i1 %54, label %55, label %283

55:                                               ; preds = %46
  %56 = getelementptr inbounds [4 x i8], ptr %13, i32 0, i32 2
  %57 = getelementptr inbounds [4 x i8], ptr %13, i32 0, i32 3
  %58 = getelementptr inbounds [4 x i8], ptr %13, i32 0, i32 1
  %59 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  br label %60

60:                                               ; preds = %78, %55
  %61 = phi i16 [ %87, %78 ], [ 0, %55 ]
  %62 = phi i16 [ %88, %78 ], [ 0, %55 ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %63 = load i8, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  store i32 0, ptr %13, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i16 0, ptr %14, align 2, !annotation !9
  %64 = load i8, ptr %24, align 1, !range !8
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, i32 0, i32 192
  br i1 %65, label %70, label %67

67:                                               ; preds = %60
  store i8 -121, ptr %13, align 4
  %68 = trunc i32 %66 to i8
  %69 = or i8 %68, 3
  store i8 %69, ptr %56, align 2
  store i8 0, ptr %57, align 1
  br label %71

70:                                               ; preds = %60
  store i8 -122, ptr %13, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i8 [ -62, %67 ], [ -14, %70 ]
  %73 = phi i32 [ 4, %67 ], [ 2, %70 ]
  store i8 %72, ptr %58, align 1
  %74 = load i32, ptr @debug, align 4
  %75 = icmp ugt i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 63045699, i32 noundef %66) #10
  br label %78

78:                                               ; preds = %76, %71
  %79 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %63, ptr noundef nonnull %13, i32 noundef %73, ptr noundef nonnull %14, i32 noundef 2) #12
  %80 = icmp slt i32 %79, 0
  %81 = load i8, ptr %14, align 2
  %82 = zext i8 %81 to i16
  %83 = load i8, ptr %59, align 1
  %84 = zext i8 %83 to i16
  %85 = shl nuw i16 %84, 8
  %86 = or i16 %85, %82
  %87 = select i1 %80, i16 %61, i16 %86
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  %88 = add nuw nsw i16 %62, 1
  %89 = icmp ne i16 %87, 0
  %90 = icmp ult i16 %62, 99
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %60, label %92

92:                                               ; preds = %78
  %93 = call i32 @llvm.smin.i32(i32 %79, i32 0)
  %94 = icmp ugt i16 %62, 98
  %95 = select i1 %94, i1 %80, i1 false
  br i1 %95, label %283, label %96

96:                                               ; preds = %92
  switch i16 %1, label %283 [
    i16 1, label %97
    i16 3, label %97
    i16 4, label %97
  ]

97:                                               ; preds = %96, %96, %96
  %98 = load i8, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %12) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %12, i8 0, i32 6, i1 false) #12, !annotation !9
  %99 = load i8, ptr %24, align 1, !range !8
  %100 = icmp eq i8 %99, 0
  %101 = select i1 %100, i32 0, i32 192
  br i1 %100, label %106, label %102

102:                                              ; preds = %97
  store i8 -123, ptr %12, align 1
  %103 = trunc i32 %101 to i8
  %104 = or i8 %103, 3
  %105 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 2
  store i8 %104, ptr %105, align 1
  br label %107

106:                                              ; preds = %97
  store i8 -124, ptr %12, align 1
  br label %107

107:                                              ; preds = %106, %102
  %108 = phi i8 [ -62, %102 ], [ -14, %106 ]
  %109 = phi i32 [ 4, %102 ], [ 2, %106 ]
  %110 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 1
  store i8 %108, ptr %110, align 1
  %111 = getelementptr [6 x i8], ptr %12, i32 0, i32 %109
  store i8 0, ptr %111, align 1
  %112 = or i32 %109, 1
  %113 = getelementptr [6 x i8], ptr %12, i32 0, i32 %112
  store i8 0, ptr %113, align 1
  %114 = load i32, ptr @debug, align 4
  %115 = icmp ugt i32 %114, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 63045698, i32 noundef 0, i32 noundef %101) #10
  br label %118

118:                                              ; preds = %116, %107
  %119 = add nuw nsw i32 %109, 2
  %120 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %98, ptr noundef nonnull %12, i32 noundef %119) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12) #12
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %283, label %122

122:                                              ; preds = %118
  switch i16 %1, label %283 [
    i16 1, label %123
    i16 3, label %123
    i16 4, label %123
  ]

123:                                              ; preds = %122, %122, %122
  %124 = load i8, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %11, i8 0, i32 6, i1 false) #12, !annotation !9
  %125 = load i8, ptr %24, align 1, !range !8
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %126, i32 0, i32 192
  br i1 %126, label %132, label %128

128:                                              ; preds = %123
  store i8 -125, ptr %11, align 1
  %129 = trunc i32 %127 to i8
  %130 = or i8 %129, 3
  %131 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 2
  store i8 %130, ptr %131, align 1
  br label %133

132:                                              ; preds = %123
  store i8 -126, ptr %11, align 1
  br label %133

133:                                              ; preds = %132, %128
  %134 = phi i8 [ -62, %128 ], [ -14, %132 ]
  %135 = phi i32 [ 4, %128 ], [ 2, %132 ]
  %136 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 1
  store i8 %134, ptr %136, align 1
  %137 = trunc i16 %3 to i8
  %138 = getelementptr [6 x i8], ptr %11, i32 0, i32 %135
  store i8 %137, ptr %138, align 1
  %139 = lshr i16 %3, 8
  %140 = trunc i16 %139 to i8
  %141 = or i32 %135, 1
  %142 = getelementptr [6 x i8], ptr %11, i32 0, i32 %141
  store i8 %140, ptr %142, align 1
  %143 = load i32, ptr @debug, align 4
  %144 = icmp ugt i32 %143, 1
  br i1 %144, label %145, label %148

145:                                              ; preds = %133
  %146 = zext i16 %3 to i32
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 63045697, i32 noundef %146, i32 noundef %127) #10
  br label %148

148:                                              ; preds = %145, %133
  %149 = add nuw nsw i32 %135, 2
  %150 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %124, ptr noundef nonnull %11, i32 noundef %149) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #12
  %151 = load i8, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %10, i8 0, i32 6, i1 false) #12, !annotation !9
  %152 = load i8, ptr %24, align 1, !range !8
  %153 = icmp eq i8 %152, 0
  %154 = select i1 %153, i32 0, i32 192
  br i1 %153, label %159, label %155

155:                                              ; preds = %148
  store i8 -127, ptr %10, align 1
  %156 = trunc i32 %154 to i8
  %157 = or i8 %156, 3
  %158 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %157, ptr %158, align 1
  br label %160

159:                                              ; preds = %148
  store i8 -128, ptr %10, align 1
  br label %160

160:                                              ; preds = %159, %155
  %161 = phi i8 [ -62, %155 ], [ -14, %159 ]
  %162 = phi i32 [ 4, %155 ], [ 2, %159 ]
  %163 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 %161, ptr %163, align 1
  %164 = trunc i16 %2 to i8
  %165 = getelementptr [6 x i8], ptr %10, i32 0, i32 %162
  store i8 %164, ptr %165, align 1
  %166 = lshr i16 %2, 8
  %167 = trunc i16 %166 to i8
  %168 = or i32 %162, 1
  %169 = getelementptr [6 x i8], ptr %10, i32 0, i32 %168
  store i8 %167, ptr %169, align 1
  %170 = load i32, ptr @debug, align 4
  %171 = icmp ugt i32 %170, 1
  br i1 %171, label %172, label %175

172:                                              ; preds = %160
  %173 = zext i16 %2 to i32
  %174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 63045696, i32 noundef %173, i32 noundef %154) #10
  br label %175

175:                                              ; preds = %172, %160
  %176 = add nuw nsw i32 %162, 2
  %177 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %151, ptr noundef nonnull %10, i32 noundef %176) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %178 = or i32 %177, %150
  %179 = load i8, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 6, i1 false) #12, !annotation !9
  %180 = load i8, ptr %24, align 1, !range !8
  %181 = icmp eq i8 %180, 0
  %182 = select i1 %181, i32 0, i32 192
  br i1 %181, label %187, label %183

183:                                              ; preds = %175
  store i8 -121, ptr %9, align 1
  %184 = trunc i32 %182 to i8
  %185 = or i8 %184, 3
  %186 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %185, ptr %186, align 1
  br label %188

187:                                              ; preds = %175
  store i8 -122, ptr %9, align 1
  br label %188

188:                                              ; preds = %187, %183
  %189 = phi i8 [ -62, %183 ], [ -14, %187 ]
  %190 = phi i32 [ 4, %183 ], [ 2, %187 ]
  %191 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 %189, ptr %191, align 1
  %192 = trunc i16 %1 to i8
  %193 = getelementptr [6 x i8], ptr %9, i32 0, i32 %190
  store i8 %192, ptr %193, align 1
  %194 = lshr i16 %1, 8
  %195 = trunc i16 %194 to i8
  %196 = or i32 %190, 1
  %197 = getelementptr [6 x i8], ptr %9, i32 0, i32 %196
  store i8 %195, ptr %197, align 1
  %198 = load i32, ptr @debug, align 4
  %199 = icmp ugt i32 %198, 1
  br i1 %199, label %200, label %203

200:                                              ; preds = %188
  %201 = zext i16 %1 to i32
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 63045699, i32 noundef %201, i32 noundef %182) #10
  br label %203

203:                                              ; preds = %200, %188
  %204 = add nuw nsw i32 %190, 2
  %205 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %179, ptr noundef nonnull %9, i32 noundef %204) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %206 = or i32 %178, %205
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %283, label %208

208:                                              ; preds = %203
  %209 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 2
  %210 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 3
  %211 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 1
  %212 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  br label %213

213:                                              ; preds = %231, %208
  %214 = phi i16 [ %240, %231 ], [ %87, %208 ]
  %215 = phi i16 [ %241, %231 ], [ 0, %208 ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #12
  %216 = load i8, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i16 0, ptr %8, align 2, !annotation !9
  %217 = load i8, ptr %24, align 1, !range !8
  %218 = icmp eq i8 %217, 0
  %219 = select i1 %218, i32 0, i32 192
  br i1 %218, label %223, label %220

220:                                              ; preds = %213
  store i8 -121, ptr %7, align 4
  %221 = trunc i32 %219 to i8
  %222 = or i8 %221, 3
  store i8 %222, ptr %209, align 2
  store i8 0, ptr %210, align 1
  br label %224

223:                                              ; preds = %213
  store i8 -122, ptr %7, align 4
  br label %224

224:                                              ; preds = %223, %220
  %225 = phi i8 [ -62, %220 ], [ -14, %223 ]
  %226 = phi i32 [ 4, %220 ], [ 2, %223 ]
  store i8 %225, ptr %211, align 1
  %227 = load i32, ptr @debug, align 4
  %228 = icmp ugt i32 %227, 1
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 63045699, i32 noundef %219) #10
  br label %231

231:                                              ; preds = %229, %224
  %232 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %216, ptr noundef nonnull %7, i32 noundef %226, ptr noundef nonnull %8, i32 noundef 2) #12
  %233 = icmp slt i32 %232, 0
  %234 = load i8, ptr %8, align 2
  %235 = zext i8 %234 to i16
  %236 = load i8, ptr %212, align 1
  %237 = zext i8 %236 to i16
  %238 = shl nuw i16 %237, 8
  %239 = or i16 %238, %235
  %240 = select i1 %233, i16 %214, i16 %239
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %241 = add nuw nsw i16 %215, 1
  %242 = icmp ne i16 %240, 0
  %243 = icmp ult i16 %215, 99
  %244 = select i1 %242, i1 %243, i1 false
  br i1 %244, label %213, label %245

245:                                              ; preds = %231
  %246 = call i32 @llvm.smin.i32(i32 %232, i32 0)
  %247 = icmp ugt i16 %215, 98
  %248 = select i1 %247, i1 %233, i1 false
  br i1 %248, label %283, label %249

249:                                              ; preds = %245
  %250 = load i8, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2, !annotation !9
  %251 = load i8, ptr %24, align 1, !range !8
  %252 = icmp eq i8 %251, 0
  %253 = select i1 %252, i32 0, i32 192
  br i1 %252, label %259, label %254

254:                                              ; preds = %249
  store i8 -123, ptr %5, align 4
  %255 = trunc i32 %253 to i8
  %256 = or i8 %255, 3
  %257 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  store i8 %256, ptr %257, align 2
  %258 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  store i8 0, ptr %258, align 1
  br label %260

259:                                              ; preds = %249
  store i8 -124, ptr %5, align 4
  br label %260

260:                                              ; preds = %259, %254
  %261 = phi i8 [ -62, %254 ], [ -14, %259 ]
  %262 = phi i32 [ 4, %254 ], [ 2, %259 ]
  %263 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  store i8 %261, ptr %263, align 1
  %264 = load i32, ptr @debug, align 4
  %265 = icmp ugt i32 %264, 1
  br i1 %265, label %266, label %268

266:                                              ; preds = %260
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 63045698, i32 noundef %253) #10
  br label %268

268:                                              ; preds = %266, %260
  %269 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %250, ptr noundef nonnull %5, i32 noundef %262, ptr noundef nonnull %6, i32 noundef 2) #12
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %283

272:                                              ; preds = %268
  %273 = load i8, ptr %6, align 2
  %274 = zext i8 %273 to i16
  %275 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %276 = load i8, ptr %275, align 1
  %277 = zext i8 %276 to i16
  %278 = shl nuw i16 %277, 8
  %279 = or i16 %278, %274
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %280 = icmp ne i16 %279, -1
  %281 = icmp ult i16 %1, 9
  %282 = and i1 %280, %281
  br i1 %282, label %286, label %283

283:                                              ; preds = %286, %272, %271, %245, %203, %122, %118, %96, %92, %46, %45
  %284 = phi i32 [ %120, %118 ], [ %246, %245 ], [ %206, %203 ], [ %93, %92 ], [ -22, %46 ], [ -22, %45 ], [ -22, %96 ], [ -22, %122 ], [ %269, %271 ], [ -22, %272 ], [ -22, %286 ]
  %285 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %284, ptr noundef nonnull @__func__.dvbt_sc_command) #10
  br label %290

286:                                              ; preds = %272
  %287 = lshr i16 411, %1
  %288 = and i16 %287, 1
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %283, label %290

290:                                              ; preds = %286, %283
  %291 = phi i32 [ %284, %283 ], [ 0, %286 ]
  ret i32 %291
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbt_ctrl_set_sqi_speed(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dvbt_ctrl_set_sqi_speed) #10
  br label %8

8:                                                ; preds = %6, %2
  %9 = load i32, ptr %1, align 4
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  %14 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, i32 0, i32 192
  store i8 11, ptr %3, align 1
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 62, ptr %20, align 1
  %21 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 -125, ptr %21, align 1
  %22 = trunc i32 %9 to i8
  %23 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 %22, ptr %23, align 1
  %24 = lshr i32 %9, 8
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 %25, ptr %26, align 1
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %11
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593157, i32 noundef %9, i32 noundef %17) #10
  br label %31

31:                                               ; preds = %29, %11
  %32 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %13, ptr noundef nonnull %3, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %8
  %35 = phi i32 [ %32, %31 ], [ -22, %8 ]
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %35, ptr noundef nonnull @__func__.dvbt_ctrl_set_sqi_speed) #10
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %35, %34 ], [ %32, %31 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @get_signal_to_noise(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca [4 x i8], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [4 x i8], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca [4 x i8], align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca [4 x i8], align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca [4 x i8], align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca [4 x i8], align 4
  %16 = alloca [2 x i8], align 2
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_signal_to_noise) #10
  br label %21

21:                                               ; preds = %19, %2
  store i32 0, ptr %1, align 4
  %22 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 28
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %309 [
    i32 4, label %24
    i32 1, label %249
    i32 3, label %249
  ]

24:                                               ; preds = %21
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_dvbt_signal_to_noise) #10
  br label %29

29:                                               ; preds = %27, %24
  %30 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %31 = load i8, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #12
  store i32 0, ptr %15, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #12
  store i16 0, ptr %16, align 2, !annotation !9
  %32 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %33 = load i8, ptr %32, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i32 0, i32 192
  br i1 %34, label %41, label %36

36:                                               ; preds = %29
  store i8 -59, ptr %15, align 4
  %37 = trunc i32 %35 to i8
  %38 = or i8 %37, 3
  %39 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 2
  store i8 %38, ptr %39, align 2
  %40 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 3
  store i8 0, ptr %40, align 1
  br label %42

41:                                               ; preds = %29
  store i8 -60, ptr %15, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i8 [ 1, %36 ], [ -63, %41 ]
  %44 = phi i32 [ 4, %36 ], [ 2, %41 ]
  %45 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 1
  store i8 %43, ptr %45, align 1
  %46 = load i32, ptr @debug, align 4
  %47 = icmp ugt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 50397282, i32 noundef %35) #10
  br label %50

50:                                               ; preds = %48, %42
  %51 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %31, ptr noundef nonnull %15, i32 noundef %44, ptr noundef nonnull %16, i32 noundef 2) #12
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  br label %246

54:                                               ; preds = %50
  %55 = load i8, ptr %16, align 2
  %56 = zext i8 %55 to i16
  %57 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i16
  %60 = shl nuw i16 %59, 8
  %61 = or i16 %60, %56
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  %62 = load i8, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  store i32 0, ptr %13, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #12
  store i16 0, ptr %14, align 2, !annotation !9
  %63 = load i8, ptr %32, align 1, !range !8
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, i32 0, i32 192
  br i1 %64, label %71, label %66

66:                                               ; preds = %54
  store i8 -61, ptr %13, align 4
  %67 = trunc i32 %65 to i8
  %68 = or i8 %67, 3
  %69 = getelementptr inbounds [4 x i8], ptr %13, i32 0, i32 2
  store i8 %68, ptr %69, align 2
  %70 = getelementptr inbounds [4 x i8], ptr %13, i32 0, i32 3
  store i8 0, ptr %70, align 1
  br label %72

71:                                               ; preds = %54
  store i8 -62, ptr %13, align 4
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi i8 [ 1, %66 ], [ -63, %71 ]
  %74 = phi i32 [ 4, %66 ], [ 2, %71 ]
  %75 = getelementptr inbounds [4 x i8], ptr %13, i32 0, i32 1
  store i8 %73, ptr %75, align 1
  %76 = load i32, ptr @debug, align 4
  %77 = icmp ugt i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 50397281, i32 noundef %65) #10
  br label %80

80:                                               ; preds = %78, %72
  %81 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %62, ptr noundef nonnull %13, i32 noundef %74, ptr noundef nonnull %14, i32 noundef 2) #12
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  br label %246

84:                                               ; preds = %80
  %85 = load i8, ptr %14, align 2
  %86 = zext i8 %85 to i16
  %87 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i16
  %90 = shl nuw i16 %89, 8
  %91 = or i16 %90, %86
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  %92 = load i8, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #12
  store i32 0, ptr %11, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #12
  store i16 0, ptr %12, align 2, !annotation !9
  %93 = load i8, ptr %32, align 1, !range !8
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i32 0, i32 192
  br i1 %94, label %101, label %96

96:                                               ; preds = %84
  store i8 -63, ptr %11, align 4
  %97 = trunc i32 %95 to i8
  %98 = or i8 %97, 3
  %99 = getelementptr inbounds [4 x i8], ptr %11, i32 0, i32 2
  store i8 %98, ptr %99, align 2
  %100 = getelementptr inbounds [4 x i8], ptr %11, i32 0, i32 3
  store i8 0, ptr %100, align 1
  br label %102

101:                                              ; preds = %84
  store i8 -64, ptr %11, align 4
  br label %102

102:                                              ; preds = %101, %96
  %103 = phi i8 [ 1, %96 ], [ -63, %101 ]
  %104 = phi i32 [ 4, %96 ], [ 2, %101 ]
  %105 = getelementptr inbounds [4 x i8], ptr %11, i32 0, i32 1
  store i8 %103, ptr %105, align 1
  %106 = load i32, ptr @debug, align 4
  %107 = icmp ugt i32 %106, 1
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 50397280, i32 noundef %95) #10
  br label %110

110:                                              ; preds = %108, %102
  %111 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %92, ptr noundef nonnull %11, i32 noundef %104, ptr noundef nonnull %12, i32 noundef 2) #12
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  br label %246

114:                                              ; preds = %110
  %115 = load i8, ptr %12, align 2
  %116 = zext i8 %115 to i16
  %117 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i16
  %120 = shl nuw i16 %119, 8
  %121 = or i16 %120, %116
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #12
  %122 = load i8, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #12
  store i16 0, ptr %10, align 2, !annotation !9
  %123 = load i8, ptr %32, align 1, !range !8
  %124 = icmp eq i8 %123, 0
  %125 = select i1 %124, i32 0, i32 192
  br i1 %124, label %131, label %126

126:                                              ; preds = %114
  store i8 -67, ptr %9, align 4
  %127 = trunc i32 %125 to i8
  %128 = or i8 %127, 3
  %129 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 2
  store i8 %128, ptr %129, align 2
  %130 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 3
  store i8 0, ptr %130, align 1
  br label %132

131:                                              ; preds = %114
  store i8 -68, ptr %9, align 4
  br label %132

132:                                              ; preds = %131, %126
  %133 = phi i8 [ 1, %126 ], [ -63, %131 ]
  %134 = phi i32 [ 4, %126 ], [ 2, %131 ]
  %135 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 1
  store i8 %133, ptr %135, align 1
  %136 = load i32, ptr @debug, align 4
  %137 = icmp ugt i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 50397278, i32 noundef %125) #10
  br label %140

140:                                              ; preds = %138, %132
  %141 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %122, ptr noundef nonnull %9, i32 noundef %134, ptr noundef nonnull %10, i32 noundef 2) #12
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %246

144:                                              ; preds = %140
  %145 = load i8, ptr %10, align 2
  %146 = zext i8 %145 to i16
  %147 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i16
  %150 = shl nuw i16 %149, 8
  %151 = or i16 %150, %146
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %152 = zext i16 %151 to i32
  %153 = icmp ugt i16 %121, 11
  %154 = icmp ult i16 %151, 4095
  %155 = select i1 %153, i1 %154, i1 false
  %156 = or i32 %152, 65536
  %157 = select i1 %155, i32 %156, i32 %152
  %158 = load i8, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i16 0, ptr %8, align 2, !annotation !9
  %159 = load i8, ptr %32, align 1, !range !8
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %160, i32 0, i32 192
  br i1 %160, label %167, label %162

162:                                              ; preds = %144
  store i8 -65, ptr %7, align 4
  %163 = trunc i32 %161 to i8
  %164 = or i8 %163, 3
  %165 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 2
  store i8 %164, ptr %165, align 2
  %166 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 3
  store i8 0, ptr %166, align 1
  br label %168

167:                                              ; preds = %144
  store i8 -66, ptr %7, align 4
  br label %168

168:                                              ; preds = %167, %162
  %169 = phi i8 [ 1, %162 ], [ -63, %167 ]
  %170 = phi i32 [ 4, %162 ], [ 2, %167 ]
  %171 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 1
  store i8 %169, ptr %171, align 1
  %172 = load i32, ptr @debug, align 4
  %173 = icmp ugt i32 %172, 1
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 50397279, i32 noundef %161) #10
  br label %176

176:                                              ; preds = %174, %168
  %177 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %158, ptr noundef nonnull %7, i32 noundef %170, ptr noundef nonnull %8, i32 noundef 2) #12
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %246

180:                                              ; preds = %176
  %181 = load i8, ptr %8, align 2
  %182 = zext i8 %181 to i16
  %183 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i16
  %186 = shl nuw i16 %185, 8
  %187 = or i16 %186, %182
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  %188 = zext i16 %187 to i32
  %189 = icmp ult i16 %187, 4095
  %190 = select i1 %153, i1 %189, i1 false
  %191 = or i32 %188, 65536
  %192 = select i1 %190, i32 %191, i32 %188
  %193 = load i8, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2, !annotation !9
  %194 = load i8, ptr %32, align 1, !range !8
  %195 = icmp eq i8 %194, 0
  %196 = select i1 %195, i32 0, i32 192
  br i1 %195, label %202, label %197

197:                                              ; preds = %180
  store i8 -111, ptr %5, align 4
  %198 = trunc i32 %196 to i8
  %199 = or i8 %198, 3
  %200 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  store i8 %199, ptr %200, align 2
  %201 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  store i8 0, ptr %201, align 1
  br label %203

202:                                              ; preds = %180
  store i8 -112, ptr %5, align 4
  br label %203

203:                                              ; preds = %202, %197
  %204 = phi i8 [ -62, %197 ], [ -14, %202 ]
  %205 = phi i32 [ 4, %197 ], [ 2, %202 ]
  %206 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  store i8 %204, ptr %206, align 1
  %207 = load i32, ptr @debug, align 4
  %208 = icmp ugt i32 %207, 1
  br i1 %208, label %209, label %211

209:                                              ; preds = %203
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 63045704, i32 noundef %196) #10
  br label %211

211:                                              ; preds = %209, %203
  %212 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %193, ptr noundef nonnull %5, i32 noundef %205, ptr noundef nonnull %6, i32 noundef 2) #12
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %246

215:                                              ; preds = %211
  %216 = load i8, ptr %6, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %217 = icmp eq i16 %61, 0
  %218 = icmp eq i16 %91, 0
  %219 = select i1 %217, i1 true, i1 %218
  br i1 %219, label %244, label %220

220:                                              ; preds = %215
  %221 = add nuw nsw i32 %192, %157
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %244, label %223

223:                                              ; preds = %220
  %224 = zext i16 %121 to i32
  %225 = shl i32 %221, %224
  %226 = and i8 %216, 3
  %227 = icmp eq i8 %226, 0
  %228 = select i1 %227, i32 17, i32 68
  %229 = zext i16 %61 to i32
  %230 = mul nuw i32 %229, %229
  %231 = call i32 @intlog10(i32 noundef %230) #12
  %232 = mul i32 %231, 100
  %233 = lshr i32 %232, 24
  %234 = zext i16 %91 to i32
  %235 = mul nuw nsw i32 %228, %234
  %236 = call i32 @intlog10(i32 noundef %235) #12
  %237 = mul i32 %236, 100
  %238 = lshr i32 %237, 24
  %239 = call i32 @intlog10(i32 noundef %225) #12
  %240 = mul i32 %239, 100
  %241 = lshr i32 %240, 24
  %242 = add nuw nsw i32 %238, %233
  %243 = sub nsw i32 %242, %241
  br label %244

244:                                              ; preds = %223, %220, %215
  %245 = phi i32 [ %243, %223 ], [ 0, %215 ], [ 0, %220 ]
  store i32 %245, ptr %1, align 4
  br label %309

246:                                              ; preds = %214, %179, %143, %113, %83, %53
  %247 = phi i32 [ %212, %214 ], [ %177, %179 ], [ %141, %143 ], [ %111, %113 ], [ %81, %83 ], [ %51, %53 ]
  %248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %247, ptr noundef nonnull @__func__.get_dvbt_signal_to_noise) #10
  br label %309

249:                                              ; preds = %21, %21
  %250 = load i32, ptr @debug, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %249
  %253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_qam_signal_to_noise) #10
  br label %254

254:                                              ; preds = %252, %249
  %255 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %256 = load i8, ptr %255, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !9
  %257 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %258 = load i8, ptr %257, align 1, !range !8
  %259 = icmp eq i8 %258, 0
  %260 = select i1 %259, i32 0, i32 192
  br i1 %259, label %266, label %261

261:                                              ; preds = %254
  store i8 47, ptr %3, align 4
  %262 = trunc i32 %260 to i8
  %263 = or i8 %262, 1
  %264 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %263, ptr %264, align 2
  %265 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %265, align 1
  br label %267

266:                                              ; preds = %254
  store i8 46, ptr %3, align 4
  br label %267

267:                                              ; preds = %266, %261
  %268 = phi i8 [ 67, %261 ], [ 83, %266 ]
  %269 = phi i32 [ 4, %261 ], [ 2, %266 ]
  %270 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  store i8 %268, ptr %270, align 1
  %271 = load i32, ptr @debug, align 4
  %272 = icmp ugt i32 %271, 1
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 21168151, i32 noundef %260) #10
  br label %275

275:                                              ; preds = %273, %267
  %276 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %256, ptr noundef nonnull %3, i32 noundef %269, ptr noundef nonnull %4, i32 noundef 2) #12
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %276, ptr noundef nonnull @__func__.get_qam_signal_to_noise) #10
  br label %309

280:                                              ; preds = %275
  %281 = load i8, ptr %4, align 2
  %282 = zext i8 %281 to i16
  %283 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %284 = load i8, ptr %283, align 1
  %285 = zext i8 %284 to i16
  %286 = shl nuw i16 %285, 8
  %287 = or i16 %286, %282
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %288 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 1, i32 1
  %289 = load i32, ptr %288, align 4
  %290 = add i32 %289, -1
  %291 = icmp ult i32 %290, 4
  br i1 %291, label %292, label %295

292:                                              ; preds = %280
  %293 = getelementptr inbounds [4 x i32], ptr @switch.table.get_signal_to_noise, i32 0, i32 %290
  %294 = load i32, ptr %293, align 4
  br label %295

295:                                              ; preds = %292, %280
  %296 = phi i32 [ %294, %292 ], [ 174080, %280 ]
  %297 = icmp eq i16 %287, 0
  br i1 %297, label %307, label %298

298:                                              ; preds = %295
  %299 = call i32 @intlog10(i32 noundef %296) #12
  %300 = mul i32 %299, 100
  %301 = lshr i32 %300, 24
  %302 = zext i16 %287 to i32
  %303 = call i32 @intlog10(i32 noundef %302) #12
  %304 = mul i32 %303, 100
  %305 = lshr i32 %304, 24
  %306 = sub nsw i32 %301, %305
  br label %307

307:                                              ; preds = %298, %295
  %308 = phi i32 [ %306, %298 ], [ 0, %295 ]
  store i32 %308, ptr %1, align 4
  br label %309

309:                                              ; preds = %307, %278, %246, %244, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ConfigureI2CBridge(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ConfigureI2CBridge) #10
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 27
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %13 [
    i32 0, label %97
    i32 4, label %94
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 103
  %15 = load i8, ptr %14, align 2, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %97

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #12, !annotation !9
  %20 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 0, i32 192
  br i1 %22, label %27, label %24

24:                                               ; preds = %17
  store i8 103, ptr %5, align 1
  %25 = trunc i32 %23 to i8
  %26 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %25, ptr %26, align 1
  br label %28

27:                                               ; preds = %17
  store i8 102, ptr %5, align 1
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i8 [ 66, %24 ], [ 18, %27 ]
  %30 = phi i32 [ 4, %24 ], [ 2, %27 ]
  %31 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 %29, ptr %31, align 1
  %32 = getelementptr [6 x i8], ptr %5, i32 0, i32 %30
  store i8 69, ptr %32, align 1
  %33 = or i32 %30, 1
  %34 = getelementptr [6 x i8], ptr %5, i32 0, i32 %33
  store i8 57, ptr %34, align 1
  %35 = load i32, ptr @debug, align 4
  %36 = icmp ugt i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4325427, i32 noundef 14661, i32 noundef %23) #10
  br label %39

39:                                               ; preds = %37, %28
  %40 = add nuw nsw i32 %30, 2
  %41 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %19, ptr noundef nonnull %5, i32 noundef %40) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %94, label %43

43:                                               ; preds = %39
  %44 = load i8, ptr %18, align 4
  br i1 %1, label %45, label %68

45:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %46 = load i8, ptr %20, align 1, !range !8
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i32 0, i32 192
  br i1 %47, label %52, label %49

49:                                               ; preds = %45
  store i8 105, ptr %4, align 1
  %50 = trunc i32 %48 to i8
  %51 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %50, ptr %51, align 1
  br label %53

52:                                               ; preds = %45
  store i8 104, ptr %4, align 1
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i8 [ 66, %49 ], [ 18, %52 ]
  %55 = phi i32 [ 4, %49 ], [ 2, %52 ]
  %56 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %54, ptr %56, align 1
  %57 = getelementptr [6 x i8], ptr %4, i32 0, i32 %55
  store i8 4, ptr %57, align 1
  %58 = or i32 %55, 1
  %59 = getelementptr [6 x i8], ptr %4, i32 0, i32 %58
  store i8 0, ptr %59, align 1
  %60 = load i32, ptr @debug, align 4
  %61 = icmp ugt i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4325428, i32 noundef 4, i32 noundef %48) #10
  br label %64

64:                                               ; preds = %62, %53
  %65 = add nuw nsw i32 %55, 2
  %66 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %44, ptr noundef nonnull %4, i32 noundef %65) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %94, label %91

68:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %69 = load i8, ptr %20, align 1, !range !8
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i32 0, i32 192
  br i1 %70, label %75, label %72

72:                                               ; preds = %68
  store i8 105, ptr %3, align 1
  %73 = trunc i32 %71 to i8
  %74 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %73, ptr %74, align 1
  br label %76

75:                                               ; preds = %68
  store i8 104, ptr %3, align 1
  br label %76

76:                                               ; preds = %75, %72
  %77 = phi i8 [ 66, %72 ], [ 18, %75 ]
  %78 = phi i32 [ 4, %72 ], [ 2, %75 ]
  %79 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %77, ptr %79, align 1
  %80 = getelementptr [6 x i8], ptr %3, i32 0, i32 %78
  store i8 0, ptr %80, align 1
  %81 = or i32 %78, 1
  %82 = getelementptr [6 x i8], ptr %3, i32 0, i32 %81
  store i8 0, ptr %82, align 1
  %83 = load i32, ptr @debug, align 4
  %84 = icmp ugt i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4325428, i32 noundef 0, i32 noundef %71) #10
  br label %87

87:                                               ; preds = %85, %76
  %88 = add nuw nsw i32 %78, 2
  %89 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %44, ptr noundef nonnull %3, i32 noundef %88) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87, %64
  %92 = call fastcc i32 @hi_command(ptr noundef %0, i16 noundef zeroext 7)
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91, %87, %64, %39, %10
  %95 = phi i32 [ %92, %91 ], [ -22, %10 ], [ %89, %87 ], [ %66, %64 ], [ %41, %39 ]
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %95, ptr noundef nonnull @__func__.ConfigureI2CBridge) #10
  br label %97

97:                                               ; preds = %94, %91, %13, %10
  %98 = phi i32 [ %12, %10 ], [ 0, %13 ], [ %95, %94 ], [ %92, %91 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drxx_open(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [4 x i8], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca [4 x i8], align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca [6 x i8], align 1
  %8 = alloca [4 x i8], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [6 x i8], align 1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxx_open) #10
  %15 = load i32, ptr @debug, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  %20 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 0, i32 192
  store i8 -113, ptr %10, align 1
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 61, ptr %26, align 1
  %27 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 -125, ptr %27, align 1
  %28 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 0, ptr %29, align 1
  %30 = icmp ugt i32 %17, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593095, i32 noundef 0, i32 noundef %23) #10
  br label %33

33:                                               ; preds = %31, %16
  %34 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %19, ptr noundef nonnull %10, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %148, label %36

36:                                               ; preds = %33
  %37 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #12
  store i16 0, ptr %9, align 2, !annotation !9
  %38 = load i8, ptr %20, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i32 0, i32 192
  br i1 %39, label %45, label %41

41:                                               ; preds = %36
  store i8 31, ptr %8, align 4
  %42 = trunc i32 %40 to i8
  %43 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 2
  store i8 %42, ptr %43, align 2
  %44 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 3
  store i8 0, ptr %44, align 1
  br label %46

45:                                               ; preds = %36
  store i8 30, ptr %8, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i8 [ 65, %41 ], [ 17, %45 ]
  %48 = phi i32 [ 4, %41 ], [ 2, %45 ]
  %49 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 1
  store i8 %47, ptr %49, align 1
  %50 = load i32, ptr @debug, align 4
  %51 = icmp ugt i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 4259855, i32 noundef %40) #10
  br label %54

54:                                               ; preds = %52, %46
  %55 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %37, ptr noundef nonnull %8, i32 noundef %48, ptr noundef nonnull %9, i32 noundef 2) #12
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %148

58:                                               ; preds = %54
  %59 = load i8, ptr %9, align 2
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = or i32 %64, %60
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  %66 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #12, !annotation !9
  %67 = load i8, ptr %20, align 1, !range !8
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, i32 0, i32 192
  br i1 %68, label %73, label %70

70:                                               ; preds = %58
  store i8 31, ptr %7, align 1
  %71 = trunc i32 %69 to i8
  %72 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %71, ptr %72, align 1
  br label %74

73:                                               ; preds = %58
  store i8 30, ptr %7, align 1
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i8 [ 65, %70 ], [ 17, %73 ]
  %76 = phi i32 [ 4, %70 ], [ 2, %73 ]
  %77 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 %75, ptr %77, align 1
  %78 = getelementptr [6 x i8], ptr %7, i32 0, i32 %76
  store i8 -70, ptr %78, align 1
  %79 = or i32 %76, 1
  %80 = getelementptr [6 x i8], ptr %7, i32 0, i32 %79
  store i8 -6, ptr %80, align 1
  %81 = load i32, ptr @debug, align 4
  %82 = icmp ugt i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4259855, i32 noundef 64186, i32 noundef %69) #10
  br label %85

85:                                               ; preds = %83, %74
  %86 = add nuw nsw i32 %76, 2
  %87 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %66, ptr noundef nonnull %7, i32 noundef %86) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %148, label %89

89:                                               ; preds = %85
  %90 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %91 = load i8, ptr %20, align 1, !range !8
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, i32 0, i32 192
  br i1 %92, label %98, label %94

94:                                               ; preds = %89
  store i8 37, ptr %5, align 4
  %95 = trunc i32 %93 to i8
  %96 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  store i8 %95, ptr %96, align 2
  %97 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  store i8 0, ptr %97, align 1
  br label %99

98:                                               ; preds = %89
  store i8 36, ptr %5, align 4
  br label %99

99:                                               ; preds = %98, %94
  %100 = phi i8 [ 17, %98 ], [ 65, %94 ]
  %101 = phi i32 [ 2, %98 ], [ 4, %94 ]
  %102 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  store i8 %100, ptr %102, align 1
  %103 = load i32, ptr @debug, align 4
  %104 = icmp ugt i32 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read32_flags, i32 noundef 4259858, i32 noundef %93) #10
  br label %107

107:                                              ; preds = %105, %99
  %108 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %90, ptr noundef nonnull %5, i32 noundef %101, ptr noundef nonnull %6, i32 noundef 4) #12
  %109 = icmp slt i32 %108, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br i1 %109, label %148, label %110

110:                                              ; preds = %107
  %111 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 32555, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !9
  %112 = load i8, ptr %20, align 1, !range !8
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, i32 0, i32 192
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  store i8 %115, ptr %116, align 2
  %117 = load i32, ptr @debug, align 4
  %118 = icmp ugt i32 %117, 1
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.read16_flags, i32 noundef 8323093, i32 noundef %114) #10
  br label %121

121:                                              ; preds = %119, %110
  %122 = call fastcc i32 @i2c_read(ptr noundef %0, i8 noundef zeroext %111, ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull %4, i32 noundef 2) #12
  %123 = icmp slt i32 %122, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br i1 %123, label %148, label %124

124:                                              ; preds = %121
  %125 = load i8, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %126 = load i8, ptr %20, align 1, !range !8
  %127 = icmp eq i8 %126, 0
  %128 = select i1 %127, i32 0, i32 192
  br i1 %127, label %132, label %129

129:                                              ; preds = %124
  store i8 31, ptr %2, align 1
  %130 = trunc i32 %128 to i8
  %131 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %130, ptr %131, align 1
  br label %133

132:                                              ; preds = %124
  store i8 30, ptr %2, align 1
  br label %133

133:                                              ; preds = %132, %129
  %134 = phi i8 [ 65, %129 ], [ 17, %132 ]
  %135 = phi i32 [ 4, %129 ], [ 2, %132 ]
  %136 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %134, ptr %136, align 1
  %137 = getelementptr [6 x i8], ptr %2, i32 0, i32 %135
  store i8 %59, ptr %137, align 1
  %138 = or i32 %135, 1
  %139 = getelementptr [6 x i8], ptr %2, i32 0, i32 %138
  store i8 %62, ptr %139, align 1
  %140 = load i32, ptr @debug, align 4
  %141 = icmp ugt i32 %140, 1
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4259855, i32 noundef %65, i32 noundef %128) #10
  br label %144

144:                                              ; preds = %142, %133
  %145 = add nuw nsw i32 %135, 2
  %146 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %125, ptr noundef nonnull %2, i32 noundef %145) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144, %121, %107, %85, %57, %33
  %149 = phi i32 [ %146, %144 ], [ %55, %57 ], [ %87, %85 ], [ %34, %33 ], [ %108, %107 ], [ %122, %121 ]
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %149, ptr noundef nonnull @__func__.drxx_open) #10
  br label %151

151:                                              ; preds = %148, %144
  %152 = phi i32 [ %149, %148 ], [ %146, %144 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpegts_disable(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @debug, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mpegts_disable) #10
  br label %6

6:                                                ; preds = %4, %1
  %7 = tail call fastcc i32 @mpegts_configure_pins(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @download_microcode(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.download_microcode) #10
  br label %8

8:                                                ; preds = %6, %3
  %9 = getelementptr i8, ptr %1, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 8
  %13 = getelementptr i8, ptr %1, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = or i32 %12, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %8
  %19 = getelementptr i8, ptr %1, i32 4
  br label %20

20:                                               ; preds = %62, %18
  %21 = phi ptr [ %63, %62 ], [ %19, %18 ]
  %22 = phi i32 [ %64, %62 ], [ 0, %18 ]
  %23 = phi i32 [ %36, %62 ], [ 4, %18 ]
  %24 = getelementptr i8, ptr %21, i32 4
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr i8, ptr %21, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %26, 9
  %31 = shl nuw nsw i32 %29, 1
  %32 = getelementptr i8, ptr %21, i32 10
  %33 = add i32 %23, 10
  %34 = and i32 %30, 65024
  %35 = or i32 %34, %31
  %36 = add i32 %33, %35
  %37 = icmp ugt i32 %36, %2
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #10
  br label %66

40:                                               ; preds = %20
  %41 = load i8, ptr %21, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 %42, 24
  %44 = getelementptr i8, ptr %21, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %46, 16
  %48 = or i32 %47, %43
  %49 = getelementptr i8, ptr %21, i32 2
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = or i32 %48, %52
  %54 = getelementptr i8, ptr %21, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %53, %56
  %58 = tail call fastcc i32 @write_block(ptr noundef %0, i32 noundef %57, i32 noundef %35, ptr noundef %32)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %58) #10
  br label %66

62:                                               ; preds = %40
  %63 = getelementptr i8, ptr %32, i32 %35
  %64 = add nuw nsw i32 %22, 1
  %65 = icmp eq i32 %64, %16
  br i1 %65, label %66, label %20

66:                                               ; preds = %62, %60, %38, %8
  %67 = phi i32 [ -22, %38 ], [ %58, %60 ], [ 0, %8 ], [ %58, %62 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpegts_dto_init(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mpegts_dto_init) #10
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %10, i8 0, i32 6, i1 false) #12, !annotation !9
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 0, i32 192
  br i1 %20, label %26, label %22

22:                                               ; preds = %15
  store i8 101, ptr %10, align 1
  %23 = trunc i32 %21 to i8
  %24 = or i8 %23, 1
  %25 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %24, ptr %25, align 1
  br label %27

26:                                               ; preds = %15
  store i8 100, ptr %10, align 1
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i8 [ -60, %22 ], [ 116, %26 ]
  %29 = phi i32 [ 4, %22 ], [ 2, %26 ]
  %30 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 %28, ptr %30, align 1
  %31 = getelementptr [6 x i8], ptr %10, i32 0, i32 %29
  store i8 0, ptr %31, align 1
  %32 = or i32 %29, 1
  %33 = getelementptr [6 x i8], ptr %10, i32 0, i32 %32
  store i8 0, ptr %33, align 1
  %34 = load i32, ptr @debug, align 4
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622322, i32 noundef 0, i32 noundef %21) #10
  br label %38

38:                                               ; preds = %36, %27
  %39 = add nuw nsw i32 %29, 2
  %40 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %17, ptr noundef nonnull %10, i32 noundef %39) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %248, label %42

42:                                               ; preds = %38
  %43 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i32 6, i1 false) #12, !annotation !9
  %44 = load i8, ptr %18, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 0, i32 192
  br i1 %45, label %51, label %47

47:                                               ; preds = %42
  store i8 103, ptr %9, align 1
  %48 = trunc i32 %46 to i8
  %49 = or i8 %48, 1
  %50 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %49, ptr %50, align 1
  br label %52

51:                                               ; preds = %42
  store i8 102, ptr %9, align 1
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i8 [ -60, %47 ], [ 116, %51 ]
  %54 = phi i32 [ 4, %47 ], [ 2, %51 ]
  %55 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 %53, ptr %55, align 1
  %56 = getelementptr [6 x i8], ptr %9, i32 0, i32 %54
  store i8 12, ptr %56, align 1
  %57 = or i32 %54, 1
  %58 = getelementptr [6 x i8], ptr %9, i32 0, i32 %57
  store i8 0, ptr %58, align 1
  %59 = load i32, ptr @debug, align 4
  %60 = icmp ugt i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622323, i32 noundef 12, i32 noundef %46) #10
  br label %63

63:                                               ; preds = %61, %52
  %64 = add nuw nsw i32 %54, 2
  %65 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %43, ptr noundef nonnull %9, i32 noundef %64) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %248, label %67

67:                                               ; preds = %63
  %68 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i32 6, i1 false) #12, !annotation !9
  %69 = load i8, ptr %18, align 1, !range !8
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i32 0, i32 192
  br i1 %70, label %76, label %72

72:                                               ; preds = %67
  store i8 93, ptr %8, align 1
  %73 = trunc i32 %71 to i8
  %74 = or i8 %73, 1
  %75 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %74, ptr %75, align 1
  br label %77

76:                                               ; preds = %67
  store i8 92, ptr %8, align 1
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i8 [ -60, %72 ], [ 116, %76 ]
  %79 = phi i32 [ 4, %72 ], [ 2, %76 ]
  %80 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 %78, ptr %80, align 1
  %81 = getelementptr [6 x i8], ptr %8, i32 0, i32 %79
  store i8 10, ptr %81, align 1
  %82 = or i32 %79, 1
  %83 = getelementptr [6 x i8], ptr %8, i32 0, i32 %82
  store i8 0, ptr %83, align 1
  %84 = load i32, ptr @debug, align 4
  %85 = icmp ugt i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622318, i32 noundef 10, i32 noundef %71) #10
  br label %88

88:                                               ; preds = %86, %77
  %89 = add nuw nsw i32 %79, 2
  %90 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %68, ptr noundef nonnull %8, i32 noundef %89) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %248, label %92

92:                                               ; preds = %88
  %93 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i32 6, i1 false) #12, !annotation !9
  %94 = load i8, ptr %18, align 1, !range !8
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %95, i32 0, i32 192
  br i1 %95, label %101, label %97

97:                                               ; preds = %92
  store i8 77, ptr %7, align 1
  %98 = trunc i32 %96 to i8
  %99 = or i8 %98, 1
  %100 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %99, ptr %100, align 1
  br label %102

101:                                              ; preds = %92
  store i8 76, ptr %7, align 1
  br label %102

102:                                              ; preds = %101, %97
  %103 = phi i8 [ -60, %97 ], [ 116, %101 ]
  %104 = phi i32 [ 4, %97 ], [ 2, %101 ]
  %105 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 %103, ptr %105, align 1
  %106 = getelementptr [6 x i8], ptr %7, i32 0, i32 %104
  store i8 8, ptr %106, align 1
  %107 = or i32 %104, 1
  %108 = getelementptr [6 x i8], ptr %7, i32 0, i32 %107
  store i8 0, ptr %108, align 1
  %109 = load i32, ptr @debug, align 4
  %110 = icmp ugt i32 %109, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622310, i32 noundef 8, i32 noundef %96) #10
  br label %113

113:                                              ; preds = %111, %102
  %114 = add nuw nsw i32 %104, 2
  %115 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %93, ptr noundef nonnull %7, i32 noundef %114) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %248, label %117

117:                                              ; preds = %113
  %118 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #12, !annotation !9
  %119 = load i8, ptr %18, align 1, !range !8
  %120 = icmp eq i8 %119, 0
  %121 = select i1 %120, i32 0, i32 192
  br i1 %120, label %126, label %122

122:                                              ; preds = %117
  store i8 79, ptr %6, align 1
  %123 = trunc i32 %121 to i8
  %124 = or i8 %123, 1
  %125 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %124, ptr %125, align 1
  br label %127

126:                                              ; preds = %117
  store i8 78, ptr %6, align 1
  br label %127

127:                                              ; preds = %126, %122
  %128 = phi i8 [ -60, %122 ], [ 116, %126 ]
  %129 = phi i32 [ 4, %122 ], [ 2, %126 ]
  %130 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 %128, ptr %130, align 1
  %131 = getelementptr [6 x i8], ptr %6, i32 0, i32 %129
  store i8 6, ptr %131, align 1
  %132 = or i32 %129, 1
  %133 = getelementptr [6 x i8], ptr %6, i32 0, i32 %132
  store i8 0, ptr %133, align 1
  %134 = load i32, ptr @debug, align 4
  %135 = icmp ugt i32 %134, 1
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622311, i32 noundef 6, i32 noundef %121) #10
  br label %138

138:                                              ; preds = %136, %127
  %139 = add nuw nsw i32 %129, 2
  %140 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %118, ptr noundef nonnull %6, i32 noundef %139) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %248, label %142

142:                                              ; preds = %138
  %143 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #12, !annotation !9
  %144 = load i8, ptr %18, align 1, !range !8
  %145 = icmp eq i8 %144, 0
  %146 = select i1 %145, i32 0, i32 192
  br i1 %145, label %151, label %147

147:                                              ; preds = %142
  store i8 65, ptr %5, align 1
  %148 = trunc i32 %146 to i8
  %149 = or i8 %148, 1
  %150 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %149, ptr %150, align 1
  br label %152

151:                                              ; preds = %142
  store i8 64, ptr %5, align 1
  br label %152

152:                                              ; preds = %151, %147
  %153 = phi i8 [ -60, %147 ], [ 116, %151 ]
  %154 = phi i32 [ 4, %147 ], [ 2, %151 ]
  %155 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 %153, ptr %155, align 1
  %156 = getelementptr [6 x i8], ptr %5, i32 0, i32 %154
  store i8 -128, ptr %156, align 1
  %157 = or i32 %154, 1
  %158 = getelementptr [6 x i8], ptr %5, i32 0, i32 %157
  store i8 6, ptr %158, align 1
  %159 = load i32, ptr @debug, align 4
  %160 = icmp ugt i32 %159, 1
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622304, i32 noundef 1664, i32 noundef %146) #10
  br label %163

163:                                              ; preds = %161, %152
  %164 = add nuw nsw i32 %154, 2
  %165 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %143, ptr noundef nonnull %5, i32 noundef %164) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %248, label %167

167:                                              ; preds = %163
  %168 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #12, !annotation !9
  %169 = load i8, ptr %18, align 1, !range !8
  %170 = icmp eq i8 %169, 0
  %171 = select i1 %170, i32 0, i32 192
  br i1 %170, label %176, label %172

172:                                              ; preds = %167
  store i8 67, ptr %4, align 1
  %173 = trunc i32 %171 to i8
  %174 = or i8 %173, 1
  %175 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %174, ptr %175, align 1
  br label %177

176:                                              ; preds = %167
  store i8 66, ptr %4, align 1
  br label %177

177:                                              ; preds = %176, %172
  %178 = phi i8 [ -60, %172 ], [ 116, %176 ]
  %179 = phi i32 [ 4, %172 ], [ 2, %176 ]
  %180 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 %178, ptr %180, align 1
  %181 = getelementptr [6 x i8], ptr %4, i32 0, i32 %179
  store i8 -128, ptr %181, align 1
  %182 = or i32 %179, 1
  %183 = getelementptr [6 x i8], ptr %4, i32 0, i32 %182
  store i8 0, ptr %183, align 1
  %184 = load i32, ptr @debug, align 4
  %185 = icmp ugt i32 %184, 1
  br i1 %185, label %186, label %188

186:                                              ; preds = %177
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622305, i32 noundef 128, i32 noundef %171) #10
  br label %188

188:                                              ; preds = %186, %177
  %189 = add nuw nsw i32 %179, 2
  %190 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %168, ptr noundef nonnull %4, i32 noundef %189) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %248, label %192

192:                                              ; preds = %188
  %193 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %194 = load i8, ptr %18, align 1, !range !8
  %195 = icmp eq i8 %194, 0
  %196 = select i1 %195, i32 0, i32 192
  br i1 %195, label %201, label %197

197:                                              ; preds = %192
  store i8 63, ptr %3, align 1
  %198 = trunc i32 %196 to i8
  %199 = or i8 %198, 1
  %200 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %199, ptr %200, align 1
  br label %202

201:                                              ; preds = %192
  store i8 62, ptr %3, align 1
  br label %202

202:                                              ; preds = %201, %197
  %203 = phi i8 [ -60, %197 ], [ 116, %201 ]
  %204 = phi i32 [ 4, %197 ], [ 2, %201 ]
  %205 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %203, ptr %205, align 1
  %206 = getelementptr [6 x i8], ptr %3, i32 0, i32 %204
  store i8 -12, ptr %206, align 1
  %207 = or i32 %204, 1
  %208 = getelementptr [6 x i8], ptr %3, i32 0, i32 %207
  store i8 3, ptr %208, align 1
  %209 = load i32, ptr @debug, align 4
  %210 = icmp ugt i32 %209, 1
  br i1 %210, label %211, label %213

211:                                              ; preds = %202
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622303, i32 noundef 1012, i32 noundef %196) #10
  br label %213

213:                                              ; preds = %211, %202
  %214 = add nuw nsw i32 %204, 2
  %215 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %193, ptr noundef nonnull %3, i32 noundef %214) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %248, label %217

217:                                              ; preds = %213
  %218 = load i8, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %219 = load i8, ptr %18, align 1, !range !8
  %220 = icmp eq i8 %219, 0
  %221 = select i1 %220, i32 0, i32 192
  br i1 %220, label %226, label %222

222:                                              ; preds = %217
  store i8 -91, ptr %2, align 1
  %223 = trunc i32 %221 to i8
  %224 = or i8 %223, 1
  %225 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %224, ptr %225, align 1
  br label %227

226:                                              ; preds = %217
  store i8 -92, ptr %2, align 1
  br label %227

227:                                              ; preds = %226, %222
  %228 = phi i8 [ -60, %222 ], [ 116, %226 ]
  %229 = phi i32 [ 4, %222 ], [ 2, %226 ]
  %230 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %228, ptr %230, align 1
  %231 = getelementptr [6 x i8], ptr %2, i32 0, i32 %229
  store i8 0, ptr %231, align 1
  %232 = or i32 %229, 1
  %233 = getelementptr [6 x i8], ptr %2, i32 0, i32 %232
  store i8 0, ptr %233, align 1
  %234 = load i32, ptr @debug, align 4
  %235 = icmp ugt i32 %234, 1
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622354, i32 noundef 0, i32 noundef %221) #10
  br label %238

238:                                              ; preds = %236, %227
  %239 = add nuw nsw i32 %229, 2
  %240 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %218, ptr noundef nonnull %2, i32 noundef %239) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %238
  %243 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 29622337, i16 noundef zeroext 2)
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %242
  %246 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 29622338, i16 noundef zeroext 12)
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245, %242, %238, %213, %188, %163, %138, %113, %88, %63, %38
  %249 = phi i32 [ %246, %245 ], [ %243, %242 ], [ %240, %238 ], [ %215, %213 ], [ %190, %188 ], [ %165, %163 ], [ %140, %138 ], [ %115, %113 ], [ %90, %88 ], [ %65, %63 ], [ %40, %38 ]
  %250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %249, ptr noundef nonnull @__func__.mpegts_dto_init) #10
  br label %251

251:                                              ; preds = %248, %245
  %252 = phi i32 [ %249, %248 ], [ %246, %245 ]
  ret i32 %252
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpegts_configure_polarity(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = load i32, ptr @debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mpegts_configure_polarity) #10
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 43
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i16 0, i16 255
  %12 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 44
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = or i16 %11, 256
  %16 = select i1 %14, i16 %11, i16 %15
  %17 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 45
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  %20 = or i16 %16, 512
  %21 = select i1 %19, i16 %16, i16 %20
  %22 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 46
  %23 = load i8, ptr %22, align 2, !range !8
  %24 = icmp eq i8 %23, 0
  %25 = or i16 %21, 1024
  %26 = select i1 %24, i16 %21, i16 %25
  %27 = and i16 %26, -2049
  %28 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 47
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i16 0, i16 2048
  %32 = or i16 %27, %31
  %33 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %34 = load i8, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %35 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 0, i32 192
  br i1 %37, label %43, label %39

39:                                               ; preds = %7
  store i8 -109, ptr %2, align 1
  %40 = trunc i32 %38 to i8
  %41 = or i8 %40, 1
  %42 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %41, ptr %42, align 1
  br label %44

43:                                               ; preds = %7
  store i8 -110, ptr %2, align 1
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i8 [ -60, %39 ], [ 116, %43 ]
  %46 = phi i32 [ 4, %39 ], [ 2, %43 ]
  %47 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %45, ptr %47, align 1
  %48 = trunc i16 %26 to i8
  %49 = getelementptr [6 x i8], ptr %2, i32 0, i32 %46
  store i8 %48, ptr %49, align 1
  %50 = lshr i16 %32, 8
  %51 = trunc i16 %50 to i8
  %52 = or i32 %46, 1
  %53 = getelementptr [6 x i8], ptr %2, i32 0, i32 %52
  store i8 %51, ptr %53, align 1
  %54 = load i32, ptr @debug, align 4
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = zext i16 %32 to i32
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 29622345, i32 noundef %57, i32 noundef %38) #10
  br label %59

59:                                               ; preds = %56, %44
  %60 = add nuw nsw i32 %46, 2
  %61 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %34, ptr noundef nonnull %2, i32 noundef %60) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mpegts_configure_pins(ptr noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = alloca [6 x i8], align 1
  %6 = alloca [6 x i8], align 1
  %7 = alloca [6 x i8], align 1
  %8 = alloca [6 x i8], align 1
  %9 = alloca [6 x i8], align 1
  %10 = alloca [6 x i8], align 1
  %11 = alloca [6 x i8], align 1
  %12 = alloca [6 x i8], align 1
  %13 = alloca [6 x i8], align 1
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = select i1 %1, ptr @.str.37, ptr @.str.38
  %18 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 42
  %19 = load i8, ptr %18, align 2, !range !8
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, ptr @.str.59, ptr @.str.58
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.mpegts_configure_pins, ptr noundef nonnull %17, ptr noundef nonnull %21) #10
  %23 = load i32, ptr @debug, align 4
  br label %24

24:                                               ; preds = %16, %2
  %25 = phi i32 [ %23, %16 ], [ 0, %2 ]
  %26 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %27 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %13) #12
  %28 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i32 0, i32 192
  store i8 -113, ptr %13, align 1
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 2
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 3
  store i8 61, ptr %34, align 1
  %35 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 1
  store i8 -125, ptr %35, align 1
  %36 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 4
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds [6 x i8], ptr %13, i32 0, i32 5
  store i8 0, ptr %37, align 1
  %38 = icmp ugt i32 %25, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8593095, i32 noundef 0, i32 noundef %31) #10
  br label %41

41:                                               ; preds = %39, %24
  %42 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %27, ptr noundef nonnull %13, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %13) #12
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %335, label %44

44:                                               ; preds = %41
  %45 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %12) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %12, i8 0, i32 6, i1 false) #12, !annotation !9
  %46 = load i8, ptr %28, align 1, !range !8
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i32 0, i32 192
  br i1 %47, label %52, label %49

49:                                               ; preds = %44
  store i8 31, ptr %12, align 1
  %50 = trunc i32 %48 to i8
  %51 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 2
  store i8 %50, ptr %51, align 1
  br label %53

52:                                               ; preds = %44
  store i8 30, ptr %12, align 1
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i8 [ 65, %49 ], [ 17, %52 ]
  %55 = phi i32 [ 4, %49 ], [ 2, %52 ]
  %56 = getelementptr inbounds [6 x i8], ptr %12, i32 0, i32 1
  store i8 %54, ptr %56, align 1
  %57 = getelementptr [6 x i8], ptr %12, i32 0, i32 %55
  store i8 -70, ptr %57, align 1
  %58 = or i32 %55, 1
  %59 = getelementptr [6 x i8], ptr %12, i32 0, i32 %58
  store i8 -6, ptr %59, align 1
  %60 = load i32, ptr @debug, align 4
  %61 = icmp ugt i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4259855, i32 noundef 64186, i32 noundef %48) #10
  br label %64

64:                                               ; preds = %62, %53
  %65 = add nuw nsw i32 %55, 2
  %66 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %45, ptr noundef nonnull %12, i32 noundef %65) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12) #12
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %335, label %68

68:                                               ; preds = %64
  br i1 %1, label %180, label %69

69:                                               ; preds = %68
  %70 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11) #12
  %71 = load i8, ptr %28, align 1, !range !8
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i32 0, i32 192
  store i8 75, ptr %11, align 1
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 2
  store i8 %74, ptr %75, align 1
  %76 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 3
  store i8 0, ptr %76, align 1
  %77 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 1
  store i8 127, ptr %77, align 1
  %78 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 4
  store i8 0, ptr %78, align 1
  %79 = getelementptr inbounds [6 x i8], ptr %11, i32 0, i32 5
  store i8 0, ptr %79, align 1
  %80 = load i32, ptr @debug, align 4
  %81 = icmp ugt i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323109, i32 noundef 0, i32 noundef %73) #10
  br label %84

84:                                               ; preds = %82, %69
  %85 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %70, ptr noundef nonnull %11, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11) #12
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %335, label %87

87:                                               ; preds = %84
  %88 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #12
  %89 = load i8, ptr %28, align 1, !range !8
  %90 = icmp eq i8 %89, 0
  %91 = select i1 %90, i32 0, i32 192
  store i8 77, ptr %10, align 1
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 %92, ptr %93, align 1
  %94 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 0, ptr %94, align 1
  %95 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 1
  store i8 127, ptr %95, align 1
  %96 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 0, ptr %96, align 1
  %97 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 5
  store i8 0, ptr %97, align 1
  %98 = load i32, ptr @debug, align 4
  %99 = icmp ugt i32 %98, 1
  br i1 %99, label %100, label %102

100:                                              ; preds = %87
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323110, i32 noundef 0, i32 noundef %91) #10
  br label %102

102:                                              ; preds = %100, %87
  %103 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %88, ptr noundef nonnull %10, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #12
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %335, label %105

105:                                              ; preds = %102
  %106 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9) #12
  %107 = load i8, ptr %28, align 1, !range !8
  %108 = icmp eq i8 %107, 0
  %109 = select i1 %108, i32 0, i32 192
  store i8 81, ptr %9, align 1
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 2
  store i8 %110, ptr %111, align 1
  %112 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 3
  store i8 0, ptr %112, align 1
  %113 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 1
  store i8 127, ptr %113, align 1
  %114 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 4
  store i8 0, ptr %114, align 1
  %115 = getelementptr inbounds [6 x i8], ptr %9, i32 0, i32 5
  store i8 0, ptr %115, align 1
  %116 = load i32, ptr @debug, align 4
  %117 = icmp ugt i32 %116, 1
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323112, i32 noundef 0, i32 noundef %109) #10
  br label %120

120:                                              ; preds = %118, %105
  %121 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %106, ptr noundef nonnull %9, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9) #12
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %335, label %123

123:                                              ; preds = %120
  %124 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #12
  %125 = load i8, ptr %28, align 1, !range !8
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %126, i32 0, i32 192
  store i8 83, ptr %8, align 1
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 2
  store i8 %128, ptr %129, align 1
  %130 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 3
  store i8 0, ptr %130, align 1
  %131 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 1
  store i8 127, ptr %131, align 1
  %132 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 4
  store i8 0, ptr %132, align 1
  %133 = getelementptr inbounds [6 x i8], ptr %8, i32 0, i32 5
  store i8 0, ptr %133, align 1
  %134 = load i32, ptr @debug, align 4
  %135 = icmp ugt i32 %134, 1
  br i1 %135, label %136, label %138

136:                                              ; preds = %123
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323113, i32 noundef 0, i32 noundef %127) #10
  br label %138

138:                                              ; preds = %136, %123
  %139 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %124, ptr noundef nonnull %8, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #12
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %335, label %141

141:                                              ; preds = %138
  %142 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  %143 = load i8, ptr %28, align 1, !range !8
  %144 = icmp eq i8 %143, 0
  %145 = select i1 %144, i32 0, i32 192
  store i8 85, ptr %7, align 1
  %146 = trunc i32 %145 to i8
  %147 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 2
  store i8 %146, ptr %147, align 1
  %148 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 3
  store i8 0, ptr %148, align 1
  %149 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 1
  store i8 127, ptr %149, align 1
  %150 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 4
  store i8 0, ptr %150, align 1
  %151 = getelementptr inbounds [6 x i8], ptr %7, i32 0, i32 5
  store i8 0, ptr %151, align 1
  %152 = load i32, ptr @debug, align 4
  %153 = icmp ugt i32 %152, 1
  br i1 %153, label %154, label %156

154:                                              ; preds = %141
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323114, i32 noundef 0, i32 noundef %145) #10
  br label %156

156:                                              ; preds = %154, %141
  %157 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %142, ptr noundef nonnull %7, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %335, label %159

159:                                              ; preds = %156
  %160 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323115, i16 noundef zeroext 0)
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %335, label %162

162:                                              ; preds = %159
  %163 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323116, i16 noundef zeroext 0)
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %335, label %165

165:                                              ; preds = %162
  %166 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323117, i16 noundef zeroext 0)
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %335, label %168

168:                                              ; preds = %165
  %169 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323119, i16 noundef zeroext 0)
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %335, label %171

171:                                              ; preds = %168
  %172 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323120, i16 noundef zeroext 0)
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %335, label %174

174:                                              ; preds = %171
  %175 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323121, i16 noundef zeroext 0)
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %335, label %177

177:                                              ; preds = %174
  %178 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323122, i16 noundef zeroext 0)
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %335, label %329

180:                                              ; preds = %68
  %181 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 52
  %182 = load i8, ptr %181, align 4
  %183 = zext i8 %182 to i16
  %184 = shl nuw nsw i16 %183, 3
  %185 = or i16 %184, 3
  %186 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 53
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i16
  %189 = shl nuw nsw i16 %188, 3
  %190 = or i16 %189, 3
  %191 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #12
  %192 = load i8, ptr %28, align 1, !range !8
  %193 = icmp eq i8 %192, 0
  %194 = select i1 %193, i32 0, i32 192
  store i8 75, ptr %6, align 1
  %195 = trunc i32 %194 to i8
  %196 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 2
  store i8 %195, ptr %196, align 1
  %197 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 3
  store i8 0, ptr %197, align 1
  %198 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 1
  store i8 127, ptr %198, align 1
  %199 = trunc i16 %185 to i8
  %200 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 4
  store i8 %199, ptr %200, align 1
  %201 = lshr i8 %182, 5
  %202 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  store i8 %201, ptr %202, align 1
  %203 = load i32, ptr @debug, align 4
  %204 = icmp ugt i32 %203, 1
  br i1 %204, label %205, label %208

205:                                              ; preds = %180
  %206 = zext i16 %185 to i32
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323109, i32 noundef %206, i32 noundef %194) #10
  br label %208

208:                                              ; preds = %205, %180
  %209 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %191, ptr noundef nonnull %6, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #12
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %335, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 101
  %213 = load i8, ptr %212, align 4, !range !8
  %214 = icmp eq i8 %213, 0
  %215 = select i1 %214, i16 0, i16 %185
  %216 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  %217 = load i8, ptr %28, align 1, !range !8
  %218 = icmp eq i8 %217, 0
  %219 = select i1 %218, i32 0, i32 192
  store i8 77, ptr %5, align 1
  %220 = trunc i32 %219 to i8
  %221 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %220, ptr %221, align 1
  %222 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  store i8 0, ptr %222, align 1
  %223 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  store i8 127, ptr %223, align 1
  %224 = trunc i16 %215 to i8
  %225 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  store i8 %224, ptr %225, align 1
  %226 = lshr i16 %215, 8
  %227 = trunc i16 %226 to i8
  %228 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  store i8 %227, ptr %228, align 1
  %229 = load i32, ptr @debug, align 4
  %230 = icmp ugt i32 %229, 1
  br i1 %230, label %231, label %234

231:                                              ; preds = %211
  %232 = zext i16 %215 to i32
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323110, i32 noundef %232, i32 noundef %219) #10
  br label %234

234:                                              ; preds = %231, %211
  %235 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %216, ptr noundef nonnull %5, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %335, label %237

237:                                              ; preds = %234
  %238 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #12
  %239 = load i8, ptr %28, align 1, !range !8
  %240 = icmp eq i8 %239, 0
  %241 = select i1 %240, i32 0, i32 192
  store i8 83, ptr %4, align 1
  %242 = trunc i32 %241 to i8
  %243 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  store i8 %242, ptr %243, align 1
  %244 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 3
  store i8 0, ptr %244, align 1
  %245 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  store i8 127, ptr %245, align 1
  %246 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 4
  store i8 %224, ptr %246, align 1
  %247 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 5
  store i8 %227, ptr %247, align 1
  %248 = load i32, ptr @debug, align 4
  %249 = icmp ugt i32 %248, 1
  br i1 %249, label %250, label %253

250:                                              ; preds = %237
  %251 = zext i16 %215 to i32
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323113, i32 noundef %251, i32 noundef %241) #10
  br label %253

253:                                              ; preds = %250, %237
  %254 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %238, ptr noundef nonnull %4, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #12
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %335, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 42
  %258 = load i8, ptr %257, align 2, !range !8
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %297, label %260

260:                                              ; preds = %256
  %261 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  %262 = load i8, ptr %28, align 1, !range !8
  %263 = icmp eq i8 %262, 0
  %264 = select i1 %263, i32 0, i32 192
  store i8 87, ptr %3, align 1
  %265 = trunc i32 %264 to i8
  %266 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %265, ptr %266, align 1
  %267 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %267, align 1
  %268 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 127, ptr %268, align 1
  %269 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 %199, ptr %269, align 1
  %270 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 %201, ptr %270, align 1
  %271 = load i32, ptr @debug, align 4
  %272 = icmp ugt i32 %271, 1
  br i1 %272, label %273, label %276

273:                                              ; preds = %260
  %274 = zext i16 %185 to i32
  %275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 8323115, i32 noundef %274, i32 noundef %264) #10
  br label %276

276:                                              ; preds = %273, %260
  %277 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %261, ptr noundef nonnull %3, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %335, label %279

279:                                              ; preds = %276
  %280 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323116, i16 noundef zeroext %185)
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %335, label %282

282:                                              ; preds = %279
  %283 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323117, i16 noundef zeroext %185)
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %335, label %285

285:                                              ; preds = %282
  %286 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323119, i16 noundef zeroext %185)
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %335, label %288

288:                                              ; preds = %285
  %289 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323120, i16 noundef zeroext %185)
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %335, label %291

291:                                              ; preds = %288
  %292 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323121, i16 noundef zeroext %185)
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %335, label %294

294:                                              ; preds = %291
  %295 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323122, i16 noundef zeroext %185)
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %335, label %322

297:                                              ; preds = %256
  %298 = load i8, ptr %181, align 4
  %299 = zext i8 %298 to i16
  %300 = shl nuw nsw i16 %299, 3
  %301 = or i16 %300, 3
  %302 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323115, i16 noundef zeroext 0)
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %335, label %304

304:                                              ; preds = %297
  %305 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323116, i16 noundef zeroext 0)
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %335, label %307

307:                                              ; preds = %304
  %308 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323117, i16 noundef zeroext 0)
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %335, label %310

310:                                              ; preds = %307
  %311 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323119, i16 noundef zeroext 0)
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %335, label %313

313:                                              ; preds = %310
  %314 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323120, i16 noundef zeroext 0)
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %335, label %316

316:                                              ; preds = %313
  %317 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323121, i16 noundef zeroext 0)
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %335, label %319

319:                                              ; preds = %316
  %320 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323122, i16 noundef zeroext 0)
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %335, label %322

322:                                              ; preds = %319, %294
  %323 = phi i16 [ %185, %294 ], [ %301, %319 ]
  %324 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323112, i16 noundef zeroext %190)
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %335, label %326

326:                                              ; preds = %322
  %327 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323114, i16 noundef zeroext %323)
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %335, label %329

329:                                              ; preds = %326, %177
  %330 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 8323088, i16 noundef zeroext 0)
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %329
  %333 = call fastcc i32 @write16(ptr noundef %0, i32 noundef 4259855, i16 noundef zeroext 0)
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %332, %329, %326, %322, %319, %316, %313, %310, %307, %304, %297, %294, %291, %288, %285, %282, %279, %276, %253, %234, %208, %177, %174, %171, %168, %165, %162, %159, %156, %138, %120, %102, %84, %64, %41
  %336 = phi i32 [ %333, %332 ], [ %178, %177 ], [ %175, %174 ], [ %172, %171 ], [ %169, %168 ], [ %166, %165 ], [ %163, %162 ], [ %160, %159 ], [ %157, %156 ], [ %139, %138 ], [ %121, %120 ], [ %103, %102 ], [ %85, %84 ], [ %320, %319 ], [ %317, %316 ], [ %314, %313 ], [ %311, %310 ], [ %308, %307 ], [ %305, %304 ], [ %302, %297 ], [ %330, %329 ], [ %327, %326 ], [ %324, %322 ], [ %295, %294 ], [ %292, %291 ], [ %289, %288 ], [ %286, %285 ], [ %283, %282 ], [ %280, %279 ], [ %277, %276 ], [ %254, %253 ], [ %235, %234 ], [ %209, %208 ], [ %66, %64 ], [ %42, %41 ]
  %337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %336, ptr noundef nonnull @__func__.mpegts_configure_pins) #10
  br label %338

338:                                              ; preds = %335, %332
  %339 = phi i32 [ %336, %335 ], [ %333, %332 ]
  ret i32 %339
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @power_down_device(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [6 x i8], align 1
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.power_down_device) #10
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 37
  %10 = load i8, ptr %9, align 2, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @ConfigureI2CBridge(ptr noundef %0, i1 noundef zeroext true)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %74, label %15

15:                                               ; preds = %12, %8
  %16 = tail call fastcc i32 @dvbt_enable_ofdm_token_ring(ptr noundef %0, i1 noundef zeroext false)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %74, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #12, !annotation !9
  %21 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 102
  %22 = load i8, ptr %21, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i32 0, i32 192
  br i1 %23, label %28, label %25

25:                                               ; preds = %18
  store i8 43, ptr %3, align 1
  %26 = trunc i32 %24 to i8
  %27 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %26, ptr %27, align 1
  br label %29

28:                                               ; preds = %18
  store i8 42, ptr %3, align 1
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i8 [ 69, %25 ], [ 21, %28 ]
  %31 = phi i32 [ 4, %25 ], [ 2, %28 ]
  %32 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %30, ptr %32, align 1
  %33 = getelementptr [6 x i8], ptr %3, i32 0, i32 %31
  store i8 2, ptr %33, align 1
  %34 = or i32 %31, 1
  %35 = getelementptr [6 x i8], ptr %3, i32 0, i32 %34
  store i8 0, ptr %35, align 1
  %36 = load i32, ptr @debug, align 4
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4522005, i32 noundef 2, i32 noundef %24) #10
  br label %40

40:                                               ; preds = %38, %29
  %41 = add nuw nsw i32 %31, 2
  %42 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %20, ptr noundef nonnull %3, i32 noundef %41) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %74, label %44

44:                                               ; preds = %40
  %45 = load i8, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false) #12, !annotation !9
  %46 = load i8, ptr %21, align 1, !range !8
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i32 0, i32 192
  br i1 %47, label %52, label %49

49:                                               ; preds = %44
  store i8 47, ptr %2, align 1
  %50 = trunc i32 %48 to i8
  %51 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  store i8 %50, ptr %51, align 1
  br label %53

52:                                               ; preds = %44
  store i8 46, ptr %2, align 1
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i8 [ 69, %49 ], [ 21, %52 ]
  %55 = phi i32 [ 4, %49 ], [ 2, %52 ]
  %56 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  store i8 %54, ptr %56, align 1
  %57 = getelementptr [6 x i8], ptr %2, i32 0, i32 %55
  store i8 -70, ptr %57, align 1
  %58 = or i32 %55, 1
  %59 = getelementptr [6 x i8], ptr %2, i32 0, i32 %58
  store i8 -6, ptr %59, align 1
  %60 = load i32, ptr @debug, align 4
  %61 = icmp ugt i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.write16_flags, i32 noundef 4522007, i32 noundef 64186, i32 noundef %48) #10
  br label %64

64:                                               ; preds = %62, %53
  %65 = add nuw nsw i32 %55, 2
  %66 = call fastcc i32 @i2c_write(ptr noundef %0, i8 noundef zeroext %45, ptr noundef nonnull %2, i32 noundef %65) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #12
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.drxk_state, ptr %0, i32 0, i32 25
  %70 = load i16, ptr %69, align 4
  %71 = or i16 %70, 8
  store i16 %71, ptr %69, align 4
  %72 = call fastcc i32 @hi_cfg_command(ptr noundef %0)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68, %64, %40, %15, %12
  %75 = phi i32 [ %72, %68 ], [ %66, %64 ], [ %42, %40 ], [ %16, %15 ], [ %13, %12 ]
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %75, ptr noundef nonnull @__func__.power_down_device) #10
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi i32 [ %75, %74 ], [ %72, %68 ]
  ret i32 %78
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
