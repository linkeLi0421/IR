; ModuleID = '/llk/IR/drivers/media/dvb-frontends/drx39xyj/drxj.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/drx39xyj/drxj.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drx39xxj_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22drx39xxj_attach\22\09\09\09\09\09"
module asm "__kstrtabns_drx39xxj_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.drx_demod_instance = type { ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_addr = type { i16, i16, ptr }
%struct.drx_common_attr = type { ptr, i8, %struct.drx_mc_version_rec, i32, i32, i32, i16, i8, %struct.drx_cfg_mpeg_output, i8, ptr, i16, i32, i8, i32, i32, ptr, ptr, i16, i32, i8, i32, i8, i32, i32, i8, i8, i8, %struct.drx_channel, i32, i32, i32, i8, i32, i32 }
%struct.drx_mc_version_rec = type { i16, i32, i32, i32 }
%struct.drx_cfg_mpeg_output = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.drx_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drxj_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i8, i32, i32, [7 x i16], [7 x i16], [7 x i16], [7 x i16], i8, i16, i16, i8, i8, i32, %struct.drxj_cfg_agc, %struct.drxj_cfg_agc, %struct.drxj_cfg_agc, %struct.drxj_cfg_agc, i16, i16, %struct.drxj_cfg_pre_saw, %struct.drxj_cfg_pre_saw, [2 x [12 x i8]], [2 x %struct.drx_version], [2 x %struct.drx_version_list], i8, [8 x i16], i8, i32, i8, i8, i32, i32, %struct.drxj_cfg_pre_saw, %struct.drxj_cfg_agc, %struct.drxj_cfg_agc, i16, i32, i8, i16, i16, i16, i16, i16, i32, %struct.drx_aud_data }
%struct.drx_version = type { i32, ptr, i16, i16, i16, ptr }
%struct.drx_version_list = type { ptr, ptr }
%struct.drxj_cfg_pre_saw = type { i32, i16, i8 }
%struct.drxj_cfg_agc = type { i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.drx_aud_data = type { i8, i32, %struct.drx_cfg_i2s_output, %struct.drx_cfg_aud_volume, i32, %struct.drx_cfg_aud_ass_thres, %struct.drx_cfg_aud_carriers, %struct.drx_cfg_aud_mixer, i32, i32, %struct.drx_cfg_aud_prescale, i32, i32, i16, i8 }
%struct.drx_cfg_i2s_output = type { i8, i32, i32, i32, i32, i32 }
%struct.drx_cfg_aud_volume = type { i8, i16, i32, i16, i32, i32, i16, i16 }
%struct.drx_cfg_aud_ass_thres = type { i16, i16, i16 }
%struct.drx_cfg_aud_carriers = type { %struct.drx_aud_carrier, %struct.drx_aud_carrier }
%struct.drx_aud_carrier = type { i16, i32, i32, i32 }
%struct.drx_cfg_aud_mixer = type { i32, i32, i32 }
%struct.drx_cfg_aud_prescale = type { i16, i16 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.drx39xxj_state = type { ptr, ptr, %struct.dvb_frontend, i8, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.65], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.65 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.66 }>
%union.anon.66 = type { i64 }
%struct.drxu_code_info = type { ptr }
%struct.drxj_hi_cmd = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.drxjscu_cmd = type { i16, i16, i16, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.drxuio_cfg = type { i32, i32 }
%struct.drxuio_data = type { i32, i8 }
%struct.drxj_cfg_afe_gain = type { i32, i16 }

@.str = private unnamed_addr constant [39 x i8] c"\013drx39xyj:%s: i2c was zero, aborting\0A\00", align 1
@__func__.drxbsp_i2c_write_read = private unnamed_addr constant [22 x i8] c"drxbsp_i2c_write_read\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\014drx39xyj:%s: drx3933: I2C write/read failed\0A\00", align 1
@drxj_default_demod_g = internal global %struct.drx_demod_instance { ptr @drxj_default_addr_g, ptr @drxj_default_comm_attr_g, ptr @drxj_data_g, ptr null, ptr null }, align 4
@drxj_default_addr_g = internal global %struct.i2c_device_addr { i16 82, i16 1, ptr null }, align 4
@drxj_default_comm_attr_g = internal global %struct.drx_common_attr { ptr null, i8 1, %struct.drx_mc_version_rec zeroinitializer, i32 44000, i32 151875, i32 0, i16 0, i8 0, %struct.drx_cfg_mpeg_output { i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 19392658, i32 0 }, i8 0, ptr null, i16 0, i32 0, i8 0, i32 0, i32 0, ptr null, ptr null, i16 0, i32 2, i8 0, i32 0, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, %struct.drx_channel zeroinitializer, i32 254, i32 254, i32 254, i8 0, i32 0, i32 0 }, align 4
@drxj_data_g = internal global %struct.drxj_data { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 254, i32 255, i32 0, i32 254, i32 0, i32 4000000, i16 5, i16 4, i16 -1, i16 1632, i16 1, i16 12894, i8 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i32 1, i32 1, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, [7 x i16] [i16 -5, i16 0, i16 3, i16 3, i16 7, i16 0, i16 3], [7 x i16] [i16 -50, i16 0, i16 502, i16 502, i16 407, i16 408, i16 502], [7 x i16] [i16 210, i16 0, i16 40, i16 40, i16 197, i16 176, i16 40], [7 x i16] [i16 -160, i16 0, i16 402, i16 402, i16 302, i16 398, i16 402], i8 0, i16 1, i16 8, i8 1, i8 0, i32 0, %struct.drxj_cfg_agc { i32 9, i32 0, i16 0, i16 0, i16 -1, i16 0, i16 0, i16 0 }, %struct.drxj_cfg_agc { i32 9, i32 0, i16 0, i16 0, i16 -1, i16 0, i16 0, i16 0 }, %struct.drxj_cfg_agc { i32 1, i32 0, i16 0, i16 0, i16 -1, i16 0, i16 0, i16 0 }, %struct.drxj_cfg_agc { i32 1, i32 0, i16 0, i16 0, i16 -1, i16 0, i16 0, i16 0 }, i16 0, i16 0, %struct.drxj_cfg_pre_saw { i32 9, i16 0, i8 0 }, %struct.drxj_cfg_pre_saw { i32 1, i16 0, i8 0 }, [2 x [12 x i8]] [[12 x i8] c"01234567890\00", [12 x i8] c"01234567890\00"], [2 x %struct.drx_version] [%struct.drx_version { i32 8, ptr null, i16 0, i16 0, i16 0, ptr null }, %struct.drx_version { i32 8, ptr null, i16 0, i16 0, i16 0, ptr null }], [2 x %struct.drx_version_list] zeroinitializer, i8 0, [8 x i16] [i16 12000, i16 9300, i16 6600, i16 5280, i16 3700, i16 3000, i16 2000, i16 0], i8 0, i32 0, i8 0, i8 0, i32 0, i32 0, %struct.drxj_cfg_pre_saw { i32 2, i16 7, i8 1 }, %struct.drxj_cfg_agc { i32 2, i32 0, i16 0, i16 0, i16 0, i16 3, i16 9500, i16 4000 }, %struct.drxj_cfg_agc { i32 2, i32 0, i16 0, i16 0, i16 0, i16 3, i16 2400, i16 0 }, i16 140, i32 0, i8 0, i16 16, i16 16, i16 16, i16 144, i16 4, i32 2, %struct.drx_aud_data zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"dvb-fe-drxj-mc-1.0.8.fw\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\013drx39xyj:%s: DRX open failed!  Aborting\0A\00", align 1
@__func__.drx39xxj_attach = private unnamed_addr constant [16 x i8] c"drx39xxj_attach\00", align 1
@drx39xxj_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Micronas DRX39xxj family Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 51000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @drx39xxj_release, ptr null, ptr @drx39xxj_init, ptr @drx39xxj_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drx39xxj_set_frontend, ptr @drx39xxj_get_tune_settings, ptr null, ptr @drx39xxj_read_status, ptr @drx39xxj_read_ber, ptr @drx39xxj_read_signal_strength, ptr @drx39xxj_read_snr, ptr @drx39xxj_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drx39xxj_i2c_gate_ctrl, ptr null, ptr @drx39xxj_set_lna, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_drx39xxj_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_drx39xxj_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_drx39xxj_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drx39xxj_attach to i32), ptr @__kstrtab_drx39xxj_attach, ptr @__kstrtabns_drx39xxj_attach }, section "___ksymtab+drx39xxj_attach", align 4
@__UNIQUE_ID_description249 = internal constant [39 x i8] c"description=Micronas DRX39xxj Frontend\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [25 x i8] c"author=Devin Heitmueller\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware252 = internal constant [33 x i8] c"firmware=dvb-fe-drxj-mc-1.0.8.fw\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"\013drx39xyj:%s: error %d\0A\00", align 1
@__func__.drxj_open = private unnamed_addr constant [10 x i8] c"drxj_open\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\013drx39xyj:%s: failed to powerup device\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"\013drx39xyj:%s: Should powerup before loading the firmware.\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"\013drx39xyj:%s: error %d while uploading the firmware\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"\013drx39xyj:%s: error %d while verifying the firmware\0A\00", align 1
@drxj_default_aud_data_g = internal unnamed_addr constant %struct.drx_aud_data { i8 0, i32 255, %struct.drx_cfg_i2s_output { i8 0, i32 48000, i32 0, i32 0, i32 0, i32 0 }, %struct.drx_cfg_aud_volume { i8 1, i16 0, i32 0, i16 0, i32 2, i32 2, i16 0, i16 0 }, i32 1, %struct.drx_cfg_aud_ass_thres { i16 440, i16 12, i16 700 }, %struct.drx_cfg_aud_carriers { %struct.drx_aud_carrier { i16 42, i32 1, i32 0, i32 0 }, %struct.drx_aud_carrier { i16 42, i32 0, i32 0, i32 0 } }, %struct.drx_cfg_aud_mixer { i32 2, i32 2, i32 3 }, i32 0, i32 0, %struct.drx_cfg_aud_prescale { i16 100, i16 9 }, i32 1, i32 0, i16 0, i8 0 }, align 4
@__func__.ctrl_power_mode = private unnamed_addr constant [16 x i8] c"ctrl_power_mode\00", align 1
@__func__.power_down_qam = private unnamed_addr constant [15 x i8] c"power_down_qam\00", align 1
@__func__.scu_command = private unnamed_addr constant [12 x i8] c"scu_command\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__func__.power_down_vsb = private unnamed_addr constant [15 x i8] c"power_down_vsb\00", align 1
@__func__.power_down_atv = private unnamed_addr constant [15 x i8] c"power_down_atv\00", align 1
@__func__.hi_cfg_command = private unnamed_addr constant [15 x i8] c"hi_cfg_command\00", align 1
@__func__.hi_command = private unnamed_addr constant [11 x i8] c"hi_command\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"\013drx39xyj:%s: timeout\0A\00", align 1
@__func__.get_device_capabilities = private unnamed_addr constant [24 x i8] c"get_device_capabilities\00", align 1
@__func__.set_iqm_af = private unnamed_addr constant [11 x i8] c"set_iqm_af\00", align 1
@__func__.set_orx_nsu_aox = private unnamed_addr constant [16 x i8] c"set_orx_nsu_aox\00", align 1
@__func__.init_hi = private unnamed_addr constant [8 x i8] c"init_hi\00", align 1
@__func__.ctrl_set_cfg_mpeg_output = private unnamed_addr constant [25 x i8] c"ctrl_set_cfg_mpeg_output\00", align 1
@__func__.power_down_aud = private unnamed_addr constant [15 x i8] c"power_down_aud\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"\013drx39xyj:%s: Couldn't read firmware %s\0A\00", align 1
@__func__.drx_ctrl_u_code = private unnamed_addr constant [16 x i8] c"drx_ctrl_u_code\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"\013drx39xyj:%s: Firmware is too short!\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"\016drx39xyj:%s: Firmware %s, size %zu\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"\013drx39xyj:%s: Firmware magic word doesn't match\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"\016drx39xyj:%s: Uploading firmware %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"\016drx39xyj:%s: Verifying if firmware upload was ok.\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"\013drx39xyj:%s: firmware CRC is wrong\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"\013drx39xyj:%s: error writing firmware at pos %zd\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"\013drx39xyj:%s: error reading firmware at pos %zd\0A\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"\013drx39xyj:%s: error verifying firmware at pos %zd\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"\016drx39xyj:%s: Firmware dev %x, ver %x, base ver %x\0A\00", align 1
@__func__.drx_check_firmware = private unnamed_addr constant [19 x i8] c"drx_check_firmware\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"\013drx39xyj:%s: Firmware is truncated at pos %u/%u\0A\00", align 1
@__func__.smart_ant_init = private unnamed_addr constant [15 x i8] c"smart_ant_init\00", align 1
@__func__.ctrl_set_uio_cfg = private unnamed_addr constant [17 x i8] c"ctrl_set_uio_cfg\00", align 1
@__func__.ctrl_set_oob = private unnamed_addr constant [13 x i8] c"ctrl_set_oob\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"\013drx39xyj:%s: Failed to setup LNA GPIO!\0A\00", align 1
@__func__.drxj_set_lna_state = private unnamed_addr constant [19 x i8] c"drxj_set_lna_state\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"\013drx39xyj:%s: Failed to %sable LNA!\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@__func__.ctrl_uio_write = private unnamed_addr constant [15 x i8] c"ctrl_uio_write\00", align 1
@__func__.drxj_close = private unnamed_addr constant [11 x i8] c"drxj_close\00", align 1
@.str.26 = private unnamed_addr constant [56 x i8] c"\013drx39xyj:%s: drx39xxj_init(): DRX open failed rc=%d!\0A\00", align 1
@__func__.drx39xxj_init = private unnamed_addr constant [14 x i8] c"drx39xxj_init\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"\013drx39xyj:%s: Power state change failed\0A\00", align 1
@__func__.drx39xxj_set_powerstate = private unnamed_addr constant [24 x i8] c"drx39xxj_set_powerstate\00", align 1
@drx39xxj_set_frontend.def_channel = internal unnamed_addr constant %struct.drx_channel { i32 0, i32 2, i32 0, i32 255, i32 254, i32 254, i32 254, i32 254, i32 254, i32 255, i32 5057000, i32 254, i32 254, i32 254, i32 254, i32 0 }, align 4
@.str.28 = private unnamed_addr constant [52 x i8] c"\013drx39xyj:%s: Failed to set standard! result=%02x\0A\00", align 1
@__func__.drx39xxj_set_frontend = private unnamed_addr constant [22 x i8] c"drx39xxj_set_frontend\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"\013drx39xyj:%s: Failed to set channel!\0A\00", align 1
@__func__.ctrl_set_standard = private unnamed_addr constant [18 x i8] c"ctrl_set_standard\00", align 1
@set_vsb_leak_n_gain.vsb_ffe_leak_gain_ram0 = internal constant [256 x i8] c"\08\00\08\00\08\00\0F\00\0F\00\0F\00\0F\00\0F\00\0F\00\08\00\08\00\08\00\10\00\10\00\10\00 \00 \00 \00 \00 \00 \00\10\00\10\00\10\00\10\00\10\00\10\00 \00 \00 \00 \00 \00 \00\10\00\10\00\10\00\10\00\10\00\10\00 \00 \00 \00 \00 \00 \00\10\00\10\00\10\00\10\00\10\00\10\00 \00 \00 \00 \00 \00 \00\10\00\10\00\10\00\07\00\07\00\07\00\0E\00\0E\00\0E\00\0E\00\0E\00\0E\00\07\00\07\00\07\00\07\00\07\00\07\00\0E\00\0E\00\0E\00\0E\00\0E\00\0E\00\07\00\07\00\07\00\06\00\06\00\06\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\06\00\06\00\06\00\06\00\06\00\06\00\0C\00\0C\00\0C\00\0C\00\0C\00\0C\00\06\00\06\00\06\00      @@@@@@@@@@@@      \08\08\08\08\08\08\10\10\10\10\10\10\10\10\10\10", align 1
@set_vsb_leak_n_gain.vsb_ffe_leak_gain_ram1 = internal constant [108 x i8] c"\10\10\08\08\08\08\08\08\08\08\08\08\08\08\10\10\10\10\10\10\10\10\10\10\10\10\08\08\08\08\08\08\03\03\03\03\03\03\06\06\06\06\06\06\06\06\06\06\06\06\03\03\03\03\03\03\03\03\03\03\03\03\05\05\05\05\05\05\05\05\05\05\05\05\03\03\03\03\03\03\1F\00\FF\01\FF\01O\00O\00\FF\01\FF\01R\03R\03\00\00  \10\10\18\18\12\12", align 1
@__func__.set_vsb_leak_n_gain = private unnamed_addr constant [20 x i8] c"set_vsb_leak_n_gain\00", align 1
@__func__.ctrl_set_channel = private unnamed_addr constant [17 x i8] c"ctrl_set_channel\00", align 1
@set_vsb.vsb_taps_re = internal constant [56 x i8] c"\FE\FF\04\00\01\00\FC\FF\01\00\04\00\FD\FF\FD\FF\06\00\01\00\F7\FF\03\00\0C\00\F7\FF\F1\FF\11\00\13\00\E3\FF\EA\FF-\00\19\00\BA\FF\E4\FFo\00\1E\007\FF\E1\FFu\02", align 1
@__func__.set_vsb = private unnamed_addr constant [8 x i8] c"set_vsb\00", align 1
@__func__.adc_synchronization = private unnamed_addr constant [20 x i8] c"adc_synchronization\00", align 1
@__func__.adc_sync_measurement = private unnamed_addr constant [21 x i8] c"adc_sync_measurement\00", align 1
@__func__.init_agc = private unnamed_addr constant [9 x i8] c"init_agc\00", align 1
@__func__.set_agc_if = private unnamed_addr constant [11 x i8] c"set_agc_if\00", align 1
@__func__.set_agc_rf = private unnamed_addr constant [11 x i8] c"set_agc_rf\00", align 1
@__func__.ctrl_set_cfg_afe_gain = private unnamed_addr constant [22 x i8] c"ctrl_set_cfg_afe_gain\00", align 1
@__func__.ctrl_set_cfg_pre_saw = private unnamed_addr constant [21 x i8] c"ctrl_set_cfg_pre_saw\00", align 1
@__func__.set_mpegtei_handling = private unnamed_addr constant [21 x i8] c"set_mpegtei_handling\00", align 1
@__func__.bit_reverse_mpeg_output = private unnamed_addr constant [24 x i8] c"bit_reverse_mpeg_output\00", align 1
@__func__.set_mpeg_start_width = private unnamed_addr constant [21 x i8] c"set_mpeg_start_width\00", align 1
@__func__.set_frequency = private unnamed_addr constant [14 x i8] c"set_frequency\00", align 1
@__func__.set_qam_channel = private unnamed_addr constant [16 x i8] c"set_qam_channel\00", align 1
@set_qam.qam_a_taps = internal constant [56 x i8] c"\FF\FF\01\00\01\00\FF\FF\FF\FF\02\00\01\00\FE\FF\00\00\03\00\FF\FF\FD\FF\04\00\01\00\F8\FF\04\00\0D\00\F3\FF\ED\FF\1C\00\19\00\CB\FF\E1\FF`\00%\00B\FF\D8\FFk\02", align 1
@set_qam.qam_b64_taps = internal constant [56 x i8] c"\00\00\FE\FF\01\00\02\00\FE\FF\00\00\04\00\FE\FF\FC\FF\04\00\03\00\FA\FF\00\00\06\00\FB\FF\FD\FF\0B\00\FC\FF\ED\FF\13\00\1C\00\D3\FF\DC\FFZ\00*\00G\FF\D2\FFf\02", align 1
@set_qam.qam_b256_taps = internal constant [56 x i8] c"\FE\FF\04\00\01\00\FC\FF\00\00\04\00\FE\FF\FC\FF\05\00\02\00\F8\FF\02\00\0B\00\F8\FF\F1\FF\10\00\13\00\E5\FF\EA\FF,\00\1A\00\BB\FF\E4\FFn\00\1F\007\FF\E0\FFt\02", align 1
@set_qam.qam_c_taps = internal constant [56 x i8] c"\FD\FF\03\00\02\00\FC\FF\00\00\04\00\FF\FF\FC\FF\03\00\03\00\FB\FF\00\00\09\00\FC\FF\F4\FF\0A\00\10\00\EB\FF\EC\FF%\00\19\00\C2\FF\E4\FFi\00\1F\00;\FF\DF\FFr\02", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"\013drx39xyj:%s: error: channel symbolrate is zero!\0A\00", align 1
@__func__.set_qam = private unnamed_addr constant [8 x i8] c"set_qam\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"\013drx39xyj:%s: error: fec_rs_bit_cnt is zero!\0A\00", align 1
@__func__.set_qam_measurement = private unnamed_addr constant [20 x i8] c"set_qam_measurement\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"\013drx39xyj:%s: error: qam_vd_period is zero!\0A\00", align 1
@set_qam16.qam_dq_qual_fun = internal constant [12 x i8] c"\02\00\02\00\02\00\02\00\03\00\03\00", align 1
@set_qam16.qam_eq_cma_rad = internal constant [12 x i8] c"\CD4\CD4\CD4\CD4\CD4\CD4", align 1
@__func__.set_qam16 = private unnamed_addr constant [10 x i8] c"set_qam16\00", align 1
@set_qam32.qam_dq_qual_fun = internal constant [12 x i8] c"\03\00\03\00\03\00\03\00\04\00\04\00", align 1
@set_qam32.qam_eq_cma_rad = internal constant [12 x i8] c"3\1A3\1A3\1A3\1A3\1A3\1A", align 1
@__func__.set_qam32 = private unnamed_addr constant [10 x i8] c"set_qam32\00", align 1
@set_qam64.qam_dq_qual_fun = internal constant [12 x i8] c"\04\00\04\00\04\00\04\00\06\00\06\00", align 1
@set_qam64.qam_eq_cma_rad = internal constant [12 x i8] c"\184J1\D4.\F15\F15\F9<", align 1
@__func__.set_qam64 = private unnamed_addr constant [10 x i8] c"set_qam64\00", align 1
@set_qam128.qam_dq_qual_fun = internal constant [12 x i8] c"\06\00\06\00\06\00\06\00\09\00\09\00", align 1
@set_qam128.qam_eq_cma_rad = internal constant [12 x i8] c"\14\18\C6\19\FA\18\09\19\00\1AF\1C", align 1
@__func__.set_qam128 = private unnamed_addr constant [11 x i8] c"set_qam128\00", align 1
@set_qam256.qam_dq_qual_fun = internal constant [12 x i8] c"\08\00\08\00\08\00\08\00\0C\00\0C\00", align 1
@set_qam256.qam_eq_cma_rad = internal constant [12 x i8] c"9090:5\832\7F9\FC;", align 1
@__func__.set_qam256 = private unnamed_addr constant [11 x i8] c"set_qam256\00", align 1
@__func__.qam64auto = private unnamed_addr constant [10 x i8] c"qam64auto\00", align 1
@__func__.ctrl_lock_status = private unnamed_addr constant [17 x i8] c"ctrl_lock_status\00", align 1
@__func__.ctrl_get_qam_sig_quality = private unnamed_addr constant [25 x i8] c"ctrl_get_qam_sig_quality\00", align 1
@__func__.get_qamrs_err_count = private unnamed_addr constant [20 x i8] c"get_qamrs_err_count\00", align 1
@log1_times100.log2lut = internal unnamed_addr constant [33 x i32] [i32 0, i32 290941, i32 573196, i32 847269, i32 1113620, i32 1372674, i32 1624818, i32 1870412, i32 2109788, i32 2343253, i32 2571091, i32 2793569, i32 3010931, i32 3223408, i32 3431216, i32 3634553, i32 3833610, i32 4028562, i32 4219576, i32 4406807, i32 4590402, i32 4770499, i32 4947231, i32 5120719, i32 5291081, i32 5458428, i32 5622864, i32 5784489, i32 5943398, i32 6099680, i32 6253421, i32 6404702, i32 6553600], align 4
@__func__.qam_flip_spec = private unnamed_addr constant [14 x i8] c"qam_flip_spec\00", align 1
@__func__.drxj_dap_atomic_read_write_block = private unnamed_addr constant [33 x i8] c"drxj_dap_atomic_read_write_block\00", align 1
@__func__.qam256auto = private unnamed_addr constant [11 x i8] c"qam256auto\00", align 1
@.str.33 = private unnamed_addr constant [53 x i8] c"\013drx39xyj:%s: drx39xxj: could not get lock status!\0A\00", align 1
@__func__.drx39xxj_read_status = private unnamed_addr constant [21 x i8] c"drx39xxj_read_status\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"\013drx39xyj:%s: drx says NEVER_LOCK\0A\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"\013drx39xyj:%s: Lock state unknown %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"\013drx39xyj:%s: error getting signal strength %d\0A\00", align 1
@__func__.ctrl_sig_quality = private unnamed_addr constant [17 x i8] c"ctrl_sig_quality\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"\013drx39xyj:%s: error %d getting UCB\0A\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"\013drx39xyj:%s: error %d getting pre-ber\0A\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"\013drx39xyj:%s: error %d getting post-ber\0A\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"\013drx39xyj:%s: error %d getting MER\0A\00", align 1
@__func__.get_sig_strength = private unnamed_addr constant [17 x i8] c"get_sig_strength\00", align 1
@__func__.get_vsb_post_rs_pck_err = private unnamed_addr constant [24 x i8] c"get_vsb_post_rs_pck_err\00", align 1
@__func__.get_vs_bpre_viterbi_ber = private unnamed_addr constant [24 x i8] c"get_vs_bpre_viterbi_ber\00", align 1
@__func__.get_vs_bpost_viterbi_ber = private unnamed_addr constant [25 x i8] c"get_vs_bpost_viterbi_ber\00", align 1
@__func__.get_vsbmer = private unnamed_addr constant [11 x i8] c"get_vsbmer\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"\013drx39xyj:%s: drx39xxj: could not open i2c gate [%d]\0A\00", align 1
@__func__.drx39xxj_i2c_gate_ctrl = private unnamed_addr constant [23 x i8] c"drx39xxj_i2c_gate_ctrl\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"\013drx39xyj:%s: LNA is not supported on this device!\0A\00", align 1
@__func__.drx39xxj_set_lna = private unnamed_addr constant [17 x i8] c"drx39xxj_set_lna\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_drx39xxj_attach], section "llvm.metadata"
@switch.table.set_agc_if = private unnamed_addr constant [11 x i8] c"\03\05\05\05\05\05\05\06\06\06\06", align 1
@switch.table.set_agc_rf = private unnamed_addr constant [11 x i8] c" @@@@@@PPPP", align 1
@switch.table.set_qam = private unnamed_addr constant [3 x i16] [i16 1632, i16 896, i16 1632], align 2
@switch.table.ctrl_lock_status = private unnamed_addr constant [10 x i16] [i16 773, i16 773, i16 773, i16 773, i16 773, i16 773, i16 773, i16 517, i16 517, i16 517], align 2
@switch.table.ctrl_lock_status.47 = private unnamed_addr constant [10 x i32] [i32 16390, i32 16390, i32 16390, i32 16390, i32 16390, i32 16390, i32 16390, i32 16384, i32 16384, i32 16384], align 4
@switch.table.ctrl_get_qam_sig_quality = private unnamed_addr constant [5 x i32] [i32 163840, i32 81920, i32 172032, i32 83968, i32 174080], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drxbsp_i2c_write_read(ptr noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef readonly %3, i16 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.i2c_device_addr, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %3, align 4
  %13 = lshr i16 %12, 1
  store i16 %13, ptr %7, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  br label %32

17:                                               ; preds = %6
  %18 = icmp eq ptr %3, null
  %19 = getelementptr inbounds %struct.i2c_device_addr, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = load i16, ptr %0, align 4
  %22 = lshr i16 %21, 1
  store i16 %22, ptr %7, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  store i16 %1, ptr %24, align 4
  br i1 %18, label %36, label %25

25:                                               ; preds = %17
  %26 = load i16, ptr %3, align 4
  %27 = lshr i16 %26, 1
  %28 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %7, i32 0, i32 1
  store i16 %27, ptr %28, align 4
  %29 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %7, i32 0, i32 1, i32 1
  store i16 1, ptr %29, align 2
  %30 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %7, i32 0, i32 1, i32 3
  store ptr %5, ptr %30, align 4
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %7, i32 0, i32 1, i32 2
  br label %32

32:                                               ; preds = %25, %9
  %33 = phi ptr [ %31, %25 ], [ %16, %9 ]
  %34 = phi i32 [ 2, %25 ], [ 1, %9 ]
  %35 = phi ptr [ %20, %25 ], [ %11, %9 ]
  store i16 %4, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %17
  %37 = phi i32 [ 1, %17 ], [ %34, %32 ]
  %38 = phi ptr [ %20, %17 ], [ %35, %32 ]
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxbsp_i2c_write_read) #14
  br label %48

43:                                               ; preds = %36
  %44 = call i32 @i2c_transfer(ptr noundef nonnull %39, ptr noundef nonnull %7, i32 noundef %37) #13
  %45 = icmp eq i32 %44, %37
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.drxbsp_i2c_write_read) #14
  br label %48

48:                                               ; preds = %46, %43, %41
  %49 = phi i32 [ 0, %41 ], [ -121, %46 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  ret i32 %49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drx39xxj_attach(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1056) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @kmemdup(ptr noundef nonnull @drxj_default_demod_g, i32 noundef 20, i32 noundef 3264) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @kmemdup(ptr noundef nonnull @drxj_default_addr_g, i32 noundef 8, i32 noundef 3264) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @kmemdup(ptr noundef nonnull @drxj_default_comm_attr_g, i32 noundef 216, i32 noundef 3264) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %55, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @kmemdup(ptr noundef nonnull @drxj_data_g, i32 noundef 588, i32 noundef 3264) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %14
  store ptr %0, ptr %3, align 8
  %18 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 1
  store ptr %6, ptr %18, align 4
  store ptr %9, ptr %6, align 4
  %19 = getelementptr inbounds %struct.drx_demod_instance, ptr %6, i32 0, i32 1
  store ptr %12, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_device_addr, ptr %9, i32 0, i32 2
  store ptr %3, ptr %20, align 4
  %21 = load ptr, ptr %19, align 4
  store ptr @.str.2, ptr %21, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.drx_common_attr, ptr %22, i32 0, i32 1
  store i8 1, ptr %23, align 4
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr inbounds %struct.drx_common_attr, ptr %24, i32 0, i32 3
  store i32 5000, ptr %25, align 4
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr inbounds %struct.drx_common_attr, ptr %26, i32 0, i32 21
  store i32 255, ptr %27, align 4
  %28 = getelementptr inbounds %struct.drx_demod_instance, ptr %6, i32 0, i32 2
  store ptr %15, ptr %28, align 4
  %29 = getelementptr inbounds %struct.drxj_data, ptr %15, i32 0, i32 30
  store i32 2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.drx_demod_instance, ptr %6, i32 0, i32 3
  store ptr %0, ptr %30, align 4
  %31 = tail call fastcc i32 @drxj_open(ptr noundef nonnull %6)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %17
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.drx39xxj_attach) #14
  br label %55

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2
  %37 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %37, ptr noundef nonnull align 4 dereferenceable(544) @drx39xxj_ops, i32 544, i1 false)
  %38 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 3
  store ptr %3, ptr %38, align 8
  %39 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 42
  store i8 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 45
  store i8 1, ptr %40, align 1
  %41 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 44
  store i8 1, ptr %41, align 2
  %42 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 47
  store i8 1, ptr %42, align 1
  %43 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 46
  store i8 1, ptr %43, align 8
  %44 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 49
  store i8 1, ptr %44, align 1
  %45 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 48
  store i8 1, ptr %45, align 2
  %46 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 43
  store i8 1, ptr %46, align 1
  %47 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 42, i32 1
  store i8 2, ptr %47, align 1
  %48 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 45, i32 1
  store i8 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 44, i32 1
  store i8 0, ptr %49, align 1
  %50 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 47, i32 1
  store i8 0, ptr %50, align 2
  %51 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 46, i32 1
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 49, i32 1
  store i8 0, ptr %52, align 8
  %53 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 48, i32 1
  store i8 0, ptr %53, align 1
  %54 = getelementptr inbounds %struct.drx39xxj_state, ptr %3, i32 0, i32 2, i32 8, i32 43, i32 1
  store i8 0, ptr %54, align 2
  br label %60

55:                                               ; preds = %33, %14, %11, %8, %5, %1
  %56 = phi ptr [ null, %1 ], [ null, %5 ], [ null, %8 ], [ %9, %11 ], [ %9, %14 ], [ %9, %33 ]
  %57 = phi ptr [ null, %1 ], [ null, %5 ], [ null, %8 ], [ null, %11 ], [ %12, %14 ], [ %12, %33 ]
  %58 = phi ptr [ null, %1 ], [ null, %5 ], [ null, %8 ], [ null, %11 ], [ null, %14 ], [ %15, %33 ]
  %59 = phi ptr [ null, %1 ], [ null, %5 ], [ %6, %8 ], [ %6, %11 ], [ %6, %14 ], [ %6, %33 ]
  tail call void @kfree(ptr noundef %58) #13
  tail call void @kfree(ptr noundef %57) #13
  tail call void @kfree(ptr noundef %56) #13
  tail call void @kfree(ptr noundef %59) #13
  tail call void @kfree(ptr noundef %3) #13
  br label %60

60:                                               ; preds = %55, %35
  %61 = phi ptr [ null, %55 ], [ %36, %35 ]
  ret ptr %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drxj_open(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [4 x i8], align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca %struct.drxu_code_info, align 4
  %21 = alloca %struct.drx_cfg_mpeg_output, align 4
  %22 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #13
  store i32 0, ptr %20, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %21) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %21, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #13
  store i32 0, ptr %22, align 4
  %23 = icmp eq ptr %0, null
  br i1 %23, label %306, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %306, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %306, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %0, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %306, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.drx_common_attr, ptr %26, i32 0, i32 9
  %37 = load i8, ptr %36, align 4, !range !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %306

39:                                               ; preds = %35
  %40 = call fastcc i32 @ctrl_power_mode(ptr noundef nonnull %0, ptr noundef nonnull %22)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %40) #14
  br label %304

44:                                               ; preds = %39
  %45 = load i32, ptr %22, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.drxj_open) #14
  br label %304

49:                                               ; preds = %44
  %50 = load ptr, ptr %25, align 4
  %51 = load ptr, ptr %29, align 4
  %52 = load ptr, ptr %0, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %160, label %54

54:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 -70, ptr %19, align 2
  %55 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 -6, ptr %55, align 1
  %56 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %52, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %160

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i16 0, ptr %18, align 2, !annotation !8
  %59 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %52, i32 noundef 8323103, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  %60 = load i8, ptr %18, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %62, label %160

62:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #13
  store i8 0, ptr %17, align 2
  %63 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  store i8 0, ptr %63, align 1
  %64 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %52, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %160

66:                                               ; preds = %62
  %67 = and i8 %60, 3
  %68 = zext i8 %67 to i32
  switch i32 %68, label %71 [
    i32 0, label %75
    i32 1, label %72
    i32 2, label %69
    i32 3, label %70
  ]

69:                                               ; preds = %66
  br label %72

70:                                               ; preds = %66
  br label %72

71:                                               ; preds = %66
  unreachable

72:                                               ; preds = %70, %69, %66
  %73 = phi i32 [ 4000, %70 ], [ 20250, %69 ], [ 27000, %66 ]
  %74 = getelementptr inbounds %struct.drx_common_attr, ptr %50, i32 0, i32 5
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %72, %66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #13
  store i32 0, ptr %16, align 4, !annotation !8
  %76 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %52, i32 noundef 4259858, i16 noundef zeroext 4, ptr noundef nonnull %16, i32 noundef 0) #13
  %77 = getelementptr inbounds [4 x i8], ptr %16, i32 0, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr inbounds [4 x i8], ptr %16, i32 0, i32 2
  %80 = load i8, ptr %79, align 2
  %81 = getelementptr inbounds [4 x i8], ptr %16, i32 0, i32 3
  %82 = load i8, ptr %81, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #13
  %83 = icmp eq i32 %76, 0
  br i1 %83, label %84, label %160

84:                                               ; preds = %75
  %85 = zext i8 %78 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = zext i8 %80 to i32
  %88 = shl nuw nsw i32 %87, 16
  %89 = or i32 %88, %86
  %90 = lshr i8 %82, 5
  %91 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 8
  store i8 %90, ptr %91, align 4
  %92 = lshr i32 %89, 12
  %93 = trunc i32 %92 to i8
  switch i8 %93, label %163 [
    i8 49, label %94
    i8 51, label %113
    i8 69, label %118
    i8 70, label %126
    i8 65, label %134
    i8 67, label %142
    i8 50, label %150
    i8 52, label %155
    i8 66, label %157
    i8 68, label %158
  ]

94:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i8 -70, ptr %15, align 2
  %95 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 -6, ptr %95, align 1
  %96 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %52, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %160

98:                                               ; preds = %94
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i16 0, ptr %14, align 2, !annotation !8
  %99 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %52, i32 noundef 8323093, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %160

101:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 0, ptr %13, align 2
  %102 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %102, align 1
  %103 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %52, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %160

105:                                              ; preds = %101
  store i8 1, ptr %51, align 4
  %106 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 2
  store i8 0, ptr %106, align 2
  %107 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 3
  store i8 0, ptr %107, align 1
  %108 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 1
  store i8 0, ptr %108, align 1
  %109 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 4
  store i8 1, ptr %109, align 4
  %110 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 5
  store i8 0, ptr %110, align 1
  %111 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 6
  store i8 0, ptr %111, align 2
  %112 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 7
  store i8 0, ptr %112, align 1
  br label %166

113:                                              ; preds = %84
  %114 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 4
  store i32 0, ptr %51, align 4
  store i8 1, ptr %114, align 4
  %115 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 5
  store i8 0, ptr %115, align 1
  %116 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 6
  store i8 0, ptr %116, align 2
  %117 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 7
  store i8 0, ptr %117, align 1
  br label %166

118:                                              ; preds = %84
  store i8 1, ptr %51, align 4
  %119 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 2
  store i8 1, ptr %119, align 2
  %120 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 3
  store i8 0, ptr %120, align 1
  %121 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 1
  store i8 0, ptr %121, align 1
  %122 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 4
  store i8 1, ptr %122, align 4
  %123 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 5
  store i8 1, ptr %123, align 1
  %124 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 6
  store i8 1, ptr %124, align 2
  %125 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 7
  store i8 0, ptr %125, align 1
  br label %166

126:                                              ; preds = %84
  store i8 0, ptr %51, align 4
  %127 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 2
  store i8 1, ptr %127, align 2
  %128 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 3
  store i8 0, ptr %128, align 1
  %129 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 1
  store i8 0, ptr %129, align 1
  %130 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 4
  store i8 1, ptr %130, align 4
  %131 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 5
  store i8 1, ptr %131, align 1
  %132 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 6
  store i8 1, ptr %132, align 2
  %133 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 7
  store i8 0, ptr %133, align 1
  br label %166

134:                                              ; preds = %84
  store i8 1, ptr %51, align 4
  %135 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 2
  store i8 1, ptr %135, align 2
  %136 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 3
  store i8 1, ptr %136, align 1
  %137 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 1
  store i8 0, ptr %137, align 1
  %138 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 4
  store i8 1, ptr %138, align 4
  %139 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 5
  store i8 1, ptr %139, align 1
  %140 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 6
  store i8 1, ptr %140, align 2
  %141 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 7
  store i8 0, ptr %141, align 1
  br label %166

142:                                              ; preds = %84
  store i8 0, ptr %51, align 4
  %143 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 2
  store i8 1, ptr %143, align 2
  %144 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 3
  store i8 1, ptr %144, align 1
  %145 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 1
  store i8 0, ptr %145, align 1
  %146 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 4
  store i8 1, ptr %146, align 4
  %147 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 5
  store i8 1, ptr %147, align 1
  %148 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 6
  store i8 1, ptr %148, align 2
  %149 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 7
  store i8 0, ptr %149, align 1
  br label %166

150:                                              ; preds = %84
  store i8 1, ptr %51, align 4
  %151 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 2
  store i8 0, ptr %151, align 2
  %152 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 3
  store i8 0, ptr %152, align 1
  %153 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 1
  store i8 1, ptr %153, align 1
  %154 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 4
  store i32 16843009, ptr %154, align 4
  br label %166

155:                                              ; preds = %84
  store i8 0, ptr %51, align 4
  %156 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(7) %156, i8 1, i64 7, i1 false) #13
  br label %166

157:                                              ; preds = %84
  store i64 72340172838076673, ptr %51, align 4
  br label %166

158:                                              ; preds = %84
  store i8 0, ptr %51, align 4
  %159 = getelementptr inbounds %struct.drxj_data, ptr %51, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(7) %159, i8 1, i64 7, i1 false) #13
  br label %166

160:                                              ; preds = %101, %98, %94, %75, %62, %58, %54, %49
  %161 = phi i32 [ %56, %54 ], [ -22, %49 ], [ %59, %58 ], [ %64, %62 ], [ %76, %75 ], [ %96, %94 ], [ %99, %98 ], [ %103, %101 ]
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.get_device_capabilities, i32 noundef %161) #14
  br label %163

163:                                              ; preds = %160, %84
  %164 = phi i32 [ -5, %84 ], [ %161, %160 ]
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %164) #14
  br label %304

166:                                              ; preds = %158, %157, %155, %150, %142, %134, %126, %118, %113, %105
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 7, ptr %12, align 2
  %167 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %167, align 1
  %168 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %33, i32 noundef 4522006, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %168) #14
  br label %304

172:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 -70, ptr %11, align 2
  %173 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 -6, ptr %173, align 1
  %174 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %33, i32 noundef 4522007, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %174) #14
  br label %304

178:                                              ; preds = %172
  call void @msleep(i32 noundef 1) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 -3, ptr %10, align 2
  %179 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 -1, ptr %179, align 1
  %180 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %33, i32 noundef 12648485, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %180) #14
  br label %304

184:                                              ; preds = %178
  %185 = load ptr, ptr %0, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %198, label %187

187:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i16 0, ptr %9, align 2, !annotation !8
  %188 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %185, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  %189 = load i8, ptr %9, align 2
  %190 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %191 = load i8, ptr %190, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %192 = icmp eq i32 %188, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %187
  %194 = and i8 %189, -63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 %194, ptr %8, align 2
  %195 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 %191, ptr %195, align 1
  %196 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %185, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %193, %187, %184
  %199 = phi i32 [ %188, %187 ], [ -22, %184 ], [ %196, %193 ]
  %200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_iqm_af, i32 noundef %199) #14
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %199) #14
  br label %304

202:                                              ; preds = %193
  %203 = load ptr, ptr %0, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %214, label %205

205:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i16 0, ptr %7, align 2, !annotation !8
  %206 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %203, i32 noundef 33947664, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  %207 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %208 = load i8, ptr %207, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %209 = icmp eq i32 %206, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 0, ptr %6, align 2
  %211 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 %208, ptr %211, align 1
  %212 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %203, i32 noundef 33947664, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %210, %205, %202
  %215 = phi i32 [ %206, %205 ], [ -22, %202 ], [ %212, %210 ]
  %216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_orx_nsu_aox, i32 noundef %215) #14
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %215) #14
  br label %304

218:                                              ; preds = %210
  %219 = call fastcc i32 @init_hi(ptr noundef nonnull %0)
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %218
  %222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %219) #14
  br label %304

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.drx_common_attr, ptr %26, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %21, ptr noundef align 4 dereferenceable(20) %224, i32 20, i1 false)
  store i8 0, ptr %21, align 4
  %225 = call fastcc i32 @ctrl_set_cfg_mpeg_output(ptr noundef nonnull %0, ptr noundef nonnull %21)
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %223
  %228 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %225) #14
  br label %304

229:                                              ; preds = %223
  %230 = load ptr, ptr %0, align 4
  %231 = load ptr, ptr %29, align 4
  %232 = call fastcc i32 @drxj_dap_write_reg16(ptr noundef %230, i32 noundef 16777216, i16 noundef zeroext 0, i32 noundef 0) #13
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %229
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.power_down_aud, i32 noundef %232) #14
  %236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %232) #14
  br label %304

237:                                              ; preds = %229
  %238 = getelementptr inbounds %struct.drxj_data, ptr %231, i32 0, i32 78
  store i8 0, ptr %238, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 0, ptr %5, align 2
  %239 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %239, align 1
  %240 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %33, i32 noundef 8388608, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %237
  %243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %240) #14
  br label %304

244:                                              ; preds = %237
  %245 = load ptr, ptr %26, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %268, label %247

247:                                              ; preds = %244
  store i8 1, ptr %36, align 4
  store ptr %245, ptr %20, align 4
  %248 = load ptr, ptr %25, align 4
  %249 = getelementptr inbounds %struct.drx_common_attr, ptr %248, i32 0, i32 21
  %250 = load i32, ptr %249, align 4
  switch i32 %250, label %253 [
    i32 9, label %251
    i32 10, label %251
    i32 11, label %251
    i32 12, label %251
    i32 13, label %251
    i32 14, label %251
    i32 15, label %251
    i32 16, label %251
    i32 255, label %251
  ]

251:                                              ; preds = %247, %247, %247, %247, %247, %247, %247, %247, %247
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.drxj_open) #14
  br label %306

253:                                              ; preds = %247
  %254 = call fastcc i32 @drx_ctrl_u_code(ptr noundef nonnull %0, ptr noundef nonnull %20, i32 noundef 0)
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %253
  %257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.drxj_open, i32 noundef %254) #14
  br label %304

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.drx_common_attr, ptr %26, i32 0, i32 1
  %260 = load i8, ptr %259, align 4, !range !9
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %258
  %263 = call fastcc i32 @drx_ctrl_u_code(ptr noundef nonnull %0, ptr noundef nonnull %20, i32 noundef 1)
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %262
  %266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.drxj_open, i32 noundef %263) #14
  br label %304

267:                                              ; preds = %262, %258
  store i8 0, ptr %36, align 4
  br label %268

268:                                              ; preds = %267, %244
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 1, ptr %4, align 2
  %269 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %269, align 1
  %270 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %33, i32 noundef 8388608, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %268
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %270) #14
  br label %304

274:                                              ; preds = %268
  %275 = getelementptr inbounds %struct.drx_common_attr, ptr %26, i32 0, i32 18
  store i16 1000, ptr %275, align 4
  %276 = getelementptr inbounds %struct.drx_common_attr, ptr %26, i32 0, i32 19
  store i32 11, ptr %276, align 4
  call fastcc void @drxj_reset_mode(ptr noundef nonnull %30)
  %277 = getelementptr inbounds %struct.drxj_data, ptr %30, i32 0, i32 10
  store i32 254, ptr %277, align 4
  %278 = call fastcc i32 @smart_ant_init(ptr noundef nonnull %0)
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %274
  %281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %278) #14
  br label %304

282:                                              ; preds = %274
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 16, ptr %3, align 2
  %283 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %283, align 1
  %284 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %33, i32 noundef 8593387, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %282
  %287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %284) #14
  br label %304

288:                                              ; preds = %282
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 86, ptr %2, align 2
  %289 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 0, ptr %289, align 1
  %290 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %33, i32 noundef 8593388, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %288
  %293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %290) #14
  br label %304

294:                                              ; preds = %288
  %295 = call fastcc i32 @ctrl_set_oob(ptr noundef nonnull %0)
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %294
  %298 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_open, i32 noundef %295) #14
  br label %304

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.drxj_data, ptr %30, i32 0, i32 78
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(136) %300, ptr noundef nonnull align 4 dereferenceable(136) @drxj_default_aud_data_g, i32 136, i1 false)
  %301 = load ptr, ptr %25, align 4
  %302 = getelementptr inbounds %struct.drx_common_attr, ptr %301, i32 0, i32 9
  store i8 1, ptr %302, align 4
  %303 = call fastcc i32 @drxj_set_lna_state(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %306

304:                                              ; preds = %297, %292, %286, %280, %272, %265, %256, %242, %234, %227, %221, %214, %198, %182, %176, %170, %163, %47, %42
  %305 = phi i32 [ %40, %42 ], [ -22, %47 ], [ %164, %163 ], [ %168, %170 ], [ %174, %176 ], [ %180, %182 ], [ %199, %198 ], [ %215, %214 ], [ %219, %221 ], [ %225, %227 ], [ %232, %234 ], [ %240, %242 ], [ %254, %256 ], [ %263, %265 ], [ %270, %272 ], [ %278, %280 ], [ %284, %286 ], [ %290, %292 ], [ %295, %297 ]
  store i8 0, ptr %36, align 4
  br label %306

306:                                              ; preds = %304, %299, %251, %35, %32, %28, %24, %1
  %307 = phi i32 [ %305, %304 ], [ -22, %251 ], [ 0, %299 ], [ -22, %35 ], [ -22, %32 ], [ -22, %28 ], [ -22, %24 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #13
  ret i32 %307
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_power_mode(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.drxj_hi_cmd, align 2
  %4 = alloca i16, align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.drxjscu_cmd, align 4
  %13 = alloca i16, align 2
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca i8, align 1
  %17 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = icmp eq ptr %1, null
  br i1 %20, label %246, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drx_common_attr, ptr %23, i32 0, i32 21
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %1, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %246, label %28

28:                                               ; preds = %21
  switch i32 %26, label %246 [
    i32 0, label %32
    i32 8, label %32
    i32 9, label %29
    i32 10, label %30
    i32 255, label %31
  ]

29:                                               ; preds = %28
  br label %32

30:                                               ; preds = %28
  br label %32

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %28
  %33 = phi i8 [ 3, %31 ], [ 2, %30 ], [ 1, %29 ], [ 0, %28 ], [ 0, %28 ]
  %34 = icmp eq i32 %25, 0
  br i1 %34, label %76, label %35

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #13
  %36 = load i16, ptr %19, align 4
  %37 = getelementptr inbounds %struct.i2c_device_addr, ptr %19, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = lshr i16 %36, 1
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 2
  br label %45

45:                                               ; preds = %69, %35
  %46 = phi i16 [ 0, %35 ], [ %56, %69 ]
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 24, i1 false) #13, !annotation !8
  store i16 %39, ptr %15, align 4
  store ptr %16, ptr %40, align 4
  store i16 1, ptr %41, align 4
  %47 = load ptr, ptr %38, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = call i32 @i2c_transfer(ptr noundef nonnull %47, ptr noundef nonnull %15, i32 noundef 1) #13
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %49, %45
  %53 = phi ptr [ @.str, %45 ], [ @.str.1, %49 ]
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %53, ptr noundef nonnull @__func__.drxbsp_i2c_write_read) #14
  br label %55

55:                                               ; preds = %52, %49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #13
  call void @msleep(i32 noundef 10) #13
  %56 = add nuw nsw i16 %46, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %44, i8 0, i32 20, i1 false) #13, !annotation !8
  %57 = load ptr, ptr %37, align 4
  %58 = load i16, ptr %19, align 4
  %59 = lshr i16 %58, 1
  store i16 %59, ptr %14, align 4
  store i16 1, ptr %42, align 2
  store ptr %16, ptr %43, align 4
  store i16 1, ptr %44, align 4
  %60 = load ptr, ptr %57, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxbsp_i2c_write_read) #14
  br label %67

64:                                               ; preds = %55
  %65 = call i32 @i2c_transfer(ptr noundef nonnull %60, ptr noundef nonnull %14, i32 noundef 1) #13
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64, %62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #13
  %68 = icmp eq i16 %56, 10
  br i1 %68, label %74, label %72

69:                                               ; preds = %64
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.drxbsp_i2c_write_read) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #13
  %71 = icmp ult i16 %46, 9
  br i1 %71, label %45, label %74

72:                                               ; preds = %67
  call void @msleep(i32 noundef 10) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #13
  %73 = load i32, ptr %1, align 4
  br label %76

74:                                               ; preds = %69, %67
  call void @msleep(i32 noundef 10) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #13
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_power_mode, i32 noundef -5) #14
  br label %246

76:                                               ; preds = %72, %32
  %77 = phi i32 [ %73, %72 ], [ %26, %32 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %121

79:                                               ; preds = %76
  %80 = load i8, ptr %18, align 4, !range !9
  %81 = icmp eq i8 %80, 0
  %82 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 48
  store i32 9, ptr %82, align 4
  %83 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 48, i32 1
  br i1 %81, label %85, label %84

84:                                               ; preds = %79
  store i32 2, ptr %83, align 4
  br label %94

85:                                               ; preds = %79
  store i32 0, ptr %83, align 4
  %86 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 48, i32 3
  store i16 0, ptr %86, align 2
  %87 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 48, i32 4
  store i16 32767, ptr %87, align 4
  %88 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 48, i32 5
  store i16 3, ptr %88, align 2
  %89 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 48, i32 6
  store i16 1297, ptr %89, align 4
  %90 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 50, i32 3
  store i16 0, ptr %90, align 2
  %91 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 50, i32 4
  store i16 32767, ptr %91, align 4
  %92 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 50, i32 5
  store i16 3, ptr %92, align 2
  %93 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 50, i32 6
  store i16 1024, ptr %93, align 4
  br label %94

94:                                               ; preds = %85, %84
  %95 = phi i16 [ 140, %85 ], [ 283, %84 ]
  %96 = phi i32 [ 0, %85 ], [ 2, %84 ]
  %97 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 51
  store i16 %95, ptr %97, align 4
  %98 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 50
  store i32 1, ptr %98, align 4
  %99 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 50, i32 1
  store i32 %96, ptr %99, align 4
  %100 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 52
  store i16 %95, ptr %100, align 2
  %101 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 47
  store i32 9, ptr %101, align 4
  %102 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 47, i32 1
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 47, i32 3
  store i16 0, ptr %103, align 2
  %104 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 47, i32 4
  store i16 32767, ptr %104, align 4
  %105 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 47, i32 5
  store i16 3, ptr %105, align 2
  %106 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 47, i32 6
  store i16 9500, ptr %106, align 4
  %107 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 47, i32 7
  store i16 4000, ptr %107, align 2
  %108 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 53
  store i32 9, ptr %108, align 4
  %109 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 53, i32 1
  store i16 7, ptr %109, align 4
  %110 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 53, i32 2
  store i8 1, ptr %110, align 2
  %111 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 49
  store i32 1, ptr %111, align 4
  %112 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 49, i32 1
  store i32 0, ptr %112, align 4
  %113 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 49, i32 3
  store i16 0, ptr %113, align 2
  %114 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 49, i32 4
  store i16 32767, ptr %114, align 4
  %115 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 49, i32 5
  store i16 3, ptr %115, align 2
  %116 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 49, i32 6
  store i16 9500, ptr %116, align 4
  %117 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 49, i32 7
  store i16 4000, ptr %117, align 2
  %118 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 54
  store i32 1, ptr %118, align 4
  %119 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 54, i32 1
  store i16 7, ptr %119, align 4
  %120 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 54, i32 2
  store i8 1, ptr %120, align 2
  br label %187

121:                                              ; preds = %76
  %122 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 10
  %123 = load i32, ptr %122, align 4
  switch i32 %123, label %246 [
    i32 8, label %124
    i32 9, label %124
    i32 10, label %124
    i32 1, label %129
    i32 3, label %134
    i32 4, label %134
    i32 5, label %134
    i32 6, label %134
    i32 7, label %134
    i32 2, label %134
    i32 12, label %134
    i32 254, label %186
  ]

124:                                              ; preds = %121, %121, %121
  %125 = call fastcc i32 @power_down_qam(ptr noundef %0, i1 noundef zeroext true)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %186, label %127

127:                                              ; preds = %124
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_power_mode, i32 noundef %125) #14
  br label %246

129:                                              ; preds = %121
  %130 = call fastcc i32 @power_down_vsb(ptr noundef %0, i1 noundef zeroext true)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %186, label %132

132:                                              ; preds = %129
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_power_mode, i32 noundef %130) #14
  br label %246

134:                                              ; preds = %121, %121, %121, %121, %121, %121, %121
  %135 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #13
  %136 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 1, ptr %136, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i16 0, ptr %13, align 2
  store i16 265, ptr %12, align 4
  %137 = getelementptr inbounds %struct.drxjscu_cmd, ptr %12, i32 0, i32 1
  store i16 0, ptr %137, align 2
  %138 = getelementptr inbounds %struct.drxjscu_cmd, ptr %12, i32 0, i32 3
  store ptr null, ptr %138, align 4
  %139 = getelementptr inbounds %struct.drxjscu_cmd, ptr %12, i32 0, i32 4
  store ptr %13, ptr %139, align 4
  %140 = call fastcc i32 @scu_command(ptr noundef %135, ptr noundef nonnull %12) #13
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %182

142:                                              ; preds = %134
  %143 = icmp eq ptr %135, null
  br i1 %143, label %182, label %144

144:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 1, ptr %11, align 2
  %145 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %145, align 1
  %146 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %135, i32 noundef 12648485, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %182

148:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 0, ptr %10, align 2
  %149 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 0, ptr %149, align 1
  %150 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %135, i32 noundef 12582912, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %182

152:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 0, ptr %9, align 2
  %153 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 0, ptr %153, align 1
  %154 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %135, i32 noundef 25165824, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %182

156:                                              ; preds = %152
  %157 = load ptr, ptr %0, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %170, label %159

159:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i16 0, ptr %8, align 2, !annotation !8
  %160 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %157, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  %161 = load i8, ptr %8, align 2
  %162 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %163 = load i8, ptr %162, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %164 = icmp eq i32 %160, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %159
  %166 = and i8 %161, -63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 %166, ptr %7, align 2
  %167 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 %163, ptr %167, align 1
  %168 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %157, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %165, %159, %156
  %171 = phi i32 [ %160, %159 ], [ -22, %156 ], [ %168, %165 ]
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_iqm_af, i32 noundef %171) #14
  br label %182

173:                                              ; preds = %165
  %174 = load ptr, ptr %0, align 4
  %175 = load ptr, ptr %17, align 4
  %176 = call fastcc i32 @drxj_dap_write_reg16(ptr noundef %174, i32 noundef 16777216, i16 noundef zeroext 0, i32 noundef 0) #13
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %173
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.power_down_aud, i32 noundef %176) #14
  br label %182

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.drxj_data, ptr %175, i32 0, i32 78
  store i8 0, ptr %181, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  br label %186

182:                                              ; preds = %178, %170, %152, %148, %144, %142, %134
  %183 = phi i32 [ %171, %170 ], [ %176, %178 ], [ %140, %134 ], [ %146, %144 ], [ -22, %142 ], [ %150, %148 ], [ %154, %152 ]
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.power_down_atv, i32 noundef %183) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #13
  %185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_power_mode, i32 noundef %183) #14
  br label %246

186:                                              ; preds = %180, %129, %124, %121
  store i32 254, ptr %122, align 4
  br label %187

187:                                              ; preds = %186, %94
  %188 = load i32, ptr %1, align 4
  %189 = icmp eq i32 %188, 8
  br i1 %189, label %244, label %190

190:                                              ; preds = %187
  %191 = icmp eq ptr %19, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 %33, ptr %6, align 2
  %193 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %193, align 1
  %194 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %19, i32 noundef 4522005, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %192, %190
  %197 = phi i32 [ %194, %192 ], [ -22, %190 ]
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_power_mode, i32 noundef %197) #14
  br label %246

199:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 -70, ptr %5, align 2
  %200 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 -6, ptr %200, align 1
  %201 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %19, i32 noundef 4522007, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_power_mode, i32 noundef %201) #14
  br label %246

205:                                              ; preds = %199
  %206 = load i32, ptr %1, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %244, label %208

208:                                              ; preds = %205
  %209 = call fastcc i32 @init_hi(ptr noundef %0)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %208
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_power_mode, i32 noundef %209) #14
  br label %246

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.drxj_data, ptr %18, i32 0, i32 27
  %215 = load i16, ptr %214, align 2
  %216 = or i16 %215, 8
  store i16 %216, ptr %214, align 2
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2
  %217 = load ptr, ptr %17, align 4
  store i16 3, ptr %3, align 2
  %218 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %3, i32 0, i32 1
  store i16 14661, ptr %218, align 2
  %219 = getelementptr inbounds %struct.drxj_data, ptr %217, i32 0, i32 24
  %220 = load i16, ptr %219, align 4
  %221 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %3, i32 0, i32 2
  store i16 %220, ptr %221, align 2
  %222 = getelementptr inbounds %struct.drxj_data, ptr %217, i32 0, i32 25
  %223 = load i16, ptr %222, align 2
  %224 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %3, i32 0, i32 3
  store i16 %223, ptr %224, align 2
  %225 = getelementptr inbounds %struct.drxj_data, ptr %217, i32 0, i32 26
  %226 = load i16, ptr %225, align 4
  %227 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %3, i32 0, i32 4
  store i16 %226, ptr %227, align 2
  %228 = getelementptr inbounds %struct.drxj_data, ptr %217, i32 0, i32 27
  %229 = load i16, ptr %228, align 2
  %230 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %3, i32 0, i32 5
  store i16 %229, ptr %230, align 2
  %231 = getelementptr inbounds %struct.drxj_data, ptr %217, i32 0, i32 28
  %232 = load i16, ptr %231, align 4
  %233 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %3, i32 0, i32 6
  store i16 %232, ptr %233, align 2
  %234 = load ptr, ptr %0, align 4
  %235 = call fastcc i32 @hi_command(ptr noundef %234, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %213
  %238 = load i16, ptr %228, align 2
  %239 = and i16 %238, -9
  store i16 %239, ptr %228, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #13
  %240 = load i32, ptr %1, align 4
  br label %244

241:                                              ; preds = %213
  %242 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hi_cfg_command, i32 noundef %235) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #13
  %243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_power_mode, i32 noundef %235) #14
  br label %246

244:                                              ; preds = %237, %205, %187
  %245 = phi i32 [ %240, %237 ], [ 0, %205 ], [ 8, %187 ]
  store i32 %245, ptr %24, align 4
  br label %246

246:                                              ; preds = %244, %241, %211, %203, %196, %182, %132, %127, %121, %74, %28, %21, %2
  %247 = phi i32 [ 0, %244 ], [ -22, %2 ], [ 0, %21 ], [ -22, %28 ], [ -5, %121 ], [ -5, %74 ], [ %197, %196 ], [ %201, %203 ], [ %209, %211 ], [ %235, %241 ], [ %183, %182 ], [ %130, %132 ], [ %125, %127 ]
  ret i32 %247
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drxj_dap_write_reg16(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = icmp eq ptr %0, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %4
  %10 = and i32 %1, 264241152
  %11 = icmp eq i32 %10, 16777216
  %12 = lshr i32 %1, 16
  %13 = and i32 %12, 63
  %14 = add nsw i32 %13, -2
  %15 = icmp ult i32 %14, 4
  %16 = select i1 %11, i1 %15, i1 false
  br i1 %16, label %17, label %43

17:                                               ; preds = %9
  %18 = and i32 %1, 4128768
  %19 = icmp eq i32 %18, 131072
  br i1 %19, label %49, label %20

20:                                               ; preds = %17
  %21 = or i32 %1, 65536
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = tail call i32 @jiffies_to_msecs(i32 noundef %22) #13
  %24 = trunc i16 %2 to i8
  %25 = lshr i16 %2, 8
  %26 = trunc i16 %25 to i8
  %27 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  br label %28

28:                                               ; preds = %40, %20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 %24, ptr %7, align 2
  store i8 %26, ptr %27, align 1
  %29 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef %21, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 268435456) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i16 0, ptr %6, align 2, !annotation !8
  %32 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %0, i32 noundef 4325401, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  %33 = load i8, ptr %6, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load volatile i32, ptr @jiffies, align 64
  %37 = call i32 @jiffies_to_msecs(i32 noundef %36) #13
  %38 = sub i32 %37, %23
  %39 = icmp ugt i32 %38, 80
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = and i8 %33, 12
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %49, label %28

43:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %44 = trunc i16 %2 to i8
  store i8 %44, ptr %5, align 2
  %45 = lshr i16 %2, 8
  %46 = trunc i16 %45 to i8
  %47 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %46, ptr %47, align 1
  %48 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef %1, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef %3) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  br label %49

49:                                               ; preds = %43, %40, %35, %31, %28, %17, %4
  %50 = phi i32 [ -22, %4 ], [ %48, %43 ], [ -22, %17 ], [ %32, %31 ], [ 0, %40 ], [ -5, %35 ], [ %29, %28 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_iqm_af(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  %8 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %5, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  %9 = load i8, ptr %4, align 2
  %10 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = and i8 %9, -63
  %15 = select i1 %1, i8 62, i8 0
  %16 = or i8 %14, %15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 %16, ptr %3, align 2
  %17 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %11, ptr %17, align 1
  %18 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %5, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13, %7, %2
  %21 = phi i32 [ %8, %7 ], [ -22, %2 ], [ %18, %13 ]
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_iqm_af, i32 noundef %21) #14
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi i32 [ 0, %13 ], [ %21, %20 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_hi(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.drxj_hi_cmd, align 2
  %3 = alloca i16, align 2
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 1, ptr %4, align 2
  %12 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 8, ptr %12, align 1
  %13 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %9, i32 noundef 4391383, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %1
  %16 = phi i32 [ %13, %11 ], [ -22, %1 ]
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.init_hi, i32 noundef %16) #14
  br label %65

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.drx_common_attr, ptr %8, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = sdiv i32 %20, 1000
  %22 = trunc i32 %21 to i16
  %23 = mul i16 %22, 42
  %24 = udiv i16 %23, 1000
  %25 = getelementptr inbounds %struct.drxj_data, ptr %6, i32 0, i32 24
  store i16 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.drx_common_attr, ptr %8, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = sdiv i32 %27, 1000
  %29 = trunc i32 %28 to i16
  %30 = mul i16 %29, 750
  %31 = udiv i16 %30, 1000
  %32 = getelementptr inbounds %struct.drxj_data, ptr %6, i32 0, i32 25
  %33 = mul nuw nsw i16 %31, 129
  store i16 %33, ptr %32, align 2
  %34 = load ptr, ptr %0, align 4
  %35 = load i16, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drxj_data, ptr %6, i32 0, i32 26
  store i16 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.drxj_data, ptr %6, i32 0, i32 27
  store i16 1, ptr %37, align 2
  %38 = getelementptr inbounds %struct.drxj_data, ptr %6, i32 0, i32 28
  store i16 -27137, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2
  %39 = load ptr, ptr %5, align 4
  store i16 3, ptr %2, align 2
  %40 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %2, i32 0, i32 1
  store i16 14661, ptr %40, align 2
  %41 = getelementptr inbounds %struct.drxj_data, ptr %39, i32 0, i32 24
  %42 = load i16, ptr %41, align 4
  %43 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %2, i32 0, i32 2
  store i16 %42, ptr %43, align 2
  %44 = getelementptr inbounds %struct.drxj_data, ptr %39, i32 0, i32 25
  %45 = load i16, ptr %44, align 2
  %46 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %2, i32 0, i32 3
  store i16 %45, ptr %46, align 2
  %47 = getelementptr inbounds %struct.drxj_data, ptr %39, i32 0, i32 26
  %48 = load i16, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %2, i32 0, i32 4
  store i16 %48, ptr %49, align 2
  %50 = getelementptr inbounds %struct.drxj_data, ptr %39, i32 0, i32 27
  %51 = load i16, ptr %50, align 2
  %52 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %2, i32 0, i32 5
  store i16 %51, ptr %52, align 2
  %53 = getelementptr inbounds %struct.drxj_data, ptr %39, i32 0, i32 28
  %54 = load i16, ptr %53, align 4
  %55 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %2, i32 0, i32 6
  store i16 %54, ptr %55, align 2
  %56 = load ptr, ptr %0, align 4
  %57 = call fastcc i32 @hi_command(ptr noundef %56, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %18
  %60 = load i16, ptr %50, align 2
  %61 = and i16 %60, -9
  store i16 %61, ptr %50, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #13
  br label %65

62:                                               ; preds = %18
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hi_cfg_command, i32 noundef %57) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #13
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.init_hi, i32 noundef %57) #14
  br label %65

65:                                               ; preds = %62, %59, %15
  %66 = phi i32 [ %16, %15 ], [ %57, %62 ], [ 0, %59 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_set_cfg_mpeg_output(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x i8], align 2
  %23 = alloca [2 x i8], align 2
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x i8], align 2
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x i8], align 2
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x i8], align 2
  %31 = alloca [2 x i8], align 2
  %32 = alloca [2 x i8], align 2
  %33 = alloca [2 x i8], align 2
  %34 = alloca [2 x i8], align 2
  %35 = alloca [2 x i8], align 2
  %36 = alloca [2 x i8], align 2
  %37 = alloca [2 x i8], align 2
  %38 = alloca [2 x i8], align 2
  %39 = alloca [2 x i8], align 2
  %40 = alloca [2 x i8], align 2
  %41 = alloca [2 x i8], align 2
  %42 = alloca [2 x i8], align 2
  %43 = alloca [2 x i8], align 2
  %44 = alloca [4 x i8], align 4
  %45 = alloca [2 x i8], align 2
  %46 = alloca [2 x i8], align 2
  %47 = alloca [2 x i8], align 2
  %48 = alloca [2 x i8], align 2
  %49 = alloca [2 x i8], align 2
  %50 = alloca [2 x i8], align 2
  %51 = alloca [2 x i8], align 2
  %52 = alloca [2 x i8], align 2
  %53 = alloca [2 x i8], align 2
  %54 = alloca [2 x i8], align 2
  %55 = alloca [2 x i8], align 2
  %56 = alloca [2 x i8], align 2
  %57 = alloca [2 x i8], align 2
  %58 = alloca [2 x i8], align 2
  %59 = alloca [2 x i8], align 2
  %60 = alloca [2 x i8], align 2
  %61 = alloca [2 x i8], align 2
  %62 = alloca [2 x i8], align 2
  %63 = alloca [2 x i8], align 2
  %64 = alloca [2 x i8], align 2
  %65 = alloca [2 x i8], align 2
  %66 = alloca [2 x i8], align 2
  %67 = alloca [2 x i8], align 2
  %68 = alloca [2 x i8], align 2
  %69 = alloca [2 x i8], align 2
  %70 = alloca [2 x i8], align 2
  %71 = alloca [2 x i8], align 2
  %72 = alloca [2 x i8], align 2
  %73 = icmp eq ptr %0, null
  %74 = icmp eq ptr %1, null
  %75 = or i1 %73, %74
  br i1 %75, label %848, label %76

76:                                               ; preds = %2
  %77 = load ptr, ptr %0, align 4
  %78 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = load i8, ptr %1, align 4, !range !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %752, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.drxj_data, ptr %79, i32 0, i32 10
  %86 = load i32, ptr %85, align 4
  switch i32 %86, label %848 [
    i32 1, label %87
    i32 8, label %87
    i32 9, label %87
    i32 10, label %87
  ]

87:                                               ; preds = %84, %84, %84, %84
  %88 = icmp eq ptr %77, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %72) #13
  store i8 0, ptr %72, align 2
  %90 = getelementptr inbounds [2 x i8], ptr %72, i32 0, i32 1
  store i8 0, ptr %90, align 1
  %91 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010962, i16 noundef zeroext 2, ptr noundef nonnull %72, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %72) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89, %87
  %94 = phi i32 [ %91, %89 ], [ -22, %87 ]
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %94) #14
  br label %848

96:                                               ; preds = %89
  %97 = load i32, ptr %85, align 4
  switch i32 %97, label %217 [
    i32 1, label %98
    i32 8, label %146
    i32 10, label %146
    i32 9, label %158
  ]

98:                                               ; preds = %96
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %71) #13
  store i8 7, ptr %71, align 2
  %99 = getelementptr inbounds [2 x i8], ptr %71, i32 0, i32 1
  store i8 0, ptr %99, align 1
  %100 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010907, i16 noundef zeroext 2, ptr noundef nonnull %71, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %71) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %100) #14
  br label %848

104:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %70) #13
  store i8 10, ptr %70, align 2
  %105 = getelementptr inbounds [2 x i8], ptr %70, i32 0, i32 1
  store i8 0, ptr %105, align 1
  %106 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010914, i16 noundef zeroext 2, ptr noundef nonnull %70, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %70) #13
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %106) #14
  br label %848

110:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %69) #13
  store i8 10, ptr %69, align 2
  %111 = getelementptr inbounds [2 x i8], ptr %69, i32 0, i32 1
  store i8 0, ptr %111, align 1
  %112 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010915, i16 noundef zeroext 2, ptr noundef nonnull %69, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %69) #13
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %112) #14
  br label %848

116:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %68) #13
  store i8 5, ptr %68, align 2
  %117 = getelementptr inbounds [2 x i8], ptr %68, i32 0, i32 1
  store i8 0, ptr %117, align 1
  %118 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010918, i16 noundef zeroext 2, ptr noundef nonnull %68, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %68) #13
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %118) #14
  br label %848

122:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %67) #13
  store i8 7, ptr %67, align 2
  %123 = getelementptr inbounds [2 x i8], ptr %67, i32 0, i32 1
  store i8 0, ptr %123, align 1
  %124 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010919, i16 noundef zeroext 2, ptr noundef nonnull %67, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %67) #13
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %124) #14
  br label %848

128:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %66) #13
  store i8 10, ptr %66, align 2
  %129 = getelementptr inbounds [2 x i8], ptr %66, i32 0, i32 1
  store i8 0, ptr %129, align 1
  %130 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010926, i16 noundef zeroext 2, ptr noundef nonnull %66, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %66) #13
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %130) #14
  br label %848

134:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %65) #13
  store i8 3, ptr %65, align 2
  %135 = getelementptr inbounds [2 x i8], ptr %65, i32 0, i32 1
  store i8 0, ptr %135, align 1
  %136 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010945, i16 noundef zeroext 2, ptr noundef nonnull %65, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %65) #13
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %136) #14
  br label %848

140:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %64) #13
  store i8 5, ptr %64, align 2
  %141 = getelementptr inbounds [2 x i8], ptr %64, i32 0, i32 1
  store i8 0, ptr %141, align 1
  %142 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010946, i16 noundef zeroext 2, ptr noundef nonnull %64, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %64) #13
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %217, label %144

144:                                              ; preds = %140
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %142) #14
  br label %848

146:                                              ; preds = %96, %96
  %147 = getelementptr inbounds %struct.drxj_data, ptr %79, i32 0, i32 11
  %148 = load i32, ptr %147, align 4
  %149 = add i32 %148, -3
  %150 = icmp ult i32 %149, 5
  br i1 %150, label %151, label %848

151:                                              ; preds = %146
  %152 = mul i32 %149, 188
  %153 = add i32 %152, 752
  %154 = getelementptr inbounds %struct.drxj_data, ptr %79, i32 0, i32 70
  %155 = load i32, ptr %154, align 4
  %156 = lshr i32 %155, 3
  %157 = mul i32 %153, %156
  br label %158

158:                                              ; preds = %151, %96
  %159 = phi i32 [ 0, %96 ], [ %157, %151 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %63) #13
  store i8 2, ptr %63, align 2
  %160 = getelementptr inbounds [2 x i8], ptr %63, i32 0, i32 1
  store i8 0, ptr %160, align 1
  %161 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010907, i16 noundef zeroext 2, ptr noundef nonnull %63, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %63) #13
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %158
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %161) #14
  br label %848

165:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %62) #13
  store i8 1, ptr %62, align 2
  %166 = getelementptr inbounds [2 x i8], ptr %62, i32 0, i32 1
  store i8 0, ptr %166, align 1
  %167 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010914, i16 noundef zeroext 2, ptr noundef nonnull %62, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %62) #13
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %167) #14
  br label %848

171:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %61) #13
  store i8 5, ptr %61, align 2
  %172 = getelementptr inbounds [2 x i8], ptr %61, i32 0, i32 1
  store i8 0, ptr %172, align 1
  %173 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010915, i16 noundef zeroext 2, ptr noundef nonnull %61, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %61) #13
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %173) #14
  br label %848

177:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %60) #13
  store i8 6, ptr %60, align 2
  %178 = getelementptr inbounds [2 x i8], ptr %60, i32 0, i32 1
  store i8 0, ptr %178, align 1
  %179 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010918, i16 noundef zeroext 2, ptr noundef nonnull %60, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %60) #13
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %179) #14
  br label %848

183:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %59) #13
  store i8 4, ptr %59, align 2
  %184 = getelementptr inbounds [2 x i8], ptr %59, i32 0, i32 1
  store i8 0, ptr %184, align 1
  %185 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010919, i16 noundef zeroext 2, ptr noundef nonnull %59, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %59) #13
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %185) #14
  br label %848

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.drx_cfg_mpeg_output, ptr %1, i32 0, i32 8
  %191 = load i8, ptr %190, align 4, !range !9
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %58) #13
  store i8 13, ptr %58, align 2
  %194 = getelementptr inbounds [2 x i8], ptr %58, i32 0, i32 1
  store i8 0, ptr %194, align 1
  %195 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010926, i16 noundef zeroext 2, ptr noundef nonnull %58, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %58) #13
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %193
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %195) #14
  br label %848

199:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #13
  store i8 12, ptr %57, align 2
  %200 = getelementptr inbounds [2 x i8], ptr %57, i32 0, i32 1
  store i8 0, ptr %200, align 1
  %201 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010926, i16 noundef zeroext 2, ptr noundef nonnull %57, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #13
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %201) #14
  br label %848

205:                                              ; preds = %199, %193
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #13
  store i8 2, ptr %56, align 2
  %206 = getelementptr inbounds [2 x i8], ptr %56, i32 0, i32 1
  store i8 0, ptr %206, align 1
  %207 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010945, i16 noundef zeroext 2, ptr noundef nonnull %56, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #13
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %207) #14
  br label %848

211:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %55) #13
  store i8 12, ptr %55, align 2
  %212 = getelementptr inbounds [2 x i8], ptr %55, i32 0, i32 1
  store i8 0, ptr %212, align 1
  %213 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010946, i16 noundef zeroext 2, ptr noundef nonnull %55, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %55) #13
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %213) #14
  br label %848

217:                                              ; preds = %211, %140, %96
  %218 = phi i32 [ 0, %96 ], [ %159, %211 ], [ 0, %140 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #13
  store i16 0, ptr %54, align 2, !annotation !8
  %219 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %77, i32 noundef 38010897, i16 noundef zeroext 2, ptr noundef nonnull %54, i32 noundef 0) #13
  %220 = load i8, ptr %54, align 2
  %221 = getelementptr inbounds [2 x i8], ptr %54, i32 0, i32 1
  %222 = load i8, ptr %221, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #13
  %223 = icmp eq i32 %219, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %217
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %219) #14
  br label %848

226:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #13
  store i16 0, ptr %53, align 2, !annotation !8
  %227 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %77, i32 noundef 38010952, i16 noundef zeroext 2, ptr noundef nonnull %53, i32 noundef 0) #13
  %228 = load i8, ptr %53, align 2
  %229 = getelementptr inbounds [2 x i8], ptr %53, i32 0, i32 1
  %230 = load i8, ptr %229, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #13
  %231 = icmp eq i32 %227, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %226
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %227) #14
  br label %848

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.drx_cfg_mpeg_output, ptr %1, i32 0, i32 1
  %236 = load i8, ptr %235, align 1, !range !9
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %314, label %238

238:                                              ; preds = %234
  %239 = or i8 %220, 1
  %240 = or i8 %228, 16
  %241 = load i32, ptr %85, align 4
  switch i32 %241, label %848 [
    i32 1, label %390
    i32 9, label %242
    i32 8, label %247
    i32 10, label %247
  ]

242:                                              ; preds = %238
  %243 = or i8 %220, 3
  %244 = getelementptr inbounds %struct.drxj_data, ptr %79, i32 0, i32 11
  %245 = load i32, ptr %244, align 4
  switch i32 %245, label %848 [
    i32 7, label %390
    i32 5, label %246
  ]

246:                                              ; preds = %242
  br label %390

247:                                              ; preds = %238, %238
  %248 = getelementptr inbounds %struct.drx_common_attr, ptr %81, i32 0, i32 4
  %249 = load i32, ptr %248, align 4
  %250 = sdiv i32 %249, 8
  %251 = freeze i32 %218
  %252 = freeze i32 %250
  %253 = udiv i32 %251, %252
  %254 = mul i32 %253, %252
  %255 = sub i32 %251, %254
  %256 = shl i32 %255, 4
  %257 = freeze i32 %250
  %258 = udiv i32 %256, %257
  %259 = mul i32 %258, %257
  %260 = sub i32 %256, %259
  %261 = shl i32 %260, 4
  %262 = shl i32 %253, 8
  %263 = shl i32 %258, 4
  %264 = or i32 %263, %262
  %265 = freeze i32 %261
  %266 = freeze i32 %250
  %267 = udiv i32 %265, %266
  %268 = or i32 %264, %267
  %269 = mul i32 %267, %266
  %270 = sub i32 %265, %269
  %271 = shl i32 %270, 4
  %272 = freeze i32 %250
  %273 = udiv i32 %271, %272
  %274 = mul i32 %273, %272
  %275 = sub i32 %271, %274
  %276 = shl i32 %275, 4
  %277 = shl i32 %268, 8
  %278 = shl i32 %273, 4
  %279 = or i32 %278, %277
  %280 = freeze i32 %276
  %281 = freeze i32 %250
  %282 = udiv i32 %280, %281
  %283 = or i32 %279, %282
  %284 = mul i32 %282, %281
  %285 = sub i32 %280, %284
  %286 = shl i32 %285, 4
  %287 = freeze i32 %250
  %288 = udiv i32 %286, %287
  %289 = mul i32 %288, %287
  %290 = sub i32 %286, %289
  %291 = shl i32 %290, 4
  %292 = shl i32 %283, 8
  %293 = shl i32 %288, 4
  %294 = or i32 %293, %292
  %295 = freeze i32 %291
  %296 = freeze i32 %250
  %297 = udiv i32 %295, %296
  %298 = or i32 %294, %297
  %299 = mul i32 %297, %296
  %300 = sub i32 %295, %299
  %301 = shl i32 %300, 4
  %302 = shl i32 %298, 4
  %303 = freeze i32 %250
  %304 = udiv i32 %301, %303
  %305 = or i32 %304, %302
  %306 = mul i32 %304, %303
  %307 = sub i32 %301, %306
  %308 = shl i32 %307, 1
  %309 = and i32 %308, 536870910
  %310 = icmp uge i32 %309, %250
  %311 = zext i1 %310 to i32
  %312 = add i32 %305, %311
  %313 = udiv i32 %312, 188
  br label %390

314:                                              ; preds = %234
  %315 = and i8 %220, -2
  %316 = and i8 %228, -17
  %317 = load i32, ptr %85, align 4
  switch i32 %317, label %848 [
    i32 1, label %390
    i32 9, label %318
    i32 8, label %323
    i32 10, label %323
  ]

318:                                              ; preds = %314
  %319 = and i8 %220, -4
  %320 = getelementptr inbounds %struct.drxj_data, ptr %79, i32 0, i32 11
  %321 = load i32, ptr %320, align 4
  switch i32 %321, label %848 [
    i32 7, label %390
    i32 5, label %322
  ]

322:                                              ; preds = %318
  br label %390

323:                                              ; preds = %314, %314
  %324 = getelementptr inbounds %struct.drx_common_attr, ptr %81, i32 0, i32 4
  %325 = load i32, ptr %324, align 4
  %326 = sdiv i32 %325, 8
  %327 = freeze i32 %218
  %328 = freeze i32 %326
  %329 = udiv i32 %327, %328
  %330 = mul i32 %329, %328
  %331 = sub i32 %327, %330
  %332 = shl i32 %331, 4
  %333 = freeze i32 %326
  %334 = udiv i32 %332, %333
  %335 = mul i32 %334, %333
  %336 = sub i32 %332, %335
  %337 = shl i32 %336, 4
  %338 = shl i32 %329, 8
  %339 = shl i32 %334, 4
  %340 = or i32 %339, %338
  %341 = freeze i32 %337
  %342 = freeze i32 %326
  %343 = udiv i32 %341, %342
  %344 = or i32 %340, %343
  %345 = mul i32 %343, %342
  %346 = sub i32 %341, %345
  %347 = shl i32 %346, 4
  %348 = freeze i32 %326
  %349 = udiv i32 %347, %348
  %350 = mul i32 %349, %348
  %351 = sub i32 %347, %350
  %352 = shl i32 %351, 4
  %353 = shl i32 %344, 8
  %354 = shl i32 %349, 4
  %355 = or i32 %354, %353
  %356 = freeze i32 %352
  %357 = freeze i32 %326
  %358 = udiv i32 %356, %357
  %359 = or i32 %355, %358
  %360 = mul i32 %358, %357
  %361 = sub i32 %356, %360
  %362 = shl i32 %361, 4
  %363 = freeze i32 %326
  %364 = udiv i32 %362, %363
  %365 = mul i32 %364, %363
  %366 = sub i32 %362, %365
  %367 = shl i32 %366, 4
  %368 = shl i32 %359, 8
  %369 = shl i32 %364, 4
  %370 = or i32 %369, %368
  %371 = freeze i32 %367
  %372 = freeze i32 %326
  %373 = udiv i32 %371, %372
  %374 = or i32 %370, %373
  %375 = mul i32 %373, %372
  %376 = sub i32 %371, %375
  %377 = shl i32 %376, 4
  %378 = shl i32 %374, 4
  %379 = freeze i32 %326
  %380 = udiv i32 %377, %379
  %381 = or i32 %380, %378
  %382 = mul i32 %380, %379
  %383 = sub i32 %377, %382
  %384 = shl i32 %383, 1
  %385 = and i32 %384, 536870910
  %386 = icmp uge i32 %385, %326
  %387 = zext i1 %386 to i32
  %388 = add i32 %381, %387
  %389 = udiv i32 %388, 204
  br label %390

390:                                              ; preds = %323, %322, %318, %314, %247, %246, %242, %238
  %391 = phi i32 [ %317, %323 ], [ 9, %322 ], [ 9, %318 ], [ %317, %314 ], [ %241, %247 ], [ 9, %246 ], [ 9, %242 ], [ %241, %238 ]
  %392 = phi i8 [ %315, %323 ], [ %319, %322 ], [ %319, %318 ], [ %315, %314 ], [ %239, %247 ], [ %243, %246 ], [ %243, %242 ], [ %239, %238 ]
  %393 = phi i8 [ %316, %323 ], [ %316, %322 ], [ %316, %318 ], [ %316, %314 ], [ %240, %247 ], [ %240, %246 ], [ %240, %242 ], [ %240, %238 ]
  %394 = phi i32 [ %389, %323 ], [ 5958682, %322 ], [ 8574624, %318 ], [ 4284508, %314 ], [ %313, %247 ], [ 6251732, %246 ], [ 8996327, %242 ], [ 4740307, %238 ]
  %395 = getelementptr inbounds %struct.drx_cfg_mpeg_output, ptr %1, i32 0, i32 2
  %396 = load i8, ptr %395, align 2, !range !9
  %397 = getelementptr inbounds %struct.drx_cfg_mpeg_output, ptr %1, i32 0, i32 3
  %398 = load i8, ptr %397, align 1, !range !9
  %399 = icmp eq i8 %398, 0
  %400 = select i1 %399, i32 0, i32 255
  %401 = getelementptr inbounds %struct.drx_cfg_mpeg_output, ptr %1, i32 0, i32 4
  %402 = load i8, ptr %401, align 4, !range !9
  %403 = icmp eq i8 %402, 0
  %404 = or i32 %400, 256
  %405 = select i1 %403, i32 %400, i32 %404
  %406 = getelementptr inbounds %struct.drx_cfg_mpeg_output, ptr %1, i32 0, i32 5
  %407 = load i8, ptr %406, align 1, !range !9
  %408 = icmp eq i8 %407, 0
  %409 = trunc i32 %405 to i16
  %410 = or i16 %409, 512
  %411 = select i1 %408, i16 %409, i16 %410
  %412 = getelementptr inbounds %struct.drx_cfg_mpeg_output, ptr %1, i32 0, i32 6
  %413 = load i8, ptr %412, align 2, !range !9
  %414 = icmp eq i8 %413, 0
  %415 = and i16 %411, -3328
  %416 = select i1 %414, i16 0, i16 1024
  %417 = getelementptr inbounds %struct.drx_cfg_mpeg_output, ptr %1, i32 0, i32 7
  %418 = load i8, ptr %417, align 1, !range !9
  %419 = icmp eq i8 %418, 0
  %420 = select i1 %419, i16 0, i16 2048
  %421 = or i16 %420, %416
  %422 = or i16 %421, %415
  %423 = getelementptr inbounds %struct.drx_cfg_mpeg_output, ptr %1, i32 0, i32 8
  %424 = load i8, ptr %423, align 4, !range !9
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %560, label %426

426:                                              ; preds = %390
  switch i32 %391, label %848 [
    i32 1, label %435
    i32 8, label %427
    i32 9, label %433
    i32 10, label %434
  ]

427:                                              ; preds = %426
  %428 = select i1 %237, i32 6400000, i32 5900000
  %429 = getelementptr inbounds %struct.drxj_data, ptr %79, i32 0, i32 70
  %430 = load i32, ptr %429, align 4
  %431 = icmp ult i32 %430, %428
  %432 = zext i1 %431 to i16
  br label %435

433:                                              ; preds = %426
  br label %435

434:                                              ; preds = %426
  br label %435

435:                                              ; preds = %434, %433, %427, %426
  %436 = phi i8 [ -52, %434 ], [ -128, %433 ], [ -52, %427 ], [ -48, %426 ]
  %437 = phi i16 [ 1, %434 ], [ 1, %433 ], [ %432, %427 ], [ 4, %426 ]
  %438 = select i1 %237, i8 -68, i8 %436
  %439 = getelementptr inbounds %struct.drx_common_attr, ptr %81, i32 0, i32 4
  %440 = load i32, ptr %439, align 4
  %441 = mul i32 %440, 1000
  %442 = or i16 %437, 2
  %443 = zext i16 %442 to i32
  %444 = sdiv i32 %441, %443
  %445 = freeze i32 %444
  %446 = freeze i32 %441
  %447 = udiv i32 %445, %446
  %448 = mul i32 %447, %446
  %449 = sub i32 %445, %448
  %450 = shl i32 %449, 4
  %451 = freeze i32 %441
  %452 = udiv i32 %450, %451
  %453 = mul i32 %452, %451
  %454 = sub i32 %450, %453
  %455 = shl i32 %454, 4
  %456 = shl i32 %447, 8
  %457 = shl i32 %452, 4
  %458 = or i32 %457, %456
  %459 = freeze i32 %455
  %460 = freeze i32 %441
  %461 = udiv i32 %459, %460
  %462 = or i32 %458, %461
  %463 = mul i32 %461, %460
  %464 = sub i32 %459, %463
  %465 = shl i32 %464, 4
  %466 = freeze i32 %441
  %467 = udiv i32 %465, %466
  %468 = mul i32 %467, %466
  %469 = sub i32 %465, %468
  %470 = shl i32 %469, 4
  %471 = shl i32 %462, 8
  %472 = shl i32 %467, 4
  %473 = or i32 %472, %471
  %474 = freeze i32 %470
  %475 = freeze i32 %441
  %476 = udiv i32 %474, %475
  %477 = or i32 %473, %476
  %478 = mul i32 %476, %475
  %479 = sub i32 %474, %478
  %480 = shl i32 %479, 4
  %481 = freeze i32 %441
  %482 = udiv i32 %480, %481
  %483 = mul i32 %482, %481
  %484 = sub i32 %480, %483
  %485 = shl i32 %484, 4
  %486 = shl i32 %477, 8
  %487 = shl i32 %482, 4
  %488 = or i32 %487, %486
  %489 = freeze i32 %485
  %490 = freeze i32 %441
  %491 = udiv i32 %489, %490
  %492 = or i32 %488, %491
  %493 = mul i32 %491, %490
  %494 = sub i32 %489, %493
  %495 = shl i32 %494, 4
  %496 = shl i32 %492, 4
  %497 = freeze i32 %441
  %498 = udiv i32 %495, %497
  %499 = or i32 %498, %496
  %500 = mul i32 %498, %497
  %501 = sub i32 %495, %500
  %502 = shl i32 %501, 1
  %503 = and i32 %502, 536870910
  %504 = icmp uge i32 %503, %441
  %505 = zext i1 %504 to i32
  %506 = add i32 %499, %505
  %507 = lshr i32 %506, 19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #13
  %508 = trunc i32 %507 to i8
  store i8 %508, ptr %52, align 2
  %509 = lshr i32 %506, 27
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 3
  %512 = getelementptr inbounds [2 x i8], ptr %52, i32 0, i32 1
  store i8 %511, ptr %512, align 1
  %513 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010903, i16 noundef zeroext 2, ptr noundef nonnull %52, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #13
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %517, label %515

515:                                              ; preds = %435
  %516 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %513) #14
  br label %848

517:                                              ; preds = %435
  %518 = lshr i32 %506, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #13
  %519 = trunc i32 %518 to i8
  store i8 %519, ptr %51, align 2
  %520 = lshr i32 %506, 11
  %521 = trunc i32 %520 to i8
  %522 = getelementptr inbounds [2 x i8], ptr %51, i32 0, i32 1
  store i8 %521, ptr %522, align 1
  %523 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010902, i16 noundef zeroext 2, ptr noundef nonnull %51, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #13
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %527, label %525

525:                                              ; preds = %517
  %526 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %523) #14
  br label %848

527:                                              ; preds = %517
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %50) #13
  store i8 5, ptr %50, align 2
  %528 = getelementptr inbounds [2 x i8], ptr %50, i32 0, i32 1
  store i8 0, ptr %528, align 1
  %529 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010900, i16 noundef zeroext 2, ptr noundef nonnull %50, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %50) #13
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %533, label %531

531:                                              ; preds = %527
  %532 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %529) #14
  br label %848

533:                                              ; preds = %527
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #13
  store i8 3, ptr %49, align 2
  %534 = getelementptr inbounds [2 x i8], ptr %49, i32 0, i32 1
  store i8 0, ptr %534, align 1
  %535 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010906, i16 noundef zeroext 2, ptr noundef nonnull %49, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #13
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %539, label %537

537:                                              ; preds = %533
  %538 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %535) #14
  br label %848

539:                                              ; preds = %533
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #13
  store i8 %438, ptr %48, align 2
  %540 = getelementptr inbounds [2 x i8], ptr %48, i32 0, i32 1
  store i8 0, ptr %540, align 1
  %541 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010904, i16 noundef zeroext 2, ptr noundef nonnull %48, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #13
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %545, label %543

543:                                              ; preds = %539
  %544 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %541) #14
  br label %848

545:                                              ; preds = %539
  %546 = getelementptr inbounds %struct.drxj_data, ptr %79, i32 0, i32 64
  %547 = load i32, ptr %546, align 4
  %548 = icmp eq i32 %547, 0
  %549 = trunc i32 %547 to i16
  %550 = add i16 %549, -1
  %551 = select i1 %548, i16 %437, i16 %550
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #13
  %552 = trunc i16 %551 to i8
  store i8 %552, ptr %47, align 2
  %553 = lshr i16 %551, 8
  %554 = trunc i16 %553 to i8
  %555 = getelementptr inbounds [2 x i8], ptr %47, i32 0, i32 1
  store i8 %554, ptr %555, align 1
  %556 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010901, i16 noundef zeroext 2, ptr noundef nonnull %47, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #13
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %572, label %558

558:                                              ; preds = %545
  %559 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %556) #14
  br label %848

560:                                              ; preds = %390
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #13
  store i8 1, ptr %46, align 2
  %561 = getelementptr inbounds [2 x i8], ptr %46, i32 0, i32 1
  store i8 0, ptr %561, align 1
  %562 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010900, i16 noundef zeroext 2, ptr noundef nonnull %46, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #13
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %566, label %564

564:                                              ; preds = %560
  %565 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %562) #14
  br label %848

566:                                              ; preds = %560
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #13
  store i8 0, ptr %45, align 2
  %567 = getelementptr inbounds [2 x i8], ptr %45, i32 0, i32 1
  store i8 0, ptr %567, align 1
  %568 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010906, i16 noundef zeroext 2, ptr noundef nonnull %45, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #13
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %572, label %570

570:                                              ; preds = %566
  %571 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %568) #14
  br label %848

572:                                              ; preds = %566, %545
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #13
  %573 = trunc i32 %394 to i8
  store i8 %573, ptr %44, align 4
  %574 = lshr i32 %394, 8
  %575 = trunc i32 %574 to i8
  %576 = getelementptr inbounds [4 x i8], ptr %44, i32 0, i32 1
  store i8 %575, ptr %576, align 1
  %577 = lshr i32 %394, 16
  %578 = trunc i32 %577 to i8
  %579 = getelementptr inbounds [4 x i8], ptr %44, i32 0, i32 2
  store i8 %578, ptr %579, align 2
  %580 = lshr i32 %394, 24
  %581 = trunc i32 %580 to i8
  %582 = getelementptr inbounds [4 x i8], ptr %44, i32 0, i32 3
  store i8 %581, ptr %582, align 1
  %583 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010928, i16 noundef zeroext 4, ptr noundef nonnull %44, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #13
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %587, label %585

585:                                              ; preds = %572
  %586 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %583) #14
  br label %848

587:                                              ; preds = %572
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #13
  store i8 %392, ptr %43, align 2
  %588 = getelementptr inbounds [2 x i8], ptr %43, i32 0, i32 1
  store i8 %222, ptr %588, align 1
  %589 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010897, i16 noundef zeroext 2, ptr noundef nonnull %43, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #13
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %593, label %591

591:                                              ; preds = %587
  %592 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %589) #14
  br label %848

593:                                              ; preds = %587
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #13
  %594 = and i8 %393, -2
  %595 = or i8 %396, %594
  %596 = xor i8 %595, 1
  store i8 %596, ptr %42, align 2
  %597 = getelementptr inbounds [2 x i8], ptr %42, i32 0, i32 1
  store i8 %230, ptr %597, align 1
  %598 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010952, i16 noundef zeroext 2, ptr noundef nonnull %42, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #13
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %602, label %600

600:                                              ; preds = %593
  %601 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %598) #14
  br label %848

602:                                              ; preds = %593
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #13
  %603 = trunc i16 %411 to i8
  store i8 %603, ptr %41, align 2
  %604 = lshr exact i16 %422, 8
  %605 = trunc i16 %604 to i8
  %606 = getelementptr inbounds [2 x i8], ptr %41, i32 0, i32 1
  store i8 %605, ptr %606, align 1
  %607 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 38010953, i16 noundef zeroext 2, ptr noundef nonnull %41, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #13
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %611, label %609

609:                                              ; preds = %602
  %610 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %607) #14
  br label %848

611:                                              ; preds = %602
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #13
  store i8 -70, ptr %40, align 2
  %612 = getelementptr inbounds [2 x i8], ptr %40, i32 0, i32 1
  store i8 -6, ptr %612, align 1
  %613 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %40, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #13
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %617, label %615

615:                                              ; preds = %611
  %616 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %613) #14
  br label %848

617:                                              ; preds = %611
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %39) #13
  store i8 19, ptr %39, align 2
  %618 = getelementptr inbounds [2 x i8], ptr %39, i32 0, i32 1
  store i8 0, ptr %618, align 1
  %619 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323109, i16 noundef zeroext 2, ptr noundef nonnull %39, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #13
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %623, label %621

621:                                              ; preds = %617
  %622 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %619) #14
  br label %848

623:                                              ; preds = %617
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #13
  store i8 19, ptr %38, align 2
  %624 = getelementptr inbounds [2 x i8], ptr %38, i32 0, i32 1
  store i8 0, ptr %624, align 1
  %625 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323110, i16 noundef zeroext 2, ptr noundef nonnull %38, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #13
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %629, label %627

627:                                              ; preds = %623
  %628 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %625) #14
  br label %848

629:                                              ; preds = %623
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #13
  store i8 51, ptr %37, align 2
  %630 = getelementptr inbounds [2 x i8], ptr %37, i32 0, i32 1
  store i8 0, ptr %630, align 1
  %631 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323112, i16 noundef zeroext 2, ptr noundef nonnull %37, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #13
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %635, label %633

633:                                              ; preds = %629
  %634 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %631) #14
  br label %848

635:                                              ; preds = %629
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #13
  store i8 19, ptr %36, align 2
  %636 = getelementptr inbounds [2 x i8], ptr %36, i32 0, i32 1
  store i8 0, ptr %636, align 1
  %637 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323113, i16 noundef zeroext 2, ptr noundef nonnull %36, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #13
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %641, label %639

639:                                              ; preds = %635
  %640 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %637) #14
  br label %848

641:                                              ; preds = %635
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #13
  store i8 19, ptr %35, align 2
  %642 = getelementptr inbounds [2 x i8], ptr %35, i32 0, i32 1
  store i8 0, ptr %642, align 1
  %643 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323114, i16 noundef zeroext 2, ptr noundef nonnull %35, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #13
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %647, label %645

645:                                              ; preds = %641
  %646 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %643) #14
  br label %848

647:                                              ; preds = %641
  %648 = load i8, ptr %395, align 2, !range !9
  %649 = icmp eq i8 %648, 0
  br i1 %649, label %698, label %650

650:                                              ; preds = %647
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #13
  store i8 19, ptr %34, align 2
  %651 = getelementptr inbounds [2 x i8], ptr %34, i32 0, i32 1
  store i8 0, ptr %651, align 1
  %652 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323114, i16 noundef zeroext 2, ptr noundef nonnull %34, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #13
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %656, label %654

654:                                              ; preds = %650
  %655 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %652) #14
  br label %848

656:                                              ; preds = %650
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #13
  store i8 19, ptr %33, align 2
  %657 = getelementptr inbounds [2 x i8], ptr %33, i32 0, i32 1
  store i8 0, ptr %657, align 1
  %658 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323115, i16 noundef zeroext 2, ptr noundef nonnull %33, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #13
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %662, label %660

660:                                              ; preds = %656
  %661 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %658) #14
  br label %848

662:                                              ; preds = %656
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #13
  store i8 19, ptr %32, align 2
  %663 = getelementptr inbounds [2 x i8], ptr %32, i32 0, i32 1
  store i8 0, ptr %663, align 1
  %664 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323116, i16 noundef zeroext 2, ptr noundef nonnull %32, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #13
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %668, label %666

666:                                              ; preds = %662
  %667 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %664) #14
  br label %848

668:                                              ; preds = %662
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #13
  store i8 19, ptr %31, align 2
  %669 = getelementptr inbounds [2 x i8], ptr %31, i32 0, i32 1
  store i8 0, ptr %669, align 1
  %670 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323117, i16 noundef zeroext 2, ptr noundef nonnull %31, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #13
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %674, label %672

672:                                              ; preds = %668
  %673 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %670) #14
  br label %848

674:                                              ; preds = %668
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #13
  store i8 19, ptr %30, align 2
  %675 = getelementptr inbounds [2 x i8], ptr %30, i32 0, i32 1
  store i8 0, ptr %675, align 1
  %676 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323119, i16 noundef zeroext 2, ptr noundef nonnull %30, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #13
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %680, label %678

678:                                              ; preds = %674
  %679 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %676) #14
  br label %848

680:                                              ; preds = %674
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #13
  store i8 19, ptr %29, align 2
  %681 = getelementptr inbounds [2 x i8], ptr %29, i32 0, i32 1
  store i8 0, ptr %681, align 1
  %682 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323120, i16 noundef zeroext 2, ptr noundef nonnull %29, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #13
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %686, label %684

684:                                              ; preds = %680
  %685 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %682) #14
  br label %848

686:                                              ; preds = %680
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #13
  store i8 19, ptr %28, align 2
  %687 = getelementptr inbounds [2 x i8], ptr %28, i32 0, i32 1
  store i8 0, ptr %687, align 1
  %688 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323121, i16 noundef zeroext 2, ptr noundef nonnull %28, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #13
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %692, label %690

690:                                              ; preds = %686
  %691 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %688) #14
  br label %848

692:                                              ; preds = %686
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #13
  store i8 19, ptr %27, align 2
  %693 = getelementptr inbounds [2 x i8], ptr %27, i32 0, i32 1
  store i8 0, ptr %693, align 1
  %694 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323122, i16 noundef zeroext 2, ptr noundef nonnull %27, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #13
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %740, label %696

696:                                              ; preds = %692
  %697 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %694) #14
  br label %848

698:                                              ; preds = %647
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #13
  store i8 0, ptr %26, align 2
  %699 = getelementptr inbounds [2 x i8], ptr %26, i32 0, i32 1
  store i8 0, ptr %699, align 1
  %700 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323115, i16 noundef zeroext 2, ptr noundef nonnull %26, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #13
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %704, label %702

702:                                              ; preds = %698
  %703 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %700) #14
  br label %848

704:                                              ; preds = %698
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #13
  store i8 0, ptr %25, align 2
  %705 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  store i8 0, ptr %705, align 1
  %706 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323116, i16 noundef zeroext 2, ptr noundef nonnull %25, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #13
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %710, label %708

708:                                              ; preds = %704
  %709 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %706) #14
  br label %848

710:                                              ; preds = %704
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #13
  store i8 0, ptr %24, align 2
  %711 = getelementptr inbounds [2 x i8], ptr %24, i32 0, i32 1
  store i8 0, ptr %711, align 1
  %712 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323117, i16 noundef zeroext 2, ptr noundef nonnull %24, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #13
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %716, label %714

714:                                              ; preds = %710
  %715 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %712) #14
  br label %848

716:                                              ; preds = %710
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #13
  store i8 0, ptr %23, align 2
  %717 = getelementptr inbounds [2 x i8], ptr %23, i32 0, i32 1
  store i8 0, ptr %717, align 1
  %718 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323119, i16 noundef zeroext 2, ptr noundef nonnull %23, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #13
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %722, label %720

720:                                              ; preds = %716
  %721 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %718) #14
  br label %848

722:                                              ; preds = %716
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #13
  store i8 0, ptr %22, align 2
  %723 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  store i8 0, ptr %723, align 1
  %724 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323120, i16 noundef zeroext 2, ptr noundef nonnull %22, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #13
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %728, label %726

726:                                              ; preds = %722
  %727 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %724) #14
  br label %848

728:                                              ; preds = %722
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #13
  store i8 0, ptr %21, align 2
  %729 = getelementptr inbounds [2 x i8], ptr %21, i32 0, i32 1
  store i8 0, ptr %729, align 1
  %730 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323121, i16 noundef zeroext 2, ptr noundef nonnull %21, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #13
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %734, label %732

732:                                              ; preds = %728
  %733 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %730) #14
  br label %848

734:                                              ; preds = %728
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i8 0, ptr %20, align 2
  %735 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  store i8 0, ptr %735, align 1
  %736 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323122, i16 noundef zeroext 2, ptr noundef nonnull %20, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %740, label %738

738:                                              ; preds = %734
  %739 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %736) #14
  br label %848

740:                                              ; preds = %734, %692
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 0, ptr %19, align 2
  %741 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 0, ptr %741, align 1
  %742 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323088, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %746, label %744

744:                                              ; preds = %740
  %745 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %742) #14
  br label %848

746:                                              ; preds = %740
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i8 0, ptr %18, align 2
  %747 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  store i8 0, ptr %747, align 1
  %748 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %845, label %750

750:                                              ; preds = %746
  %751 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %748) #14
  br label %848

752:                                              ; preds = %76
  %753 = icmp eq ptr %77, null
  br i1 %753, label %758, label %754

754:                                              ; preds = %752
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #13
  store i8 -70, ptr %17, align 2
  %755 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  store i8 -6, ptr %755, align 1
  %756 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #13
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %761, label %758

758:                                              ; preds = %754, %752
  %759 = phi i32 [ %756, %754 ], [ -22, %752 ]
  %760 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %759) #14
  br label %848

761:                                              ; preds = %754
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i8 0, ptr %16, align 2
  %762 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  store i8 0, ptr %762, align 1
  %763 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323109, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %767, label %765

765:                                              ; preds = %761
  %766 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %763) #14
  br label %848

767:                                              ; preds = %761
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i8 0, ptr %15, align 2
  %768 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 0, ptr %768, align 1
  %769 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323110, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %773, label %771

771:                                              ; preds = %767
  %772 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %769) #14
  br label %848

773:                                              ; preds = %767
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i8 0, ptr %14, align 2
  %774 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  store i8 0, ptr %774, align 1
  %775 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323112, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %779, label %777

777:                                              ; preds = %773
  %778 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %775) #14
  br label %848

779:                                              ; preds = %773
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 0, ptr %13, align 2
  %780 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %780, align 1
  %781 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323113, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %785, label %783

783:                                              ; preds = %779
  %784 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %781) #14
  br label %848

785:                                              ; preds = %779
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 0, ptr %12, align 2
  %786 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %786, align 1
  %787 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323114, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %791, label %789

789:                                              ; preds = %785
  %790 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %787) #14
  br label %848

791:                                              ; preds = %785
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 0, ptr %11, align 2
  %792 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %792, align 1
  %793 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323115, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %797, label %795

795:                                              ; preds = %791
  %796 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %793) #14
  br label %848

797:                                              ; preds = %791
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 0, ptr %10, align 2
  %798 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 0, ptr %798, align 1
  %799 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323116, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %803, label %801

801:                                              ; preds = %797
  %802 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %799) #14
  br label %848

803:                                              ; preds = %797
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 0, ptr %9, align 2
  %804 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 0, ptr %804, align 1
  %805 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323117, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %809, label %807

807:                                              ; preds = %803
  %808 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %805) #14
  br label %848

809:                                              ; preds = %803
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 0, ptr %8, align 2
  %810 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 0, ptr %810, align 1
  %811 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323119, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %815, label %813

813:                                              ; preds = %809
  %814 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %811) #14
  br label %848

815:                                              ; preds = %809
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 0, ptr %7, align 2
  %816 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %816, align 1
  %817 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323120, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %821, label %819

819:                                              ; preds = %815
  %820 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %817) #14
  br label %848

821:                                              ; preds = %815
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 0, ptr %6, align 2
  %822 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %822, align 1
  %823 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323121, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %827, label %825

825:                                              ; preds = %821
  %826 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %823) #14
  br label %848

827:                                              ; preds = %821
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 0, ptr %5, align 2
  %828 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %828, align 1
  %829 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323122, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %833, label %831

831:                                              ; preds = %827
  %832 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %829) #14
  br label %848

833:                                              ; preds = %827
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 0, ptr %4, align 2
  %834 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %834, align 1
  %835 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 8323088, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %839, label %837

837:                                              ; preds = %833
  %838 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %835) #14
  br label %848

839:                                              ; preds = %833
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 0, ptr %3, align 2
  %840 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %840, align 1
  %841 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %77, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %845, label %843

843:                                              ; preds = %839
  %844 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_mpeg_output, i32 noundef %841) #14
  br label %848

845:                                              ; preds = %839, %746
  %846 = load i8, ptr %1, align 4, !range !9
  %847 = getelementptr inbounds %struct.drx_common_attr, ptr %81, i32 0, i32 8
  store i8 %846, ptr %847, align 4
  br label %848

848:                                              ; preds = %845, %843, %837, %831, %825, %819, %813, %807, %801, %795, %789, %783, %777, %771, %765, %758, %750, %744, %738, %732, %726, %720, %714, %708, %702, %696, %690, %684, %678, %672, %666, %660, %654, %645, %639, %633, %627, %621, %615, %609, %600, %591, %585, %570, %564, %558, %543, %537, %531, %525, %515, %426, %318, %314, %242, %238, %232, %224, %215, %209, %203, %197, %187, %181, %175, %169, %163, %146, %144, %138, %132, %126, %120, %114, %108, %102, %93, %84, %2
  %849 = phi i32 [ 0, %845 ], [ -22, %2 ], [ 0, %84 ], [ -5, %146 ], [ -5, %242 ], [ -5, %238 ], [ -5, %318 ], [ -5, %314 ], [ %94, %93 ], [ %219, %224 ], [ %227, %232 ], [ %583, %585 ], [ %589, %591 ], [ %598, %600 ], [ %607, %609 ], [ %613, %615 ], [ %619, %621 ], [ %625, %627 ], [ %631, %633 ], [ %637, %639 ], [ %643, %645 ], [ %652, %654 ], [ %658, %660 ], [ %664, %666 ], [ %670, %672 ], [ %676, %678 ], [ %682, %684 ], [ %688, %690 ], [ %694, %696 ], [ %742, %744 ], [ %748, %750 ], [ %700, %702 ], [ %706, %708 ], [ %712, %714 ], [ %718, %720 ], [ %724, %726 ], [ %730, %732 ], [ %736, %738 ], [ %562, %564 ], [ %568, %570 ], [ %161, %163 ], [ %167, %169 ], [ %173, %175 ], [ %179, %181 ], [ %185, %187 ], [ %195, %197 ], [ %207, %209 ], [ %213, %215 ], [ %201, %203 ], [ %100, %102 ], [ %106, %108 ], [ %112, %114 ], [ %118, %120 ], [ %124, %126 ], [ %130, %132 ], [ %136, %138 ], [ %142, %144 ], [ %759, %758 ], [ %763, %765 ], [ %769, %771 ], [ %775, %777 ], [ %781, %783 ], [ %787, %789 ], [ %793, %795 ], [ %799, %801 ], [ %805, %807 ], [ %811, %813 ], [ %817, %819 ], [ %823, %825 ], [ %829, %831 ], [ %835, %837 ], [ %841, %843 ], [ -5, %426 ], [ %556, %558 ], [ %541, %543 ], [ %535, %537 ], [ %529, %531 ], [ %523, %525 ], [ %513, %515 ]
  ret i32 %849
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drx_ctrl_u_code(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca [60 x i8], align 1
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %285, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %285, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4
  %16 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @request_firmware(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef %19) #13
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.drx_ctrl_u_code, ptr noundef nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %285

24:                                               ; preds = %15
  %25 = load ptr, ptr %4, align 4
  store ptr %25, ptr %12, align 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.drx_ctrl_u_code, ptr noundef nonnull %9, i32 noundef %26) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %30 = load ptr, ptr %12, align 4
  br label %33

31:                                               ; preds = %24
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.drx_ctrl_u_code) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %282

33:                                               ; preds = %28, %11
  %34 = phi ptr [ %30, %28 ], [ %13, %11 ]
  %35 = getelementptr inbounds %struct.firmware, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %34, align 4
  %38 = load i16, ptr %36, align 2
  %39 = getelementptr i8, ptr %36, i32 2
  %40 = load i16, ptr %39, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %42 = getelementptr i8, ptr %36, i32 4
  %43 = icmp ne i16 %38, 19528
  %44 = icmp eq i16 %40, 0
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.drx_ctrl_u_code) #14
  br label %282

48:                                               ; preds = %33
  %49 = icmp eq i32 %2, 0
  br i1 %49, label %50, label %126

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.drx_common_attr, ptr %52, i32 0, i32 2
  store i16 0, ptr %53, align 4
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr inbounds %struct.drx_common_attr, ptr %54, i32 0, i32 2, i32 1
  store i32 0, ptr %55, align 4
  %56 = load ptr, ptr %51, align 4
  %57 = getelementptr inbounds %struct.drx_common_attr, ptr %56, i32 0, i32 2, i32 2
  store i32 0, ptr %57, align 4
  %58 = load ptr, ptr %51, align 4
  %59 = getelementptr inbounds %struct.drx_common_attr, ptr %58, i32 0, i32 2, i32 3
  store i32 0, ptr %59, align 4
  %60 = call i16 @llvm.umax.i16(i16 %41, i16 1) #13
  %61 = zext i16 %60 to i32
  br label %62

62:                                               ; preds = %115, %50
  %63 = phi i32 [ %118, %115 ], [ 4, %50 ]
  %64 = phi i32 [ %119, %115 ], [ 0, %50 ]
  %65 = add i32 %63, 10
  %66 = icmp ugt i32 %65, %37
  br i1 %66, label %121, label %67

67:                                               ; preds = %62
  %68 = getelementptr i8, ptr %36, i32 %63
  %69 = load i32, ptr %68, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #13
  %71 = add i32 %63, 4
  %72 = getelementptr i8, ptr %36, i32 %71
  %73 = load i16, ptr %72, align 2
  %74 = call i16 @llvm.bswap.i16(i16 %73) #13
  %75 = add i32 %63, 6
  %76 = getelementptr i8, ptr %36, i32 %75
  %77 = load i16, ptr %76, align 2
  %78 = and i16 %77, 2048
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %110, label %80

80:                                               ; preds = %67
  %81 = getelementptr i8, ptr %36, i32 %70
  %82 = add i32 %70, 2
  %83 = icmp ugt i32 %82, %37
  br i1 %83, label %121, label %84

84:                                               ; preds = %80
  %85 = load i16, ptr %81, align 2
  %86 = call i16 @llvm.bswap.i16(i16 %85) #13
  %87 = icmp eq i16 %85, 128
  br i1 %87, label %88, label %115

88:                                               ; preds = %84
  %89 = add i32 %70, 12
  %90 = icmp ugt i32 %89, %37
  br i1 %90, label %121, label %91

91:                                               ; preds = %88
  %92 = getelementptr i8, ptr %81, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #13
  %95 = getelementptr i8, ptr %92, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96) #13
  %98 = getelementptr i8, ptr %95, i32 4
  %99 = load i32, ptr %98, align 4
  %100 = call i32 @llvm.bswap.i32(i32 %99) #13
  %101 = load ptr, ptr %51, align 4
  %102 = getelementptr inbounds %struct.drx_common_attr, ptr %101, i32 0, i32 2
  store i16 %86, ptr %102, align 4
  %103 = load ptr, ptr %51, align 4
  %104 = getelementptr inbounds %struct.drx_common_attr, ptr %103, i32 0, i32 2, i32 1
  store i32 %94, ptr %104, align 4
  %105 = load ptr, ptr %51, align 4
  %106 = getelementptr inbounds %struct.drx_common_attr, ptr %105, i32 0, i32 2, i32 2
  store i32 %97, ptr %106, align 4
  %107 = load ptr, ptr %51, align 4
  %108 = getelementptr inbounds %struct.drx_common_attr, ptr %107, i32 0, i32 2, i32 3
  store i32 %100, ptr %108, align 4
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.drx_check_firmware, i32 noundef %94, i32 noundef %97, i32 noundef %100) #14
  br label %115

110:                                              ; preds = %67
  %111 = zext i16 %74 to i32
  %112 = shl nuw nsw i32 %111, 1
  %113 = add i32 %112, %65
  %114 = icmp ugt i32 %113, %37
  br i1 %114, label %121, label %115

115:                                              ; preds = %110, %91, %84
  %116 = zext i16 %74 to i32
  %117 = shl nuw nsw i32 %116, 1
  %118 = add i32 %117, %65
  %119 = add nuw nsw i32 %64, 1
  %120 = icmp eq i32 %119, %61
  br i1 %120, label %124, label %62

121:                                              ; preds = %110, %88, %80, %62
  %122 = phi i32 [ %63, %62 ], [ %65, %110 ], [ %65, %88 ], [ %65, %80 ]
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.drx_check_firmware, i32 noundef %122, i32 noundef %37) #14
  br label %282

124:                                              ; preds = %115
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.drx_ctrl_u_code, ptr noundef nonnull %9) #14
  br label %128

126:                                              ; preds = %48
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.drx_ctrl_u_code) #14
  br label %128

128:                                              ; preds = %126, %124
  br label %129

129:                                              ; preds = %278, %128
  %130 = phi i16 [ %280, %278 ], [ 0, %128 ]
  %131 = phi ptr [ %279, %278 ], [ %42, %128 ]
  %132 = load i32, ptr %131, align 4
  %133 = call i32 @llvm.bswap.i32(i32 %132)
  %134 = getelementptr i8, ptr %131, i32 4
  %135 = load i16, ptr %134, align 2
  %136 = call i16 @llvm.bswap.i16(i16 %135)
  %137 = getelementptr i8, ptr %131, i32 8
  %138 = load i16, ptr %137, align 2
  %139 = call i16 @llvm.bswap.i16(i16 %138)
  %140 = getelementptr i8, ptr %131, i32 10
  %141 = icmp slt i16 %136, 0
  br i1 %141, label %232, label %142

142:                                              ; preds = %129
  %143 = getelementptr i8, ptr %131, i32 6
  %144 = load i16, ptr %143, align 2
  %145 = and i16 %144, 256
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %234, label %147

147:                                              ; preds = %142
  %148 = icmp eq i16 %135, 0
  br i1 %148, label %229, label %149

149:                                              ; preds = %149, %147
  %150 = phi i32 [ %222, %149 ], [ 0, %147 ]
  %151 = phi i32 [ %221, %149 ], [ 0, %147 ]
  %152 = phi i16 [ %223, %149 ], [ 0, %147 ]
  %153 = phi ptr [ %224, %149 ], [ %140, %147 ]
  %154 = load i16, ptr %153, align 2
  %155 = call i16 @llvm.bswap.i16(i16 %154) #13
  %156 = zext i16 %155 to i32
  %157 = or i32 %151, %156
  %158 = shl i32 %157, 1
  %159 = icmp eq i32 %150, 0
  %160 = xor i32 %158, -2147155968
  %161 = select i1 %159, i32 %158, i32 %160
  %162 = shl i32 %161, 1
  %163 = xor i32 %162, -2147155968
  %164 = icmp slt i32 %161, 0
  %165 = select i1 %164, i32 %163, i32 %162
  %166 = shl i32 %165, 1
  %167 = xor i32 %166, -2147155968
  %168 = icmp slt i32 %165, 0
  %169 = select i1 %168, i32 %167, i32 %166
  %170 = shl i32 %169, 1
  %171 = xor i32 %170, -2147155968
  %172 = icmp slt i32 %169, 0
  %173 = select i1 %172, i32 %171, i32 %170
  %174 = shl i32 %173, 1
  %175 = xor i32 %174, -2147155968
  %176 = icmp slt i32 %173, 0
  %177 = select i1 %176, i32 %175, i32 %174
  %178 = shl i32 %177, 1
  %179 = xor i32 %178, -2147155968
  %180 = icmp slt i32 %177, 0
  %181 = select i1 %180, i32 %179, i32 %178
  %182 = shl i32 %181, 1
  %183 = xor i32 %182, -2147155968
  %184 = icmp slt i32 %181, 0
  %185 = select i1 %184, i32 %183, i32 %182
  %186 = shl i32 %185, 1
  %187 = xor i32 %186, -2147155968
  %188 = icmp slt i32 %185, 0
  %189 = select i1 %188, i32 %187, i32 %186
  %190 = shl i32 %189, 1
  %191 = xor i32 %190, -2147155968
  %192 = icmp slt i32 %189, 0
  %193 = select i1 %192, i32 %191, i32 %190
  %194 = shl i32 %193, 1
  %195 = xor i32 %194, -2147155968
  %196 = icmp slt i32 %193, 0
  %197 = select i1 %196, i32 %195, i32 %194
  %198 = shl i32 %197, 1
  %199 = xor i32 %198, -2147155968
  %200 = icmp slt i32 %197, 0
  %201 = select i1 %200, i32 %199, i32 %198
  %202 = shl i32 %201, 1
  %203 = xor i32 %202, -2147155968
  %204 = icmp slt i32 %201, 0
  %205 = select i1 %204, i32 %203, i32 %202
  %206 = shl i32 %205, 1
  %207 = xor i32 %206, -2147155968
  %208 = icmp slt i32 %205, 0
  %209 = select i1 %208, i32 %207, i32 %206
  %210 = shl i32 %209, 1
  %211 = xor i32 %210, -2147155968
  %212 = icmp slt i32 %209, 0
  %213 = select i1 %212, i32 %211, i32 %210
  %214 = shl i32 %213, 1
  %215 = xor i32 %214, -2147155968
  %216 = icmp slt i32 %213, 0
  %217 = select i1 %216, i32 %215, i32 %214
  %218 = shl i32 %217, 1
  %219 = xor i32 %218, -2147155968
  %220 = icmp slt i32 %217, 0
  %221 = select i1 %220, i32 %219, i32 %218
  %222 = and i32 %221, -2147483648
  %223 = add nuw i16 %152, 1
  %224 = getelementptr i8, ptr %153, i32 2
  %225 = icmp ult i16 %223, %136
  br i1 %225, label %149, label %226

226:                                              ; preds = %149
  %227 = lshr i32 %221, 16
  %228 = trunc i32 %227 to i16
  br label %229

229:                                              ; preds = %226, %147
  %230 = phi i16 [ 0, %147 ], [ %228, %226 ]
  %231 = icmp eq i16 %139, %230
  br i1 %231, label %234, label %232

232:                                              ; preds = %229, %129
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.drx_ctrl_u_code) #14
  br label %282

234:                                              ; preds = %229, %142
  %235 = icmp eq i16 %135, 0
  br i1 %235, label %278, label %236

236:                                              ; preds = %234
  %237 = shl i16 %136, 1
  switch i32 %2, label %285 [
    i32 0, label %238
    i32 1, label %248
  ]

238:                                              ; preds = %236
  %239 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %6, i32 noundef %133, i16 noundef zeroext %237, ptr noundef %140, i32 noundef 0)
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = zext i16 %237 to i32
  br label %275

243:                                              ; preds = %238
  %244 = ptrtoint ptr %140 to i32
  %245 = ptrtoint ptr %36 to i32
  %246 = sub i32 %244, %245
  %247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.drx_ctrl_u_code, i32 noundef %246) #14
  br label %282

248:                                              ; preds = %236
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %5, i8 0, i32 60, i1 false), !annotation !8
  %249 = zext i16 %237 to i32
  %250 = icmp eq i16 %237, 0
  br i1 %250, label %274, label %251

251:                                              ; preds = %262, %248
  %252 = phi ptr [ %265, %262 ], [ %140, %248 ]
  %253 = phi i32 [ %264, %262 ], [ %133, %248 ]
  %254 = phi i32 [ %266, %262 ], [ %249, %248 ]
  %255 = call i32 @llvm.umin.i32(i32 %254, i32 60)
  %256 = trunc i32 %255 to i16
  %257 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef %6, i32 noundef %253, i16 noundef zeroext %256, ptr noundef nonnull %5, i32 noundef 0)
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %251
  %260 = call i32 @bcmp(ptr %252, ptr nonnull %5, i32 %255)
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %259
  %263 = lshr i32 %255, 1
  %264 = add i32 %263, %253
  %265 = getelementptr i8, ptr %252, i32 %255
  %266 = sub i32 %254, %255
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %274, label %251

268:                                              ; preds = %259, %251
  %269 = phi ptr [ @.str.18, %251 ], [ @.str.19, %259 ]
  %270 = ptrtoint ptr %140 to i32
  %271 = ptrtoint ptr %36 to i32
  %272 = sub i32 %270, %271
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %269, ptr noundef nonnull @__func__.drx_ctrl_u_code, i32 noundef %272) #14
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #13
  br label %285

274:                                              ; preds = %262, %248
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #13
  br label %275

275:                                              ; preds = %274, %241
  %276 = phi i32 [ %242, %241 ], [ %249, %274 ]
  %277 = getelementptr i8, ptr %140, i32 %276
  br label %278

278:                                              ; preds = %275, %234
  %279 = phi ptr [ %140, %234 ], [ %277, %275 ]
  %280 = add nuw i16 %130, 1
  %281 = icmp ult i16 %280, %41
  br i1 %281, label %129, label %285

282:                                              ; preds = %243, %232, %121, %46, %31
  %283 = phi i32 [ -22, %46 ], [ -22, %121 ], [ -22, %31 ], [ -22, %232 ], [ -5, %243 ]
  %284 = load ptr, ptr %12, align 4
  call void @release_firmware(ptr noundef %284) #13
  store ptr null, ptr %12, align 4
  br label %285

285:                                              ; preds = %282, %278, %268, %236, %22, %8, %3
  %286 = phi i32 [ %283, %282 ], [ -22, %8 ], [ -22, %3 ], [ %20, %22 ], [ -5, %268 ], [ 0, %278 ], [ -22, %236 ]
  ret i32 %286
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @drxj_reset_mode(ptr noundef %0) unnamed_addr #7 {
  %2 = load i8, ptr %0, align 4, !range !9
  %3 = icmp eq i8 %2, 0
  %4 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 48
  store i32 9, ptr %4, align 4
  %5 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 48, i32 1
  br i1 %3, label %7, label %6

6:                                                ; preds = %1
  store i32 2, ptr %5, align 4
  br label %16

7:                                                ; preds = %1
  store i32 0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 48, i32 3
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 48, i32 4
  store i16 32767, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 48, i32 5
  store i16 3, ptr %10, align 2
  %11 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 48, i32 6
  store i16 1297, ptr %11, align 4
  %12 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 50, i32 3
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 50, i32 4
  store i16 32767, ptr %13, align 4
  %14 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 50, i32 5
  store i16 3, ptr %14, align 2
  %15 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 50, i32 6
  store i16 1024, ptr %15, align 4
  br label %16

16:                                               ; preds = %7, %6
  %17 = phi i16 [ 140, %7 ], [ 283, %6 ]
  %18 = phi i32 [ 0, %7 ], [ 2, %6 ]
  %19 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 51
  store i16 %17, ptr %19, align 4
  %20 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 50
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 50, i32 1
  store i32 %18, ptr %21, align 4
  %22 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 52
  store i16 %17, ptr %22, align 2
  %23 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 47
  store i32 9, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 47, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 47, i32 3
  store i16 0, ptr %25, align 2
  %26 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 47, i32 4
  store i16 32767, ptr %26, align 4
  %27 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 47, i32 5
  store i16 3, ptr %27, align 2
  %28 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 47, i32 6
  store i16 9500, ptr %28, align 4
  %29 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 47, i32 7
  store i16 4000, ptr %29, align 2
  %30 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 53
  store i32 9, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 53, i32 1
  store i16 7, ptr %31, align 4
  %32 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 53, i32 2
  store i8 1, ptr %32, align 2
  %33 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 49
  store i32 1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 49, i32 1
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 49, i32 3
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 49, i32 4
  store i16 32767, ptr %36, align 4
  %37 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 49, i32 5
  store i16 3, ptr %37, align 2
  %38 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 49, i32 6
  store i16 9500, ptr %38, align 4
  %39 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 49, i32 7
  store i16 4000, ptr %39, align 2
  %40 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 54
  store i32 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 54, i32 1
  store i16 7, ptr %41, align 4
  %42 = getelementptr inbounds %struct.drxj_data, ptr %0, i32 0, i32 54, i32 2
  store i8 1, ptr %42, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @smart_ant_init(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.drxuio_cfg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  store i64 17179869184, ptr %9, align 8
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %10, null
  br i1 %13, label %63, label %14

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 -70, ptr %8, align 2
  %15 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 -6, ptr %15, align 1
  %16 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %10, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i16 0, ptr %7, align 2, !annotation !8
  %19 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %10, i32 noundef 4587542, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  %20 = load i8, ptr %7, align 2
  %21 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.drxj_data, ptr %12, i32 0, i32 58
  %26 = load i8, ptr %25, align 4, !range !9
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = or i8 %20, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 %29, ptr %6, align 2
  %30 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 %22, ptr %30, align 1
  %31 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %10, i32 noundef 4587542, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %63

33:                                               ; preds = %24
  %34 = and i8 %20, -4
  %35 = or i8 %34, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 %35, ptr %5, align 2
  %36 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %22, ptr %36, align 1
  %37 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %10, i32 noundef 4587542, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %33, %28
  %40 = call fastcc i32 @ctrl_set_uio_cfg(ptr noundef %0, ptr noundef nonnull %9)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load ptr, ptr %0, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 19, ptr %4, align 2
  %46 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %46, align 1
  %47 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %43, i32 noundef 8323128, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load ptr, ptr %0, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %63, label %52

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 3, ptr %3, align 2
  %53 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %53, align 1
  %54 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %50, i32 noundef 8323167, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 0, ptr %2, align 2
  %60 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 0, ptr %60, align 1
  %61 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %57, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59, %56, %52, %49, %45, %42, %39, %33, %28, %18, %14, %1
  %64 = phi i32 [ %16, %14 ], [ -22, %1 ], [ %19, %18 ], [ %31, %28 ], [ %37, %33 ], [ %40, %39 ], [ %47, %45 ], [ -22, %42 ], [ %54, %52 ], [ -22, %49 ], [ %61, %59 ], [ -22, %56 ]
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.smart_ant_init, i32 noundef %64) #14
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i32 [ 0, %59 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_set_oob(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.drxjscu_cmd, align 4
  %6 = alloca [2 x i16], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  store i64 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  store i16 -32759, ptr %5, align 4
  %11 = getelementptr inbounds %struct.drxjscu_cmd, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.drxjscu_cmd, ptr %5, i32 0, i32 2
  store i16 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drxjscu_cmd, ptr %5, i32 0, i32 4
  store ptr %6, ptr %13, align 4
  %14 = call fastcc i32 @scu_command(ptr noundef %8, ptr noundef nonnull %5)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_oob, i32 noundef %14) #14
  br label %45

18:                                               ; preds = %1
  %19 = load ptr, ptr %0, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  %22 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %19, i32 noundef 33947664, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  %23 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 0, ptr %3, align 2
  %27 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %24, ptr %27, align 1
  %28 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %19, i32 noundef 33947664, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26, %21, %18
  %31 = phi i32 [ %22, %21 ], [ -22, %18 ], [ %28, %26 ]
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_orx_nsu_aox, i32 noundef %31) #14
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_oob, i32 noundef %31) #14
  br label %45

34:                                               ; preds = %26
  %35 = icmp eq ptr %8, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 0, ptr %2, align 2
  %37 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 0, ptr %37, align 1
  %38 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %8, i32 noundef 33554432, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36, %34
  %41 = phi i32 [ %38, %36 ], [ -22, %34 ]
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_oob, i32 noundef %41) #14
  br label %45

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.drxj_data, ptr %10, i32 0, i32 60
  store i8 0, ptr %44, align 2
  br label %45

45:                                               ; preds = %43, %40, %30, %16
  %46 = phi i32 [ 0, %43 ], [ %14, %16 ], [ %31, %30 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drxj_set_lna_state(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.drxuio_cfg, align 8
  %4 = alloca %struct.drxuio_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 8589934592, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = call fastcc i32 @ctrl_set_uio_cfg(ptr noundef %0, ptr noundef nonnull %3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.drxj_set_lna_state) #14
  br label %17

9:                                                ; preds = %2
  %10 = zext i1 %1 to i8
  %11 = getelementptr inbounds %struct.drxuio_data, ptr %4, i32 0, i32 1
  store i8 %10, ptr %11, align 4
  %12 = call fastcc i32 @ctrl_uio_write(ptr noundef %0, ptr noundef nonnull %4)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = select i1 %1, ptr @.str.24, ptr @.str.25
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.drxj_set_lna_state, ptr noundef nonnull %15) #14
  br label %17

17:                                               ; preds = %14, %9, %7
  %18 = phi i32 [ %5, %7 ], [ %12, %14 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @power_down_qam(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.drxjscu_cmd, align 4
  %14 = alloca %struct.drx_cfg_mpeg_output, align 4
  %15 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #13
  %16 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 0, ptr %16, align 4
  %17 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %14) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %14, i8 0, i32 20, i1 false), !annotation !8
  %18 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i16 0, ptr %15, align 2
  %20 = icmp eq ptr %17, null
  br i1 %20, label %82, label %21

21:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 0, ptr %12, align 2
  %22 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %22, align 1
  %23 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %17, i32 noundef 37748736, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %82

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 0, ptr %11, align 2
  %26 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %26, align 1
  %27 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %17, i32 noundef 20971520, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %25
  store i16 521, ptr %13, align 4
  %30 = getelementptr inbounds %struct.drxjscu_cmd, ptr %13, i32 0, i32 1
  store i16 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.drxjscu_cmd, ptr %13, i32 0, i32 2
  store i16 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.drxjscu_cmd, ptr %13, i32 0, i32 3
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.drxjscu_cmd, ptr %13, i32 0, i32 4
  store ptr %15, ptr %33, align 4
  %34 = call fastcc i32 @scu_command(ptr noundef nonnull %17, ptr noundef nonnull %13)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %29
  br i1 %1, label %37, label %58

37:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 0, ptr %10, align 2
  %38 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 0, ptr %38, align 1
  %39 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %17, i32 noundef 25165824, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = load ptr, ptr %0, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i16 0, ptr %9, align 2, !annotation !8
  %45 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %42, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  %46 = load i8, ptr %9, align 2
  %47 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = and i8 %46, -63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 %51, ptr %8, align 2
  %52 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 %48, ptr %52, align 1
  %53 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %42, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %50, %44, %41
  %56 = phi i32 [ %45, %44 ], [ -22, %41 ], [ %53, %50 ]
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_iqm_af, i32 noundef %56) #14
  br label %82

58:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 0, ptr %7, align 2
  %59 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %59, align 1
  %60 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %17, i32 noundef 25296896, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 0, ptr %6, align 2
  %63 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %63, align 1
  %64 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %17, i32 noundef 25362432, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 0, ptr %5, align 2
  %67 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %67, align 1
  %68 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %17, i32 noundef 25427968, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 0, ptr %4, align 2
  %71 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %71, align 1
  %72 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %17, i32 noundef 25493504, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 0, ptr %3, align 2
  %75 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %75, align 1
  %76 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %17, i32 noundef 25559040, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74, %50
  %79 = getelementptr inbounds %struct.drx_common_attr, ptr %19, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %14, ptr noundef align 4 dereferenceable(20) %79, i32 20, i1 false)
  store i8 0, ptr %14, align 4
  %80 = call fastcc i32 @ctrl_set_cfg_mpeg_output(ptr noundef %0, ptr noundef nonnull %14)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78, %74, %70, %66, %62, %58, %55, %37, %29, %25, %21, %2
  %83 = phi i32 [ %56, %55 ], [ %23, %21 ], [ -22, %2 ], [ %27, %25 ], [ %34, %29 ], [ %39, %37 ], [ %60, %58 ], [ %64, %62 ], [ %68, %66 ], [ %72, %70 ], [ %76, %74 ], [ %80, %78 ]
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.power_down_qam, i32 noundef %83) #14
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i32 [ 0, %78 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @power_down_vsb(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.drxjscu_cmd, align 4
  %14 = alloca %struct.drx_cfg_mpeg_output, align 4
  %15 = alloca i16, align 2
  %16 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #13
  %17 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 0, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %14) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %14, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i16 0, ptr %15, align 2
  store i16 777, ptr %13, align 4
  %18 = getelementptr inbounds %struct.drxjscu_cmd, ptr %13, i32 0, i32 1
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.drxjscu_cmd, ptr %13, i32 0, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.drxjscu_cmd, ptr %13, i32 0, i32 3
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.drxjscu_cmd, ptr %13, i32 0, i32 4
  store ptr %15, ptr %21, align 4
  %22 = call fastcc i32 @scu_command(ptr noundef %16, ptr noundef nonnull %13)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %79

24:                                               ; preds = %2
  %25 = icmp eq ptr %16, null
  br i1 %25, label %79, label %26

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 0, ptr %12, align 2
  %27 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %27, align 1
  %28 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %16, i32 noundef 37748736, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 0, ptr %11, align 2
  %31 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %31, align 1
  %32 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %16, i32 noundef 29360128, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %30
  br i1 %1, label %35, label %56

35:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 0, ptr %10, align 2
  %36 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 0, ptr %36, align 1
  %37 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %16, i32 noundef 25165824, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load ptr, ptr %0, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i16 0, ptr %9, align 2, !annotation !8
  %43 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %40, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  %44 = load i8, ptr %9, align 2
  %45 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %46 = load i8, ptr %45, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %47 = icmp eq i32 %43, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = and i8 %44, -63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 %49, ptr %8, align 2
  %50 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 %46, ptr %50, align 1
  %51 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %40, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %48, %42, %39
  %54 = phi i32 [ %43, %42 ], [ -22, %39 ], [ %51, %48 ]
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_iqm_af, i32 noundef %54) #14
  br label %79

56:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 0, ptr %7, align 2
  %57 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %57, align 1
  %58 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %16, i32 noundef 25296896, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 0, ptr %6, align 2
  %61 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %61, align 1
  %62 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %16, i32 noundef 25362432, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 0, ptr %5, align 2
  %65 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %65, align 1
  %66 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %16, i32 noundef 25427968, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 0, ptr %4, align 2
  %69 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %69, align 1
  %70 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %16, i32 noundef 25493504, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 0, ptr %3, align 2
  %73 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %73, align 1
  %74 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %16, i32 noundef 25559040, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %48
  store i8 0, ptr %14, align 4
  %77 = call fastcc i32 @ctrl_set_cfg_mpeg_output(ptr noundef %0, ptr noundef nonnull %14)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76, %72, %68, %64, %60, %56, %53, %35, %30, %26, %24, %2
  %80 = phi i32 [ %54, %53 ], [ %22, %2 ], [ %28, %26 ], [ -22, %24 ], [ %32, %30 ], [ %37, %35 ], [ %58, %56 ], [ %62, %60 ], [ %66, %64 ], [ %70, %68 ], [ %74, %72 ], [ %77, %76 ]
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.power_down_vsb, i32 noundef %80) #14
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i32 [ 0, %76 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #13
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scu_command(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %179, label %12

12:                                               ; preds = %2
  %13 = icmp eq ptr %0, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i16 0, ptr %10, align 2, !annotation !8
  %15 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %0, i32 noundef 8593405, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  %16 = load i8, ptr %10, align 2
  %17 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14, %12
  %21 = phi i32 [ %15, %14 ], [ -22, %12 ]
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.scu_command, i32 noundef %21) #14
  br label %179

23:                                               ; preds = %14
  %24 = zext i8 %18 to i16
  %25 = shl nuw i16 %24, 8
  %26 = zext i8 %16 to i16
  %27 = or i16 %25, %26
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %179

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.drxjscu_cmd, ptr %1, i32 0, i32 1
  %31 = load i16, ptr %30, align 2
  switch i16 %31, label %179 [
    i16 5, label %32
    i16 4, label %45
    i16 3, label %58
    i16 2, label %71
    i16 1, label %84
    i16 0, label %96
  ]

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.drxjscu_cmd, ptr %1, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i16, ptr %34, i32 4
  %36 = load i16, ptr %35, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  %37 = trunc i16 %36 to i8
  store i8 %37, ptr %9, align 2
  %38 = lshr i16 %36, 8
  %39 = trunc i16 %38 to i8
  %40 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 %39, ptr %40, align 1
  %41 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 8593400, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.scu_command, i32 noundef %41) #14
  br label %179

45:                                               ; preds = %32, %29
  %46 = getelementptr inbounds %struct.drxjscu_cmd, ptr %1, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i16, ptr %47, i32 3
  %49 = load i16, ptr %48, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  %50 = trunc i16 %49 to i8
  store i8 %50, ptr %8, align 2
  %51 = lshr i16 %49, 8
  %52 = trunc i16 %51 to i8
  %53 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 %52, ptr %53, align 1
  %54 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 8593401, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.scu_command, i32 noundef %54) #14
  br label %179

58:                                               ; preds = %45, %29
  %59 = getelementptr inbounds %struct.drxjscu_cmd, ptr %1, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i16, ptr %60, i32 2
  %62 = load i16, ptr %61, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  %63 = trunc i16 %62 to i8
  store i8 %63, ptr %7, align 2
  %64 = lshr i16 %62, 8
  %65 = trunc i16 %64 to i8
  %66 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 %65, ptr %66, align 1
  %67 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 8593402, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %58
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.scu_command, i32 noundef %67) #14
  br label %179

71:                                               ; preds = %58, %29
  %72 = getelementptr inbounds %struct.drxjscu_cmd, ptr %1, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i16, ptr %73, i32 1
  %75 = load i16, ptr %74, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  %76 = trunc i16 %75 to i8
  store i8 %76, ptr %6, align 2
  %77 = lshr i16 %75, 8
  %78 = trunc i16 %77 to i8
  %79 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 %78, ptr %79, align 1
  %80 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 8593403, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %71
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.scu_command, i32 noundef %80) #14
  br label %179

84:                                               ; preds = %71, %29
  %85 = getelementptr inbounds %struct.drxjscu_cmd, ptr %1, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = load i16, ptr %86, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %88 = trunc i16 %87 to i8
  store i8 %88, ptr %5, align 2
  %89 = lshr i16 %87, 8
  %90 = trunc i16 %89 to i8
  %91 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %90, ptr %91, align 1
  %92 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 8593404, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %84
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.scu_command, i32 noundef %92) #14
  br label %179

96:                                               ; preds = %84, %29
  %97 = load i16, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  %98 = trunc i16 %97 to i8
  store i8 %98, ptr %4, align 2
  %99 = lshr i16 %97, 8
  %100 = trunc i16 %99 to i8
  %101 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 %100, ptr %101, align 1
  %102 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 8593405, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %96
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.scu_command, i32 noundef %102) #14
  br label %179

106:                                              ; preds = %96
  %107 = load volatile i32, ptr @jiffies, align 64
  %108 = sub i32 -10, %107
  %109 = load volatile i32, ptr @jiffies, align 64
  %110 = add i32 %108, %109
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %106
  %113 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  br label %114

114:                                              ; preds = %127, %112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %115 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %0, i32 noundef 8593405, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  %116 = load i8, ptr %3, align 2
  %117 = load i8, ptr %113, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %118 = icmp eq i32 %115, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.scu_command, i32 noundef %115) #14
  br label %179

121:                                              ; preds = %114
  %122 = zext i8 %117 to i16
  %123 = shl nuw i16 %122, 8
  %124 = zext i8 %116 to i16
  %125 = or i16 %123, %124
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #13
  %128 = load volatile i32, ptr @jiffies, align 64
  %129 = add i32 %108, %128
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %114, label %179

131:                                              ; preds = %121, %106
  %132 = getelementptr inbounds %struct.drxjscu_cmd, ptr %1, i32 0, i32 2
  %133 = load i16, ptr %132, align 4
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %179, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.drxjscu_cmd, ptr %1, i32 0, i32 4
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %179, label %139

139:                                              ; preds = %135
  switch i16 %133, label %179 [
    i16 4, label %140
    i16 3, label %148
    i16 2, label %157
    i16 1, label %166
  ]

140:                                              ; preds = %139
  %141 = getelementptr i16, ptr %137, i32 3
  %142 = call fastcc i32 @drxj_dap_read_reg16(ptr noundef nonnull %0, i32 noundef 8593401, ptr noundef %141, i32 noundef 0)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load ptr, ptr %136, align 4
  br label %148

146:                                              ; preds = %140
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.scu_command, i32 noundef %142) #14
  br label %179

148:                                              ; preds = %144, %139
  %149 = phi ptr [ %145, %144 ], [ %137, %139 ]
  %150 = getelementptr i16, ptr %149, i32 2
  %151 = call fastcc i32 @drxj_dap_read_reg16(ptr noundef nonnull %0, i32 noundef 8593402, ptr noundef %150, i32 noundef 0)
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load ptr, ptr %136, align 4
  br label %157

155:                                              ; preds = %148
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.scu_command, i32 noundef %151) #14
  br label %179

157:                                              ; preds = %153, %139
  %158 = phi ptr [ %154, %153 ], [ %137, %139 ]
  %159 = getelementptr i16, ptr %158, i32 1
  %160 = call fastcc i32 @drxj_dap_read_reg16(ptr noundef nonnull %0, i32 noundef 8593403, ptr noundef %159, i32 noundef 0)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load ptr, ptr %136, align 4
  br label %166

164:                                              ; preds = %157
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.scu_command, i32 noundef %160) #14
  br label %179

166:                                              ; preds = %162, %139
  %167 = phi ptr [ %163, %162 ], [ %137, %139 ]
  %168 = call fastcc i32 @drxj_dap_read_reg16(ptr noundef nonnull %0, i32 noundef 8593404, ptr noundef %167, i32 noundef 0)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.scu_command, i32 noundef %168) #14
  br label %179

172:                                              ; preds = %166
  %173 = load ptr, ptr %136, align 4
  %174 = load i16, ptr %173, align 2
  %175 = icmp ugt i16 %174, -5
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  %177 = icmp slt i16 %174, 0
  %178 = select i1 %177, i32 -5, i32 0
  br label %179

179:                                              ; preds = %176, %172, %170, %164, %155, %146, %139, %135, %131, %127, %119, %104, %94, %82, %69, %56, %43, %29, %23, %20, %2
  %180 = phi i32 [ -22, %2 ], [ -5, %23 ], [ -5, %29 ], [ 0, %135 ], [ 0, %131 ], [ -5, %139 ], [ -22, %172 ], [ %178, %176 ], [ %21, %20 ], [ %102, %104 ], [ %115, %119 ], [ %92, %94 ], [ %80, %82 ], [ %67, %69 ], [ %54, %56 ], [ %41, %43 ], [ %142, %146 ], [ %151, %155 ], [ %160, %164 ], [ %168, %170 ], [ -5, %127 ]
  ret i32 %180
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drxj_dap_read_reg16(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca i16, align 2
  %11 = icmp eq ptr %0, null
  %12 = icmp eq ptr %2, null
  %13 = or i1 %11, %12
  br i1 %13, label %92, label %14

14:                                               ; preds = %4
  %15 = and i32 %1, 264241152
  %16 = icmp eq i32 %15, 16777216
  %17 = lshr i32 %1, 16
  %18 = and i32 %17, 63
  %19 = add nsw i32 %18, -2
  %20 = icmp ult i32 %19, 4
  %21 = select i1 %16, i1 %20, i1 false
  br i1 %21, label %22, label %83

22:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  %23 = and i32 %1, 4128768
  %24 = icmp eq i32 %23, 196608
  br i1 %24, label %81, label %25

25:                                               ; preds = %22
  %26 = and i32 %1, -65537
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = tail call i32 @jiffies_to_msecs(i32 noundef %27) #13
  %29 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %30 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  br label %31

31:                                               ; preds = %48, %25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 0, ptr %6, align 2
  store i8 0, ptr %29, align 1
  %32 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %0, i32 noundef %26, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 268435456) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  %35 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef %0, i32 noundef 4325401, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  %36 = load i8, ptr %5, align 2
  %37 = zext i8 %36 to i16
  %38 = load i8, ptr %30, align 1
  %39 = zext i8 %38 to i16
  %40 = shl nuw i16 %39, 8
  %41 = or i16 %40, %37
  store i16 %41, ptr %10, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %42 = icmp eq i32 %35, 0
  br i1 %42, label %43, label %81

43:                                               ; preds = %34
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = call i32 @jiffies_to_msecs(i32 noundef %44) #13
  %46 = sub i32 %45, %28
  %47 = icmp ugt i32 %46, 80
  br i1 %47, label %81, label %48

48:                                               ; preds = %43
  %49 = and i16 %37, 12
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %31

51:                                               ; preds = %48
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = call i32 @jiffies_to_msecs(i32 noundef %52) #13
  %54 = and i8 %36, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %64, %51
  %57 = call fastcc i32 @drxj_dap_read_reg16(ptr noundef %0, i32 noundef 16842769, ptr noundef nonnull %10, i32 noundef 0) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = call i32 @jiffies_to_msecs(i32 noundef %60) #13
  %62 = sub i32 %61, %53
  %63 = icmp ugt i32 %62, 80
  br i1 %63, label %81, label %64

64:                                               ; preds = %59
  %65 = load i16, ptr %10, align 2
  %66 = and i16 %65, 1
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %56, label %68

68:                                               ; preds = %64, %51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 0, ptr %8, align 2
  %69 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 0, ptr %69, align 1
  %70 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %0, i32 noundef 16842770, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 268435456) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i16 0, ptr %7, align 2, !annotation !8
  %73 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef %0, i32 noundef 4325401, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  %74 = load i8, ptr %7, align 2
  %75 = zext i8 %74 to i16
  %76 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i16
  %79 = shl nuw i16 %78, 8
  %80 = or i16 %79, %75
  store i16 %80, ptr %2, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  br label %81

81:                                               ; preds = %72, %68, %59, %56, %43, %34, %31, %22
  %82 = phi i32 [ %73, %72 ], [ %70, %68 ], [ -22, %22 ], [ -5, %59 ], [ %57, %56 ], [ -5, %43 ], [ %35, %34 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  br label %92

83:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i16 0, ptr %9, align 2, !annotation !8
  %84 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %0, i32 noundef %1, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef %3) #13
  %85 = load i8, ptr %9, align 2
  %86 = zext i8 %85 to i16
  %87 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i16
  %90 = shl nuw i16 %89, 8
  %91 = or i16 %90, %86
  store i16 %91, ptr %2, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  br label %92

92:                                               ; preds = %83, %81, %4
  %93 = phi i32 [ -22, %4 ], [ %82, %81 ], [ %84, %83 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drxdap_fasi_write_block(ptr noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [60 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %8) #13
  %9 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %9, i8 0, i32 56, i1 false), !annotation !8
  %10 = icmp eq ptr %0, null
  br i1 %10, label %113, label %11

11:                                               ; preds = %5
  %12 = load i16, ptr %0, align 4
  %13 = and i16 %12, 248
  %14 = icmp eq i16 %13, 240
  %15 = select i1 %14, i32 62, i32 63
  %16 = and i32 %1, -63897728
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %1, 32768
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %113

20:                                               ; preds = %11
  %21 = icmp eq i16 %2, 0
  %22 = icmp ne ptr %3, null
  %23 = or i1 %21, %22
  %24 = and i16 %2, 1
  %25 = icmp eq i16 %24, 0
  %26 = and i1 %25, %23
  br i1 %26, label %27, label %113

27:                                               ; preds = %20
  %28 = and i32 %4, 805306368
  %29 = select i1 %17, i32 58, i32 56
  %30 = add nuw nsw i32 %29, %15
  %31 = and i32 %30, 62
  %32 = getelementptr inbounds [60 x i8], ptr %8, i32 0, i32 1
  %33 = getelementptr inbounds [60 x i8], ptr %8, i32 0, i32 2
  %34 = getelementptr inbounds [60 x i8], ptr %8, i32 0, i32 3
  %35 = getelementptr inbounds %struct.i2c_device_addr, ptr %0, i32 0, i32 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  br label %40

40:                                               ; preds = %101, %27
  %41 = phi i32 [ %1, %27 ], [ %111, %101 ]
  %42 = phi i16 [ %2, %27 ], [ %108, %101 ]
  %43 = phi ptr [ %3, %27 ], [ %109, %101 ]
  %44 = phi i32 [ 0, %27 ], [ %106, %101 ]
  %45 = and i32 %41, 268435455
  %46 = or i32 %28, %45
  %47 = or i32 %46, -1073741824
  %48 = trunc i32 %41 to i8
  %49 = shl i8 %48, 1
  %50 = or i8 %49, 1
  store i8 %50, ptr %8, align 1
  %51 = lshr i32 %41, 16
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %32, align 1
  %53 = lshr i32 %47, 24
  %54 = trunc i32 %53 to i8
  store i8 %54, ptr %33, align 1
  %55 = lshr i32 %41, 7
  %56 = trunc i32 %55 to i8
  store i8 %56, ptr %34, align 1
  %57 = zext i16 %42 to i32
  %58 = call i32 @llvm.umin.i32(i32 %31, i32 %57)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false) #13, !annotation !8
  %61 = load ptr, ptr %35, align 4
  %62 = load i16, ptr %0, align 4
  %63 = lshr i16 %62, 1
  store i16 %63, ptr %7, align 4
  store ptr %8, ptr %36, align 4
  store i16 4, ptr %37, align 4
  %64 = load ptr, ptr %61, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = call i32 @i2c_transfer(ptr noundef nonnull %64, ptr noundef nonnull %7, i32 noundef 1) #13
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %74, label %69

69:                                               ; preds = %66, %60
  %70 = phi ptr [ @.str, %60 ], [ @.str.1, %66 ]
  %71 = phi i32 [ 0, %60 ], [ -121, %66 ]
  %72 = xor i1 %65, true
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %70, ptr noundef nonnull @__func__.drxbsp_i2c_write_read) #14
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi i1 [ false, %66 ], [ %72, %69 ]
  %76 = phi i32 [ 0, %66 ], [ %71, %69 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  %77 = icmp eq i32 %44, 0
  %78 = select i1 %75, i1 %77, i1 false
  %79 = select i1 %78, i32 %76, i32 %44
  %80 = call i32 @llvm.umin.i32(i32 %57, i32 58)
  br label %81

81:                                               ; preds = %74, %40
  %82 = phi i32 [ %79, %74 ], [ %44, %40 ]
  %83 = phi i32 [ %80, %74 ], [ %58, %40 ]
  %84 = phi i32 [ 0, %74 ], [ 4, %40 ]
  %85 = getelementptr [60 x i8], ptr %8, i32 0, i32 %84
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %85, ptr align 1 %43, i32 %83, i1 false)
  %86 = add nuw nsw i32 %84, %83
  %87 = trunc i32 %86 to i16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false) #13, !annotation !8
  %88 = load ptr, ptr %35, align 4
  %89 = load i16, ptr %0, align 4
  %90 = lshr i16 %89, 1
  store i16 %90, ptr %6, align 4
  store ptr %8, ptr %38, align 4
  store i16 %87, ptr %39, align 4
  %91 = load ptr, ptr %88, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %81
  %94 = call i32 @i2c_transfer(ptr noundef nonnull %91, ptr noundef nonnull %6, i32 noundef 1) #13
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %101, label %96

96:                                               ; preds = %93, %81
  %97 = phi ptr [ @.str, %81 ], [ @.str.1, %93 ]
  %98 = phi i32 [ 0, %81 ], [ -121, %93 ]
  %99 = xor i1 %92, true
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %97, ptr noundef nonnull @__func__.drxbsp_i2c_write_read) #14
  br label %101

101:                                              ; preds = %96, %93
  %102 = phi i1 [ false, %93 ], [ %99, %96 ]
  %103 = phi i32 [ 0, %93 ], [ %98, %96 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %104 = icmp eq i32 %82, 0
  %105 = select i1 %102, i1 %104, i1 false
  %106 = select i1 %105, i32 %103, i32 %82
  %107 = trunc i32 %83 to i16
  %108 = sub i16 %42, %107
  %109 = getelementptr i8, ptr %43, i32 %83
  %110 = lshr i32 %83, 1
  %111 = add nsw i32 %110, %47
  %112 = icmp eq i16 %108, 0
  br i1 %112, label %113, label %40

113:                                              ; preds = %101, %20, %11, %5
  %114 = phi i32 [ -22, %5 ], [ -22, %20 ], [ -22, %11 ], [ %106, %101 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %8) #13
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drxdap_fasi_read_block(ptr noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  %9 = icmp ne ptr %0, null
  %10 = and i32 %1, 32768
  %11 = icmp eq i32 %10, 0
  %12 = and i1 %9, %11
  br i1 %12, label %13, label %81

13:                                               ; preds = %5
  %14 = icmp eq i16 %2, 0
  %15 = icmp ne ptr %3, null
  %16 = or i1 %14, %15
  %17 = and i16 %2, 1
  %18 = icmp eq i16 %17, 0
  %19 = and i1 %18, %16
  br i1 %19, label %20, label %81

20:                                               ; preds = %13
  %21 = and i32 %4, 805306367
  %22 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 1
  %23 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 2
  %24 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 3
  %25 = getelementptr inbounds %struct.i2c_device_addr, ptr %0, i32 0, i32 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  %31 = getelementptr inbounds i8, ptr %6, i32 4
  br label %32

32:                                               ; preds = %75, %20
  %33 = phi i32 [ %1, %20 ], [ %78, %75 ]
  %34 = phi i16 [ %2, %20 ], [ %79, %75 ]
  %35 = phi ptr [ %3, %20 ], [ %76, %75 ]
  %36 = call i16 @llvm.umin.i16(i16 %34, i16 60)
  %37 = zext i16 %36 to i32
  %38 = and i32 %33, 268435455
  %39 = or i32 %21, %38
  %40 = or i32 %39, -1073741824
  %41 = trunc i32 %39 to i8
  %42 = shl i8 %41, 1
  %43 = or i8 %42, 1
  store i8 %43, ptr %8, align 4
  %44 = lshr i32 %39, 16
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %22, align 1
  %46 = lshr i32 %40, 24
  %47 = trunc i32 %46 to i8
  store i8 %47, ptr %23, align 2
  %48 = lshr i32 %39, 7
  %49 = trunc i32 %48 to i8
  store i8 %49, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false) #13, !annotation !8
  %50 = load ptr, ptr %25, align 4
  %51 = load i16, ptr %0, align 4
  %52 = lshr i16 %51, 1
  store i16 %52, ptr %7, align 4
  store ptr %8, ptr %26, align 4
  store i16 4, ptr %27, align 4
  %53 = load ptr, ptr %50, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %32
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxbsp_i2c_write_read) #14
  br label %62

57:                                               ; preds = %32
  %58 = call i32 @i2c_transfer(ptr noundef nonnull %53, ptr noundef nonnull %7, i32 noundef 1) #13
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.drxbsp_i2c_write_read) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  br label %81

62:                                               ; preds = %57, %55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %31, i8 0, i32 20, i1 false) #13, !annotation !8
  %63 = load ptr, ptr %25, align 4
  %64 = load i16, ptr %0, align 4
  %65 = lshr i16 %64, 1
  store i16 %65, ptr %6, align 4
  store i16 1, ptr %28, align 2
  store ptr %35, ptr %29, align 4
  store i16 %36, ptr %30, align 4
  %66 = load ptr, ptr %63, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.drxbsp_i2c_write_read) #14
  br label %75

70:                                               ; preds = %62
  %71 = call i32 @i2c_transfer(ptr noundef nonnull %66, ptr noundef nonnull %6, i32 noundef 1) #13
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.drxbsp_i2c_write_read) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %81

75:                                               ; preds = %70, %68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %76 = getelementptr i8, ptr %35, i32 %37
  %77 = lshr i32 %37, 1
  %78 = add nuw nsw i32 %77, %40
  %79 = sub i16 %34, %36
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %32

81:                                               ; preds = %75, %73, %60, %13, %5
  %82 = phi i32 [ -22, %5 ], [ -22, %13 ], [ -121, %60 ], [ -121, %73 ], [ 0, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hi_command(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = load i16, ptr %1, align 2
  switch i16 %13, label %151 [
    i16 3, label %14
    i16 8, label %14
    i16 7, label %61
    i16 0, label %91
  ]

14:                                               ; preds = %3, %3
  %15 = icmp eq ptr %0, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %1, i32 0, i32 6
  %18 = load i16, ptr %17, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  %19 = trunc i16 %18 to i8
  store i8 %19, ptr %12, align 2
  %20 = lshr i16 %18, 8
  %21 = trunc i16 %20 to i8
  %22 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 %21, ptr %22, align 1
  %23 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 4325432, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16, %14
  %26 = phi i32 [ %23, %16 ], [ -22, %14 ]
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hi_command, i32 noundef %26) #14
  br label %151

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %1, i32 0, i32 5
  %30 = load i16, ptr %29, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  %31 = trunc i16 %30 to i8
  store i8 %31, ptr %11, align 2
  %32 = lshr i16 %30, 8
  %33 = trunc i16 %32 to i8
  %34 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 %33, ptr %34, align 1
  %35 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 4325431, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hi_command, i32 noundef %35) #14
  br label %151

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %1, i32 0, i32 4
  %41 = load i16, ptr %40, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  %42 = trunc i16 %41 to i8
  store i8 %42, ptr %10, align 2
  %43 = lshr i16 %41, 8
  %44 = trunc i16 %43 to i8
  %45 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 %44, ptr %45, align 1
  %46 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 4325430, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hi_command, i32 noundef %46) #14
  br label %151

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %1, i32 0, i32 3
  %52 = load i16, ptr %51, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  %53 = trunc i16 %52 to i8
  store i8 %53, ptr %9, align 2
  %54 = lshr i16 %52, 8
  %55 = trunc i16 %54 to i8
  %56 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 %55, ptr %56, align 1
  %57 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 4325429, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hi_command, i32 noundef %57) #14
  br label %151

61:                                               ; preds = %3
  %62 = icmp eq ptr %0, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %61, %50
  %64 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %1, i32 0, i32 2
  %65 = load i16, ptr %64, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  %66 = trunc i16 %65 to i8
  store i8 %66, ptr %8, align 2
  %67 = lshr i16 %65, 8
  %68 = trunc i16 %67 to i8
  %69 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 %68, ptr %69, align 1
  %70 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 4325428, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %63, %61
  %73 = phi i32 [ %70, %63 ], [ -22, %61 ]
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hi_command, i32 noundef %73) #14
  br label %151

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %1, i32 0, i32 1
  %77 = load i16, ptr %76, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  %78 = trunc i16 %77 to i8
  store i8 %78, ptr %7, align 2
  %79 = lshr i16 %77, 8
  %80 = trunc i16 %79 to i8
  %81 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 %80, ptr %81, align 1
  %82 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 4325427, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load i16, ptr %1, align 2
  %86 = trunc i16 %85 to i8
  %87 = lshr i16 %85, 8
  %88 = trunc i16 %87 to i8
  br label %93

89:                                               ; preds = %75
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hi_command, i32 noundef %82) #14
  br label %151

91:                                               ; preds = %3
  %92 = icmp eq ptr %0, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %91, %84
  %94 = phi i8 [ %86, %84 ], [ 0, %91 ]
  %95 = phi i8 [ %88, %84 ], [ 0, %91 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 %94, ptr %6, align 2
  %96 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 %95, ptr %96, align 1
  %97 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %0, i32 noundef 4325426, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %93, %91
  %100 = phi i32 [ %97, %93 ], [ -22, %91 ]
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hi_command, i32 noundef %100) #14
  br label %151

102:                                              ; preds = %93
  %103 = load i16, ptr %1, align 2
  %104 = icmp eq i16 %103, 2
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  call void @msleep(i32 noundef 1) #13
  %106 = load i16, ptr %1, align 2
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i16 [ %106, %105 ], [ %103, %102 ]
  %109 = icmp eq i16 %108, 3
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %1, i32 0, i32 5
  %112 = load i16, ptr %111, align 2
  %113 = and i16 %112, 8
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %151

115:                                              ; preds = %110, %107
  %116 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  br label %117

117:                                              ; preds = %130, %115
  %118 = phi i16 [ %119, %130 ], [ 0, %115 ]
  %119 = add nuw nsw i16 %118, 1
  %120 = icmp ugt i16 %118, 99
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.hi_command) #14
  br label %151

123:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  %124 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %0, i32 noundef 4325426, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  %125 = load i8, ptr %5, align 2
  %126 = load i8, ptr %116, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %127 = icmp eq i32 %124, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hi_command, i32 noundef %124) #14
  br label %151

130:                                              ; preds = %123
  %131 = zext i8 %126 to i16
  %132 = shl nuw i16 %131, 8
  %133 = zext i8 %125 to i16
  %134 = or i16 %132, %133
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %117

136:                                              ; preds = %130
  %137 = icmp eq ptr %2, null
  br i1 %137, label %148, label %138

138:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  %139 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %0, i32 noundef 4325425, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  %140 = load i8, ptr %4, align 2
  %141 = zext i8 %140 to i16
  %142 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i16
  %145 = shl nuw i16 %144, 8
  %146 = or i16 %145, %141
  store i16 %146, ptr %2, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %147 = icmp eq i32 %139, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %138, %136
  %149 = phi i32 [ %139, %138 ], [ -22, %136 ]
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hi_command, i32 noundef %149) #14
  br label %151

151:                                              ; preds = %148, %138, %128, %121, %110, %99, %89, %72, %59, %48, %37, %25, %3
  %152 = phi i32 [ -22, %3 ], [ 0, %138 ], [ 0, %110 ], [ %100, %99 ], [ 0, %121 ], [ %124, %128 ], [ %149, %148 ], [ %73, %72 ], [ %82, %89 ], [ %26, %25 ], [ %35, %37 ], [ %46, %48 ], [ %57, %59 ]
  ret i32 %152
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_set_uio_cfg(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = icmp eq ptr %1, null
  %10 = icmp eq ptr %0, null
  %11 = or i1 %10, %9
  br i1 %11, label %103, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %0, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %100, label %17

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 -70, ptr %8, align 2
  %18 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 -6, ptr %18, align 1
  %19 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %15, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %100

21:                                               ; preds = %17
  %22 = load i32, ptr %1, align 4
  switch i32 %22, label %103 [
    i32 0, label %23
    i32 1, label %40
    i32 2, label %57
    i32 3, label %74
  ]

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.drxj_data, ptr %14, i32 0, i32 4
  %25 = load i8, ptr %24, align 4, !range !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %103, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.drxuio_cfg, ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %103 [
    i32 4, label %30
    i32 8, label %30
    i32 2, label %30
    i32 1, label %32
  ]

30:                                               ; preds = %27, %27, %27
  %31 = getelementptr inbounds %struct.drxj_data, ptr %14, i32 0, i32 30
  store i32 %29, ptr %31, align 4
  br label %93

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.drxj_data, ptr %14, i32 0, i32 30
  store i32 1, ptr %33, align 4
  %34 = load ptr, ptr %0, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %100, label %36

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 0, ptr %7, align 2
  %37 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %37, align 1
  %38 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %34, i32 noundef 8323128, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %93, label %100

40:                                               ; preds = %21
  %41 = getelementptr inbounds %struct.drxj_data, ptr %14, i32 0, i32 5
  %42 = load i8, ptr %41, align 1, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %103, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.drxuio_cfg, ptr %1, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %103 [
    i32 4, label %47
    i32 2, label %47
    i32 1, label %49
  ]

47:                                               ; preds = %44, %44
  %48 = getelementptr inbounds %struct.drxj_data, ptr %14, i32 0, i32 29
  store i32 %46, ptr %48, align 4
  br label %93

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.drxj_data, ptr %14, i32 0, i32 29
  store i32 1, ptr %50, align 4
  %51 = load ptr, ptr %0, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %100, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 0, ptr %6, align 2
  %54 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %54, align 1
  %55 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %51, i32 noundef 8323127, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %93, label %100

57:                                               ; preds = %21
  %58 = getelementptr inbounds %struct.drxj_data, ptr %14, i32 0, i32 6
  %59 = load i8, ptr %58, align 2, !range !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %103, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.drxuio_cfg, ptr %1, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  switch i32 %63, label %103 [
    i32 4, label %64
    i32 2, label %64
    i32 1, label %66
  ]

64:                                               ; preds = %61, %61
  %65 = getelementptr inbounds %struct.drxj_data, ptr %14, i32 0, i32 31
  store i32 %63, ptr %65, align 4
  br label %93

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.drxj_data, ptr %14, i32 0, i32 31
  store i32 1, ptr %67, align 4
  %68 = load ptr, ptr %0, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %100, label %70

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 0, ptr %5, align 2
  %71 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %71, align 1
  %72 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %68, i32 noundef 8323105, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %93, label %100

74:                                               ; preds = %21
  %75 = getelementptr inbounds %struct.drxj_data, ptr %14, i32 0, i32 7
  %76 = load i8, ptr %75, align 1, !range !9
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.drxuio_cfg, ptr %1, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  switch i32 %80, label %103 [
    i32 2, label %81
    i32 1, label %83
  ]

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.drxj_data, ptr %14, i32 0, i32 32
  store i32 2, ptr %82, align 4
  br label %93

83:                                               ; preds = %78
  %84 = load ptr, ptr %0, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %100, label %86

86:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 0, ptr %4, align 2
  %87 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %87, align 1
  %88 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %84, i32 noundef 8323106, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i32, ptr %79, align 4
  %92 = getelementptr inbounds %struct.drxj_data, ptr %14, i32 0, i32 32
  store i32 %91, ptr %92, align 4
  br label %93

93:                                               ; preds = %90, %81, %70, %64, %53, %47, %36, %30
  %94 = load ptr, ptr %0, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 0, ptr %3, align 2
  %97 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %97, align 1
  %98 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %94, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96, %93, %86, %83, %70, %66, %53, %49, %36, %32, %17, %12
  %101 = phi i32 [ %19, %17 ], [ -22, %12 ], [ %38, %36 ], [ -22, %32 ], [ %55, %53 ], [ -22, %49 ], [ %72, %70 ], [ -22, %66 ], [ %88, %86 ], [ -22, %83 ], [ %98, %96 ], [ -22, %93 ]
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_uio_cfg, i32 noundef %101) #14
  br label %103

103:                                              ; preds = %100, %96, %78, %74, %61, %57, %44, %40, %27, %23, %21, %2
  %104 = phi i32 [ -22, %2 ], [ -5, %23 ], [ -22, %27 ], [ -5, %40 ], [ -22, %44 ], [ -5, %57 ], [ -22, %61 ], [ -5, %74 ], [ -22, %78 ], [ -22, %21 ], [ 0, %96 ], [ %101, %100 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_uio_write(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = icmp eq ptr %1, null
  %18 = icmp eq ptr %0, null
  %19 = or i1 %18, %17
  br i1 %19, label %188, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %185, label %25

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i8 -70, ptr %16, align 2
  %26 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  store i8 -6, ptr %26, align 1
  %27 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %23, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %185

29:                                               ; preds = %25
  %30 = load i32, ptr %1, align 4
  switch i32 %30, label %188 [
    i32 0, label %31
    i32 1, label %67
    i32 2, label %104
    i32 3, label %141
  ]

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.drxj_data, ptr %22, i32 0, i32 4
  %33 = load i8, ptr %32, align 4, !range !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %188, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.drxj_data, ptr %22, i32 0, i32 30
  %37 = load i32, ptr %36, align 4
  switch i32 %37, label %188 [
    i32 2, label %38
    i32 8, label %38
  ]

38:                                               ; preds = %35, %35
  %39 = load ptr, ptr %0, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %185, label %41

41:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i8 19, ptr %15, align 2
  %42 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 1, ptr %42, align 1
  %43 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8323128, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %185

45:                                               ; preds = %41
  %46 = load ptr, ptr %0, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %185, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i16 0, ptr %14, align 2, !annotation !8
  %49 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %46, i32 noundef 8323094, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  %50 = load i8, ptr %14, align 2
  %51 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  %52 = load i8, ptr %51, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %53 = icmp eq i32 %49, 0
  br i1 %53, label %54, label %185

54:                                               ; preds = %48
  %55 = load ptr, ptr %0, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %185, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.drxuio_data, ptr %1, i32 0, i32 1
  %59 = load i8, ptr %58, align 4, !range !9
  %60 = icmp eq i8 %59, 0
  %61 = and i8 %52, 127
  %62 = select i1 %60, i8 0, i8 -128
  %63 = or i8 %62, %61
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 %50, ptr %13, align 2
  %64 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 %63, ptr %64, align 1
  %65 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %55, i32 noundef 8323094, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %178, label %185

67:                                               ; preds = %29
  %68 = getelementptr inbounds %struct.drxj_data, ptr %22, i32 0, i32 5
  %69 = load i8, ptr %68, align 1, !range !9
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %188, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.drxj_data, ptr %22, i32 0, i32 29
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %188

75:                                               ; preds = %71
  %76 = load ptr, ptr %0, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %185, label %78

78:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 19, ptr %12, align 2
  %79 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 1, ptr %79, align 1
  %80 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %76, i32 noundef 8323127, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %185

82:                                               ; preds = %78
  %83 = load ptr, ptr %0, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %185, label %85

85:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i16 0, ptr %11, align 2, !annotation !8
  %86 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %83, i32 noundef 8323094, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  %87 = load i8, ptr %11, align 2
  %88 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  %89 = load i8, ptr %88, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %90 = icmp eq i32 %86, 0
  br i1 %90, label %91, label %185

91:                                               ; preds = %85
  %92 = load ptr, ptr %0, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %185, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.drxuio_data, ptr %1, i32 0, i32 1
  %96 = load i8, ptr %95, align 4, !range !9
  %97 = icmp eq i8 %96, 0
  %98 = and i8 %89, -65
  %99 = select i1 %97, i8 0, i8 64
  %100 = or i8 %99, %98
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 %87, ptr %10, align 2
  %101 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 %100, ptr %101, align 1
  %102 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %92, i32 noundef 8323094, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %178, label %185

104:                                              ; preds = %29
  %105 = getelementptr inbounds %struct.drxj_data, ptr %22, i32 0, i32 6
  %106 = load i8, ptr %105, align 2, !range !9
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %188, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.drxj_data, ptr %22, i32 0, i32 31
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %188

112:                                              ; preds = %108
  %113 = load ptr, ptr %0, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %185, label %115

115:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 19, ptr %9, align 2
  %116 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 1, ptr %116, align 1
  %117 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %113, i32 noundef 8323105, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %185

119:                                              ; preds = %115
  %120 = load ptr, ptr %0, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %185, label %122

122:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i16 0, ptr %8, align 2, !annotation !8
  %123 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %120, i32 noundef 8323095, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  %124 = load i8, ptr %8, align 2
  %125 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %126 = load i8, ptr %125, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %127 = icmp eq i32 %123, 0
  br i1 %127, label %128, label %185

128:                                              ; preds = %122
  %129 = load ptr, ptr %0, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %185, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.drxuio_data, ptr %1, i32 0, i32 1
  %133 = load i8, ptr %132, align 4, !range !9
  %134 = icmp eq i8 %133, 0
  %135 = and i8 %124, -5
  %136 = select i1 %134, i8 0, i8 4
  %137 = or i8 %136, %135
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 %137, ptr %7, align 2
  %138 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 %126, ptr %138, align 1
  %139 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %129, i32 noundef 8323095, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %178, label %185

141:                                              ; preds = %29
  %142 = getelementptr inbounds %struct.drxj_data, ptr %22, i32 0, i32 7
  %143 = load i8, ptr %142, align 1, !range !9
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %188, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.drxj_data, ptr %22, i32 0, i32 32
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %188

149:                                              ; preds = %145
  %150 = load ptr, ptr %0, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %185, label %152

152:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 19, ptr %6, align 2
  %153 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 1, ptr %153, align 1
  %154 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %150, i32 noundef 8323106, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %185

156:                                              ; preds = %152
  %157 = load ptr, ptr %0, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %185, label %159

159:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  %160 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %157, i32 noundef 8323094, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  %161 = load i8, ptr %5, align 2
  %162 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %163 = load i8, ptr %162, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %164 = icmp eq i32 %160, 0
  br i1 %164, label %165, label %185

165:                                              ; preds = %159
  %166 = load ptr, ptr %0, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %185, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.drxuio_data, ptr %1, i32 0, i32 1
  %170 = load i8, ptr %169, align 4, !range !9
  %171 = icmp eq i8 %170, 0
  %172 = and i8 %163, -17
  %173 = select i1 %171, i8 0, i8 16
  %174 = or i8 %173, %172
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 %161, ptr %4, align 2
  %175 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 %174, ptr %175, align 1
  %176 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %166, i32 noundef 8323094, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %168, %131, %94, %57
  %179 = load ptr, ptr %0, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 0, ptr %3, align 2
  %182 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %182, align 1
  %183 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %179, i32 noundef 4259855, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %181, %178, %168, %165, %159, %156, %152, %149, %131, %128, %122, %119, %115, %112, %94, %91, %85, %82, %78, %75, %57, %54, %48, %45, %41, %38, %25, %20
  %186 = phi i32 [ %27, %25 ], [ -22, %20 ], [ %43, %41 ], [ -22, %38 ], [ %49, %48 ], [ -22, %45 ], [ %65, %57 ], [ -22, %54 ], [ %80, %78 ], [ -22, %75 ], [ %86, %85 ], [ -22, %82 ], [ %102, %94 ], [ -22, %91 ], [ %117, %115 ], [ -22, %112 ], [ %123, %122 ], [ -22, %119 ], [ %139, %131 ], [ -22, %128 ], [ %154, %152 ], [ -22, %149 ], [ %160, %159 ], [ -22, %156 ], [ %176, %168 ], [ -22, %165 ], [ %183, %181 ], [ -22, %178 ]
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_uio_write, i32 noundef %186) #14
  br label %188

188:                                              ; preds = %185, %181, %145, %141, %108, %104, %71, %67, %35, %31, %29, %2
  %189 = phi i32 [ -22, %2 ], [ -5, %31 ], [ -5, %35 ], [ -5, %67 ], [ -5, %71 ], [ -5, %104 ], [ -5, %108 ], [ -5, %141 ], [ -5, %145 ], [ -22, %29 ], [ 0, %181 ], [ %186, %185 ]
  ret i32 %189
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drx39xxj_release(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drx39xxj_state, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %43, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4
  %13 = getelementptr inbounds %struct.drx_demod_instance, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.drx_demod_instance, ptr %7, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = icmp eq ptr %12, null
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %42, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.drx_common_attr, ptr %14, i32 0, i32 9
  %24 = load i8, ptr %23, align 4, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = call fastcc i32 @ctrl_power_mode(ptr noundef %7, ptr noundef nonnull %3) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 1, ptr %2, align 2
  %30 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 0, ptr %30, align 1
  %31 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %12, i32 noundef 8388608, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  store i32 255, ptr %3, align 4
  %34 = call fastcc i32 @ctrl_power_mode(ptr noundef %7, ptr noundef nonnull %3) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %29, %26
  %37 = phi i32 [ %27, %26 ], [ %31, %29 ], [ %34, %33 ]
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_close, i32 noundef %37) #14
  br label %39

39:                                               ; preds = %36, %33
  %40 = load ptr, ptr %13, align 4
  %41 = getelementptr inbounds %struct.drx_common_attr, ptr %40, i32 0, i32 9
  store i8 0, ptr %41, align 4
  br label %42

42:                                               ; preds = %39, %22, %16, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %43

43:                                               ; preds = %42, %1
  %44 = getelementptr inbounds %struct.drx_demod_instance, ptr %7, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  call void @kfree(ptr noundef %45) #13
  %46 = getelementptr inbounds %struct.drx_demod_instance, ptr %7, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  call void @kfree(ptr noundef %47) #13
  %48 = load ptr, ptr %7, align 4
  call void @kfree(ptr noundef %48) #13
  %49 = getelementptr inbounds %struct.drx_demod_instance, ptr %7, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  call void @release_firmware(ptr noundef %50) #13
  call void @kfree(ptr noundef %7) #13
  call void @kfree(ptr noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drx39xxj_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 3
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drx39xxj_state, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br i1 %5, label %10, label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.drx_demod_instance, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drx_common_attr, ptr %12, i32 0, i32 9
  store i8 0, ptr %13, align 4
  %14 = tail call fastcc i32 @drxj_open(ptr noundef %9)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.drx39xxj_init, i32 noundef %14) #14
  br label %24

18:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4
  %19 = call fastcc i32 @ctrl_power_mode(ptr noundef %9, ptr noundef nonnull %2) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.drx39xxj_set_powerstate) #14
  br label %23

23:                                               ; preds = %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %24

24:                                               ; preds = %23, %16, %10
  %25 = phi i32 [ %14, %16 ], [ 0, %10 ], [ 0, %23 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drx39xxj_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drx39xxj_state, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 255, ptr %2, align 4
  %7 = call fastcc i32 @ctrl_power_mode(ptr noundef %6, ptr noundef nonnull %2) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.drx39xxj_set_powerstate) #14
  br label %11

11:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drx39xxj_set_frontend(ptr noundef %0) #0 {
  %2 = alloca %struct.drxuio_cfg, align 8
  %3 = alloca %struct.drxuio_data, align 8
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca i32, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.drxuio_cfg, align 8
  %15 = alloca %struct.drxuio_data, align 8
  %16 = alloca [2 x i8], align 2
  %17 = alloca i32, align 4
  %18 = alloca %struct.drx_channel, align 4
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drx39xxj_state, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %18, i8 0, i32 64, i1 false), !annotation !8
  %25 = load ptr, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #13
  store i32 0, ptr %17, align 4
  %26 = call fastcc i32 @ctrl_power_mode(ptr noundef %25, ptr noundef nonnull %17) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %1
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.drx39xxj_set_powerstate) #14
  br label %30

30:                                               ; preds = %28, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #13
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %60, label %34

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #13
  store i32 0, ptr %19, align 4, !annotation !8
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = call i32 %36(ptr noundef %0, i32 noundef 1) #13
  %40 = load ptr, ptr %31, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi ptr [ %40, %38 ], [ %32, %34 ]
  %43 = call i32 %42(ptr noundef %0) #13
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = call i32 %45(ptr noundef %0, ptr noundef nonnull %19) #13
  %49 = load i32, ptr %19, align 4
  %50 = udiv i32 %49, 1000
  %51 = getelementptr inbounds %struct.drx_demod_instance, ptr %24, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.drx_common_attr, ptr %52, i32 0, i32 3
  store i32 %50, ptr %53, align 4
  br label %54

54:                                               ; preds = %47, %41
  %55 = load ptr, ptr %35, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call i32 %55(ptr noundef %0, i32 noundef 0) #13
  br label %59

59:                                               ; preds = %57, %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #13
  br label %60

60:                                               ; preds = %59, %30
  %61 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %350 [
    i32 11, label %70
    i32 2, label %63
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 5
  %67 = select i1 %66, i32 7, i32 255
  %68 = icmp eq i32 %65, 3
  %69 = select i1 %68, i32 5, i32 %67
  br label %70

70:                                               ; preds = %63, %60
  %71 = phi i1 [ true, %60 ], [ false, %63 ]
  %72 = phi i32 [ 1, %60 ], [ 9, %63 ]
  %73 = phi i32 [ 255, %60 ], [ %69, %63 ]
  %74 = icmp eq ptr %24, null
  br i1 %74, label %105, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.drx_demod_instance, ptr %24, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.drxj_data, ptr %77, i32 0, i32 10
  %79 = load i32, ptr %78, align 4
  switch i32 %79, label %105 [
    i32 8, label %80
    i32 9, label %80
    i32 10, label %80
    i32 1, label %83
    i32 254, label %86
  ]

80:                                               ; preds = %75, %75, %75
  %81 = call fastcc i32 @power_down_qam(ptr noundef nonnull %24, i1 noundef zeroext false) #13
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %102

83:                                               ; preds = %75
  %84 = call fastcc i32 @power_down_vsb(ptr noundef nonnull %24, i1 noundef zeroext false) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83, %80, %75
  store i32 %72, ptr %78, align 4
  %87 = load ptr, ptr %24, align 4
  br i1 %71, label %93, label %88

88:                                               ; preds = %86
  %89 = icmp eq ptr %87, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i16 0, ptr %16, align 2, !annotation !8
  %91 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %87, i32 noundef 8593406, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %108, label %102

93:                                               ; preds = %86
  %94 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %87, i32 noundef 29491200, i16 noundef zeroext 256, ptr noundef nonnull @set_vsb_leak_n_gain.vsb_ffe_leak_gain_ram0, i32 noundef 0) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %87, i32 noundef 29556736, i16 noundef zeroext 108, ptr noundef nonnull @set_vsb_leak_n_gain.vsb_ffe_leak_gain_ram1, i32 noundef 0) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %96, %93
  %100 = phi i32 [ %94, %93 ], [ %97, %96 ]
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb_leak_n_gain, i32 noundef %100) #14
  br label %102

102:                                              ; preds = %99, %90, %88, %83, %80
  %103 = phi i32 [ %100, %99 ], [ %81, %80 ], [ %84, %83 ], [ %91, %90 ], [ -22, %88 ]
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_standard, i32 noundef %103) #14
  store i32 254, ptr %78, align 4
  br label %105

105:                                              ; preds = %102, %75, %70
  %106 = phi i32 [ %103, %102 ], [ -22, %75 ], [ -22, %70 ]
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.drx39xxj_set_frontend, i32 noundef %106) #14
  br label %350

108:                                              ; preds = %96, %90
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %18, ptr noundef nonnull align 4 dereferenceable(64) @drx39xxj_set_frontend.def_channel, i32 64, i1 false)
  %109 = load i32, ptr %20, align 4
  %110 = udiv i32 %109, 1000
  store i32 %110, ptr %18, align 4
  %111 = getelementptr inbounds %struct.drx_channel, ptr %18, i32 0, i32 1
  store i32 2, ptr %111, align 4
  %112 = getelementptr inbounds %struct.drx_channel, ptr %18, i32 0, i32 3
  store i32 %73, ptr %112, align 4
  %113 = load ptr, ptr %24, align 4
  %114 = load ptr, ptr %76, align 4
  %115 = getelementptr inbounds %struct.drxj_data, ptr %114, i32 0, i32 10
  %116 = load i32, ptr %115, align 4
  switch i32 %116, label %335 [
    i32 1, label %117
    i32 8, label %117
    i32 9, label %117
    i32 10, label %117
  ]

117:                                              ; preds = %108, %108, %108, %108
  %118 = icmp eq i32 %116, 9
  switch i32 %116, label %155 [
    i32 8, label %119
    i32 10, label %119
    i32 9, label %149
  ]

119:                                              ; preds = %117, %117
  %120 = icmp eq i32 %116, 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  store i64 34359738368, ptr %14, align 8
  %121 = select i1 %120, i32 115, i32 113
  %122 = call fastcc i32 @ctrl_set_uio_cfg(ptr noundef nonnull %24, ptr noundef nonnull %14) #13
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.drx_channel, ptr %18, i32 0, i32 10
  %126 = load i32, ptr %125, align 4
  %127 = add i32 %126, -7233001
  %128 = icmp ult i32 %127, -6713001
  br i1 %128, label %146, label %129

129:                                              ; preds = %124
  %130 = load i32, ptr %112, align 4
  %131 = add i32 %130, -3
  %132 = icmp ult i32 %131, 5
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = mul nuw nsw i32 %126, %121
  %135 = freeze i32 %134
  %136 = udiv i32 %135, 100
  %137 = mul i32 %136, 100
  %138 = sub i32 %135, %137
  %139 = icmp ugt i32 %138, 49
  %140 = zext i1 %139 to i32
  %141 = add nuw nsw i32 %136, %140
  %142 = icmp ult i32 %141, 6100001
  %143 = icmp ult i32 %141, 7100001
  %144 = zext i1 %143 to i32
  %145 = select i1 %142, i32 2, i32 %144
  store i32 %145, ptr %111, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  br i1 %118, label %149, label %155

146:                                              ; preds = %129, %124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  br label %335

147:                                              ; preds = %119
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_channel, i32 noundef %122) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  br label %335

149:                                              ; preds = %133, %117
  %150 = phi i32 [ %145, %133 ], [ 2, %117 ]
  %151 = phi i32 [ %130, %133 ], [ %73, %117 ]
  switch i32 %151, label %335 [
    i32 255, label %152
    i32 7, label %152
    i32 5, label %152
  ]

152:                                              ; preds = %149, %149, %149
  %153 = getelementptr inbounds %struct.drx_channel, ptr %18, i32 0, i32 11
  %154 = load i32, ptr %153, align 4
  switch i32 %154, label %335 [
    i32 0, label %155
    i32 1, label %155
    i32 2, label %155
    i32 3, label %155
    i32 4, label %155
    i32 5, label %155
    i32 6, label %155
    i32 7, label %155
    i32 8, label %155
    i32 9, label %155
    i32 10, label %155
    i32 12, label %155
    i32 14, label %155
    i32 16, label %155
    i32 17, label %155
    i32 18, label %155
    i32 19, label %155
    i32 254, label %155
    i32 255, label %155
  ]

155:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %133, %117
  %156 = phi i32 [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %150, %152 ], [ %145, %133 ], [ 2, %117 ]
  %157 = getelementptr inbounds %struct.drxj_data, ptr %114, i32 0, i32 30
  %158 = load i32, ptr %157, align 4
  %159 = icmp eq i32 %158, 8
  br i1 %159, label %160, label %171

160:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  store i64 0, ptr %15, align 8
  %161 = trunc i32 %156 to i24
  %162 = shl i24 %161, 3
  %163 = lshr i24 1, %162
  %164 = trunc i24 %163 to i8
  %165 = getelementptr inbounds %struct.drxuio_data, ptr %15, i32 0, i32 1
  store i8 %164, ptr %165, align 4
  %166 = call fastcc i32 @ctrl_uio_write(ptr noundef nonnull %24, ptr noundef nonnull %15) #13
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  br label %171

169:                                              ; preds = %160
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_channel, i32 noundef %166) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  br label %335

171:                                              ; preds = %168, %155
  %172 = icmp eq ptr %113, null
  br i1 %172, label %177, label %173

173:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 1, ptr %13, align 2
  %174 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %174, align 1
  %175 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %113, i32 noundef 8388608, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173, %171
  %178 = phi i32 [ %175, %173 ], [ -22, %171 ]
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_channel, i32 noundef %178) #14
  br label %335

180:                                              ; preds = %173
  switch i32 %116, label %335 [
    i32 1, label %181
    i32 8, label %196
    i32 9, label %196
    i32 10, label %196
  ]

181:                                              ; preds = %180
  %182 = getelementptr inbounds %struct.drx_channel, ptr %18, i32 0, i32 2
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 255
  %185 = select i1 %184, i32 0, i32 %183
  %186 = getelementptr inbounds %struct.drxj_data, ptr %114, i32 0, i32 14
  store i32 %185, ptr %186, align 4
  %187 = call fastcc i32 @set_vsb(ptr noundef nonnull %24) #13
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %181
  %190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_channel, i32 noundef %187) #14
  br label %335

191:                                              ; preds = %181
  %192 = call fastcc i32 @set_frequency(ptr noundef nonnull %24) #13
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %337, label %194

194:                                              ; preds = %191
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_channel, i32 noundef %192) #14
  br label %335

196:                                              ; preds = %180, %180, %180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  store i32 1, ptr %12, align 4
  %197 = load ptr, ptr %76, align 4
  %198 = load i32, ptr %112, align 4
  switch i32 %198, label %332 [
    i32 255, label %226
    i32 7, label %199
    i32 5, label %199
  ]

199:                                              ; preds = %196, %196
  %200 = getelementptr inbounds %struct.drxj_data, ptr %197, i32 0, i32 10
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, 9
  br i1 %202, label %203, label %332

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.drxj_data, ptr %197, i32 0, i32 11
  store i32 %198, ptr %204, align 4
  %205 = getelementptr inbounds %struct.drx_channel, ptr %18, i32 0, i32 2
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 255
  %208 = select i1 %207, i32 0, i32 %206
  %209 = getelementptr inbounds %struct.drxj_data, ptr %197, i32 0, i32 14
  store i32 %208, ptr %209, align 4
  %210 = call fastcc i32 @set_qam(ptr noundef nonnull %24, ptr noundef nonnull %18, i32 noundef 1) #13
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %203
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam_channel, i32 noundef %210) #14
  br label %332

214:                                              ; preds = %203
  %215 = load i32, ptr %112, align 4
  %216 = icmp eq i32 %215, 5
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = call fastcc i32 @qam64auto(ptr noundef nonnull %24, ptr noundef nonnull %18, ptr noundef nonnull %12) #13
  br label %221

219:                                              ; preds = %214
  %220 = call fastcc i32 @qam256auto(ptr noundef nonnull %24, ptr noundef nonnull %18, ptr noundef nonnull %12) #13
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi i32 [ %218, %217 ], [ %220, %219 ]
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %331, label %224

224:                                              ; preds = %221
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam_channel, i32 noundef %222) #14
  br label %332

226:                                              ; preds = %196
  %227 = getelementptr inbounds %struct.drxj_data, ptr %197, i32 0, i32 10
  %228 = load i32, ptr %227, align 4
  switch i32 %228, label %332 [
    i32 9, label %229
    i32 10, label %284
  ]

229:                                              ; preds = %226
  store i32 7, ptr %112, align 4
  %230 = getelementptr inbounds %struct.drxj_data, ptr %197, i32 0, i32 11
  store i32 7, ptr %230, align 4
  %231 = getelementptr inbounds %struct.drx_channel, ptr %18, i32 0, i32 2
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 255
  %234 = select i1 %233, i32 0, i32 %232
  %235 = getelementptr inbounds %struct.drxj_data, ptr %197, i32 0, i32 14
  store i32 %234, ptr %235, align 4
  %236 = call fastcc i32 @set_qam(ptr noundef nonnull %24, ptr noundef nonnull %18, i32 noundef 1) #13
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %327

238:                                              ; preds = %229
  %239 = call fastcc i32 @qam256auto(ptr noundef nonnull %24, ptr noundef nonnull %18, ptr noundef nonnull %12) #13
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %327

241:                                              ; preds = %238
  %242 = load i32, ptr %12, align 4
  %243 = icmp ugt i32 %242, 10
  br i1 %243, label %330, label %244

244:                                              ; preds = %241
  store i32 5, ptr %112, align 4
  store i32 5, ptr %230, align 4
  %245 = load i32, ptr %231, align 4
  %246 = icmp eq i32 %245, 255
  %247 = select i1 %246, i32 0, i32 %245
  store i32 %247, ptr %235, align 4
  %248 = load ptr, ptr %24, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %327, label %250

250:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i16 0, ptr %11, align 2, !annotation !8
  %251 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %248, i32 noundef 8593331, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  %252 = load i8, ptr %11, align 2
  %253 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  %254 = load i8, ptr %253, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %255 = icmp eq i32 %251, 0
  br i1 %255, label %256, label %327

256:                                              ; preds = %250
  %257 = load ptr, ptr %24, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %327, label %259

259:                                              ; preds = %256
  %260 = and i8 %252, -3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 %260, ptr %10, align 2
  %261 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 %254, ptr %261, align 1
  %262 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %257, i32 noundef 8593331, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %327

264:                                              ; preds = %259
  %265 = load ptr, ptr %24, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %327, label %267

267:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 2, ptr %9, align 2
  %268 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 0, ptr %268, align 1
  %269 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %265, i32 noundef 8593291, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %327

271:                                              ; preds = %267
  %272 = call fastcc i32 @set_qam(ptr noundef nonnull %24, ptr noundef nonnull %18, i32 noundef 2) #13
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %327

274:                                              ; preds = %271
  %275 = load ptr, ptr %24, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %327, label %277

277:                                              ; preds = %274
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 %252, ptr %8, align 2
  %278 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 %254, ptr %278, align 1
  %279 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %275, i32 noundef 8593331, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %327

281:                                              ; preds = %277
  %282 = call fastcc i32 @qam64auto(ptr noundef nonnull %24, ptr noundef nonnull %18, ptr noundef nonnull %12) #13
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %330, label %327

284:                                              ; preds = %226
  store i32 5, ptr %112, align 4
  %285 = getelementptr inbounds %struct.drxj_data, ptr %197, i32 0, i32 11
  store i32 5, ptr %285, align 4
  %286 = getelementptr inbounds %struct.drx_channel, ptr %18, i32 0, i32 2
  %287 = load i32, ptr %286, align 4
  %288 = icmp eq i32 %287, 255
  %289 = select i1 %288, i32 0, i32 %287
  %290 = getelementptr inbounds %struct.drxj_data, ptr %197, i32 0, i32 14
  store i32 %289, ptr %290, align 4
  %291 = load ptr, ptr %24, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %327, label %293

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i16 0, ptr %7, align 2, !annotation !8
  %294 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %291, i32 noundef 8593331, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  %295 = load i8, ptr %7, align 2
  %296 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %297 = load i8, ptr %296, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %298 = icmp eq i32 %294, 0
  br i1 %298, label %299, label %327

299:                                              ; preds = %293
  %300 = load ptr, ptr %24, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %327, label %302

302:                                              ; preds = %299
  %303 = and i8 %295, -3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 %303, ptr %6, align 2
  %304 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 %297, ptr %304, align 1
  %305 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %300, i32 noundef 8593331, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %327

307:                                              ; preds = %302
  %308 = load ptr, ptr %24, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %327, label %310

310:                                              ; preds = %307
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 2, ptr %5, align 2
  %311 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %311, align 1
  %312 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %308, i32 noundef 8593291, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %327

314:                                              ; preds = %310
  %315 = call fastcc i32 @set_qam(ptr noundef nonnull %24, ptr noundef nonnull %18, i32 noundef 2) #13
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %327

317:                                              ; preds = %314
  %318 = load ptr, ptr %24, align 4
  %319 = icmp eq ptr %318, null
  br i1 %319, label %327, label %320

320:                                              ; preds = %317
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 %295, ptr %4, align 2
  %321 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 %297, ptr %321, align 1
  %322 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %318, i32 noundef 8593331, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %320
  %325 = call fastcc i32 @qam64auto(ptr noundef nonnull %24, ptr noundef nonnull %18, ptr noundef nonnull %12) #13
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %324, %320, %317, %314, %310, %307, %302, %299, %293, %284, %281, %277, %274, %271, %267, %264, %259, %256, %250, %244, %238, %229
  %328 = phi i32 [ %236, %229 ], [ %239, %238 ], [ %251, %250 ], [ -22, %244 ], [ %262, %259 ], [ -22, %256 ], [ %269, %267 ], [ -22, %264 ], [ %272, %271 ], [ %279, %277 ], [ -22, %274 ], [ %282, %281 ], [ %294, %293 ], [ -22, %284 ], [ %305, %302 ], [ -22, %299 ], [ %312, %310 ], [ -22, %307 ], [ %315, %314 ], [ %322, %320 ], [ -22, %317 ], [ %325, %324 ]
  %329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam_channel, i32 noundef %328) #14
  store i32 255, ptr %112, align 4
  br label %332

330:                                              ; preds = %324, %281, %241
  store i32 255, ptr %112, align 4
  br label %331

331:                                              ; preds = %330, %221
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  br label %337

332:                                              ; preds = %327, %226, %224, %212, %199, %196
  %333 = phi i32 [ %222, %224 ], [ %210, %212 ], [ %328, %327 ], [ -22, %196 ], [ -22, %226 ], [ -22, %199 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  %334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_channel, i32 noundef %333) #14
  br label %335

335:                                              ; preds = %332, %194, %189, %180, %177, %169, %152, %149, %147, %146, %108
  %336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.drx39xxj_set_frontend) #14
  br label %350

337:                                              ; preds = %331, %191
  %338 = getelementptr inbounds %struct.drxj_data, ptr %114, i32 0, i32 22
  store i8 1, ptr %338, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 8589934592, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8, !annotation !8
  %339 = call fastcc i32 @ctrl_set_uio_cfg(ptr noundef nonnull %24, ptr noundef nonnull %2) #13
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %343, label %341

341:                                              ; preds = %337
  %342 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.drxj_set_lna_state) #14
  br label %348

343:                                              ; preds = %337
  %344 = call fastcc i32 @ctrl_uio_write(ptr noundef nonnull %24, ptr noundef nonnull %3) #13
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %343
  %347 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.drxj_set_lna_state, ptr noundef nonnull @.str.25) #14
  br label %348

348:                                              ; preds = %346, %343, %341
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  %349 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %349, align 1
  br label %350

350:                                              ; preds = %348, %335, %105, %60
  %351 = phi i32 [ -22, %105 ], [ -22, %335 ], [ 0, %348 ], [ -22, %60 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #13
  ret i32 %351
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @drx39xxj_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #9 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drx39xxj_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drx39xxj_state, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !8
  store i32 0, ptr %1, align 4
  %14 = call fastcc i32 @ctrl_lock_status(ptr noundef %13, ptr noundef nonnull %9)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.drx39xxj_read_status) #14
  store i32 0, ptr %1, align 4
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, ptr %9, align 4
  switch i32 %19, label %25 [
    i32 0, label %20
    i32 1, label %22
    i32 2, label %23
    i32 3, label %23
    i32 4, label %23
    i32 5, label %23
    i32 6, label %23
    i32 7, label %23
    i32 8, label %23
    i32 9, label %23
    i32 10, label %23
    i32 11, label %24
  ]

20:                                               ; preds = %18
  store i32 0, ptr %1, align 4
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.drx39xxj_read_status) #14
  br label %27

22:                                               ; preds = %18
  store i32 0, ptr %1, align 4
  br label %29

23:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18
  store i32 15, ptr %1, align 4
  br label %27

24:                                               ; preds = %18
  store i32 31, ptr %1, align 4
  br label %29

25:                                               ; preds = %18
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.drx39xxj_read_status, i32 noundef %19) #14
  br label %27

27:                                               ; preds = %25, %23, %20
  %28 = load i32, ptr %9, align 4
  br label %29

29:                                               ; preds = %27, %24, %22
  %30 = phi i32 [ %28, %27 ], [ 11, %24 ], [ 1, %22 ]
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.drx_demod_instance, ptr %13, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.i2c_device_addr, ptr %31, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drxj_data, ptr %33, i32 0, i32 10
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq ptr %31, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.get_sig_strength, i32 noundef -22) #14
  br label %97

41:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i16 0, ptr %8, align 2, !annotation !8
  %42 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %31, i32 noundef 25624616, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  %43 = load i8, ptr %8, align 2
  %44 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %46 = icmp eq i32 %42, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %41
  %48 = zext i8 %45 to i16
  %49 = shl nuw i16 %48, 8
  %50 = zext i8 %43 to i16
  %51 = and i16 %49, 32512
  %52 = or i16 %51, %50
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i16 0, ptr %7, align 2, !annotation !8
  %53 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %31, i32 noundef 25624617, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  %54 = load i8, ptr %7, align 2
  %55 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %56 = load i8, ptr %55, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %57 = icmp eq i32 %53, 0
  br i1 %57, label %58, label %93

58:                                               ; preds = %47
  %59 = zext i8 %56 to i16
  %60 = shl nuw i16 %59, 8
  %61 = zext i8 %54 to i16
  %62 = and i16 %60, 32512
  %63 = or i16 %62, %61
  %64 = zext i16 %52 to i32
  %65 = icmp ugt i16 %52, 10240
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = zext i16 %63 to i32
  %68 = icmp ugt i16 %63, 16383
  br i1 %68, label %101, label %69

69:                                               ; preds = %66
  %70 = icmp ugt i16 %63, 2048
  br i1 %70, label %71, label %101

71:                                               ; preds = %69
  %72 = mul nuw nsw i32 %67, 25
  %73 = add nsw i32 %72, -51200
  %74 = sdiv i32 %73, 14335
  %75 = trunc i32 %74 to i16
  %76 = add nsw i16 %75, 75
  br label %101

77:                                               ; preds = %58
  %78 = icmp ugt i16 %52, 5632
  br i1 %78, label %79, label %85

79:                                               ; preds = %77
  %80 = mul nuw nsw i32 %64, 55
  %81 = add nsw i32 %80, -309760
  %82 = sdiv i32 %81, 4608
  %83 = trunc i32 %82 to i16
  %84 = add nsw i16 %83, 20
  br label %89

85:                                               ; preds = %77
  %86 = mul nuw nsw i32 %64, 20
  %87 = udiv i32 %86, 5632
  %88 = trunc i32 %87 to i16
  br label %89

89:                                               ; preds = %85, %79
  %90 = phi i16 [ %88, %85 ], [ %84, %79 ]
  %91 = icmp ult i16 %90, 8
  %92 = select i1 %91, i16 0, i16 %90
  br label %101

93:                                               ; preds = %47, %41
  %94 = phi i32 [ %42, %41 ], [ %53, %47 ]
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.get_sig_strength, i32 noundef %94) #14
  %96 = icmp slt i32 %94, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93, %39
  %98 = phi i32 [ -22, %39 ], [ %94, %93 ]
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.ctrl_sig_quality, i32 noundef %98) #14
  %100 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 42, i32 1
  store i8 0, ptr %100, align 1
  br label %109

101:                                              ; preds = %93, %89, %71, %69, %66
  %102 = phi i16 [ 0, %93 ], [ 75, %69 ], [ 100, %66 ], [ %92, %89 ], [ %76, %71 ]
  %103 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 42, i32 1
  store i8 2, ptr %103, align 1
  %104 = zext i16 %102 to i32
  %105 = mul nuw i32 %104, 65535
  %106 = udiv i32 %105, 100
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %107, ptr %108, align 1
  br label %109

109:                                              ; preds = %101, %97
  switch i32 %37, label %251 [
    i32 1, label %110
    i32 8, label %246
    i32 9, label %246
    i32 10, label %246
  ]

110:                                              ; preds = %109
  switch i32 %30, label %111 [
    i32 11, label %119
    i32 2, label %119
  ]

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 45, i32 1
  store i8 0, ptr %112, align 1
  %113 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 44, i32 1
  store i8 0, ptr %113, align 1
  %114 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 47, i32 1
  store i8 0, ptr %114, align 1
  %115 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 46, i32 1
  store i8 0, ptr %115, align 1
  %116 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 49, i32 1
  store i8 0, ptr %116, align 1
  %117 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 48, i32 1
  store i8 0, ptr %117, align 1
  %118 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 43, i32 1
  store i8 0, ptr %118, align 1
  br label %251

119:                                              ; preds = %110, %110
  br i1 %38, label %168, label %120

120:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i16 0, ptr %6, align 2, !annotation !8
  %121 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %31, i32 noundef 37945367, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  %122 = load i8, ptr %6, align 2
  %123 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %124 = load i8, ptr %123, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %125 = icmp eq i32 %121, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %120
  %127 = zext i8 %124 to i16
  %128 = shl nuw i16 %127, 8
  %129 = zext i8 %122 to i16
  %130 = lshr i16 %127, 4
  %131 = and i16 %128, 3840
  %132 = or i16 %131, %129
  %133 = zext i16 %132 to i32
  %134 = zext i16 %130 to i32
  %135 = shl nuw nsw i32 %133, %134
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 48, i32 1, i32 0, i32 1
  %138 = load i64, ptr %137, align 1
  %139 = add i64 %138, %136
  store i64 %139, ptr %137, align 1
  %140 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 49, i32 1
  store i8 3, ptr %140, align 1
  %141 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 49, i32 1, i32 0, i32 1
  %142 = load i64, ptr %141, align 1
  %143 = add i64 %142, 992838
  store i64 %143, ptr %141, align 1
  br label %147

144:                                              ; preds = %120
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.get_vsb_post_rs_pck_err, i32 noundef %121) #14
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.ctrl_sig_quality, i32 noundef %121) #14
  br label %147

147:                                              ; preds = %144, %126
  %148 = phi i8 [ 3, %126 ], [ 0, %144 ]
  %149 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 48, i32 1
  store i8 %148, ptr %149, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  %150 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %31, i32 noundef 29425767, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  %151 = load i8, ptr %5, align 2
  %152 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %153 = load i8, ptr %152, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %154 = icmp eq i32 %150, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %147
  %156 = zext i8 %153 to i32
  %157 = shl nuw nsw i32 %156, 8
  %158 = zext i8 %151 to i32
  %159 = or i32 %157, %158
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 44, i32 1, i32 0, i32 1
  %162 = load i64, ptr %161, align 1
  %163 = add i64 %162, %160
  store i64 %163, ptr %161, align 1
  %164 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 45, i32 1
  store i8 3, ptr %164, align 1
  %165 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 45, i32 1, i32 0, i32 1
  %166 = load i64, ptr %165, align 1
  %167 = add i64 %166, 53248
  store i64 %167, ptr %165, align 1
  br label %181

168:                                              ; preds = %119
  %169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.get_vsb_post_rs_pck_err, i32 noundef -22) #14
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.ctrl_sig_quality, i32 noundef -22) #14
  %171 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 48, i32 1
  store i8 0, ptr %171, align 1
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.get_vs_bpre_viterbi_ber, i32 noundef -22) #14
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.ctrl_sig_quality, i32 noundef -5) #14
  %174 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 44, i32 1
  store i8 0, ptr %174, align 1
  %175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.get_vs_bpost_viterbi_ber, i32 noundef -22) #14
  %176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.ctrl_sig_quality, i32 noundef -22) #14
  %177 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 46, i32 1
  store i8 0, ptr %177, align 1
  br label %227

178:                                              ; preds = %147
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.get_vs_bpre_viterbi_ber, i32 noundef %150) #14
  %180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.ctrl_sig_quality, i32 noundef -5) #14
  br label %181

181:                                              ; preds = %178, %155
  %182 = phi i8 [ 3, %155 ], [ 0, %178 ]
  %183 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 44, i32 1
  store i8 %182, ptr %183, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  %184 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %31, i32 noundef 37945364, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  %185 = load i8, ptr %4, align 2
  %186 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %187 = load i8, ptr %186, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %188 = icmp eq i32 %184, 0
  br i1 %188, label %189, label %216

189:                                              ; preds = %181
  %190 = zext i8 %187 to i16
  %191 = shl nuw i16 %190, 8
  %192 = zext i8 %185 to i16
  %193 = or i16 %191, %192
  %194 = and i16 %193, 4095
  %195 = lshr i16 %190, 4
  %196 = zext i16 %195 to i32
  %197 = icmp ugt i16 %193, 12287
  %198 = select i1 %197, i32 2669058, i32 21352464
  %199 = zext i16 %194 to i32
  %200 = shl nuw nsw i32 %199, %196
  %201 = icmp ugt i32 %200, 549607
  %202 = add nsw i32 %196, -3
  %203 = select i1 %197, i32 %202, i32 %196
  %204 = shl nuw nsw i32 %199, %203
  %205 = mul i32 %198, 26570
  %206 = select i1 %201, i32 %205, i32 %204
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 46, i32 1, i32 0, i32 1
  %209 = load i64, ptr %208, align 1
  %210 = add i64 %209, %207
  store i64 %210, ptr %208, align 1
  %211 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 47, i32 1
  store i8 3, ptr %211, align 1
  %212 = zext i32 %198 to i64
  %213 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 47, i32 1, i32 0, i32 1
  %214 = load i64, ptr %213, align 1
  %215 = add i64 %214, %212
  store i64 %215, ptr %213, align 1
  br label %219

216:                                              ; preds = %181
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.get_vs_bpost_viterbi_ber, i32 noundef %184) #14
  %218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.ctrl_sig_quality, i32 noundef %184) #14
  br label %219

219:                                              ; preds = %216, %189
  %220 = phi i8 [ 3, %189 ], [ 0, %216 ]
  %221 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 46, i32 1
  store i8 %220, ptr %221, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %222 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %31, i32 noundef 29425769, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  %223 = load i8, ptr %3, align 2
  %224 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %225 = load i8, ptr %224, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %226 = icmp eq i32 %222, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %219, %168
  %228 = phi i32 [ %222, %219 ], [ -22, %168 ]
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.get_vsbmer, i32 noundef %228) #14
  %230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.ctrl_sig_quality, i32 noundef %228) #14
  %231 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 43, i32 1
  store i8 0, ptr %231, align 1
  br label %251

232:                                              ; preds = %219
  %233 = zext i8 %225 to i32
  %234 = zext i8 %223 to i32
  %235 = shl nuw nsw i32 %233, 14
  %236 = shl nuw nsw i32 %234, 6
  %237 = or i32 %235, %236
  %238 = udiv i32 %237, 52
  %239 = call fastcc i32 @log1_times100(i32 noundef %238) #13
  %240 = sub i32 433, %239
  %241 = and i32 %240, 65535
  %242 = mul nuw nsw i32 %241, 100
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 43, i32 1
  %245 = getelementptr inbounds %struct.drx39xxj_state, ptr %35, i32 0, i32 2, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %243, ptr %245, align 1
  store i8 1, ptr %244, align 1
  br label %251

246:                                              ; preds = %109, %109, %109
  %247 = call fastcc i32 @ctrl_get_qam_sig_quality(ptr noundef %13) #13
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %246
  %250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_sig_quality, i32 noundef %247) #14
  br label %251

251:                                              ; preds = %249, %246, %232, %227, %111, %109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @drx39xxj_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  %8 = load i64, ptr %7, align 1
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  %11 = load i64, ptr %10, align 1
  br i1 %9, label %12, label %15

12:                                               ; preds = %6
  %13 = icmp eq i64 %11, 0
  %14 = select i1 %13, i32 0, i32 1000000
  br label %35

15:                                               ; preds = %6
  %16 = trunc i64 %11 to i32
  %17 = trunc i64 %8 to i32
  %18 = mul i32 %16, 62500
  %19 = freeze i32 %18
  %20 = freeze i32 %17
  %21 = udiv i32 %19, %20
  %22 = shl i32 %21, 4
  %23 = mul i32 %21, %20
  %24 = sub i32 %19, %23
  %25 = shl i32 %24, 4
  %26 = freeze i32 %17
  %27 = udiv i32 %25, %26
  %28 = add i32 %27, %22
  %29 = mul i32 %27, %26
  %30 = sub i32 %25, %29
  %31 = shl i32 %30, 1
  %32 = icmp ugt i32 %31, %17
  %33 = zext i1 %32 to i32
  %34 = add i32 %28, %33
  br label %35

35:                                               ; preds = %15, %12, %2
  %36 = phi i32 [ %34, %15 ], [ 0, %2 ], [ %14, %12 ]
  store i32 %36, ptr %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @drx39xxj_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %8 = load i64, ptr %7, align 1
  %9 = trunc i64 %8 to i16
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i16 [ %9, %6 ], [ 0, %2 ]
  store i16 %11, ptr %1, align 2
  ret i32 0
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drx39xxj_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %8 = load i64, ptr %7, align 1
  %9 = lshr i64 %8, 1
  %10 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %9, i64 3689348814741910323) #16, !srcloc !10
  %11 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %9, i64 %10) #16, !srcloc !11
  %12 = trunc i64 %11 to i16
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i16 [ %12, %6 ], [ 0, %2 ]
  store i16 %14, ptr %1, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @drx39xxj_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %8 = load i64, ptr %7, align 1
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ 0, %2 ]
  store i32 %11, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drx39xxj_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.drxj_hi_cmd, align 2
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drx39xxj_state, ptr %6, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 0
  %14 = getelementptr inbounds %struct.drx39xxj_state, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #13
  %16 = getelementptr inbounds i8, ptr %3, i32 6
  store i64 0, ptr %16, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2
  store i16 7, ptr %3, align 2
  %17 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %3, i32 0, i32 1
  store i16 14661, ptr %17, align 2
  %18 = select i1 %13, i16 0, i16 4
  %19 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %3, i32 0, i32 2
  store i16 %18, ptr %19, align 2
  %20 = load ptr, ptr %15, align 4
  %21 = call fastcc i32 @hi_command(ptr noundef %20, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.drx39xxj_i2c_gate_ctrl, i32 noundef %21) #14
  call void @dump_stack() #14
  br label %31

25:                                               ; preds = %12
  %26 = trunc i32 %1 to i8
  %27 = load i8, ptr %7, align 4
  %28 = and i8 %26, 1
  %29 = and i8 %27, -2
  %30 = or i8 %29, %28
  store i8 %30, ptr %7, align 4
  br label %31

31:                                               ; preds = %25, %23, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drx39xxj_set_lna(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.drxuio_cfg, align 8
  %3 = alloca %struct.drxuio_data, align 8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drx39xxj_state, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 41
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drx_demod_instance, ptr %7, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.drx39xxj_set_lna) #14
  br label %34

18:                                               ; preds = %11, %1
  %19 = icmp ne i32 %9, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 8589934592, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8, !annotation !8
  %20 = call fastcc i32 @ctrl_set_uio_cfg(ptr noundef %7, ptr noundef nonnull %2) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.drxj_set_lna_state) #14
  br label %32

24:                                               ; preds = %18
  %25 = zext i1 %19 to i8
  %26 = getelementptr inbounds %struct.drxuio_data, ptr %3, i32 0, i32 1
  store i8 %25, ptr %26, align 4
  %27 = call fastcc i32 @ctrl_uio_write(ptr noundef %7, ptr noundef nonnull %3) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = select i1 %19, ptr @.str.24, ptr @.str.25
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.drxj_set_lna_state, ptr noundef nonnull %30) #14
  br label %32

32:                                               ; preds = %29, %24, %22
  %33 = phi i32 [ %20, %22 ], [ %27, %29 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %34

34:                                               ; preds = %32, %16
  %35 = phi i32 [ %33, %32 ], [ -22, %16 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_vsb(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [4 x i8], align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x i8], align 2
  %23 = alloca [2 x i8], align 2
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x i8], align 2
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x i8], align 2
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x i8], align 2
  %31 = alloca [2 x i8], align 2
  %32 = alloca [2 x i8], align 2
  %33 = alloca [2 x i8], align 2
  %34 = alloca [2 x i8], align 2
  %35 = alloca [2 x i8], align 2
  %36 = alloca [2 x i8], align 2
  %37 = alloca [2 x i8], align 2
  %38 = alloca [2 x i8], align 2
  %39 = alloca [2 x i8], align 2
  %40 = alloca [2 x i8], align 2
  %41 = alloca [2 x i8], align 2
  %42 = alloca [2 x i8], align 2
  %43 = alloca [2 x i8], align 2
  %44 = alloca [2 x i8], align 2
  %45 = alloca [2 x i8], align 2
  %46 = alloca [2 x i8], align 2
  %47 = alloca [2 x i8], align 2
  %48 = alloca [2 x i8], align 2
  %49 = alloca [2 x i8], align 2
  %50 = alloca [4 x i8], align 4
  %51 = alloca [2 x i8], align 2
  %52 = alloca [2 x i8], align 2
  %53 = alloca [2 x i8], align 2
  %54 = alloca [2 x i8], align 2
  %55 = alloca [2 x i8], align 2
  %56 = alloca [2 x i8], align 2
  %57 = alloca [2 x i8], align 2
  %58 = alloca [2 x i8], align 2
  %59 = alloca [2 x i8], align 2
  %60 = alloca [2 x i8], align 2
  %61 = alloca %struct.drxjscu_cmd, align 4
  %62 = alloca i16, align 2
  %63 = alloca i16, align 2
  %64 = alloca %struct.drxj_cfg_afe_gain, align 8
  %65 = alloca %struct.drx_cfg_mpeg_output, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %61) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %61, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %62) #13
  store i16 0, ptr %62, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %63) #13
  store i16 0, ptr %63, align 2
  %66 = load ptr, ptr %0, align 4
  %67 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %66, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %60) #13
  store i8 0, ptr %60, align 2
  %73 = getelementptr inbounds [2 x i8], ptr %60, i32 0, i32 1
  store i8 0, ptr %73, align 1
  %74 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 37748736, i16 noundef zeroext 2, ptr noundef nonnull %60, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %60) #13
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72, %1
  %77 = phi i32 [ %74, %72 ], [ -22, %1 ]
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %77) #14
  br label %529

79:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %59) #13
  store i8 0, ptr %59, align 2
  %80 = getelementptr inbounds [2 x i8], ptr %59, i32 0, i32 1
  store i8 0, ptr %80, align 1
  %81 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29360128, i16 noundef zeroext 2, ptr noundef nonnull %59, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %59) #13
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %81) #14
  br label %529

85:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %58) #13
  store i8 0, ptr %58, align 2
  %86 = getelementptr inbounds [2 x i8], ptr %58, i32 0, i32 1
  store i8 0, ptr %86, align 1
  %87 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25296896, i16 noundef zeroext 2, ptr noundef nonnull %58, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %58) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %87) #14
  br label %529

91:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #13
  store i8 0, ptr %57, align 2
  %92 = getelementptr inbounds [2 x i8], ptr %57, i32 0, i32 1
  store i8 0, ptr %92, align 1
  %93 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25362432, i16 noundef zeroext 2, ptr noundef nonnull %57, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %93) #14
  br label %529

97:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #13
  store i8 0, ptr %56, align 2
  %98 = getelementptr inbounds [2 x i8], ptr %56, i32 0, i32 1
  store i8 0, ptr %98, align 1
  %99 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25427968, i16 noundef zeroext 2, ptr noundef nonnull %56, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #13
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %99) #14
  br label %529

103:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %55) #13
  store i8 0, ptr %55, align 2
  %104 = getelementptr inbounds [2 x i8], ptr %55, i32 0, i32 1
  store i8 0, ptr %104, align 1
  %105 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25493504, i16 noundef zeroext 2, ptr noundef nonnull %55, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %55) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %105) #14
  br label %529

109:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #13
  store i8 0, ptr %54, align 2
  %110 = getelementptr inbounds [2 x i8], ptr %54, i32 0, i32 1
  store i8 0, ptr %110, align 1
  %111 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25559040, i16 noundef zeroext 2, ptr noundef nonnull %54, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #13
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %111) #14
  br label %529

115:                                              ; preds = %109
  store i16 769, ptr %61, align 4
  %116 = getelementptr inbounds %struct.drxjscu_cmd, ptr %61, i32 0, i32 1
  store i16 0, ptr %116, align 2
  %117 = getelementptr inbounds %struct.drxjscu_cmd, ptr %61, i32 0, i32 2
  store i16 1, ptr %117, align 4
  %118 = getelementptr inbounds %struct.drxjscu_cmd, ptr %61, i32 0, i32 3
  store ptr null, ptr %118, align 4
  %119 = getelementptr inbounds %struct.drxjscu_cmd, ptr %61, i32 0, i32 4
  store ptr %62, ptr %119, align 4
  %120 = call fastcc i32 @scu_command(ptr noundef nonnull %66, ptr noundef nonnull %61)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %115
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %120) #14
  br label %529

124:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #13
  store i8 1, ptr %53, align 2
  %125 = getelementptr inbounds [2 x i8], ptr %53, i32 0, i32 1
  store i8 0, ptr %125, align 1
  %126 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25624613, i16 noundef zeroext 2, ptr noundef nonnull %53, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %126) #14
  br label %529

130:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #13
  store i8 2, ptr %52, align 2
  %131 = getelementptr inbounds [2 x i8], ptr %52, i32 0, i32 1
  store i8 0, ptr %131, align 1
  %132 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25296916, i16 noundef zeroext 2, ptr noundef nonnull %52, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #13
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %132) #14
  br label %529

136:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #13
  store i8 2, ptr %51, align 2
  %137 = getelementptr inbounds [2 x i8], ptr %51, i32 0, i32 1
  store i8 0, ptr %137, align 1
  %138 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25427988, i16 noundef zeroext 2, ptr noundef nonnull %51, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #13
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %138) #14
  br label %529

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.drxj_data, ptr %70, i32 0, i32 35
  store i32 11341177, ptr %143, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %50) #13
  store i8 121, ptr %50, align 4
  %144 = getelementptr inbounds [4 x i8], ptr %50, i32 0, i32 1
  store i8 13, ptr %144, align 1
  %145 = getelementptr inbounds [4 x i8], ptr %50, i32 0, i32 2
  store i8 -83, ptr %145, align 2
  %146 = getelementptr inbounds [4 x i8], ptr %50, i32 0, i32 3
  store i8 0, ptr %146, align 1
  %147 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25427984, i16 noundef zeroext 4, ptr noundef nonnull %50, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %50) #13
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %142
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %147) #14
  br label %529

151:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #13
  store i8 4, ptr %49, align 2
  %152 = getelementptr inbounds [2 x i8], ptr %49, i32 0, i32 1
  store i8 0, ptr %152, align 1
  %153 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425747, i16 noundef zeroext 2, ptr noundef nonnull %49, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #13
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %153) #14
  br label %529

157:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #13
  store i8 1, ptr %48, align 2
  %158 = getelementptr inbounds [2 x i8], ptr %48, i32 0, i32 1
  store i8 0, ptr %158, align 1
  %159 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425686, i16 noundef zeroext 2, ptr noundef nonnull %48, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #13
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %157
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %159) #14
  br label %529

163:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #13
  store i8 1, ptr %47, align 2
  %164 = getelementptr inbounds [2 x i8], ptr %47, i32 0, i32 1
  store i8 0, ptr %164, align 1
  %165 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25427989, i16 noundef zeroext 2, ptr noundef nonnull %47, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #13
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %165) #14
  br label %529

169:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #13
  store i8 28, ptr %46, align 2
  %170 = getelementptr inbounds [2 x i8], ptr %46, i32 0, i32 1
  store i8 0, ptr %170, align 1
  %171 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25427990, i16 noundef zeroext 2, ptr noundef nonnull %46, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #13
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %171) #14
  br label %529

175:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #13
  store i8 0, ptr %45, align 2
  %176 = getelementptr inbounds [2 x i8], ptr %45, i32 0, i32 1
  store i8 0, ptr %176, align 1
  %177 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25493520, i16 noundef zeroext 2, ptr noundef nonnull %45, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #13
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %177) #14
  br label %529

181:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #13
  store i8 0, ptr %44, align 2
  %182 = getelementptr inbounds [2 x i8], ptr %44, i32 0, i32 1
  store i8 0, ptr %182, align 1
  %183 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25559056, i16 noundef zeroext 2, ptr noundef nonnull %44, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #13
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %181
  %186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %183) #14
  br label %529

187:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #13
  store i8 3, ptr %43, align 2
  %188 = getelementptr inbounds [2 x i8], ptr %43, i32 0, i32 1
  store i8 0, ptr %188, align 1
  %189 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25559057, i16 noundef zeroext 2, ptr noundef nonnull %43, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #13
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %189) #14
  br label %529

193:                                              ; preds = %187
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #13
  store i8 4, ptr %42, align 2
  %194 = getelementptr inbounds [2 x i8], ptr %42, i32 0, i32 1
  store i8 0, ptr %194, align 1
  %195 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25559058, i16 noundef zeroext 2, ptr noundef nonnull %42, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #13
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %195) #14
  br label %529

199:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #13
  store i8 113, ptr %41, align 2
  %200 = getelementptr inbounds [2 x i8], ptr %41, i32 0, i32 1
  store i8 5, ptr %200, align 1
  %201 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25559060, i16 noundef zeroext 2, ptr noundef nonnull %41, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #13
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %201) #14
  br label %529

205:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #13
  store i8 0, ptr %40, align 2
  %206 = getelementptr inbounds [2 x i8], ptr %40, i32 0, i32 1
  store i8 0, ptr %206, align 1
  %207 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25559061, i16 noundef zeroext 2, ptr noundef nonnull %40, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #13
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %207) #14
  br label %529

211:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %39) #13
  store i8 1, ptr %39, align 2
  %212 = getelementptr inbounds [2 x i8], ptr %39, i32 0, i32 1
  store i8 0, ptr %212, align 1
  %213 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25559063, i16 noundef zeroext 2, ptr noundef nonnull %39, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #13
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %213) #14
  br label %529

217:                                              ; preds = %211
  %218 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25559072, i16 noundef zeroext 56, ptr noundef nonnull @set_vsb.vsb_taps_re, i32 noundef 0)
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %217
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %218) #14
  br label %529

222:                                              ; preds = %217
  %223 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25559104, i16 noundef zeroext 56, ptr noundef nonnull @set_vsb.vsb_taps_re, i32 noundef 0)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %222
  %226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %223) #14
  br label %529

227:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #13
  store i8 74, ptr %38, align 2
  %228 = getelementptr inbounds [2 x i8], ptr %38, i32 0, i32 1
  store i8 1, ptr %228, align 1
  %229 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425774, i16 noundef zeroext 2, ptr noundef nonnull %38, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #13
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %227
  %232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %229) #14
  br label %529

233:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #13
  store i8 90, ptr %37, align 2
  %234 = getelementptr inbounds [2 x i8], ptr %37, i32 0, i32 1
  store i8 0, ptr %234, align 1
  %235 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425772, i16 noundef zeroext 2, ptr noundef nonnull %37, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #13
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  %238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %235) #14
  br label %529

239:                                              ; preds = %233
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #13
  store i8 66, ptr %36, align 2
  %240 = getelementptr inbounds [2 x i8], ptr %36, i32 0, i32 1
  store i8 0, ptr %240, align 1
  %241 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425694, i16 noundef zeroext 2, ptr noundef nonnull %36, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #13
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %239
  %244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %241) #14
  br label %529

245:                                              ; preds = %239
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #13
  store i8 83, ptr %35, align 2
  %246 = getelementptr inbounds [2 x i8], ptr %35, i32 0, i32 1
  store i8 0, ptr %246, align 1
  %247 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425695, i16 noundef zeroext 2, ptr noundef nonnull %35, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #13
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %245
  %250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %247) #14
  br label %529

251:                                              ; preds = %245
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #13
  store i8 1, ptr %34, align 2
  %252 = getelementptr inbounds [2 x i8], ptr %34, i32 0, i32 1
  store i8 0, ptr %252, align 1
  %253 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425720, i16 noundef zeroext 2, ptr noundef nonnull %34, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #13
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %251
  %256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %253) #14
  br label %529

257:                                              ; preds = %251
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #13
  store i8 0, ptr %33, align 2
  %258 = getelementptr inbounds [2 x i8], ptr %33, i32 0, i32 1
  store i8 0, ptr %258, align 1
  %259 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 8593095, i16 noundef zeroext 2, ptr noundef nonnull %33, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #13
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %257
  %262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %259) #14
  br label %529

263:                                              ; preds = %257
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #13
  store i8 3, ptr %32, align 2
  %264 = getelementptr inbounds [2 x i8], ptr %32, i32 0, i32 1
  store i8 0, ptr %264, align 1
  %265 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 37814288, i16 noundef zeroext 2, ptr noundef nonnull %32, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #13
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %263
  %268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %265) #14
  br label %529

269:                                              ; preds = %263
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #13
  store i16 0, ptr %31, align 2, !annotation !8
  %270 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %66, i32 noundef 38010944, i16 noundef zeroext 2, ptr noundef nonnull %31, i32 noundef 0) #13
  %271 = load i8, ptr %31, align 2
  %272 = getelementptr inbounds [2 x i8], ptr %31, i32 0, i32 1
  %273 = load i8, ptr %272, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #13
  %274 = icmp eq i32 %270, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %269
  %276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %270) #14
  br label %529

277:                                              ; preds = %269
  %278 = or i8 %271, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #13
  store i8 %278, ptr %30, align 2
  %279 = getelementptr inbounds [2 x i8], ptr %30, i32 0, i32 1
  store i8 %273, ptr %279, align 1
  %280 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 38010944, i16 noundef zeroext 2, ptr noundef nonnull %30, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #13
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %277
  %283 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %280) #14
  br label %529

284:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #13
  store i8 0, ptr %29, align 2
  %285 = getelementptr inbounds [2 x i8], ptr %29, i32 0, i32 1
  store i8 0, ptr %285, align 1
  %286 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25624611, i16 noundef zeroext 2, ptr noundef nonnull %29, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #13
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %284
  %289 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %286) #14
  br label %529

290:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #13
  store i8 -42, ptr %28, align 2
  %291 = getelementptr inbounds [2 x i8], ptr %28, i32 0, i32 1
  store i8 1, ptr %291, align 1
  %292 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25624612, i16 noundef zeroext 2, ptr noundef nonnull %28, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #13
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %290
  %295 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %292) #14
  br label %529

296:                                              ; preds = %290
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #13
  store i8 0, ptr %27, align 2
  %297 = getelementptr inbounds [2 x i8], ptr %27, i32 0, i32 1
  store i8 0, ptr %297, align 1
  %298 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25624614, i16 noundef zeroext 2, ptr noundef nonnull %27, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #13
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %296
  %301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %298) #14
  br label %529

302:                                              ; preds = %296
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #13
  store i8 -44, ptr %26, align 2
  %303 = getelementptr inbounds [2 x i8], ptr %26, i32 0, i32 1
  store i8 0, ptr %303, align 1
  %304 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425698, i16 noundef zeroext 2, ptr noundef nonnull %26, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #13
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %302
  %307 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %304) #14
  br label %529

308:                                              ; preds = %302
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #13
  store i16 0, ptr %25, align 2, !annotation !8
  %309 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %66, i32 noundef 38010897, i16 noundef zeroext 2, ptr noundef nonnull %25, i32 noundef 0) #13
  %310 = load i8, ptr %25, align 2
  %311 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  %312 = load i8, ptr %311, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #13
  %313 = icmp eq i32 %309, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %308
  %315 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %309) #14
  br label %529

316:                                              ; preds = %308
  %317 = and i8 %310, -15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #13
  store i8 %317, ptr %24, align 2
  %318 = getelementptr inbounds [2 x i8], ptr %24, i32 0, i32 1
  store i8 %312, ptr %318, align 1
  %319 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 38010897, i16 noundef zeroext 2, ptr noundef nonnull %24, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #13
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %323, label %321

321:                                              ; preds = %316
  %322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %319) #14
  br label %529

323:                                              ; preds = %316
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #13
  store i8 0, ptr %23, align 2
  %324 = getelementptr inbounds [2 x i8], ptr %23, i32 0, i32 1
  store i8 0, ptr %324, align 1
  %325 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 37879828, i16 noundef zeroext 2, ptr noundef nonnull %23, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #13
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %329, label %327

327:                                              ; preds = %323
  %328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %325) #14
  br label %529

329:                                              ; preds = %323
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #13
  store i8 3, ptr %22, align 2
  %330 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  store i8 0, ptr %330, align 1
  %331 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 37879829, i16 noundef zeroext 2, ptr noundef nonnull %22, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #13
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %329
  %334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %331) #14
  br label %529

335:                                              ; preds = %329
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #13
  store i8 0, ptr %21, align 2
  %336 = getelementptr inbounds [2 x i8], ptr %21, i32 0, i32 1
  store i8 0, ptr %336, align 1
  %337 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 37945361, i16 noundef zeroext 2, ptr noundef nonnull %21, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #13
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %341, label %339

339:                                              ; preds = %335
  %340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %337) #14
  br label %529

341:                                              ; preds = %335
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i8 94, ptr %20, align 2
  %342 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  store i8 50, ptr %342, align 1
  %343 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 37945362, i16 noundef zeroext 2, ptr noundef nonnull %20, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %347, label %345

345:                                              ; preds = %341
  %346 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %343) #14
  br label %529

347:                                              ; preds = %341
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 1, ptr %19, align 2
  %348 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 0, ptr %348, align 1
  %349 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 37945363, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %353, label %351

351:                                              ; preds = %347
  %352 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %349) #14
  br label %529

353:                                              ; preds = %347
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i8 64, ptr %18, align 2
  %354 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  store i8 0, ptr %354, align 1
  %355 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425766, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %353
  %358 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %355) #14
  br label %529

359:                                              ; preds = %353
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #13
  store i32 0, ptr %17, align 4
  %360 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 8593093, i16 noundef zeroext 4, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #13
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %364, label %362

362:                                              ; preds = %359
  %363 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %360) #14
  br label %529

364:                                              ; preds = %359
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i8 0, ptr %16, align 2
  %365 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  store i8 0, ptr %365, align 1
  %366 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 8593092, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %364
  %369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %366) #14
  br label %529

370:                                              ; preds = %364
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i8 0, ptr %15, align 2
  %371 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 0, ptr %371, align 1
  %372 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 8593099, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %376, label %374

374:                                              ; preds = %370
  %375 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %372) #14
  br label %529

376:                                              ; preds = %370
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i8 -128, ptr %14, align 2
  %377 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  store i8 0, ptr %377, align 1
  %378 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425681, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %382, label %380

380:                                              ; preds = %376
  %381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %378) #14
  br label %529

382:                                              ; preds = %376
  %383 = load i8, ptr %70, align 4, !range !9
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %382
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 2, ptr %13, align 2
  %386 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %386, align 1
  %387 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25624621, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %391, label %389

389:                                              ; preds = %385
  %390 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %387) #14
  br label %529

391:                                              ; preds = %385, %382
  %392 = call fastcc i32 @set_iqm_af(ptr noundef %0, i1 noundef zeroext true)
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %396, label %394

394:                                              ; preds = %391
  %395 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %392) #14
  br label %529

396:                                              ; preds = %391
  %397 = call fastcc i32 @adc_synchronization(ptr noundef %0)
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %396
  %400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %397) #14
  br label %529

401:                                              ; preds = %396
  %402 = call fastcc i32 @init_agc(ptr noundef %0)
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %406, label %404

404:                                              ; preds = %401
  %405 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %402) #14
  br label %529

406:                                              ; preds = %401
  %407 = getelementptr inbounds %struct.drxj_data, ptr %70, i32 0, i32 50
  %408 = call fastcc i32 @set_agc_if(ptr noundef %0, ptr noundef %407)
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %412, label %410

410:                                              ; preds = %406
  %411 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %408) #14
  br label %529

412:                                              ; preds = %406
  %413 = getelementptr inbounds %struct.drxj_data, ptr %70, i32 0, i32 49
  %414 = call fastcc i32 @set_agc_rf(ptr noundef %0, ptr noundef %413)
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %418, label %416

416:                                              ; preds = %412
  %417 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %414) #14
  br label %529

418:                                              ; preds = %412
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %64) #13
  store i64 1, ptr %64, align 8
  %419 = getelementptr inbounds %struct.drxj_data, ptr %70, i32 0, i32 52
  %420 = load i16, ptr %419, align 2
  %421 = getelementptr inbounds %struct.drxj_cfg_afe_gain, ptr %64, i32 0, i32 1
  store i16 %420, ptr %421, align 4
  %422 = call fastcc i32 @ctrl_set_cfg_afe_gain(ptr noundef %0, ptr noundef nonnull %64)
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %426, label %424

424:                                              ; preds = %418
  %425 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %422) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %64) #13
  br label %529

426:                                              ; preds = %418
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %64) #13
  %427 = getelementptr inbounds %struct.drxj_data, ptr %70, i32 0, i32 54
  %428 = call fastcc i32 @ctrl_set_cfg_pre_saw(ptr noundef %0, ptr noundef %427)
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %432, label %430

430:                                              ; preds = %426
  %431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %428) #14
  br label %529

432:                                              ; preds = %426
  %433 = call fastcc i32 @set_mpegtei_handling(ptr noundef %0)
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %437, label %435

435:                                              ; preds = %432
  %436 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %433) #14
  br label %529

437:                                              ; preds = %432
  %438 = call fastcc i32 @bit_reverse_mpeg_output(ptr noundef %0)
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %442, label %440

440:                                              ; preds = %437
  %441 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %438) #14
  br label %529

442:                                              ; preds = %437
  %443 = call fastcc i32 @set_mpeg_start_width(ptr noundef %0)
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %447, label %445

445:                                              ; preds = %442
  %446 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %443) #14
  br label %529

447:                                              ; preds = %442
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %65) #13
  %448 = getelementptr inbounds %struct.drx_common_attr, ptr %68, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %65, ptr noundef align 4 dereferenceable(20) %448, i32 20, i1 false)
  store i8 1, ptr %65, align 4
  %449 = call fastcc i32 @ctrl_set_cfg_mpeg_output(ptr noundef %0, ptr noundef nonnull %65)
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %453, label %451

451:                                              ; preds = %447
  %452 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %449) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %65) #13
  br label %529

453:                                              ; preds = %447
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %65) #13
  store i16 0, ptr %63, align 2
  store i16 771, ptr %61, align 4
  store i16 1, ptr %116, align 2
  store i16 1, ptr %117, align 4
  store ptr %63, ptr %118, align 4
  store ptr %62, ptr %119, align 4
  %454 = call fastcc i32 @scu_command(ptr noundef nonnull %66, ptr noundef nonnull %61)
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %458, label %456

456:                                              ; preds = %453
  %457 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %454) #14
  br label %529

458:                                              ; preds = %453
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 4, ptr %12, align 2
  %459 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %459, align 1
  %460 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425742, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %464, label %462

462:                                              ; preds = %458
  %463 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %460) #14
  br label %529

464:                                              ; preds = %458
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 -46, ptr %11, align 2
  %465 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %465, align 1
  %466 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425698, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %470, label %468

468:                                              ; preds = %464
  %469 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %466) #14
  br label %529

470:                                              ; preds = %464
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 4, ptr %10, align 2
  %471 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 6, ptr %471, align 1
  %472 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425716, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %476, label %474

474:                                              ; preds = %470
  %475 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %472) #14
  br label %529

476:                                              ; preds = %470
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 66, ptr %9, align 2
  %477 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 1, ptr %477, align 1
  %478 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425725, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %482, label %480

480:                                              ; preds = %476
  %481 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %478) #14
  br label %529

482:                                              ; preds = %476
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 -128, ptr %8, align 2
  %483 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 2, ptr %483, align 1
  %484 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425726, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %482
  %487 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %484) #14
  br label %529

488:                                              ; preds = %482
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 4, ptr %7, align 2
  %489 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %489, align 1
  %490 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425685, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %494, label %492

492:                                              ; preds = %488
  %493 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %490) #14
  br label %529

494:                                              ; preds = %488
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 2, ptr %6, align 2
  %495 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %495, align 1
  %496 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425686, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %500, label %498

498:                                              ; preds = %494
  %499 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %496) #14
  br label %529

500:                                              ; preds = %494
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 3, ptr %5, align 2
  %501 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %501, align 1
  %502 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29425688, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %506, label %504

504:                                              ; preds = %500
  %505 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %502) #14
  br label %529

506:                                              ; preds = %500
  store i16 772, ptr %61, align 4
  store i16 0, ptr %116, align 2
  store i16 1, ptr %117, align 4
  store ptr null, ptr %118, align 4
  store ptr %62, ptr %119, align 4
  %507 = call fastcc i32 @scu_command(ptr noundef nonnull %66, ptr noundef nonnull %61)
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %511, label %509

509:                                              ; preds = %506
  %510 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %507) #14
  br label %529

511:                                              ; preds = %506
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 1, ptr %4, align 2
  %512 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %512, align 1
  %513 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 25165824, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %517, label %515

515:                                              ; preds = %511
  %516 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %513) #14
  br label %529

517:                                              ; preds = %511
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 1, ptr %3, align 2
  %518 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %518, align 1
  %519 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 29360128, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %523, label %521

521:                                              ; preds = %517
  %522 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %519) #14
  br label %529

523:                                              ; preds = %517
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 1, ptr %2, align 2
  %524 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 0, ptr %524, align 1
  %525 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %66, i32 noundef 37748736, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %529, label %527

527:                                              ; preds = %523
  %528 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_vsb, i32 noundef %525) #14
  br label %529

529:                                              ; preds = %527, %523, %521, %515, %509, %504, %498, %492, %486, %480, %474, %468, %462, %456, %451, %445, %440, %435, %430, %424, %416, %410, %404, %399, %394, %389, %380, %374, %368, %362, %357, %351, %345, %339, %333, %327, %321, %314, %306, %300, %294, %288, %282, %275, %267, %261, %255, %249, %243, %237, %231, %225, %220, %215, %209, %203, %197, %191, %185, %179, %173, %167, %161, %155, %149, %140, %134, %128, %122, %113, %107, %101, %95, %89, %83, %76
  %530 = phi i32 [ 0, %523 ], [ %77, %76 ], [ %81, %83 ], [ %87, %89 ], [ %93, %95 ], [ %99, %101 ], [ %105, %107 ], [ %111, %113 ], [ %120, %122 ], [ %126, %128 ], [ %132, %134 ], [ %138, %140 ], [ %147, %149 ], [ %153, %155 ], [ %159, %161 ], [ %165, %167 ], [ %171, %173 ], [ %177, %179 ], [ %183, %185 ], [ %189, %191 ], [ %195, %197 ], [ %201, %203 ], [ %207, %209 ], [ %213, %215 ], [ %218, %220 ], [ %223, %225 ], [ %229, %231 ], [ %235, %237 ], [ %241, %243 ], [ %247, %249 ], [ %253, %255 ], [ %259, %261 ], [ %265, %267 ], [ %286, %288 ], [ %292, %294 ], [ %298, %300 ], [ %304, %306 ], [ %325, %327 ], [ %331, %333 ], [ %337, %339 ], [ %343, %345 ], [ %349, %351 ], [ %355, %357 ], [ %360, %362 ], [ %366, %368 ], [ %372, %374 ], [ %378, %380 ], [ %392, %394 ], [ %397, %399 ], [ %402, %404 ], [ %408, %410 ], [ %414, %416 ], [ %422, %424 ], [ %428, %430 ], [ %433, %435 ], [ %438, %440 ], [ %443, %445 ], [ %449, %451 ], [ %454, %456 ], [ %460, %462 ], [ %466, %468 ], [ %472, %474 ], [ %478, %480 ], [ %484, %486 ], [ %490, %492 ], [ %496, %498 ], [ %502, %504 ], [ %507, %509 ], [ %513, %515 ], [ %519, %521 ], [ %525, %527 ], [ %387, %389 ], [ %280, %282 ], [ %270, %275 ], [ %319, %321 ], [ %309, %314 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %63) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %62) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %61) #13
  ret i32 %530
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_frequency(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [4 x i8], align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drxj_data, ptr %5, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drx_common_attr, ptr %10, i32 0, i32 7
  %12 = load i8, ptr %11, align 2, !range !9
  %13 = icmp eq i8 %12, 1
  %14 = getelementptr inbounds %struct.drxj_data, ptr %5, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %124 [
    i32 8, label %19
    i32 10, label %19
    i32 7, label %19
    i32 1, label %19
    i32 12, label %16
    i32 9, label %17
    i32 2, label %17
    i32 3, label %17
    i32 4, label %17
    i32 5, label %17
    i32 6, label %17
  ]

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %1, %1, %1, %1, %1, %1
  %18 = phi i32 [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 1000, %16 ]
  br label %19

19:                                               ; preds = %17, %1, %1, %1, %1
  %20 = phi i32 [ 0, %17 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  %21 = phi i32 [ %18, %17 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ]
  %22 = getelementptr inbounds %struct.drx_common_attr, ptr %10, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drx_common_attr, ptr %10, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = sdiv i32 %25, 3
  %27 = sub nsw i32 0, %21
  %28 = select i1 %13, i32 %27, i32 %21
  %29 = add i32 %23, %28
  %30 = sdiv i32 %25, 6
  %31 = icmp sgt i32 %29, %30
  %32 = sub i32 %26, %29
  %33 = select i1 %31, i32 %32, i32 %29
  %34 = zext i1 %31 to i32
  %35 = zext i1 %8 to i32
  %36 = xor i8 %12, 1
  %37 = zext i8 %36 to i32
  %38 = xor i32 %37, %35
  %39 = xor i32 %38, %34
  %40 = icmp eq i32 %39, %20
  %41 = freeze i32 %33
  %42 = freeze i32 %26
  %43 = udiv i32 %41, %42
  %44 = mul i32 %43, %42
  %45 = sub i32 %41, %44
  %46 = shl i32 %45, 4
  %47 = freeze i32 %26
  %48 = udiv i32 %46, %47
  %49 = mul i32 %48, %47
  %50 = sub i32 %46, %49
  %51 = shl i32 %50, 4
  %52 = shl i32 %43, 8
  %53 = shl i32 %48, 4
  %54 = or i32 %53, %52
  %55 = freeze i32 %51
  %56 = freeze i32 %26
  %57 = udiv i32 %55, %56
  %58 = or i32 %54, %57
  %59 = mul i32 %57, %56
  %60 = sub i32 %55, %59
  %61 = shl i32 %60, 4
  %62 = freeze i32 %26
  %63 = udiv i32 %61, %62
  %64 = mul i32 %63, %62
  %65 = sub i32 %61, %64
  %66 = shl i32 %65, 4
  %67 = shl i32 %58, 8
  %68 = shl i32 %63, 4
  %69 = or i32 %68, %67
  %70 = freeze i32 %66
  %71 = freeze i32 %26
  %72 = udiv i32 %70, %71
  %73 = or i32 %69, %72
  %74 = mul i32 %72, %71
  %75 = sub i32 %70, %74
  %76 = shl i32 %75, 4
  %77 = freeze i32 %26
  %78 = udiv i32 %76, %77
  %79 = mul i32 %78, %77
  %80 = sub i32 %76, %79
  %81 = shl i32 %80, 4
  %82 = shl i32 %73, 8
  %83 = shl i32 %78, 4
  %84 = or i32 %83, %82
  %85 = freeze i32 %81
  %86 = freeze i32 %26
  %87 = udiv i32 %85, %86
  %88 = or i32 %84, %87
  %89 = mul i32 %87, %86
  %90 = sub i32 %85, %89
  %91 = shl i32 %90, 4
  %92 = shl i32 %88, 4
  %93 = freeze i32 %26
  %94 = udiv i32 %91, %93
  %95 = or i32 %94, %92
  %96 = mul i32 %94, %93
  %97 = sub i32 %91, %96
  %98 = shl i32 %97, 1
  %99 = and i32 %98, 536870910
  %100 = icmp uge i32 %99, %26
  %101 = zext i1 %100 to i32
  %102 = add i32 %95, %101
  %103 = sub i32 0, %102
  %104 = select i1 %40, i32 %102, i32 %103
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %105 = trunc i32 %104 to i8
  store i8 %105, ptr %2, align 4
  %106 = lshr i32 %104, 8
  %107 = trunc i32 %106 to i8
  %108 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 1
  store i8 %107, ptr %108, align 1
  %109 = lshr i32 %104, 16
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 2
  store i8 %110, ptr %111, align 2
  %112 = lshr i32 %104, 24
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 3
  store i8 %113, ptr %114, align 1
  %115 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %3, i32 noundef 25296912, i16 noundef zeroext 4, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %19
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_frequency, i32 noundef %115) #14
  br label %124

119:                                              ; preds = %19
  %120 = getelementptr inbounds %struct.drxj_data, ptr %5, i32 0, i32 33
  store i32 %104, ptr %120, align 4
  %121 = icmp ne i32 %38, %20
  %122 = getelementptr inbounds %struct.drxj_data, ptr %5, i32 0, i32 34
  %123 = zext i1 %121 to i8
  store i8 %123, ptr %122, align 4
  br label %124

124:                                              ; preds = %119, %117, %1
  %125 = phi i32 [ %115, %117 ], [ 0, %119 ], [ -22, %1 ]
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adc_synchronization(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2
  %5 = load ptr, ptr %0, align 4
  %6 = call fastcc i32 @adc_sync_measurement(ptr noundef %0, ptr noundef nonnull %4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.adc_synchronization, i32 noundef %6) #14
  br label %42

10:                                               ; preds = %1
  %11 = load i16, ptr %4, align 2
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = icmp eq ptr %5, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %16 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %5, i32 noundef 25624594, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  %17 = load i8, ptr %3, align 2
  %18 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15, %13
  %22 = phi i32 [ %16, %15 ], [ -22, %13 ]
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.adc_synchronization, i32 noundef %22) #14
  br label %42

24:                                               ; preds = %15
  %25 = xor i8 %17, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 %25, ptr %2, align 2
  %26 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %19, ptr %26, align 1
  %27 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %5, i32 noundef 25624594, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.adc_synchronization, i32 noundef %27) #14
  br label %42

31:                                               ; preds = %24
  %32 = call fastcc i32 @adc_sync_measurement(ptr noundef %0, ptr noundef nonnull %4)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i16, ptr %4, align 2
  br label %38

36:                                               ; preds = %31
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.adc_synchronization, i32 noundef %32) #14
  br label %42

38:                                               ; preds = %34, %10
  %39 = phi i16 [ %35, %34 ], [ %11, %10 ]
  %40 = icmp ult i16 %39, 2
  %41 = select i1 %40, i32 -5, i32 0
  br label %42

42:                                               ; preds = %38, %36, %29, %21, %8
  %43 = phi i32 [ %41, %38 ], [ %6, %8 ], [ %32, %36 ], [ %27, %29 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_agc(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x i8], align 2
  %23 = alloca [2 x i8], align 2
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x i8], align 2
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x i8], align 2
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x i8], align 2
  %31 = alloca [2 x i8], align 2
  %32 = alloca [2 x i8], align 2
  %33 = alloca [2 x i8], align 2
  %34 = alloca [2 x i8], align 2
  %35 = alloca [2 x i8], align 2
  %36 = alloca [2 x i8], align 2
  %37 = alloca [2 x i8], align 2
  %38 = alloca [2 x i8], align 2
  %39 = alloca [2 x i8], align 2
  %40 = alloca [2 x i8], align 2
  %41 = alloca [2 x i8], align 2
  %42 = alloca [2 x i8], align 2
  %43 = alloca [2 x i8], align 2
  %44 = alloca [2 x i8], align 2
  %45 = alloca [2 x i8], align 2
  %46 = alloca [2 x i8], align 2
  %47 = alloca [2 x i8], align 2
  %48 = alloca [2 x i8], align 2
  %49 = alloca [2 x i8], align 2
  %50 = alloca [2 x i8], align 2
  %51 = alloca [2 x i8], align 2
  %52 = alloca [2 x i8], align 2
  %53 = alloca [2 x i8], align 2
  %54 = alloca [2 x i8], align 2
  %55 = alloca [2 x i8], align 2
  %56 = alloca [2 x i8], align 2
  %57 = alloca [2 x i8], align 2
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.drxj_data, ptr %62, i32 0, i32 10
  %64 = load i32, ptr %63, align 4
  switch i32 %64, label %348 [
    i32 1, label %65
    i32 8, label %122
    i32 10, label %122
    i32 9, label %122
  ]

65:                                               ; preds = %1
  %66 = icmp eq ptr %58, null
  br i1 %66, label %345, label %67

67:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #13
  store i8 -1, ptr %57, align 2
  %68 = getelementptr inbounds [2 x i8], ptr %57, i32 0, i32 1
  store i8 127, ptr %68, align 1
  %69 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593056, i16 noundef zeroext 2, ptr noundef nonnull %57, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %345

71:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #13
  store i8 0, ptr %56, align 2
  %72 = getelementptr inbounds [2 x i8], ptr %56, i32 0, i32 1
  store i8 0, ptr %72, align 1
  %73 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593057, i16 noundef zeroext 2, ptr noundef nonnull %56, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %345

75:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %55) #13
  store i8 0, ptr %55, align 2
  %76 = getelementptr inbounds [2 x i8], ptr %55, i32 0, i32 1
  store i8 0, ptr %76, align 1
  %77 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593061, i16 noundef zeroext 2, ptr noundef nonnull %55, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %55) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %345

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #13
  store i8 0, ptr %54, align 2
  %80 = getelementptr inbounds [2 x i8], ptr %54, i32 0, i32 1
  store i8 0, ptr %80, align 1
  %81 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593065, i16 noundef zeroext 2, ptr noundef nonnull %54, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #13
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %345

83:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #13
  store i8 0, ptr %53, align 2
  %84 = getelementptr inbounds [2 x i8], ptr %53, i32 0, i32 1
  store i8 0, ptr %84, align 1
  %85 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593067, i16 noundef zeroext 2, ptr noundef nonnull %53, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %345

87:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #13
  store i8 1, ptr %52, align 2
  %88 = getelementptr inbounds [2 x i8], ptr %52, i32 0, i32 1
  store i8 0, ptr %88, align 1
  %89 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593068, i16 noundef zeroext 2, ptr noundef nonnull %52, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #13
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %345

91:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #13
  store i8 0, ptr %51, align 2
  %92 = getelementptr inbounds [2 x i8], ptr %51, i32 0, i32 1
  store i8 0, ptr %92, align 1
  %93 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593069, i16 noundef zeroext 2, ptr noundef nonnull %51, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %345

95:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %50) #13
  store i8 0, ptr %50, align 2
  %96 = getelementptr inbounds [2 x i8], ptr %50, i32 0, i32 1
  store i8 0, ptr %96, align 1
  %97 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593072, i16 noundef zeroext 2, ptr noundef nonnull %50, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %50) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %345

99:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #13
  store i8 0, ptr %49, align 2
  %100 = getelementptr inbounds [2 x i8], ptr %49, i32 0, i32 1
  store i8 0, ptr %100, align 1
  %101 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593074, i16 noundef zeroext 2, ptr noundef nonnull %49, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %345

103:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #13
  store i8 1, ptr %48, align 2
  %104 = getelementptr inbounds [2 x i8], ptr %48, i32 0, i32 1
  store i8 0, ptr %104, align 1
  %105 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593075, i16 noundef zeroext 2, ptr noundef nonnull %48, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %345

107:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #13
  store i8 0, ptr %47, align 2
  %108 = getelementptr inbounds [2 x i8], ptr %47, i32 0, i32 1
  store i8 4, ptr %108, align 1
  %109 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593076, i16 noundef zeroext 2, ptr noundef nonnull %47, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %345

111:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #13
  store i8 72, ptr %46, align 2
  %112 = getelementptr inbounds [2 x i8], ptr %46, i32 0, i32 1
  store i8 88, ptr %112, align 1
  %113 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593383, i16 noundef zeroext 2, ptr noundef nonnull %46, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #13
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %345

115:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #13
  store i8 -112, ptr %45, align 2
  %116 = getelementptr inbounds [2 x i8], ptr %45, i32 0, i32 1
  store i8 51, ptr %116, align 1
  %117 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593077, i16 noundef zeroext 2, ptr noundef nonnull %45, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #13
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %345

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.drxj_data, ptr %62, i32 0, i32 50
  %121 = getelementptr inbounds %struct.drxj_data, ptr %62, i32 0, i32 49
  br label %185

122:                                              ; preds = %1, %1, %1
  %123 = icmp eq ptr %58, null
  br i1 %123, label %345, label %124

124:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #13
  store i8 -1, ptr %44, align 2
  %125 = getelementptr inbounds [2 x i8], ptr %44, i32 0, i32 1
  store i8 127, ptr %125, align 1
  %126 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593056, i16 noundef zeroext 2, ptr noundef nonnull %44, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %345

128:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #13
  store i8 0, ptr %43, align 2
  %129 = getelementptr inbounds [2 x i8], ptr %43, i32 0, i32 1
  store i8 0, ptr %129, align 1
  %130 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593057, i16 noundef zeroext 2, ptr noundef nonnull %43, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #13
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %345

132:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #13
  store i8 0, ptr %42, align 2
  %133 = getelementptr inbounds [2 x i8], ptr %42, i32 0, i32 1
  store i8 0, ptr %133, align 1
  %134 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593061, i16 noundef zeroext 2, ptr noundef nonnull %42, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #13
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %345

136:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #13
  store i8 0, ptr %41, align 2
  %137 = getelementptr inbounds [2 x i8], ptr %41, i32 0, i32 1
  store i8 0, ptr %137, align 1
  %138 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593065, i16 noundef zeroext 2, ptr noundef nonnull %41, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #13
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %345

140:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #13
  store i8 0, ptr %40, align 2
  %141 = getelementptr inbounds [2 x i8], ptr %40, i32 0, i32 1
  store i8 0, ptr %141, align 1
  %142 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593067, i16 noundef zeroext 2, ptr noundef nonnull %40, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #13
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %345

144:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %39) #13
  store i8 1, ptr %39, align 2
  %145 = getelementptr inbounds [2 x i8], ptr %39, i32 0, i32 1
  store i8 0, ptr %145, align 1
  %146 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593068, i16 noundef zeroext 2, ptr noundef nonnull %39, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #13
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %345

148:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #13
  store i8 0, ptr %38, align 2
  %149 = getelementptr inbounds [2 x i8], ptr %38, i32 0, i32 1
  store i8 0, ptr %149, align 1
  %150 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593069, i16 noundef zeroext 2, ptr noundef nonnull %38, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #13
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %345

152:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #13
  store i8 0, ptr %37, align 2
  %153 = getelementptr inbounds [2 x i8], ptr %37, i32 0, i32 1
  store i8 0, ptr %153, align 1
  %154 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593072, i16 noundef zeroext 2, ptr noundef nonnull %37, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #13
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %345

156:                                              ; preds = %152
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #13
  store i8 0, ptr %36, align 2
  %157 = getelementptr inbounds [2 x i8], ptr %36, i32 0, i32 1
  store i8 0, ptr %157, align 1
  %158 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593074, i16 noundef zeroext 2, ptr noundef nonnull %36, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #13
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %345

160:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #13
  store i8 1, ptr %35, align 2
  %161 = getelementptr inbounds [2 x i8], ptr %35, i32 0, i32 1
  store i8 0, ptr %161, align 1
  %162 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593075, i16 noundef zeroext 2, ptr noundef nonnull %35, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #13
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %345

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.drxj_data, ptr %62, i32 0, i32 48
  %166 = getelementptr inbounds %struct.drxj_data, ptr %62, i32 0, i32 47
  %167 = getelementptr inbounds %struct.drxj_data, ptr %62, i32 0, i32 48, i32 6
  %168 = load i16, ptr %167, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #13
  %169 = trunc i16 %168 to i8
  store i8 %169, ptr %34, align 2
  %170 = lshr i16 %168, 8
  %171 = trunc i16 %170 to i8
  %172 = getelementptr inbounds [2 x i8], ptr %34, i32 0, i32 1
  store i8 %171, ptr %172, align 1
  %173 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593077, i16 noundef zeroext 2, ptr noundef nonnull %34, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #13
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %345

175:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #13
  store i16 0, ptr %33, align 2, !annotation !8
  %176 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %58, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %33, i32 noundef 0) #13
  %177 = getelementptr inbounds [2 x i8], ptr %33, i32 0, i32 1
  %178 = load i8, ptr %177, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #13
  %179 = icmp eq i32 %176, 0
  br i1 %179, label %180, label %345

180:                                              ; preds = %175
  %181 = and i8 %178, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #13
  store i8 0, ptr %32, align 2
  %182 = getelementptr inbounds [2 x i8], ptr %32, i32 0, i32 1
  store i8 %181, ptr %182, align 1
  %183 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %32, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #13
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %345

185:                                              ; preds = %180, %119
  %186 = phi i8 [ 7, %180 ], [ 12, %119 ]
  %187 = phi i8 [ 87, %180 ], [ 44, %119 ]
  %188 = phi i8 [ 6, %180 ], [ 3, %119 ]
  %189 = phi i8 [ 0, %180 ], [ -128, %119 ]
  %190 = phi i8 [ -3, %180 ], [ -9, %119 ]
  %191 = phi i8 [ 127, %180 ], [ -1, %119 ]
  %192 = phi i8 [ 0, %180 ], [ 3, %119 ]
  %193 = phi i8 [ -5, %180 ], [ -9, %119 ]
  %194 = phi i8 [ 19, %180 ], [ 63, %119 ]
  %195 = phi ptr [ %165, %180 ], [ %120, %119 ]
  %196 = phi ptr [ %166, %180 ], [ %121, %119 ]
  %197 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %195, i32 0, i32 6
  %198 = load i16, ptr %197, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #13
  %199 = trunc i16 %198 to i8
  store i8 %199, ptr %31, align 2
  %200 = lshr i16 %198, 8
  %201 = trunc i16 %200 to i8
  %202 = getelementptr inbounds [2 x i8], ptr %31, i32 0, i32 1
  store i8 %201, ptr %202, align 1
  %203 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593078, i16 noundef zeroext 2, ptr noundef nonnull %31, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #13
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %345

205:                                              ; preds = %185
  %206 = load i16, ptr %197, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #13
  %207 = trunc i16 %206 to i8
  store i8 %207, ptr %30, align 2
  %208 = lshr i16 %206, 8
  %209 = trunc i16 %208 to i8
  %210 = getelementptr inbounds [2 x i8], ptr %30, i32 0, i32 1
  store i8 %209, ptr %210, align 1
  %211 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593076, i16 noundef zeroext 2, ptr noundef nonnull %30, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #13
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %345

213:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #13
  store i8 -1, ptr %29, align 2
  %214 = getelementptr inbounds [2 x i8], ptr %29, i32 0, i32 1
  store i8 %194, ptr %214, align 1
  %215 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593079, i16 noundef zeroext 2, ptr noundef nonnull %29, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #13
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %345

217:                                              ; preds = %213
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #13
  store i8 -1, ptr %28, align 2
  %218 = getelementptr inbounds [2 x i8], ptr %28, i32 0, i32 1
  store i8 7, ptr %218, align 1
  %219 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593083, i16 noundef zeroext 2, ptr noundef nonnull %28, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #13
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %345

221:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #13
  store i8 0, ptr %27, align 2
  %222 = getelementptr inbounds [2 x i8], ptr %27, i32 0, i32 1
  store i8 0, ptr %222, align 1
  %223 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593080, i16 noundef zeroext 2, ptr noundef nonnull %27, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #13
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %345

225:                                              ; preds = %221
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #13
  store i8 0, ptr %26, align 2
  %226 = getelementptr inbounds [2 x i8], ptr %26, i32 0, i32 1
  store i8 0, ptr %226, align 1
  %227 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593081, i16 noundef zeroext 2, ptr noundef nonnull %26, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #13
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %345

229:                                              ; preds = %225
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #13
  store i8 0, ptr %25, align 2
  %230 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  store i8 0, ptr %230, align 1
  %231 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593085, i16 noundef zeroext 2, ptr noundef nonnull %25, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #13
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %345

233:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #13
  store i8 0, ptr %24, align 2
  %234 = getelementptr inbounds [2 x i8], ptr %24, i32 0, i32 1
  store i8 0, ptr %234, align 1
  %235 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593086, i16 noundef zeroext 2, ptr noundef nonnull %24, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #13
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %345

237:                                              ; preds = %233
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #13
  store i8 -1, ptr %23, align 2
  %238 = getelementptr inbounds [2 x i8], ptr %23, i32 0, i32 1
  store i8 127, ptr %238, align 1
  %239 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593046, i16 noundef zeroext 2, ptr noundef nonnull %23, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #13
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %345

241:                                              ; preds = %237
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #13
  store i8 -1, ptr %22, align 2
  %242 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  store i8 3, ptr %242, align 1
  %243 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593063, i16 noundef zeroext 2, ptr noundef nonnull %22, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #13
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %345

245:                                              ; preds = %241
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #13
  store i8 %191, ptr %21, align 2
  %246 = getelementptr inbounds [2 x i8], ptr %21, i32 0, i32 1
  store i8 %192, ptr %246, align 1
  %247 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593071, i16 noundef zeroext 2, ptr noundef nonnull %21, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #13
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %345

249:                                              ; preds = %245
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i8 0, ptr %20, align 2
  %250 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  store i8 %189, ptr %250, align 1
  %251 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593055, i16 noundef zeroext 2, ptr noundef nonnull %20, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %345

253:                                              ; preds = %249
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 50, ptr %19, align 2
  %254 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 0, ptr %254, align 1
  %255 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593047, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %345

257:                                              ; preds = %253
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i8 -12, ptr %18, align 2
  %258 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  store i8 1, ptr %258, align 1
  %259 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593049, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %345

261:                                              ; preds = %257
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #13
  store i8 -12, ptr %17, align 2
  %262 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  store i8 1, ptr %262, align 1
  %263 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593050, i16 noundef zeroext 2, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #13
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %345

265:                                              ; preds = %261
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i8 20, ptr %16, align 2
  %266 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  store i8 0, ptr %266, align 1
  %267 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593058, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %345

269:                                              ; preds = %265
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i8 23, ptr %15, align 2
  %270 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 1, ptr %270, align 1
  %271 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593059, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %345

273:                                              ; preds = %269
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i8 %187, ptr %14, align 2
  %274 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  store i8 %188, ptr %274, align 1
  %275 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593060, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %345

277:                                              ; preds = %273
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 0, ptr %13, align 2
  %278 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %278, align 1
  %279 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593054, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %345

281:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 8, ptr %12, align 2
  %282 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %282, align 1
  %283 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593062, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %345

285:                                              ; preds = %281
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 -12, ptr %11, align 2
  %286 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 1, ptr %286, align 1
  %287 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593064, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %345

289:                                              ; preds = %285
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 %193, ptr %10, align 2
  %290 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 -1, ptr %290, align 1
  %291 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593066, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %345

293:                                              ; preds = %289
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 8, ptr %9, align 2
  %294 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 0, ptr %294, align 1
  %295 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593070, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %345

297:                                              ; preds = %293
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 %190, ptr %8, align 2
  %298 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 -1, ptr %298, align 1
  %299 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593073, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %345

301:                                              ; preds = %297
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 50, ptr %7, align 2
  %302 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %302, align 1
  %303 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593089, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %345

305:                                              ; preds = %301
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 0, ptr %6, align 2
  %306 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %306, align 1
  %307 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593096, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %345

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %196, i32 0, i32 7
  %311 = load i16, ptr %310, align 2
  %312 = add i16 %311, 2048
  %313 = getelementptr inbounds %struct.drx_common_attr, ptr %60, i32 0, i32 25
  %314 = load i8, ptr %313, align 4, !range !9
  %315 = icmp eq i8 %314, 0
  %316 = sub i16 32767, %311
  %317 = select i1 %315, i16 %312, i16 %316
  %318 = getelementptr inbounds %struct.drx_common_attr, ptr %60, i32 0, i32 26
  %319 = load i8, ptr %318, align 1, !range !9
  %320 = icmp eq i8 %319, 0
  %321 = sub i16 -30721, %317
  %322 = select i1 %320, i16 %317, i16 %321
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %323 = trunc i16 %322 to i8
  store i8 %323, ptr %5, align 2
  %324 = lshr i16 %322, 8
  %325 = trunc i16 %324 to i8
  %326 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %325, ptr %326, align 1
  %327 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 25624617, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %345

329:                                              ; preds = %309
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 0, ptr %4, align 2
  %330 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 8, ptr %330, align 1
  %331 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 25624616, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %329
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %334 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %58, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  %335 = load i8, ptr %3, align 2
  %336 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %337 = load i8, ptr %336, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %338 = icmp eq i32 %334, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %333
  %340 = and i8 %335, -16
  %341 = or i8 %340, %186
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 %341, ptr %2, align 2
  %342 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %337, ptr %342, align 1
  %343 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %58, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %339, %333, %329, %309, %305, %301, %297, %293, %289, %285, %281, %277, %273, %269, %265, %261, %257, %253, %249, %245, %241, %237, %233, %229, %225, %221, %217, %213, %205, %185, %180, %175, %164, %160, %156, %152, %148, %144, %140, %136, %132, %128, %124, %122, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %65
  %346 = phi i32 [ %69, %67 ], [ -22, %65 ], [ %73, %71 ], [ %77, %75 ], [ %81, %79 ], [ %85, %83 ], [ %89, %87 ], [ %93, %91 ], [ %97, %95 ], [ %101, %99 ], [ %105, %103 ], [ %109, %107 ], [ %113, %111 ], [ %117, %115 ], [ %126, %124 ], [ -22, %122 ], [ %130, %128 ], [ %134, %132 ], [ %138, %136 ], [ %142, %140 ], [ %146, %144 ], [ %150, %148 ], [ %154, %152 ], [ %158, %156 ], [ %162, %160 ], [ %173, %164 ], [ %176, %175 ], [ %183, %180 ], [ %203, %185 ], [ %211, %205 ], [ %215, %213 ], [ %219, %217 ], [ %223, %221 ], [ %227, %225 ], [ %231, %229 ], [ %235, %233 ], [ %239, %237 ], [ %243, %241 ], [ %247, %245 ], [ %251, %249 ], [ %255, %253 ], [ %259, %257 ], [ %263, %261 ], [ %267, %265 ], [ %271, %269 ], [ %275, %273 ], [ %279, %277 ], [ %283, %281 ], [ %287, %285 ], [ %291, %289 ], [ %295, %293 ], [ %299, %297 ], [ %303, %301 ], [ %307, %305 ], [ %327, %309 ], [ %331, %329 ], [ %334, %333 ], [ %343, %339 ]
  %347 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.init_agc, i32 noundef %346) #14
  br label %348

348:                                              ; preds = %345, %339, %1
  %349 = phi i32 [ -22, %1 ], [ 0, %339 ], [ %346, %345 ]
  ret i32 %349
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_agc_if(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x i8], align 2
  %23 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drxj_data, ptr %27, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %1, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %2
  %33 = and i32 %29, -4
  %34 = icmp eq i32 %33, 8
  %35 = and i32 %30, -4
  %36 = icmp eq i32 %35, 8
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  switch i32 %29, label %261 [
    i32 3, label %39
    i32 4, label %39
    i32 5, label %39
    i32 6, label %39
    i32 7, label %39
    i32 2, label %39
    i32 12, label %39
  ]

39:                                               ; preds = %38, %38, %38, %38, %38, %38, %38
  switch i32 %30, label %261 [
    i32 3, label %40
    i32 4, label %40
    i32 5, label %40
    i32 6, label %40
    i32 7, label %40
    i32 2, label %40
    i32 12, label %40
  ]

40:                                               ; preds = %39, %39, %39, %39, %39, %39, %39, %32, %2
  %41 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %267 [
    i32 0, label %43
    i32 1, label %158
    i32 2, label %215
  ]

43:                                               ; preds = %40
  %44 = icmp eq ptr %25, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #13
  store i16 0, ptr %22, align 2, !annotation !8
  %46 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %25, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %22, i32 noundef 0) #13
  %47 = load i8, ptr %22, align 2
  %48 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #13
  %50 = icmp eq i32 %46, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45, %43
  %52 = phi i32 [ %46, %45 ], [ -22, %43 ]
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %52) #14
  br label %267

54:                                               ; preds = %45
  %55 = or i8 %47, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #13
  store i8 %55, ptr %21, align 2
  %56 = getelementptr inbounds [2 x i8], ptr %21, i32 0, i32 1
  store i8 %49, ptr %56, align 1
  %57 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %21, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %57) #14
  br label %267

61:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i16 0, ptr %20, align 2, !annotation !8
  %62 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %25, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %20, i32 noundef 0) #13
  %63 = load i8, ptr %20, align 2
  %64 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  %65 = load i8, ptr %64, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  %66 = icmp eq i32 %62, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %62) #14
  br label %267

69:                                               ; preds = %61
  %70 = and i8 %65, -64
  %71 = load i32, ptr %28, align 4
  %72 = add i32 %71, -1
  %73 = icmp ult i32 %72, 11
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = getelementptr inbounds [11 x i8], ptr @switch.table.set_agc_if, i32 0, i32 %72
  %76 = load i8, ptr %75, align 1
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i8 [ %76, %74 ], [ 5, %69 ]
  %79 = or i8 %78, %70
  %80 = getelementptr inbounds %struct.drx_common_attr, ptr %24, i32 0, i32 26
  %81 = load i8, ptr %80, align 1, !range !9
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, i8 0, i8 32
  %84 = or i8 %83, %79
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 %63, ptr %19, align 2
  %85 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 %84, ptr %85, align 1
  %86 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %86) #14
  br label %267

90:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i16 0, ptr %18, align 2, !annotation !8
  %91 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %25, i32 noundef 8593054, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  %92 = load i8, ptr %18, align 2
  %93 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  %94 = load i8, ptr %93, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %95 = icmp eq i32 %91, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %90
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %91) #14
  br label %267

98:                                               ; preds = %90
  %99 = and i8 %92, -49
  %100 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %1, i32 0, i32 5
  %101 = load i16, ptr %100, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #13
  %102 = trunc i16 %101 to i8
  %103 = shl i8 %102, 4
  %104 = and i8 %103, 48
  %105 = or i8 %104, %99
  %106 = xor i8 %105, 48
  store i8 %106, ptr %17, align 2
  %107 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  store i8 %94, ptr %107, align 1
  %108 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 8593054, i16 noundef zeroext 2, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %98
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %108) #14
  br label %267

112:                                              ; preds = %98
  %113 = load i32, ptr %1, align 4
  switch i32 %113, label %267 [
    i32 1, label %114
    i32 8, label %116
    i32 9, label %116
    i32 10, label %116
    i32 11, label %116
    i32 3, label %118
    i32 4, label %118
    i32 5, label %118
    i32 6, label %118
    i32 7, label %118
    i32 2, label %118
    i32 12, label %118
  ]

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.drxj_data, ptr %27, i32 0, i32 49
  br label %120

116:                                              ; preds = %112, %112, %112, %112
  %117 = getelementptr inbounds %struct.drxj_data, ptr %27, i32 0, i32 47
  br label %120

118:                                              ; preds = %112, %112, %112, %112, %112, %112, %112
  %119 = getelementptr inbounds %struct.drxj_data, ptr %27, i32 0, i32 67
  br label %120

120:                                              ; preds = %118, %116, %114
  %121 = phi ptr [ %115, %114 ], [ %117, %116 ], [ %119, %118 ]
  %122 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %121, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %146

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %121, i32 0, i32 6
  %127 = load i16, ptr %126, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  %128 = trunc i16 %127 to i8
  store i8 %128, ptr %16, align 2
  %129 = lshr i16 %127, 8
  %130 = trunc i16 %129 to i8
  %131 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  store i8 %130, ptr %131, align 1
  %132 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 8593084, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %132) #14
  br label %267

136:                                              ; preds = %125
  %137 = load i16, ptr %126, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  %138 = trunc i16 %137 to i8
  store i8 %138, ptr %15, align 2
  %139 = lshr i16 %137, 8
  %140 = trunc i16 %139 to i8
  %141 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 %140, ptr %141, align 1
  %142 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 8593082, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %248, label %144

144:                                              ; preds = %136
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %142) #14
  br label %267

146:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i8 0, ptr %14, align 2
  %147 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  store i8 0, ptr %147, align 1
  %148 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 8593084, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %148) #14
  br label %267

152:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 0, ptr %13, align 2
  %153 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %153, align 1
  %154 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 8593082, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %248, label %156

156:                                              ; preds = %152
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %154) #14
  br label %267

158:                                              ; preds = %40
  %159 = icmp eq ptr %25, null
  br i1 %159, label %166, label %160

160:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i16 0, ptr %12, align 2, !annotation !8
  %161 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %25, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  %162 = load i8, ptr %12, align 2
  %163 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  %164 = load i8, ptr %163, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %165 = icmp eq i32 %161, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %160, %158
  %167 = phi i32 [ %161, %160 ], [ -22, %158 ]
  %168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %167) #14
  br label %267

169:                                              ; preds = %160
  %170 = or i8 %162, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 %170, ptr %11, align 2
  %171 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 %164, ptr %171, align 1
  %172 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %169
  %175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %172) #14
  br label %267

176:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i16 0, ptr %10, align 2, !annotation !8
  %177 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %25, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  %178 = load i8, ptr %10, align 2
  %179 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  %180 = load i8, ptr %179, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %181 = icmp eq i32 %177, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %176
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %177) #14
  br label %267

184:                                              ; preds = %176
  %185 = zext i8 %180 to i16
  %186 = shl nuw i16 %185, 8
  %187 = zext i8 %178 to i16
  %188 = or i16 %186, %187
  %189 = getelementptr inbounds %struct.drx_common_attr, ptr %24, i32 0, i32 26
  %190 = load i8, ptr %189, align 1, !range !9
  %191 = icmp eq i8 %190, 0
  %192 = and i16 %188, -12289
  %193 = or i16 %192, 4096
  %194 = or i16 %188, 12288
  %195 = select i1 %191, i16 %193, i16 %194
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  %196 = trunc i16 %195 to i8
  store i8 %196, ptr %9, align 2
  %197 = lshr i16 %195, 8
  %198 = trunc i16 %197 to i8
  %199 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 %198, ptr %199, align 1
  %200 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %184
  %203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %200) #14
  br label %267

204:                                              ; preds = %184
  %205 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %1, i32 0, i32 2
  %206 = load i16, ptr %205, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  %207 = trunc i16 %206 to i8
  store i8 %207, ptr %8, align 2
  %208 = lshr i16 %206, 8
  %209 = trunc i16 %208 to i8
  %210 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 %209, ptr %210, align 1
  %211 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 8593084, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %248, label %213

213:                                              ; preds = %204
  %214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %211) #14
  br label %267

215:                                              ; preds = %40
  %216 = icmp eq ptr %25, null
  br i1 %216, label %223, label %217

217:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i16 0, ptr %7, align 2, !annotation !8
  %218 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %25, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  %219 = load i8, ptr %7, align 2
  %220 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %221 = load i8, ptr %220, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %222 = icmp eq i32 %218, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %217, %215
  %224 = phi i32 [ %218, %217 ], [ -22, %215 ]
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %224) #14
  br label %267

226:                                              ; preds = %217
  %227 = and i8 %219, -17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 %227, ptr %6, align 2
  %228 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 %221, ptr %228, align 1
  %229 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %226
  %232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %229) #14
  br label %267

233:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  %234 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %25, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  %235 = load i8, ptr %5, align 2
  %236 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %237 = load i8, ptr %236, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %238 = icmp eq i32 %234, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %233
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %234) #14
  br label %267

241:                                              ; preds = %233
  %242 = or i8 %237, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 %235, ptr %4, align 2
  %243 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 %242, ptr %243, align 1
  %244 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %241
  %247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %244) #14
  br label %267

248:                                              ; preds = %241, %204, %152, %136
  %249 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %1, i32 0, i32 6
  %250 = load i16, ptr %249, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %251 = trunc i16 %250 to i8
  store i8 %251, ptr %3, align 2
  %252 = lshr i16 %250, 8
  %253 = trunc i16 %252 to i8
  %254 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %253, ptr %254, align 1
  %255 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %25, i32 noundef 8593078, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %248
  %258 = load i32, ptr %1, align 4
  br label %261

259:                                              ; preds = %248
  %260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_if, i32 noundef %255) #14
  br label %267

261:                                              ; preds = %257, %39, %38
  %262 = phi i32 [ %258, %257 ], [ %30, %39 ], [ %30, %38 ]
  switch i32 %262, label %267 [
    i32 1, label %263
    i32 8, label %265
    i32 9, label %265
    i32 10, label %265
  ]

263:                                              ; preds = %261
  %264 = getelementptr inbounds %struct.drxj_data, ptr %27, i32 0, i32 50
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %264, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  br label %267

265:                                              ; preds = %261, %261, %261
  %266 = getelementptr inbounds %struct.drxj_data, ptr %27, i32 0, i32 48
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %266, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  br label %267

267:                                              ; preds = %265, %263, %261, %259, %246, %239, %231, %223, %213, %202, %182, %174, %166, %156, %150, %144, %134, %112, %110, %96, %88, %67, %59, %51, %40
  %268 = phi i32 [ -5, %261 ], [ 0, %265 ], [ 0, %263 ], [ %154, %156 ], [ %148, %150 ], [ %142, %144 ], [ %132, %134 ], [ %108, %110 ], [ %91, %96 ], [ %86, %88 ], [ %62, %67 ], [ %57, %59 ], [ %52, %51 ], [ %211, %213 ], [ %200, %202 ], [ %177, %182 ], [ %172, %174 ], [ %167, %166 ], [ %255, %259 ], [ %244, %246 ], [ %234, %239 ], [ %229, %231 ], [ %224, %223 ], [ -22, %112 ], [ -22, %40 ]
  ret i32 %268
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_agc_rf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drxj_data, ptr %25, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %1, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %2
  %31 = and i32 %27, -4
  %32 = icmp eq i32 %31, 8
  %33 = and i32 %28, -4
  %34 = icmp eq i32 %33, 8
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  switch i32 %27, label %245 [
    i32 3, label %37
    i32 4, label %37
    i32 5, label %37
    i32 6, label %37
    i32 7, label %37
    i32 2, label %37
    i32 12, label %37
  ]

37:                                               ; preds = %36, %36, %36, %36, %36, %36, %36
  switch i32 %28, label %245 [
    i32 3, label %38
    i32 4, label %38
    i32 5, label %38
    i32 6, label %38
    i32 7, label %38
    i32 2, label %38
    i32 12, label %38
  ]

38:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %30, %2
  %39 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  switch i32 %40, label %251 [
    i32 0, label %41
    i32 1, label %156
    i32 2, label %212
  ]

41:                                               ; preds = %38
  %42 = icmp eq ptr %23, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i16 0, ptr %20, align 2, !annotation !8
  %44 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %23, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %20, i32 noundef 0) #13
  %45 = load i8, ptr %20, align 2
  %46 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  %47 = load i8, ptr %46, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  %48 = icmp eq i32 %44, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43, %41
  %50 = phi i32 [ %44, %43 ], [ -22, %41 ]
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %50) #14
  br label %251

52:                                               ; preds = %43
  %53 = or i8 %45, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 %53, ptr %19, align 2
  %54 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 %47, ptr %54, align 1
  %55 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %23, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %55) #14
  br label %251

59:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i16 0, ptr %18, align 2, !annotation !8
  %60 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %23, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  %61 = load i8, ptr %18, align 2
  %62 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  %63 = load i8, ptr %62, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %64 = icmp eq i32 %60, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %60) #14
  br label %251

67:                                               ; preds = %59
  %68 = and i8 %61, 15
  %69 = load i32, ptr %26, align 4
  %70 = add i32 %69, -1
  %71 = icmp ult i32 %70, 11
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = getelementptr inbounds [11 x i8], ptr @switch.table.set_agc_rf, i32 0, i32 %70
  %74 = load i8, ptr %73, align 1
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi i8 [ %74, %72 ], [ 64, %67 ]
  %77 = or i8 %76, %68
  %78 = getelementptr inbounds %struct.drx_common_attr, ptr %22, i32 0, i32 25
  %79 = load i8, ptr %78, align 4, !range !9
  %80 = icmp eq i8 %79, 0
  %81 = and i8 %63, -65
  %82 = select i1 %80, i8 0, i8 64
  %83 = or i8 %82, %81
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #13
  store i8 %77, ptr %17, align 2
  %84 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  store i8 %83, ptr %84, align 1
  %85 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %23, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %75
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %85) #14
  br label %251

89:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i16 0, ptr %16, align 2, !annotation !8
  %90 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %23, i32 noundef 8593054, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  %91 = load i8, ptr %16, align 2
  %92 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  %93 = load i8, ptr %92, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %94 = icmp eq i32 %90, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %90) #14
  br label %251

97:                                               ; preds = %89
  %98 = and i8 %91, -13
  %99 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %1, i32 0, i32 5
  %100 = load i16, ptr %99, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  %101 = trunc i16 %100 to i8
  %102 = shl i8 %101, 2
  %103 = and i8 %102, 12
  %104 = or i8 %103, %98
  %105 = xor i8 %104, 12
  store i8 %105, ptr %15, align 2
  %106 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 %93, ptr %106, align 1
  %107 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %23, i32 noundef 8593054, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %97
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %107) #14
  br label %251

111:                                              ; preds = %97
  %112 = load i32, ptr %1, align 4
  switch i32 %112, label %251 [
    i32 1, label %113
    i32 8, label %115
    i32 9, label %115
    i32 10, label %115
    i32 11, label %115
    i32 3, label %117
    i32 4, label %117
    i32 5, label %117
    i32 6, label %117
    i32 7, label %117
    i32 2, label %117
    i32 12, label %117
  ]

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.drxj_data, ptr %25, i32 0, i32 50
  br label %119

115:                                              ; preds = %111, %111, %111, %111
  %116 = getelementptr inbounds %struct.drxj_data, ptr %25, i32 0, i32 48
  br label %119

117:                                              ; preds = %111, %111, %111, %111, %111, %111, %111
  %118 = getelementptr inbounds %struct.drxj_data, ptr %25, i32 0, i32 68
  br label %119

119:                                              ; preds = %117, %115, %113
  %120 = phi ptr [ %114, %113 ], [ %116, %115 ], [ %118, %117 ]
  %121 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %120, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %1, i32 0, i32 6
  %126 = load i16, ptr %125, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  %127 = trunc i16 %126 to i8
  store i8 %127, ptr %14, align 2
  %128 = lshr i16 %126, 8
  %129 = trunc i16 %128 to i8
  %130 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  store i8 %129, ptr %130, align 1
  %131 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %23, i32 noundef 8593084, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %124
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %131) #14
  br label %251

135:                                              ; preds = %124
  %136 = load i16, ptr %125, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  %137 = trunc i16 %136 to i8
  store i8 %137, ptr %13, align 2
  %138 = lshr i16 %136, 8
  %139 = trunc i16 %138 to i8
  %140 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 %139, ptr %140, align 1
  %141 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %23, i32 noundef 8593082, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %135
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %141) #14
  br label %251

145:                                              ; preds = %135, %119
  %146 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %1, i32 0, i32 7
  %147 = load i16, ptr %146, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  %148 = trunc i16 %147 to i8
  store i8 %148, ptr %12, align 2
  %149 = lshr i16 %147, 8
  %150 = trunc i16 %149 to i8
  %151 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 %150, ptr %151, align 1
  %152 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %23, i32 noundef 8593087, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %245, label %154

154:                                              ; preds = %145
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %152) #14
  br label %251

156:                                              ; preds = %38
  %157 = icmp eq ptr %23, null
  br i1 %157, label %164, label %158

158:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i16 0, ptr %11, align 2, !annotation !8
  %159 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %23, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  %160 = load i8, ptr %11, align 2
  %161 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  %162 = load i8, ptr %161, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %163 = icmp eq i32 %159, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %158, %156
  %165 = phi i32 [ %159, %158 ], [ -22, %156 ]
  %166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %165) #14
  br label %251

167:                                              ; preds = %158
  %168 = or i8 %160, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 %168, ptr %10, align 2
  %169 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 %162, ptr %169, align 1
  %170 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %23, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %167
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %170) #14
  br label %251

174:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i16 0, ptr %9, align 2, !annotation !8
  %175 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %23, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  %176 = load i8, ptr %9, align 2
  %177 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %178 = load i8, ptr %177, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %179 = icmp eq i32 %175, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %174
  %181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %175) #14
  br label %251

182:                                              ; preds = %174
  %183 = zext i8 %178 to i16
  %184 = shl nuw i16 %183, 8
  %185 = zext i8 %176 to i16
  %186 = or i16 %184, %185
  %187 = and i16 %186, -16625
  %188 = getelementptr inbounds %struct.drx_common_attr, ptr %22, i32 0, i32 25
  %189 = load i8, ptr %188, align 4, !range !9
  %190 = icmp eq i8 %189, 0
  %191 = or i16 %187, 16384
  %192 = select i1 %190, i16 %187, i16 %191
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  %193 = trunc i16 %192 to i8
  store i8 %193, ptr %8, align 2
  %194 = lshr i16 %192, 8
  %195 = trunc i16 %194 to i8
  %196 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 %195, ptr %196, align 1
  %197 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %23, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %182
  %200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %197) #14
  br label %251

201:                                              ; preds = %182
  %202 = getelementptr inbounds %struct.drxj_cfg_agc, ptr %1, i32 0, i32 2
  %203 = load i16, ptr %202, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  %204 = trunc i16 %203 to i8
  store i8 %204, ptr %7, align 2
  %205 = lshr i16 %203, 8
  %206 = trunc i16 %205 to i8
  %207 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 %206, ptr %207, align 1
  %208 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %23, i32 noundef 8593085, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %245, label %210

210:                                              ; preds = %201
  %211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %208) #14
  br label %251

212:                                              ; preds = %38
  %213 = icmp eq ptr %23, null
  br i1 %213, label %220, label %214

214:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i16 0, ptr %6, align 2, !annotation !8
  %215 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %23, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  %216 = load i8, ptr %6, align 2
  %217 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %218 = load i8, ptr %217, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %219 = icmp eq i32 %215, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %214, %212
  %221 = phi i32 [ %215, %214 ], [ -22, %212 ]
  %222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %221) #14
  br label %251

223:                                              ; preds = %214
  %224 = and i8 %216, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 %224, ptr %5, align 2
  %225 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %218, ptr %225, align 1
  %226 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %23, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %223
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %226) #14
  br label %251

230:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  %231 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %23, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  %232 = load i8, ptr %4, align 2
  %233 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %234 = load i8, ptr %233, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %235 = icmp eq i32 %231, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %230
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %231) #14
  br label %251

238:                                              ; preds = %230
  %239 = and i8 %232, 15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 %239, ptr %3, align 2
  %240 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %234, ptr %240, align 1
  %241 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %23, i32 noundef 8593053, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %238
  %244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_agc_rf, i32 noundef %241) #14
  br label %251

245:                                              ; preds = %238, %201, %145, %37, %36
  %246 = load i32, ptr %1, align 4
  switch i32 %246, label %251 [
    i32 1, label %247
    i32 8, label %249
    i32 9, label %249
    i32 10, label %249
  ]

247:                                              ; preds = %245
  %248 = getelementptr inbounds %struct.drxj_data, ptr %25, i32 0, i32 49
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %248, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  br label %251

249:                                              ; preds = %245, %245, %245
  %250 = getelementptr inbounds %struct.drxj_data, ptr %25, i32 0, i32 47
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %250, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  br label %251

251:                                              ; preds = %249, %247, %245, %243, %236, %228, %220, %210, %199, %180, %172, %164, %154, %143, %133, %111, %109, %95, %87, %65, %57, %49, %38
  %252 = phi i32 [ -5, %245 ], [ 0, %249 ], [ 0, %247 ], [ -22, %38 ], [ -22, %111 ], [ %152, %154 ], [ %141, %143 ], [ %131, %133 ], [ %107, %109 ], [ %90, %95 ], [ %85, %87 ], [ %60, %65 ], [ %55, %57 ], [ %50, %49 ], [ %208, %210 ], [ %197, %199 ], [ %175, %180 ], [ %170, %172 ], [ %165, %164 ], [ %241, %243 ], [ %231, %236 ], [ %226, %228 ], [ %221, %220 ]
  ret i32 %252
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_set_cfg_afe_gain(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = icmp eq ptr %1, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %1, align 4
  switch i32 %9, label %49 [
    i32 1, label %10
    i32 8, label %10
    i32 9, label %10
    i32 10, label %10
  ]

10:                                               ; preds = %5, %5, %5, %5
  %11 = getelementptr inbounds %struct.drxj_cfg_afe_gain, ptr %1, i32 0, i32 1
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = icmp ugt i16 %12, 328
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = icmp ult i16 %12, 148
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = add nsw i32 %13, -134
  %19 = sdiv i32 %18, 13
  %20 = trunc i32 %19 to i8
  br label %21

21:                                               ; preds = %17, %15, %10
  %22 = phi i8 [ %20, %17 ], [ 15, %10 ], [ 0, %15 ]
  %23 = getelementptr inbounds %struct.drxj_data, ptr %8, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %9
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = icmp eq ptr %6, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 %22, ptr %3, align 2
  %29 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %29, align 1
  %30 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %6, i32 noundef 25624618, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, ptr %1, align 4
  br label %37

34:                                               ; preds = %28, %26
  %35 = phi i32 [ %30, %28 ], [ -22, %26 ]
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_afe_gain, i32 noundef %35) #14
  br label %49

37:                                               ; preds = %32, %21
  %38 = phi i32 [ %33, %32 ], [ %9, %21 ]
  switch i32 %38, label %49 [
    i32 1, label %39
    i32 8, label %44
    i32 9, label %44
    i32 10, label %44
  ]

39:                                               ; preds = %37
  %40 = zext i8 %22 to i16
  %41 = mul nuw nsw i16 %40, 13
  %42 = add nuw nsw i16 %41, 140
  %43 = getelementptr inbounds %struct.drxj_data, ptr %8, i32 0, i32 52
  store i16 %42, ptr %43, align 2
  br label %49

44:                                               ; preds = %37, %37, %37
  %45 = zext i8 %22 to i16
  %46 = mul nuw nsw i16 %45, 13
  %47 = add nuw nsw i16 %46, 140
  %48 = getelementptr inbounds %struct.drxj_data, ptr %8, i32 0, i32 51
  store i16 %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %44, %39, %37, %34, %5, %2
  %50 = phi i32 [ %35, %34 ], [ -22, %2 ], [ -22, %5 ], [ -5, %37 ], [ 0, %44 ], [ 0, %39 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_set_cfg_pre_saw(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drxj_cfg_pre_saw, ptr %1, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = icmp ugt i16 %10, 31
  br i1 %11, label %47, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drxj_data, ptr %6, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %1, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = and i32 %14, -4
  %19 = icmp eq i32 %18, 8
  %20 = and i32 %15, -4
  %21 = icmp eq i32 %20, 8
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  switch i32 %14, label %39 [
    i32 3, label %24
    i32 4, label %24
    i32 5, label %24
    i32 6, label %24
    i32 7, label %24
    i32 2, label %24
    i32 12, label %24
  ]

24:                                               ; preds = %23, %23, %23, %23, %23, %23, %23
  switch i32 %15, label %39 [
    i32 3, label %25
    i32 4, label %25
    i32 5, label %25
    i32 6, label %25
    i32 7, label %25
    i32 2, label %25
    i32 12, label %25
  ]

25:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %17, %12
  %26 = icmp eq ptr %4, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %28 = trunc i16 %10 to i8
  store i8 %28, ptr %3, align 2
  %29 = lshr i16 %10, 8
  %30 = trunc i16 %29 to i8
  %31 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %30, ptr %31, align 1
  %32 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %4, i32 noundef 25624619, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, ptr %1, align 4
  br label %39

36:                                               ; preds = %27, %25
  %37 = phi i32 [ %32, %27 ], [ -22, %25 ]
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_set_cfg_pre_saw, i32 noundef %37) #14
  br label %47

39:                                               ; preds = %34, %24, %23
  %40 = phi i32 [ %35, %34 ], [ %15, %24 ], [ %15, %23 ]
  switch i32 %40, label %47 [
    i32 1, label %41
    i32 8, label %44
    i32 9, label %44
    i32 10, label %44
  ]

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.drxj_data, ptr %6, i32 0, i32 54
  %43 = load i64, ptr %1, align 4
  store i64 %43, ptr %42, align 4
  br label %47

44:                                               ; preds = %39, %39, %39
  %45 = getelementptr inbounds %struct.drxj_data, ptr %6, i32 0, i32 53
  %46 = load i64, ptr %1, align 4
  store i64 %46, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %41, %39, %36, %8, %2
  %48 = phi i32 [ %37, %36 ], [ -22, %8 ], [ -22, %2 ], [ -22, %39 ], [ 0, %44 ], [ 0, %41 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_mpegtei_handling(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %8, null
  br i1 %11, label %61, label %12

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i16 0, ptr %7, align 2, !annotation !8
  %13 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %8, i32 noundef 38010898, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  %14 = load i8, ptr %7, align 2
  %15 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i16 0, ptr %6, align 2, !annotation !8
  %19 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %8, i32 noundef 38010944, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  %20 = load i8, ptr %6, align 2
  %21 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  %24 = shl nuw i16 %23, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %25 = icmp eq i32 %19, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  %27 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %8, i32 noundef 38010951, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  %28 = load i8, ptr %5, align 2
  %29 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %26
  %33 = and i8 %14, -2
  %34 = and i8 %28, -4
  %35 = getelementptr inbounds %struct.drxj_data, ptr %10, i32 0, i32 62
  %36 = load i8, ptr %35, align 4, !range !9
  %37 = icmp eq i8 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i8
  %40 = or i8 %33, %39
  %41 = or i8 %34, %39
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 %40, ptr %4, align 2
  %42 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 %16, ptr %42, align 1
  %43 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %8, i32 noundef 38010898, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %32
  %46 = and i8 %20, -15
  %47 = zext i8 %46 to i16
  %48 = or i16 %24, %47
  %49 = or i16 %48, 12
  %50 = select i1 %37, i16 %48, i16 %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %51 = trunc i16 %50 to i8
  store i8 %51, ptr %3, align 2
  %52 = lshr i16 %50, 8
  %53 = trunc i16 %52 to i8
  %54 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %53, ptr %54, align 1
  %55 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %8, i32 noundef 38010944, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 %41, ptr %2, align 2
  %58 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %30, ptr %58, align 1
  %59 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %8, i32 noundef 38010951, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57, %45, %32, %26, %18, %12, %1
  %62 = phi i32 [ %13, %12 ], [ -22, %1 ], [ %19, %18 ], [ %27, %26 ], [ %43, %32 ], [ %55, %45 ], [ %59, %57 ]
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_mpegtei_handling, i32 noundef %62) #14
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i32 [ 0, %57 ], [ %62, %61 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bit_reverse_mpeg_output(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %4, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %9 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %4, i32 noundef 38010952, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  %10 = load i8, ptr %3, align 2
  %11 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = and i8 %10, -3
  %16 = getelementptr inbounds %struct.drxj_data, ptr %6, i32 0, i32 63
  %17 = load i8, ptr %16, align 1, !range !9
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i8 0, i8 2
  %20 = or i8 %19, %15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 %20, ptr %2, align 2
  %21 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %12, ptr %21, align 1
  %22 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %4, i32 noundef 38010952, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14, %8, %1
  %25 = phi i32 [ %9, %8 ], [ -22, %1 ], [ %22, %14 ]
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.bit_reverse_mpeg_output, i32 noundef %25) #14
  br label %27

27:                                               ; preds = %24, %14
  %28 = phi i32 [ 0, %14 ], [ %25, %24 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_mpeg_start_width(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drx_common_attr, ptr %8, i32 0, i32 8, i32 8
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.drx_common_attr, ptr %8, i32 0, i32 8, i32 2
  %14 = load i8, ptr %13, align 2, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = icmp eq ptr %4, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %19 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %4, i32 noundef 38010882, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  %20 = load i8, ptr %3, align 2
  %21 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = and i8 %20, -2
  %26 = getelementptr inbounds %struct.drxj_data, ptr %6, i32 0, i32 65
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i8
  %30 = or i8 %25, %29
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 %30, ptr %2, align 2
  %31 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %22, ptr %31, align 1
  %32 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %4, i32 noundef 38010882, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %24, %18, %16
  %35 = phi i32 [ %19, %18 ], [ -22, %16 ], [ %32, %24 ]
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_mpeg_start_width, i32 noundef %35) #14
  br label %37

37:                                               ; preds = %34, %24, %12, %1
  %38 = phi i32 [ 0, %24 ], [ 0, %12 ], [ 0, %1 ], [ %35, %34 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adc_sync_measurement(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 1, ptr %7, align 2
  %11 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %11, align 1
  %12 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %8, i32 noundef 25624576, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %12, %10 ], [ -22, %2 ]
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.adc_sync_measurement, i32 noundef %15) #14
  br label %74

17:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 1, ptr %6, align 2
  %18 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %18, align 1
  %19 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %8, i32 noundef 25624603, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.adc_sync_measurement, i32 noundef %19) #14
  br label %74

23:                                               ; preds = %17
  call void @msleep(i32 noundef 1) #13
  store i16 0, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  %24 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %8, i32 noundef 25624604, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  %25 = load i8, ptr %5, align 2
  %26 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.adc_sync_measurement, i32 noundef %24) #14
  br label %74

31:                                               ; preds = %23
  %32 = zext i8 %27 to i16
  %33 = shl nuw i16 %32, 8
  %34 = zext i8 %25 to i16
  %35 = or i16 %33, %34
  %36 = icmp eq i16 %35, 127
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i16, ptr %1, align 2
  %39 = add i16 %38, 1
  store i16 %39, ptr %1, align 2
  br label %40

40:                                               ; preds = %37, %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  %41 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %8, i32 noundef 25624605, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  %42 = load i8, ptr %4, align 2
  %43 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.adc_sync_measurement, i32 noundef %41) #14
  br label %74

48:                                               ; preds = %40
  %49 = zext i8 %44 to i16
  %50 = shl nuw i16 %49, 8
  %51 = zext i8 %42 to i16
  %52 = or i16 %50, %51
  %53 = icmp eq i16 %52, 127
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i16, ptr %1, align 2
  %56 = add i16 %55, 1
  store i16 %56, ptr %1, align 2
  br label %57

57:                                               ; preds = %54, %48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %58 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %8, i32 noundef 25624606, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  %59 = load i8, ptr %3, align 2
  %60 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %62 = icmp eq i32 %58, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.adc_sync_measurement, i32 noundef %58) #14
  br label %74

65:                                               ; preds = %57
  %66 = zext i8 %61 to i16
  %67 = shl nuw i16 %66, 8
  %68 = zext i8 %59 to i16
  %69 = or i16 %67, %68
  %70 = icmp eq i16 %69, 127
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i16, ptr %1, align 2
  %73 = add i16 %72, 1
  store i16 %73, ptr %1, align 2
  br label %74

74:                                               ; preds = %71, %65, %63, %46, %29, %21, %14
  %75 = phi i32 [ 0, %71 ], [ 0, %65 ], [ %15, %14 ], [ %19, %21 ], [ %24, %29 ], [ %41, %46 ], [ %58, %63 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_qam(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x i8], align 2
  %23 = alloca [2 x i8], align 2
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x i8], align 2
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x i8], align 2
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x i8], align 2
  %31 = alloca [2 x i8], align 2
  %32 = alloca [2 x i8], align 2
  %33 = alloca [2 x i8], align 2
  %34 = alloca [2 x i8], align 2
  %35 = alloca [2 x i8], align 2
  %36 = alloca [2 x i8], align 2
  %37 = alloca [2 x i8], align 2
  %38 = alloca [2 x i8], align 2
  %39 = alloca [2 x i8], align 2
  %40 = alloca [2 x i8], align 2
  %41 = alloca [2 x i8], align 2
  %42 = alloca [2 x i8], align 2
  %43 = alloca [2 x i8], align 2
  %44 = alloca [2 x i8], align 2
  %45 = alloca [2 x i8], align 2
  %46 = alloca [2 x i8], align 2
  %47 = alloca [2 x i8], align 2
  %48 = alloca [2 x i8], align 2
  %49 = alloca [2 x i8], align 2
  %50 = alloca [2 x i8], align 2
  %51 = alloca [2 x i8], align 2
  %52 = alloca [2 x i8], align 2
  %53 = alloca [2 x i8], align 2
  %54 = alloca [2 x i8], align 2
  %55 = alloca [2 x i8], align 2
  %56 = alloca [2 x i8], align 2
  %57 = alloca [2 x i8], align 2
  %58 = alloca [2 x i8], align 2
  %59 = alloca [2 x i8], align 2
  %60 = alloca [2 x i8], align 2
  %61 = alloca [2 x i8], align 2
  %62 = alloca [2 x i8], align 2
  %63 = alloca [2 x i8], align 2
  %64 = alloca [2 x i8], align 2
  %65 = alloca [4 x i8], align 4
  %66 = alloca [2 x i8], align 2
  %67 = alloca [2 x i8], align 2
  %68 = alloca [2 x i8], align 2
  %69 = alloca [4 x i8], align 4
  %70 = alloca [2 x i8], align 2
  %71 = alloca [2 x i8], align 2
  %72 = alloca [2 x i8], align 2
  %73 = alloca [2 x i8], align 2
  %74 = alloca [2 x i8], align 2
  %75 = alloca [2 x i8], align 2
  %76 = alloca [2 x i8], align 2
  %77 = alloca i16, align 2
  %78 = alloca i16, align 2
  %79 = alloca [2 x i16], align 4
  %80 = alloca %struct.drxjscu_cmd, align 4
  %81 = alloca %struct.drxj_cfg_afe_gain, align 8
  %82 = alloca %struct.drx_cfg_mpeg_output, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %77) #13
  store i16 0, ptr %77, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %78) #13
  store i16 0, ptr %78, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %79) #13
  store i32 0, ptr %79, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %80) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %80, i8 0, i32 16, i1 false)
  %83 = load ptr, ptr %0, align 4
  %84 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = and i32 %2, 1
  %89 = icmp eq i32 %88, 0
  %90 = and i32 %2, 2
  %91 = icmp eq i32 %90, 0
  %92 = and i32 %2, 3
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %275, label %94

94:                                               ; preds = %3
  %95 = getelementptr inbounds %struct.drxj_data, ptr %85, i32 0, i32 10
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 9
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  switch i32 %100, label %1037 [
    i32 7, label %101
    i32 5, label %103
  ]

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 10
  store i32 5360537, ptr %102, align 4
  br label %251

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 10
  store i32 5056941, ptr %104, align 4
  br label %251

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 10
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.set_qam) #14
  br label %1037

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.drx_common_attr, ptr %87, i32 0, i32 4
  %113 = load i32, ptr %112, align 4
  %114 = mul i32 %113, 1000
  %115 = sdiv i32 %114, 3
  %116 = freeze i32 %115
  %117 = freeze i32 %107
  %118 = udiv i32 %116, %117
  %119 = shl i32 %118, 21
  %120 = mul i32 %118, %117
  %121 = sub i32 %116, %120
  %122 = shl i32 %121, 4
  %123 = freeze i32 %107
  %124 = udiv i32 %122, %123
  %125 = mul i32 %124, %123
  %126 = sub i32 %122, %125
  %127 = shl i32 %126, 4
  %128 = freeze i32 %127
  %129 = freeze i32 %107
  %130 = udiv i32 %128, %129
  %131 = mul i32 %130, %129
  %132 = sub i32 %128, %131
  %133 = shl i32 %132, 4
  %134 = freeze i32 %107
  %135 = udiv i32 %133, %134
  %136 = mul i32 %135, %134
  %137 = sub i32 %133, %136
  %138 = shl i32 %137, 4
  %139 = shl i32 %124, 12
  %140 = shl i32 %130, 8
  %141 = or i32 %140, %139
  %142 = shl i32 %135, 4
  %143 = or i32 %141, %142
  %144 = freeze i32 %138
  %145 = freeze i32 %107
  %146 = udiv i32 %144, %145
  %147 = or i32 %143, %146
  %148 = mul i32 %146, %145
  %149 = sub i32 %144, %148
  %150 = shl i32 %149, 4
  %151 = freeze i32 %107
  %152 = udiv i32 %150, %151
  %153 = mul i32 %152, %151
  %154 = sub i32 %150, %153
  %155 = shl i32 %154, 4
  %156 = shl i32 %147, 8
  %157 = shl i32 %152, 4
  %158 = or i32 %157, %156
  %159 = freeze i32 %155
  %160 = freeze i32 %107
  %161 = udiv i32 %159, %160
  %162 = or i32 %158, %161
  %163 = mul i32 %161, %160
  %164 = sub i32 %159, %163
  %165 = shl i32 %164, 4
  %166 = shl i32 %162, 4
  %167 = freeze i32 %107
  %168 = udiv i32 %165, %167
  %169 = or i32 %168, %166
  %170 = mul i32 %168, %167
  %171 = sub i32 %165, %170
  %172 = shl i32 %171, 1
  %173 = and i32 %172, 536870910
  %174 = icmp uge i32 %173, %107
  %175 = zext i1 %174 to i32
  %176 = add i32 %169, %175
  %177 = lshr i32 %176, 7
  %178 = add i32 %119, -8388608
  %179 = add i32 %178, %177
  %180 = lshr i32 %115, 13
  %181 = add i32 %180, %107
  %182 = freeze i32 %181
  %183 = freeze i32 %115
  %184 = udiv i32 %182, %183
  %185 = mul i32 %184, %183
  %186 = sub i32 %182, %185
  %187 = shl i32 %186, 4
  %188 = freeze i32 %115
  %189 = udiv i32 %187, %188
  %190 = mul i32 %189, %188
  %191 = sub i32 %187, %190
  %192 = shl i32 %191, 4
  %193 = shl i32 %184, 8
  %194 = shl i32 %189, 4
  %195 = or i32 %194, %193
  %196 = freeze i32 %192
  %197 = freeze i32 %115
  %198 = udiv i32 %196, %197
  %199 = or i32 %195, %198
  %200 = mul i32 %198, %197
  %201 = sub i32 %196, %200
  %202 = shl i32 %201, 4
  %203 = freeze i32 %115
  %204 = udiv i32 %202, %203
  %205 = mul i32 %204, %203
  %206 = sub i32 %202, %205
  %207 = shl i32 %206, 4
  %208 = shl i32 %199, 8
  %209 = shl i32 %204, 4
  %210 = or i32 %209, %208
  %211 = freeze i32 %207
  %212 = freeze i32 %115
  %213 = udiv i32 %211, %212
  %214 = or i32 %210, %213
  %215 = mul i32 %213, %212
  %216 = sub i32 %211, %215
  %217 = shl i32 %216, 4
  %218 = freeze i32 %115
  %219 = udiv i32 %217, %218
  %220 = mul i32 %219, %218
  %221 = sub i32 %217, %220
  %222 = shl i32 %221, 4
  %223 = shl i32 %214, 8
  %224 = shl i32 %219, 4
  %225 = or i32 %224, %223
  %226 = freeze i32 %222
  %227 = freeze i32 %115
  %228 = udiv i32 %226, %227
  %229 = or i32 %225, %228
  %230 = mul i32 %228, %227
  %231 = sub i32 %226, %230
  %232 = shl i32 %231, 4
  %233 = shl i32 %229, 4
  %234 = freeze i32 %115
  %235 = udiv i32 %232, %234
  %236 = or i32 %235, %233
  %237 = mul i32 %235, %234
  %238 = sub i32 %232, %237
  %239 = shl i32 %238, 1
  %240 = and i32 %239, 536870910
  %241 = icmp uge i32 %240, %115
  %242 = zext i1 %241 to i32
  %243 = add i32 %236, %242
  %244 = lshr i32 %243, 16
  %245 = trunc i32 %244 to i16
  %246 = icmp ugt i32 %243, 33554431
  %247 = select i1 %246, i16 511, i16 %245
  %248 = trunc i16 %247 to i8
  %249 = lshr i16 %247, 8
  %250 = trunc i16 %249 to i8
  br label %251

251:                                              ; preds = %111, %103, %101
  %252 = phi i8 [ 30, %103 ], [ 28, %101 ], [ 21, %111 ]
  %253 = phi i8 [ -103, %103 ], [ -78, %101 ], [ %248, %111 ]
  %254 = phi i8 [ 1, %103 ], [ 1, %101 ], [ %250, %111 ]
  %255 = phi i32 [ 12605966, %103 ], [ 11416930, %101 ], [ %179, %111 ]
  %256 = load i32, ptr %95, align 4
  switch i32 %256, label %1037 [
    i32 8, label %257
    i32 9, label %261
    i32 10, label %268
  ]

257:                                              ; preds = %251
  store i16 0, ptr %78, align 2
  %258 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 3
  %259 = load i32, ptr %258, align 4
  %260 = trunc i32 %259 to i16
  store i16 %260, ptr %79, align 4
  br label %272

261:                                              ; preds = %251
  store i16 1, ptr %78, align 2
  %262 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 3
  %263 = load i32, ptr %262, align 4
  %264 = trunc i32 %263 to i16
  store i16 %264, ptr %79, align 4
  %265 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 11
  %266 = load i32, ptr %265, align 4
  %267 = trunc i32 %266 to i16
  br label %272

268:                                              ; preds = %251
  store i16 2, ptr %78, align 2
  %269 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 3
  %270 = load i32, ptr %269, align 4
  %271 = trunc i32 %270 to i16
  store i16 %271, ptr %79, align 4
  br label %272

272:                                              ; preds = %268, %261, %257
  %273 = phi i16 [ 16, %257 ], [ 16, %268 ], [ %267, %261 ]
  %274 = getelementptr inbounds [2 x i16], ptr %79, i32 0, i32 1
  store i16 %273, ptr %274, align 2
  br label %275

275:                                              ; preds = %272, %3
  %276 = phi i8 [ 0, %3 ], [ %252, %272 ]
  %277 = phi i8 [ 0, %3 ], [ %253, %272 ]
  %278 = phi i8 [ 0, %3 ], [ %254, %272 ]
  %279 = phi i32 [ 0, %3 ], [ %255, %272 ]
  br i1 %89, label %334, label %280

280:                                              ; preds = %275
  %281 = icmp eq ptr %83, null
  br i1 %281, label %286, label %282

282:                                              ; preds = %280
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %76) #13
  store i8 0, ptr %76, align 2
  %283 = getelementptr inbounds [2 x i8], ptr %76, i32 0, i32 1
  store i8 0, ptr %283, align 1
  %284 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 37748736, i16 noundef zeroext 2, ptr noundef nonnull %76, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %76) #13
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %282, %280
  %287 = phi i32 [ %284, %282 ], [ -22, %280 ]
  %288 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %287) #14
  br label %1037

289:                                              ; preds = %282
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %75) #13
  store i8 0, ptr %75, align 2
  %290 = getelementptr inbounds [2 x i8], ptr %75, i32 0, i32 1
  store i8 0, ptr %290, align 1
  %291 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 20971520, i16 noundef zeroext 2, ptr noundef nonnull %75, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %75) #13
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %289
  %294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %291) #14
  br label %1037

295:                                              ; preds = %289
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %74) #13
  store i8 0, ptr %74, align 2
  %296 = getelementptr inbounds [2 x i8], ptr %74, i32 0, i32 1
  store i8 0, ptr %296, align 1
  %297 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25296896, i16 noundef zeroext 2, ptr noundef nonnull %74, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %74) #13
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %301, label %299

299:                                              ; preds = %295
  %300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %297) #14
  br label %1037

301:                                              ; preds = %295
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %73) #13
  store i8 0, ptr %73, align 2
  %302 = getelementptr inbounds [2 x i8], ptr %73, i32 0, i32 1
  store i8 0, ptr %302, align 1
  %303 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25362432, i16 noundef zeroext 2, ptr noundef nonnull %73, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %73) #13
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %307, label %305

305:                                              ; preds = %301
  %306 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %303) #14
  br label %1037

307:                                              ; preds = %301
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %72) #13
  store i8 0, ptr %72, align 2
  %308 = getelementptr inbounds [2 x i8], ptr %72, i32 0, i32 1
  store i8 0, ptr %308, align 1
  %309 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25427968, i16 noundef zeroext 2, ptr noundef nonnull %72, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %72) #13
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %307
  %312 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %309) #14
  br label %1037

313:                                              ; preds = %307
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %71) #13
  store i8 0, ptr %71, align 2
  %314 = getelementptr inbounds [2 x i8], ptr %71, i32 0, i32 1
  store i8 0, ptr %314, align 1
  %315 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25493504, i16 noundef zeroext 2, ptr noundef nonnull %71, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %71) #13
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %313
  %318 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %315) #14
  br label %1037

319:                                              ; preds = %313
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %70) #13
  store i8 0, ptr %70, align 2
  %320 = getelementptr inbounds [2 x i8], ptr %70, i32 0, i32 1
  store i8 0, ptr %320, align 1
  %321 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25559040, i16 noundef zeroext 2, ptr noundef nonnull %70, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %70) #13
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %325, label %323

323:                                              ; preds = %319
  %324 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %321) #14
  br label %1037

325:                                              ; preds = %319
  store i16 513, ptr %80, align 4
  %326 = getelementptr inbounds %struct.drxjscu_cmd, ptr %80, i32 0, i32 1
  store i16 0, ptr %326, align 2
  %327 = getelementptr inbounds %struct.drxjscu_cmd, ptr %80, i32 0, i32 2
  store i16 1, ptr %327, align 4
  %328 = getelementptr inbounds %struct.drxjscu_cmd, ptr %80, i32 0, i32 3
  store ptr null, ptr %328, align 4
  %329 = getelementptr inbounds %struct.drxjscu_cmd, ptr %80, i32 0, i32 4
  store ptr %77, ptr %329, align 4
  %330 = call fastcc i32 @scu_command(ptr noundef nonnull %83, ptr noundef nonnull %80)
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %325
  %333 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %330) #14
  br label %1037

334:                                              ; preds = %275
  br i1 %91, label %505, label %335

335:                                              ; preds = %334, %325
  store i16 514, ptr %80, align 4
  %336 = getelementptr inbounds %struct.drxjscu_cmd, ptr %80, i32 0, i32 1
  store i16 1, ptr %336, align 2
  %337 = getelementptr inbounds %struct.drxjscu_cmd, ptr %80, i32 0, i32 2
  store i16 1, ptr %337, align 4
  %338 = getelementptr inbounds %struct.drxjscu_cmd, ptr %80, i32 0, i32 3
  store ptr %78, ptr %338, align 4
  %339 = getelementptr inbounds %struct.drxjscu_cmd, ptr %80, i32 0, i32 4
  store ptr %77, ptr %339, align 4
  %340 = call fastcc i32 @scu_command(ptr noundef %83, ptr noundef nonnull %80)
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %344, label %342

342:                                              ; preds = %335
  %343 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %340) #14
  br label %1037

344:                                              ; preds = %335
  store i16 515, ptr %80, align 4
  store i16 2, ptr %336, align 2
  store i16 1, ptr %337, align 4
  store ptr %79, ptr %338, align 4
  store ptr %77, ptr %339, align 4
  %345 = call fastcc i32 @scu_command(ptr noundef %83, ptr noundef nonnull %80)
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %344
  %348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %345) #14
  br label %1037

349:                                              ; preds = %344
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %69) #13
  %350 = trunc i32 %279 to i8
  store i8 %350, ptr %69, align 4
  %351 = lshr i32 %279, 8
  %352 = trunc i32 %351 to i8
  %353 = getelementptr inbounds [4 x i8], ptr %69, i32 0, i32 1
  store i8 %352, ptr %353, align 1
  %354 = lshr i32 %279, 16
  %355 = trunc i32 %354 to i8
  %356 = getelementptr inbounds [4 x i8], ptr %69, i32 0, i32 2
  store i8 %355, ptr %356, align 2
  %357 = lshr i32 %279, 24
  %358 = trunc i32 %357 to i8
  %359 = getelementptr inbounds [4 x i8], ptr %69, i32 0, i32 3
  store i8 %358, ptr %359, align 1
  %360 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %83, i32 noundef 25427984, i16 noundef zeroext 4, ptr noundef nonnull %69, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %69) #13
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %364, label %362

362:                                              ; preds = %349
  %363 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %360) #14
  br label %1037

364:                                              ; preds = %349
  %365 = getelementptr inbounds %struct.drxj_data, ptr %85, i32 0, i32 35
  store i32 %279, ptr %365, align 4
  %366 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 3
  %367 = load i32, ptr %366, align 4
  %368 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 10
  %369 = load i32, ptr %368, align 4
  %370 = load ptr, ptr %0, align 4
  %371 = load ptr, ptr %84, align 4
  %372 = getelementptr inbounds %struct.drxj_data, ptr %371, i32 0, i32 20
  %373 = load i16, ptr %372, align 4
  switch i32 %367, label %502 [
    i32 3, label %374
    i32 4, label %376
    i32 5, label %378
    i32 6, label %380
    i32 7, label %382
  ]

374:                                              ; preds = %364
  %375 = shl i32 %369, 2
  br label %384

376:                                              ; preds = %364
  %377 = mul i32 %369, 5
  br label %384

378:                                              ; preds = %364
  %379 = mul i32 %369, 6
  br label %384

380:                                              ; preds = %364
  %381 = mul i32 %369, 7
  br label %384

382:                                              ; preds = %364
  %383 = shl i32 %369, 3
  br label %384

384:                                              ; preds = %382, %380, %378, %376, %374
  %385 = phi i32 [ %383, %382 ], [ %381, %380 ], [ %379, %378 ], [ %377, %376 ], [ %375, %374 ]
  %386 = getelementptr inbounds %struct.drxj_data, ptr %371, i32 0, i32 10
  %387 = load i32, ptr %386, align 4
  %388 = add i32 %387, -8
  %389 = icmp ult i32 %388, 3
  br i1 %389, label %390, label %502

390:                                              ; preds = %384
  %391 = getelementptr inbounds [3 x i16], ptr @switch.table.set_qam, i32 0, i32 %388
  %392 = load i16, ptr %391, align 2
  %393 = getelementptr inbounds %struct.drxj_data, ptr %371, i32 0, i32 19
  store i16 %392, ptr %393, align 2
  %394 = zext i16 %373 to i32
  %395 = zext i16 %392 to i32
  %396 = mul nuw nsw i32 %395, %394
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %390
  %399 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.set_qam_measurement) #14
  br label %502

400:                                              ; preds = %390
  %401 = udiv i32 %385, %396
  %402 = add i32 %401, 1
  %403 = icmp eq i32 %387, 9
  %404 = select i1 %403, i32 0, i32 %402
  %405 = call i32 @llvm.umin.i32(i32 %402, i32 65535) #13
  switch i32 %387, label %502 [
    i32 8, label %408
    i32 10, label %408
    i32 9, label %406
  ]

406:                                              ; preds = %400
  switch i32 %367, label %502 [
    i32 5, label %408
    i32 7, label %407
  ]

407:                                              ; preds = %406
  br label %408

408:                                              ; preds = %407, %406, %400, %400
  %409 = phi i32 [ 25805, %407 ], [ %404, %400 ], [ %404, %400 ], [ 17932, %406 ]
  %410 = phi i32 [ 45446, %407 ], [ %405, %400 ], [ %405, %400 ], [ 31581, %406 ]
  %411 = icmp eq ptr %370, null
  br i1 %411, label %419, label %412

412:                                              ; preds = %408
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %68) #13
  %413 = trunc i32 %409 to i8
  store i8 %413, ptr %68, align 2
  %414 = lshr i32 %409, 8
  %415 = trunc i32 %414 to i8
  %416 = getelementptr inbounds [2 x i8], ptr %68, i32 0, i32 1
  store i8 %415, ptr %416, align 1
  %417 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %370, i32 noundef 38010950, i16 noundef zeroext 2, ptr noundef nonnull %68, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %68) #13
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %422, label %419

419:                                              ; preds = %412, %408
  %420 = phi i32 [ %417, %412 ], [ -22, %408 ]
  %421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam_measurement, i32 noundef %420) #14
  br label %502

422:                                              ; preds = %412
  %423 = trunc i32 %410 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %67) #13
  %424 = trunc i32 %410 to i8
  store i8 %424, ptr %67, align 2
  %425 = lshr i32 %410, 8
  %426 = trunc i32 %425 to i8
  %427 = getelementptr inbounds [2 x i8], ptr %67, i32 0, i32 1
  store i8 %426, ptr %427, align 1
  %428 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %370, i32 noundef 37945362, i16 noundef zeroext 2, ptr noundef nonnull %67, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %67) #13
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %432, label %430

430:                                              ; preds = %422
  %431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam_measurement, i32 noundef %428) #14
  br label %502

432:                                              ; preds = %422
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %66) #13
  %433 = trunc i16 %373 to i8
  store i8 %433, ptr %66, align 2
  %434 = lshr i16 %373, 8
  %435 = trunc i16 %434 to i8
  %436 = getelementptr inbounds [2 x i8], ptr %66, i32 0, i32 1
  store i8 %435, ptr %436, align 1
  %437 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %370, i32 noundef 37945363, i16 noundef zeroext 2, ptr noundef nonnull %66, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %66) #13
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %441, label %439

439:                                              ; preds = %432
  %440 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam_measurement, i32 noundef %437) #14
  br label %502

441:                                              ; preds = %432
  %442 = getelementptr inbounds %struct.drxj_data, ptr %371, i32 0, i32 21
  store i16 %423, ptr %442, align 2
  store i16 %373, ptr %372, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %65) #13
  store i32 0, ptr %65, align 4
  %443 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %370, i32 noundef 8593093, i16 noundef zeroext 4, ptr noundef nonnull %65, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %65) #13
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %447, label %445

445:                                              ; preds = %441
  %446 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam_measurement, i32 noundef %443) #14
  br label %502

447:                                              ; preds = %441
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %64) #13
  store i8 0, ptr %64, align 2
  %448 = getelementptr inbounds [2 x i8], ptr %64, i32 0, i32 1
  store i8 0, ptr %448, align 1
  %449 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %370, i32 noundef 8593092, i16 noundef zeroext 2, ptr noundef nonnull %64, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %64) #13
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %453, label %451

451:                                              ; preds = %447
  %452 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam_measurement, i32 noundef %449) #14
  br label %502

453:                                              ; preds = %447
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %63) #13
  store i8 0, ptr %63, align 2
  %454 = getelementptr inbounds [2 x i8], ptr %63, i32 0, i32 1
  store i8 0, ptr %454, align 1
  %455 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %370, i32 noundef 8593099, i16 noundef zeroext 2, ptr noundef nonnull %63, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %63) #13
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %459, label %457

457:                                              ; preds = %453
  %458 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam_measurement, i32 noundef %455) #14
  br label %502

459:                                              ; preds = %453
  %460 = load i32, ptr %386, align 4
  %461 = icmp eq i32 %460, 9
  br i1 %461, label %462, label %505

462:                                              ; preds = %459
  %463 = getelementptr inbounds %struct.drxj_data, ptr %371, i32 0, i32 16
  %464 = load i16, ptr %463, align 4
  %465 = getelementptr inbounds %struct.drxj_data, ptr %371, i32 0, i32 17
  %466 = load i16, ptr %465, align 2
  %467 = zext i16 %466 to i32
  %468 = zext i16 %464 to i32
  %469 = mul nuw i32 %467, %468
  switch i32 %367, label %502 [
    i32 5, label %470
    i32 7, label %472
  ]

470:                                              ; preds = %462
  %471 = mul i32 %469, 36
  br label %474

472:                                              ; preds = %462
  %473 = shl i32 %469, 6
  br label %474

474:                                              ; preds = %472, %470
  %475 = phi i32 [ %473, %472 ], [ %471, %470 ]
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %479

477:                                              ; preds = %474
  %478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.set_qam_measurement) #14
  br label %502

479:                                              ; preds = %474
  %480 = udiv i32 %385, %475
  %481 = call i32 @llvm.umin.i32(i32 %480, i32 65535) #13
  %482 = trunc i32 %481 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %62) #13
  %483 = trunc i32 %481 to i8
  store i8 %483, ptr %62, align 2
  %484 = lshr i32 %481, 8
  %485 = trunc i32 %484 to i8
  %486 = getelementptr inbounds [2 x i8], ptr %62, i32 0, i32 1
  store i8 %485, ptr %486, align 1
  %487 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %370, i32 noundef 21364758, i16 noundef zeroext 2, ptr noundef nonnull %62, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %62) #13
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %491, label %489

489:                                              ; preds = %479
  %490 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam_measurement, i32 noundef %487) #14
  br label %502

491:                                              ; preds = %479
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %61) #13
  %492 = trunc i16 %466 to i8
  store i8 %492, ptr %61, align 2
  %493 = lshr i16 %466, 8
  %494 = trunc i16 %493 to i8
  %495 = getelementptr inbounds [2 x i8], ptr %61, i32 0, i32 1
  store i8 %494, ptr %495, align 1
  %496 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %370, i32 noundef 21364759, i16 noundef zeroext 2, ptr noundef nonnull %61, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %61) #13
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %500, label %498

498:                                              ; preds = %491
  %499 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam_measurement, i32 noundef %496) #14
  br label %502

500:                                              ; preds = %491
  %501 = getelementptr inbounds %struct.drxj_data, ptr %371, i32 0, i32 18
  store i16 %482, ptr %501, align 4
  store i16 %466, ptr %465, align 2
  br label %505

502:                                              ; preds = %498, %489, %477, %462, %457, %451, %445, %439, %430, %419, %406, %400, %398, %384, %364
  %503 = phi i32 [ %496, %498 ], [ %487, %489 ], [ %455, %457 ], [ %449, %451 ], [ %443, %445 ], [ %437, %439 ], [ %428, %430 ], [ %420, %419 ], [ -22, %462 ], [ -22, %400 ], [ -22, %406 ], [ -22, %384 ], [ -22, %364 ], [ -5, %477 ], [ -5, %398 ]
  %504 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %503) #14
  br label %1037

505:                                              ; preds = %500, %459, %334
  %506 = and i32 %2, 5
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %513, label %508

508:                                              ; preds = %505
  %509 = call fastcc i32 @set_frequency(ptr noundef %0)
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %513, label %511

511:                                              ; preds = %508
  %512 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %509) #14
  br label %1037

513:                                              ; preds = %508, %505
  br i1 %93, label %529, label %514

514:                                              ; preds = %513
  %515 = icmp eq ptr %83, null
  br i1 %515, label %520, label %516

516:                                              ; preds = %514
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %60) #13
  store i8 %277, ptr %60, align 2
  %517 = getelementptr inbounds [2 x i8], ptr %60, i32 0, i32 1
  store i8 %278, ptr %517, align 1
  %518 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299243, i16 noundef zeroext 2, ptr noundef nonnull %60, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %60) #13
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %523, label %520

520:                                              ; preds = %516, %514
  %521 = phi i32 [ %518, %516 ], [ -22, %514 ]
  %522 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %521) #14
  br label %1037

523:                                              ; preds = %516
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %59) #13
  store i8 %276, ptr %59, align 2
  %524 = getelementptr inbounds [2 x i8], ptr %59, i32 0, i32 1
  store i8 0, ptr %524, align 1
  %525 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25427990, i16 noundef zeroext 2, ptr noundef nonnull %59, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %59) #13
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %529, label %527

527:                                              ; preds = %523
  %528 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %525) #14
  br label %1037

529:                                              ; preds = %523, %513
  br i1 %89, label %880, label %530

530:                                              ; preds = %529
  %531 = load i8, ptr %85, align 4, !range !9
  %532 = icmp eq i8 %531, 0
  %533 = icmp eq ptr %83, null
  br i1 %532, label %534, label %542

534:                                              ; preds = %530
  br i1 %533, label %539, label %535

535:                                              ; preds = %534
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %58) #13
  store i8 2, ptr %58, align 2
  %536 = getelementptr inbounds [2 x i8], ptr %58, i32 0, i32 1
  store i8 0, ptr %536, align 1
  %537 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25624621, i16 noundef zeroext 2, ptr noundef nonnull %58, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %58) #13
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %543, label %539

539:                                              ; preds = %535, %534
  %540 = phi i32 [ %537, %535 ], [ -22, %534 ]
  %541 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %540) #14
  br label %1037

542:                                              ; preds = %530
  br i1 %533, label %547, label %543

543:                                              ; preds = %542, %535
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #13
  store i8 0, ptr %57, align 2
  %544 = getelementptr inbounds [2 x i8], ptr %57, i32 0, i32 1
  store i8 0, ptr %544, align 1
  %545 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25559056, i16 noundef zeroext 2, ptr noundef nonnull %57, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #13
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %550, label %547

547:                                              ; preds = %543, %542
  %548 = phi i32 [ %545, %543 ], [ -22, %542 ]
  %549 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %548) #14
  br label %1037

550:                                              ; preds = %543
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #13
  store i8 3, ptr %56, align 2
  %551 = getelementptr inbounds [2 x i8], ptr %56, i32 0, i32 1
  store i8 0, ptr %551, align 1
  %552 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25559057, i16 noundef zeroext 2, ptr noundef nonnull %56, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #13
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %556, label %554

554:                                              ; preds = %550
  %555 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %552) #14
  br label %1037

556:                                              ; preds = %550
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %55) #13
  store i8 2, ptr %55, align 2
  %557 = getelementptr inbounds [2 x i8], ptr %55, i32 0, i32 1
  store i8 0, ptr %557, align 1
  %558 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25559058, i16 noundef zeroext 2, ptr noundef nonnull %55, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %55) #13
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %562, label %560

560:                                              ; preds = %556
  %561 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %558) #14
  br label %1037

562:                                              ; preds = %556
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #13
  store i8 95, ptr %54, align 2
  %563 = getelementptr inbounds [2 x i8], ptr %54, i32 0, i32 1
  store i8 0, ptr %563, align 1
  %564 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 8593274, i16 noundef zeroext 2, ptr noundef nonnull %54, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #13
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %568, label %566

566:                                              ; preds = %562
  %567 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %564) #14
  br label %1037

568:                                              ; preds = %562
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #13
  store i8 3, ptr %53, align 2
  %569 = getelementptr inbounds [2 x i8], ptr %53, i32 0, i32 1
  store i8 0, ptr %569, align 1
  %570 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25624608, i16 noundef zeroext 2, ptr noundef nonnull %53, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #13
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %574, label %572

572:                                              ; preds = %568
  %573 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %570) #14
  br label %1037

574:                                              ; preds = %568
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #13
  store i8 0, ptr %52, align 2
  %575 = getelementptr inbounds [2 x i8], ptr %52, i32 0, i32 1
  store i8 0, ptr %575, align 1
  %576 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25624611, i16 noundef zeroext 2, ptr noundef nonnull %52, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #13
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %580, label %578

578:                                              ; preds = %574
  %579 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %576) #14
  br label %1037

580:                                              ; preds = %574
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #13
  store i8 -64, ptr %51, align 2
  %581 = getelementptr inbounds [2 x i8], ptr %51, i32 0, i32 1
  store i8 1, ptr %581, align 1
  %582 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25624612, i16 noundef zeroext 2, ptr noundef nonnull %51, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #13
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %586, label %584

584:                                              ; preds = %580
  %585 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %582) #14
  br label %1037

586:                                              ; preds = %580
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %50) #13
  store i8 0, ptr %50, align 2
  %587 = getelementptr inbounds [2 x i8], ptr %50, i32 0, i32 1
  store i8 0, ptr %587, align 1
  %588 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25624614, i16 noundef zeroext 2, ptr noundef nonnull %50, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %50) #13
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %592, label %590

590:                                              ; preds = %586
  %591 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %588) #14
  br label %1037

592:                                              ; preds = %586
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #13
  store i8 4, ptr %49, align 2
  %593 = getelementptr inbounds [2 x i8], ptr %49, i32 0, i32 1
  store i8 0, ptr %593, align 1
  %594 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25624619, i16 noundef zeroext 2, ptr noundef nonnull %49, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #13
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %598, label %596

596:                                              ; preds = %592
  %597 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %594) #14
  br label %1037

598:                                              ; preds = %592
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #13
  store i8 16, ptr %48, align 2
  %599 = getelementptr inbounds [2 x i8], ptr %48, i32 0, i32 1
  store i8 0, ptr %599, align 1
  %600 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25624620, i16 noundef zeroext 2, ptr noundef nonnull %48, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #13
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %604, label %602

602:                                              ; preds = %598
  %603 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %600) #14
  br label %1037

604:                                              ; preds = %598
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #13
  store i8 11, ptr %47, align 2
  %605 = getelementptr inbounds [2 x i8], ptr %47, i32 0, i32 1
  store i8 0, ptr %605, align 1
  %606 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25624618, i16 noundef zeroext 2, ptr noundef nonnull %47, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #13
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %610, label %608

608:                                              ; preds = %604
  %609 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %606) #14
  br label %1037

610:                                              ; preds = %604
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #13
  store i8 1, ptr %46, align 2
  %611 = getelementptr inbounds [2 x i8], ptr %46, i32 0, i32 1
  store i8 0, ptr %611, align 1
  %612 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25559063, i16 noundef zeroext 2, ptr noundef nonnull %46, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #13
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %616, label %614

614:                                              ; preds = %610
  %615 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %612) #14
  br label %1037

616:                                              ; preds = %610
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #13
  store i8 0, ptr %45, align 2
  %617 = getelementptr inbounds [2 x i8], ptr %45, i32 0, i32 1
  store i8 0, ptr %617, align 1
  %618 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25559061, i16 noundef zeroext 2, ptr noundef nonnull %45, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #13
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %622, label %620

620:                                              ; preds = %616
  %621 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %618) #14
  br label %1037

622:                                              ; preds = %616
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #13
  store i8 -104, ptr %44, align 2
  %623 = getelementptr inbounds [2 x i8], ptr %44, i32 0, i32 1
  store i8 58, ptr %623, align 1
  %624 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21430289, i16 noundef zeroext 2, ptr noundef nonnull %44, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #13
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %628, label %626

626:                                              ; preds = %622
  %627 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %624) #14
  br label %1037

628:                                              ; preds = %622
  %629 = getelementptr inbounds %struct.drxj_data, ptr %85, i32 0, i32 10
  %630 = load i32, ptr %629, align 4
  %631 = icmp eq i32 %630, 9
  br i1 %631, label %632, label %650

632:                                              ; preds = %628
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %43) #13
  store i8 2, ptr %43, align 2
  %633 = getelementptr inbounds [2 x i8], ptr %43, i32 0, i32 1
  store i8 0, ptr %633, align 1
  %634 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21430290, i16 noundef zeroext 2, ptr noundef nonnull %43, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %43) #13
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %638, label %636

636:                                              ; preds = %632
  %637 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %634) #14
  br label %1037

638:                                              ; preds = %632
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #13
  store i8 3, ptr %42, align 2
  %639 = getelementptr inbounds [2 x i8], ptr %42, i32 0, i32 1
  store i8 0, ptr %639, align 1
  %640 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21430291, i16 noundef zeroext 2, ptr noundef nonnull %42, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #13
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %644, label %642

642:                                              ; preds = %638
  %643 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %640) #14
  br label %1037

644:                                              ; preds = %638
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %41) #13
  store i8 5, ptr %41, align 2
  %645 = getelementptr inbounds [2 x i8], ptr %41, i32 0, i32 1
  store i8 0, ptr %645, align 1
  %646 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21430292, i16 noundef zeroext 2, ptr noundef nonnull %41, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %41) #13
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %689, label %648

648:                                              ; preds = %644
  %649 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %646) #14
  br label %1037

650:                                              ; preds = %628
  %651 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 3
  %652 = load i32, ptr %651, align 4
  switch i32 %652, label %1037 [
    i32 3, label %653
    i32 5, label %653
    i32 7, label %653
    i32 4, label %671
    i32 6, label %671
  ]

653:                                              ; preds = %650, %650, %650
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #13
  store i8 3, ptr %40, align 2
  %654 = getelementptr inbounds [2 x i8], ptr %40, i32 0, i32 1
  store i8 0, ptr %654, align 1
  %655 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21430290, i16 noundef zeroext 2, ptr noundef nonnull %40, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #13
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %659, label %657

657:                                              ; preds = %653
  %658 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %655) #14
  br label %1037

659:                                              ; preds = %653
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %39) #13
  store i8 4, ptr %39, align 2
  %660 = getelementptr inbounds [2 x i8], ptr %39, i32 0, i32 1
  store i8 0, ptr %660, align 1
  %661 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21430291, i16 noundef zeroext 2, ptr noundef nonnull %39, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %39) #13
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %665, label %663

663:                                              ; preds = %659
  %664 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %661) #14
  br label %1037

665:                                              ; preds = %659
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #13
  store i8 5, ptr %38, align 2
  %666 = getelementptr inbounds [2 x i8], ptr %38, i32 0, i32 1
  store i8 0, ptr %666, align 1
  %667 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21430292, i16 noundef zeroext 2, ptr noundef nonnull %38, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #13
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %689, label %669

669:                                              ; preds = %665
  %670 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %667) #14
  br label %1037

671:                                              ; preds = %650, %650
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #13
  store i8 3, ptr %37, align 2
  %672 = getelementptr inbounds [2 x i8], ptr %37, i32 0, i32 1
  store i8 0, ptr %672, align 1
  %673 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21430290, i16 noundef zeroext 2, ptr noundef nonnull %37, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #13
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %677, label %675

675:                                              ; preds = %671
  %676 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %673) #14
  br label %1037

677:                                              ; preds = %671
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #13
  store i8 5, ptr %36, align 2
  %678 = getelementptr inbounds [2 x i8], ptr %36, i32 0, i32 1
  store i8 0, ptr %678, align 1
  %679 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21430291, i16 noundef zeroext 2, ptr noundef nonnull %36, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #13
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %683, label %681

681:                                              ; preds = %677
  %682 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %679) #14
  br label %1037

683:                                              ; preds = %677
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #13
  store i8 6, ptr %35, align 2
  %684 = getelementptr inbounds [2 x i8], ptr %35, i32 0, i32 1
  store i8 0, ptr %684, align 1
  %685 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21430292, i16 noundef zeroext 2, ptr noundef nonnull %35, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #13
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %689, label %687

687:                                              ; preds = %683
  %688 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %685) #14
  br label %1037

689:                                              ; preds = %683, %665, %644
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #13
  store i8 7, ptr %34, align 2
  %690 = getelementptr inbounds [2 x i8], ptr %34, i32 0, i32 1
  store i8 0, ptr %690, align 1
  %691 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299216, i16 noundef zeroext 2, ptr noundef nonnull %34, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #13
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %695, label %693

693:                                              ; preds = %689
  %694 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %691) #14
  br label %1037

695:                                              ; preds = %689
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #13
  store i8 3, ptr %33, align 2
  %696 = getelementptr inbounds [2 x i8], ptr %33, i32 0, i32 1
  store i8 0, ptr %696, align 1
  %697 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299242, i16 noundef zeroext 2, ptr noundef nonnull %33, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #13
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %701, label %699

699:                                              ; preds = %695
  %700 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %697) #14
  br label %1037

701:                                              ; preds = %695
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #13
  store i8 4, ptr %32, align 2
  %702 = getelementptr inbounds [2 x i8], ptr %32, i32 0, i32 1
  store i8 0, ptr %702, align 1
  %703 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299240, i16 noundef zeroext 2, ptr noundef nonnull %32, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #13
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %707, label %705

705:                                              ; preds = %701
  %706 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %703) #14
  br label %1037

707:                                              ; preds = %701
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #13
  store i8 4, ptr %31, align 2
  %708 = getelementptr inbounds [2 x i8], ptr %31, i32 0, i32 1
  store i8 0, ptr %708, align 1
  %709 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299241, i16 noundef zeroext 2, ptr noundef nonnull %31, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #13
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %713, label %711

711:                                              ; preds = %707
  %712 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %709) #14
  br label %1037

713:                                              ; preds = %707
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #13
  store i8 7, ptr %30, align 2
  %714 = getelementptr inbounds [2 x i8], ptr %30, i32 0, i32 1
  store i8 0, ptr %714, align 1
  %715 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299216, i16 noundef zeroext 2, ptr noundef nonnull %30, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #13
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %719, label %717

717:                                              ; preds = %713
  %718 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %715) #14
  br label %1037

719:                                              ; preds = %713
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #13
  store i8 1, ptr %29, align 2
  %720 = getelementptr inbounds [2 x i8], ptr %29, i32 0, i32 1
  store i8 0, ptr %720, align 1
  %721 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299224, i16 noundef zeroext 2, ptr noundef nonnull %29, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #13
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %725, label %723

723:                                              ; preds = %719
  %724 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %721) #14
  br label %1037

725:                                              ; preds = %719
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #13
  store i8 1, ptr %28, align 2
  %726 = getelementptr inbounds [2 x i8], ptr %28, i32 0, i32 1
  store i8 0, ptr %726, align 1
  %727 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299225, i16 noundef zeroext 2, ptr noundef nonnull %28, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #13
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %731, label %729

729:                                              ; preds = %725
  %730 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %727) #14
  br label %1037

731:                                              ; preds = %725
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #13
  store i8 1, ptr %27, align 2
  %732 = getelementptr inbounds [2 x i8], ptr %27, i32 0, i32 1
  store i8 0, ptr %732, align 1
  %733 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299226, i16 noundef zeroext 2, ptr noundef nonnull %27, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #13
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %737, label %735

735:                                              ; preds = %731
  %736 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %733) #14
  br label %1037

737:                                              ; preds = %731
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #13
  store i8 1, ptr %26, align 2
  %738 = getelementptr inbounds [2 x i8], ptr %26, i32 0, i32 1
  store i8 0, ptr %738, align 1
  %739 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299227, i16 noundef zeroext 2, ptr noundef nonnull %26, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #13
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %743, label %741

741:                                              ; preds = %737
  %742 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %739) #14
  br label %1037

743:                                              ; preds = %737
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #13
  store i8 2, ptr %25, align 2
  %744 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  store i8 0, ptr %744, align 1
  %745 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299228, i16 noundef zeroext 2, ptr noundef nonnull %25, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #13
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %749, label %747

747:                                              ; preds = %743
  %748 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %745) #14
  br label %1037

749:                                              ; preds = %743
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #13
  store i8 2, ptr %24, align 2
  %750 = getelementptr inbounds [2 x i8], ptr %24, i32 0, i32 1
  store i8 0, ptr %750, align 1
  %751 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299229, i16 noundef zeroext 2, ptr noundef nonnull %24, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #13
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %755, label %753

753:                                              ; preds = %749
  %754 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %751) #14
  br label %1037

755:                                              ; preds = %749
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #13
  store i8 2, ptr %23, align 2
  %756 = getelementptr inbounds [2 x i8], ptr %23, i32 0, i32 1
  store i8 0, ptr %756, align 1
  %757 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299230, i16 noundef zeroext 2, ptr noundef nonnull %23, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #13
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %761, label %759

759:                                              ; preds = %755
  %760 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %757) #14
  br label %1037

761:                                              ; preds = %755
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #13
  store i8 2, ptr %22, align 2
  %762 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  store i8 0, ptr %762, align 1
  %763 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299231, i16 noundef zeroext 2, ptr noundef nonnull %22, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #13
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %767, label %765

765:                                              ; preds = %761
  %766 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %763) #14
  br label %1037

767:                                              ; preds = %761
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #13
  store i8 2, ptr %21, align 2
  %768 = getelementptr inbounds [2 x i8], ptr %21, i32 0, i32 1
  store i8 0, ptr %768, align 1
  %769 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299232, i16 noundef zeroext 2, ptr noundef nonnull %21, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #13
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %773, label %771

771:                                              ; preds = %767
  %772 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %769) #14
  br label %1037

773:                                              ; preds = %767
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i8 2, ptr %20, align 2
  %774 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  store i8 0, ptr %774, align 1
  %775 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299233, i16 noundef zeroext 2, ptr noundef nonnull %20, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %779, label %777

777:                                              ; preds = %773
  %778 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %775) #14
  br label %1037

779:                                              ; preds = %773
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 2, ptr %19, align 2
  %780 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 0, ptr %780, align 1
  %781 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299234, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %785, label %783

783:                                              ; preds = %779
  %784 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %781) #14
  br label %1037

785:                                              ; preds = %779
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i8 3, ptr %18, align 2
  %786 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  store i8 0, ptr %786, align 1
  %787 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299235, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %791, label %789

789:                                              ; preds = %785
  %790 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %787) #14
  br label %1037

791:                                              ; preds = %785
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #13
  store i8 3, ptr %17, align 2
  %792 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  store i8 0, ptr %792, align 1
  %793 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299236, i16 noundef zeroext 2, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #13
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %797, label %795

795:                                              ; preds = %791
  %796 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %793) #14
  br label %1037

797:                                              ; preds = %791
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i8 4, ptr %16, align 2
  %798 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  store i8 0, ptr %798, align 1
  %799 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299237, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %803, label %801

801:                                              ; preds = %797
  %802 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %799) #14
  br label %1037

803:                                              ; preds = %797
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i8 4, ptr %15, align 2
  %804 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 0, ptr %804, align 1
  %805 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 21299238, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %809, label %807

807:                                              ; preds = %803
  %808 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %805) #14
  br label %1037

809:                                              ; preds = %803
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i8 1, ptr %14, align 2
  %810 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  store i8 0, ptr %810, align 1
  %811 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25296916, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %815, label %813

813:                                              ; preds = %809
  %814 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %811) #14
  br label %1037

815:                                              ; preds = %809
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 1, ptr %13, align 2
  %816 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %816, align 1
  %817 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25427988, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %821, label %819

819:                                              ; preds = %815
  %820 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %817) #14
  br label %1037

821:                                              ; preds = %815
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 1, ptr %12, align 2
  %822 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %822, align 1
  %823 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25559059, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %827, label %825

825:                                              ; preds = %821
  %826 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %823) #14
  br label %1037

827:                                              ; preds = %821
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 0, ptr %11, align 2
  %828 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %828, align 1
  %829 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25559063, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %833, label %831

831:                                              ; preds = %827
  %832 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %829) #14
  br label %1037

833:                                              ; preds = %827
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 0, ptr %10, align 2
  %834 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 0, ptr %834, align 1
  %835 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 8593095, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %839, label %837

837:                                              ; preds = %833
  %838 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %835) #14
  br label %1037

839:                                              ; preds = %833
  %840 = call fastcc i32 @set_iqm_af(ptr noundef %0, i1 noundef zeroext true)
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %844, label %842

842:                                              ; preds = %839
  %843 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %840) #14
  br label %1037

844:                                              ; preds = %839
  %845 = call fastcc i32 @adc_synchronization(ptr noundef %0)
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %849, label %847

847:                                              ; preds = %844
  %848 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %845) #14
  br label %1037

849:                                              ; preds = %844
  %850 = call fastcc i32 @init_agc(ptr noundef %0)
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %854, label %852

852:                                              ; preds = %849
  %853 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %850) #14
  br label %1037

854:                                              ; preds = %849
  %855 = getelementptr inbounds %struct.drxj_data, ptr %85, i32 0, i32 48
  %856 = call fastcc i32 @set_agc_if(ptr noundef %0, ptr noundef %855)
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %860, label %858

858:                                              ; preds = %854
  %859 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %856) #14
  br label %1037

860:                                              ; preds = %854
  %861 = getelementptr inbounds %struct.drxj_data, ptr %85, i32 0, i32 47
  %862 = call fastcc i32 @set_agc_rf(ptr noundef %0, ptr noundef %861)
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %866, label %864

864:                                              ; preds = %860
  %865 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %862) #14
  br label %1037

866:                                              ; preds = %860
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %81) #13
  store i64 9, ptr %81, align 8
  %867 = getelementptr inbounds %struct.drxj_data, ptr %85, i32 0, i32 51
  %868 = load i16, ptr %867, align 4
  %869 = getelementptr inbounds %struct.drxj_cfg_afe_gain, ptr %81, i32 0, i32 1
  store i16 %868, ptr %869, align 4
  %870 = call fastcc i32 @ctrl_set_cfg_afe_gain(ptr noundef %0, ptr noundef nonnull %81)
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %874, label %872

872:                                              ; preds = %866
  %873 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %870) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %81) #13
  br label %1037

874:                                              ; preds = %866
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %81) #13
  %875 = getelementptr inbounds %struct.drxj_data, ptr %85, i32 0, i32 53
  %876 = call fastcc i32 @ctrl_set_cfg_pre_saw(ptr noundef %0, ptr noundef %875)
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %881, label %878

878:                                              ; preds = %874
  %879 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %876) #14
  br label %1037

880:                                              ; preds = %529
  br i1 %91, label %1016, label %881

881:                                              ; preds = %880, %874
  %882 = getelementptr inbounds %struct.drxj_data, ptr %85, i32 0, i32 10
  %883 = load i32, ptr %882, align 4
  switch i32 %883, label %927 [
    i32 8, label %884
    i32 9, label %894
    i32 10, label %917
  ]

884:                                              ; preds = %881
  %885 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %83, i32 noundef 25559072, i16 noundef zeroext 56, ptr noundef nonnull @set_qam.qam_a_taps, i32 noundef 0)
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %889, label %887

887:                                              ; preds = %884
  %888 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %885) #14
  br label %1037

889:                                              ; preds = %884
  %890 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %83, i32 noundef 25559104, i16 noundef zeroext 56, ptr noundef nonnull @set_qam.qam_a_taps, i32 noundef 0)
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %927, label %892

892:                                              ; preds = %889
  %893 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %890) #14
  br label %1037

894:                                              ; preds = %881
  %895 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 3
  %896 = load i32, ptr %895, align 4
  switch i32 %896, label %1037 [
    i32 5, label %897
    i32 7, label %907
  ]

897:                                              ; preds = %894
  %898 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %83, i32 noundef 25559072, i16 noundef zeroext 56, ptr noundef nonnull @set_qam.qam_b64_taps, i32 noundef 0)
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %902, label %900

900:                                              ; preds = %897
  %901 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %898) #14
  br label %1037

902:                                              ; preds = %897
  %903 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %83, i32 noundef 25559104, i16 noundef zeroext 56, ptr noundef nonnull @set_qam.qam_b64_taps, i32 noundef 0)
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %927, label %905

905:                                              ; preds = %902
  %906 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %903) #14
  br label %1037

907:                                              ; preds = %894
  %908 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %83, i32 noundef 25559072, i16 noundef zeroext 56, ptr noundef nonnull @set_qam.qam_b256_taps, i32 noundef 0)
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %912, label %910

910:                                              ; preds = %907
  %911 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %908) #14
  br label %1037

912:                                              ; preds = %907
  %913 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %83, i32 noundef 25559104, i16 noundef zeroext 56, ptr noundef nonnull @set_qam.qam_b256_taps, i32 noundef 0)
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %927, label %915

915:                                              ; preds = %912
  %916 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %913) #14
  br label %1037

917:                                              ; preds = %881
  %918 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %83, i32 noundef 25559072, i16 noundef zeroext 56, ptr noundef nonnull @set_qam.qam_c_taps, i32 noundef 0)
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %922, label %920

920:                                              ; preds = %917
  %921 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %918) #14
  br label %1037

922:                                              ; preds = %917
  %923 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef %83, i32 noundef 25559104, i16 noundef zeroext 56, ptr noundef nonnull @set_qam.qam_c_taps, i32 noundef 0)
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %927, label %925

925:                                              ; preds = %922
  %926 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %923) #14
  br label %1037

927:                                              ; preds = %922, %912, %902, %889, %881
  %928 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 3
  %929 = load i32, ptr %928, align 4
  switch i32 %929, label %1037 [
    i32 3, label %930
    i32 4, label %935
    i32 5, label %940
    i32 6, label %945
    i32 7, label %950
  ]

930:                                              ; preds = %927
  %931 = call fastcc i32 @set_qam16(ptr noundef %0)
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %955, label %933

933:                                              ; preds = %930
  %934 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %931) #14
  br label %1037

935:                                              ; preds = %927
  %936 = call fastcc i32 @set_qam32(ptr noundef %0)
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %955, label %938

938:                                              ; preds = %935
  %939 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %936) #14
  br label %1037

940:                                              ; preds = %927
  %941 = call fastcc i32 @set_qam64(ptr noundef %0)
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %955, label %943

943:                                              ; preds = %940
  %944 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %941) #14
  br label %1037

945:                                              ; preds = %927
  %946 = call fastcc i32 @set_qam128(ptr noundef %0)
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %955, label %948

948:                                              ; preds = %945
  %949 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %946) #14
  br label %1037

950:                                              ; preds = %927
  %951 = call fastcc i32 @set_qam256(ptr noundef %0)
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %955, label %953

953:                                              ; preds = %950
  %954 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %951) #14
  br label %1037

955:                                              ; preds = %950, %945, %940, %935, %930
  br i1 %89, label %1006, label %956

956:                                              ; preds = %955
  %957 = icmp eq ptr %83, null
  br i1 %957, label %962, label %958

958:                                              ; preds = %956
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 0, ptr %9, align 2
  %959 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 0, ptr %959, align 1
  %960 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25559061, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %965, label %962

962:                                              ; preds = %958, %956
  %963 = phi i32 [ %960, %958 ], [ -22, %956 ]
  %964 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %963) #14
  br label %1037

965:                                              ; preds = %958
  %966 = call fastcc i32 @set_mpegtei_handling(ptr noundef %0)
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %970, label %968

968:                                              ; preds = %965
  %969 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %966) #14
  br label %1037

970:                                              ; preds = %965
  %971 = load ptr, ptr %0, align 4
  %972 = load ptr, ptr %84, align 4
  %973 = icmp eq ptr %971, null
  br i1 %973, label %990, label %974

974:                                              ; preds = %970
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i16 0, ptr %8, align 2, !annotation !8
  %975 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %971, i32 noundef 38010952, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  %976 = load i8, ptr %8, align 2
  %977 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %978 = load i8, ptr %977, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %979 = icmp eq i32 %975, 0
  br i1 %979, label %980, label %990

980:                                              ; preds = %974
  %981 = and i8 %976, -3
  %982 = getelementptr inbounds %struct.drxj_data, ptr %972, i32 0, i32 63
  %983 = load i8, ptr %982, align 1, !range !9
  %984 = icmp eq i8 %983, 0
  %985 = select i1 %984, i8 0, i8 2
  %986 = or i8 %985, %981
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 %986, ptr %7, align 2
  %987 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 %978, ptr %987, align 1
  %988 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %971, i32 noundef 38010952, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %994, label %990

990:                                              ; preds = %980, %974, %970
  %991 = phi i32 [ %975, %974 ], [ -22, %970 ], [ %988, %980 ]
  %992 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.bit_reverse_mpeg_output, i32 noundef %991) #14
  %993 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %991) #14
  br label %1037

994:                                              ; preds = %980
  %995 = call fastcc i32 @set_mpeg_start_width(ptr noundef %0)
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %999, label %997

997:                                              ; preds = %994
  %998 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %995) #14
  br label %1037

999:                                              ; preds = %994
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %82) #13
  %1000 = getelementptr inbounds %struct.drx_common_attr, ptr %87, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %82, ptr noundef align 4 dereferenceable(20) %1000, i32 20, i1 false)
  store i8 1, ptr %82, align 4
  %1001 = call fastcc i32 @ctrl_set_cfg_mpeg_output(ptr noundef %0, ptr noundef nonnull %82)
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1005, label %1003

1003:                                             ; preds = %999
  %1004 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %1001) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %82) #13
  br label %1037

1005:                                             ; preds = %999
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %82) #13
  br label %1007

1006:                                             ; preds = %955
  br i1 %91, label %1016, label %1007

1007:                                             ; preds = %1006, %1005
  store i16 516, ptr %80, align 4
  %1008 = getelementptr inbounds %struct.drxjscu_cmd, ptr %80, i32 0, i32 1
  store i16 0, ptr %1008, align 2
  %1009 = getelementptr inbounds %struct.drxjscu_cmd, ptr %80, i32 0, i32 2
  store i16 1, ptr %1009, align 4
  %1010 = getelementptr inbounds %struct.drxjscu_cmd, ptr %80, i32 0, i32 3
  store ptr null, ptr %1010, align 4
  %1011 = getelementptr inbounds %struct.drxjscu_cmd, ptr %80, i32 0, i32 4
  store ptr %77, ptr %1011, align 4
  %1012 = call fastcc i32 @scu_command(ptr noundef %83, ptr noundef nonnull %80)
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1016, label %1014

1014:                                             ; preds = %1007
  %1015 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %1012) #14
  br label %1037

1016:                                             ; preds = %1007, %1006, %880
  %1017 = icmp eq ptr %83, null
  br i1 %1017, label %1022, label %1018

1018:                                             ; preds = %1016
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 1, ptr %6, align 2
  %1019 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %1019, align 1
  %1020 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 25165824, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1025, label %1022

1022:                                             ; preds = %1018, %1016
  %1023 = phi i32 [ %1020, %1018 ], [ -22, %1016 ]
  %1024 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %1023) #14
  br label %1037

1025:                                             ; preds = %1018
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 1, ptr %5, align 2
  %1026 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %1026, align 1
  %1027 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 20971520, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1031, label %1029

1029:                                             ; preds = %1025
  %1030 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %1027) #14
  br label %1037

1031:                                             ; preds = %1025
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 1, ptr %4, align 2
  %1032 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %1032, align 1
  %1033 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %83, i32 noundef 37748736, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1037, label %1035

1035:                                             ; preds = %1031
  %1036 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam, i32 noundef %1033) #14
  br label %1037

1037:                                             ; preds = %1035, %1031, %1029, %1022, %1014, %1003, %997, %990, %968, %962, %953, %948, %943, %938, %933, %927, %925, %920, %915, %910, %905, %900, %894, %892, %887, %878, %872, %864, %858, %852, %847, %842, %837, %831, %825, %819, %813, %807, %801, %795, %789, %783, %777, %771, %765, %759, %753, %747, %741, %735, %729, %723, %717, %711, %705, %699, %693, %687, %681, %675, %669, %663, %657, %650, %648, %642, %636, %626, %620, %614, %608, %602, %596, %590, %584, %578, %572, %566, %560, %554, %547, %539, %527, %520, %511, %502, %362, %347, %342, %332, %323, %317, %311, %305, %299, %293, %286, %251, %109, %98
  %1038 = phi i32 [ -5, %109 ], [ -22, %98 ], [ -22, %251 ], [ -5, %650 ], [ -5, %894 ], [ -5, %927 ], [ 0, %1031 ], [ %287, %286 ], [ %291, %293 ], [ %297, %299 ], [ %303, %305 ], [ %309, %311 ], [ %315, %317 ], [ %321, %323 ], [ %330, %332 ], [ %340, %342 ], [ %345, %347 ], [ %360, %362 ], [ %503, %502 ], [ %509, %511 ], [ %521, %520 ], [ %525, %527 ], [ %548, %547 ], [ %552, %554 ], [ %558, %560 ], [ %564, %566 ], [ %570, %572 ], [ %576, %578 ], [ %582, %584 ], [ %588, %590 ], [ %594, %596 ], [ %600, %602 ], [ %606, %608 ], [ %612, %614 ], [ %618, %620 ], [ %624, %626 ], [ %634, %636 ], [ %640, %642 ], [ %646, %648 ], [ %691, %693 ], [ %697, %699 ], [ %703, %705 ], [ %709, %711 ], [ %715, %717 ], [ %721, %723 ], [ %727, %729 ], [ %733, %735 ], [ %739, %741 ], [ %745, %747 ], [ %751, %753 ], [ %757, %759 ], [ %763, %765 ], [ %769, %771 ], [ %775, %777 ], [ %781, %783 ], [ %787, %789 ], [ %793, %795 ], [ %799, %801 ], [ %805, %807 ], [ %811, %813 ], [ %817, %819 ], [ %823, %825 ], [ %829, %831 ], [ %835, %837 ], [ %840, %842 ], [ %845, %847 ], [ %850, %852 ], [ %856, %858 ], [ %862, %864 ], [ %870, %872 ], [ %876, %878 ], [ %885, %887 ], [ %890, %892 ], [ %951, %953 ], [ %963, %962 ], [ %966, %968 ], [ %991, %990 ], [ %995, %997 ], [ %1001, %1003 ], [ %1012, %1014 ], [ %1023, %1022 ], [ %1027, %1029 ], [ %1033, %1035 ], [ %946, %948 ], [ %941, %943 ], [ %936, %938 ], [ %931, %933 ], [ %908, %910 ], [ %913, %915 ], [ %898, %900 ], [ %903, %905 ], [ %918, %920 ], [ %923, %925 ], [ %673, %675 ], [ %679, %681 ], [ %685, %687 ], [ %655, %657 ], [ %661, %663 ], [ %667, %669 ], [ %540, %539 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %80) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %79) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %78) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %77) #13
  ret i32 %1038
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @qam64auto(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.i2c_device_addr, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  store i32 1, ptr %2, align 4
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = tail call i32 @jiffies_to_msecs(i32 noundef %15) #13
  %17 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 43, i32 1, i32 0, i32 1
  %18 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %19 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 2
  %21 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %22 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %23 = getelementptr inbounds %struct.drxj_data, ptr %11, i32 0, i32 14
  %24 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %25 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  br label %26

26:                                               ; preds = %143, %3
  %27 = phi i32 [ 0, %3 ], [ %138, %143 ]
  %28 = phi i32 [ 0, %3 ], [ %139, %143 ]
  %29 = phi i32 [ %16, %3 ], [ %140, %143 ]
  %30 = phi i32 [ 0, %3 ], [ %141, %143 ]
  %31 = call fastcc i32 @ctrl_lock_status(ptr noundef %0, ptr noundef %2)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %149

33:                                               ; preds = %26
  switch i32 %30, label %137 [
    i32 0, label %34
    i32 1, label %47
    i32 2, label %71
    i32 4, label %103
  ]

34:                                               ; preds = %33
  %35 = load i32, ptr %2, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %137

37:                                               ; preds = %34
  %38 = call fastcc i32 @ctrl_get_qam_sig_quality(ptr noundef %0)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %149

40:                                               ; preds = %37
  %41 = load i64, ptr %17, align 1
  %42 = icmp sgt i64 %41, 20800
  br i1 %42, label %43, label %137

43:                                               ; preds = %40
  %44 = add i32 %27, 200
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = call i32 @jiffies_to_msecs(i32 noundef %45) #13
  br label %137

47:                                               ; preds = %33
  %48 = load i32, ptr %2, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %137

50:                                               ; preds = %47
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = call i32 @jiffies_to_msecs(i32 noundef %51) #13
  %53 = sub i32 %52, %28
  %54 = icmp ugt i32 %53, 150
  br i1 %54, label %55, label %137

55:                                               ; preds = %50
  %56 = load ptr, ptr %0, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %149, label %58

58:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i16 0, ptr %9, align 2, !annotation !8
  %59 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %56, i32 noundef 21430289, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  %60 = load i8, ptr %9, align 2
  %61 = load i8, ptr %24, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %62 = icmp eq i32 %59, 0
  br i1 %62, label %63, label %149

63:                                               ; preds = %58
  %64 = load ptr, ptr %0, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %149, label %66

66:                                               ; preds = %63
  %67 = or i8 %60, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 %67, ptr %8, align 2
  store i8 %61, ptr %25, align 1
  %68 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %64, i32 noundef 21430289, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %149

70:                                               ; preds = %66
  call void @msleep(i32 noundef 10) #13
  br label %137

71:                                               ; preds = %33
  %72 = load i32, ptr %2, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %137

74:                                               ; preds = %71
  %75 = load i32, ptr %20, align 4
  %76 = icmp eq i32 %75, 255
  br i1 %76, label %77, label %98

77:                                               ; preds = %74
  %78 = load ptr, ptr %0, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %149, label %80

80:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i16 0, ptr %7, align 2, !annotation !8
  %81 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %78, i32 noundef 21430289, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  %82 = load i8, ptr %7, align 2
  %83 = load i8, ptr %21, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %84 = icmp eq i32 %81, 0
  br i1 %84, label %85, label %149

85:                                               ; preds = %80
  %86 = load ptr, ptr %0, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %149, label %88

88:                                               ; preds = %85
  %89 = and i8 %82, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 %89, ptr %6, align 2
  store i8 %83, ptr %22, align 1
  %90 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %86, i32 noundef 21430289, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %149

92:                                               ; preds = %88
  store i32 1, ptr %23, align 4
  %93 = call fastcc i32 @qam_flip_spec(ptr noundef %0)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %149

95:                                               ; preds = %92
  %96 = load volatile i32, ptr @jiffies, align 64
  %97 = call i32 @jiffies_to_msecs(i32 noundef %96) #13
  br label %137

98:                                               ; preds = %74
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = call i32 @jiffies_to_msecs(i32 noundef %99) #13
  %101 = sub i32 -900, %27
  %102 = add i32 %101, %100
  br label %137

103:                                              ; preds = %33
  %104 = load i32, ptr %2, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %137

106:                                              ; preds = %103
  %107 = load volatile i32, ptr @jiffies, align 64
  %108 = call i32 @jiffies_to_msecs(i32 noundef %107) #13
  %109 = sub i32 %108, %28
  %110 = icmp ugt i32 %109, 150
  br i1 %110, label %111, label %137

111:                                              ; preds = %106
  %112 = call fastcc i32 @ctrl_get_qam_sig_quality(ptr noundef %0)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %149

114:                                              ; preds = %111
  %115 = load i64, ptr %17, align 1
  %116 = icmp sgt i64 %115, 20800
  br i1 %116, label %117, label %137

117:                                              ; preds = %114
  %118 = load ptr, ptr %0, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %149, label %120

120:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  %121 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %118, i32 noundef 21430289, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  %122 = load i8, ptr %5, align 2
  %123 = load i8, ptr %18, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %124 = icmp eq i32 %121, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %120
  %126 = load ptr, ptr %0, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %149, label %128

128:                                              ; preds = %125
  %129 = or i8 %122, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 %129, ptr %4, align 2
  store i8 %123, ptr %19, align 1
  %130 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %126, i32 noundef 21430289, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = load volatile i32, ptr @jiffies, align 64
  %134 = call i32 @jiffies_to_msecs(i32 noundef %133) #13
  %135 = sub i32 -900, %27
  %136 = add i32 %135, %134
  br label %137

137:                                              ; preds = %132, %114, %106, %103, %98, %95, %71, %70, %50, %47, %43, %40, %34, %33
  %138 = phi i32 [ %27, %33 ], [ %27, %132 ], [ %27, %114 ], [ %27, %106 ], [ %27, %103 ], [ 0, %95 ], [ %27, %98 ], [ %27, %71 ], [ %27, %70 ], [ %27, %50 ], [ %27, %47 ], [ %44, %43 ], [ %27, %40 ], [ %27, %34 ]
  %139 = phi i32 [ %28, %33 ], [ %28, %132 ], [ %28, %114 ], [ %28, %106 ], [ %28, %103 ], [ %97, %95 ], [ %28, %98 ], [ %28, %71 ], [ %28, %70 ], [ %28, %50 ], [ %28, %47 ], [ %46, %43 ], [ %28, %40 ], [ %28, %34 ]
  %140 = phi i32 [ %29, %33 ], [ %136, %132 ], [ %29, %114 ], [ %29, %106 ], [ %29, %103 ], [ %97, %95 ], [ %102, %98 ], [ %29, %71 ], [ %29, %70 ], [ %29, %50 ], [ %29, %47 ], [ %29, %43 ], [ %29, %40 ], [ %29, %34 ]
  %141 = phi i32 [ %30, %33 ], [ 4, %132 ], [ 4, %114 ], [ 4, %106 ], [ 4, %103 ], [ 4, %95 ], [ 2, %98 ], [ 2, %71 ], [ 2, %70 ], [ 1, %50 ], [ 1, %47 ], [ 1, %43 ], [ 0, %40 ], [ 0, %34 ]
  call void @msleep(i32 noundef 10) #13
  %142 = load i32, ptr %2, align 4
  switch i32 %142, label %143 [
    i32 11, label %152
    i32 0, label %152
  ]

143:                                              ; preds = %137
  %144 = load volatile i32, ptr @jiffies, align 64
  %145 = call i32 @jiffies_to_msecs(i32 noundef %144) #13
  %146 = sub i32 %145, %140
  %147 = add i32 %138, 900
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %26, label %152

149:                                              ; preds = %128, %125, %120, %117, %111, %92, %88, %85, %80, %77, %66, %63, %58, %55, %37, %26
  %150 = phi i32 [ %31, %26 ], [ %38, %37 ], [ %59, %58 ], [ -22, %55 ], [ %68, %66 ], [ -22, %63 ], [ %81, %80 ], [ -22, %77 ], [ %90, %88 ], [ -22, %85 ], [ %93, %92 ], [ %112, %111 ], [ %121, %120 ], [ -22, %117 ], [ %130, %128 ], [ -22, %125 ]
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.qam64auto, i32 noundef %150) #14
  br label %152

152:                                              ; preds = %149, %143, %137, %137
  %153 = phi i32 [ %150, %149 ], [ 0, %137 ], [ 0, %137 ], [ 0, %143 ]
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @qam256auto(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.i2c_device_addr, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  store i32 1, ptr %2, align 4
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = tail call i32 @jiffies_to_msecs(i32 noundef %9) #13
  %11 = getelementptr inbounds %struct.drx_channel, ptr %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.drxj_data, ptr %5, i32 0, i32 14
  %13 = getelementptr inbounds %struct.drx39xxj_state, ptr %8, i32 0, i32 2, i32 8, i32 43, i32 1, i32 0, i32 1
  br label %14

14:                                               ; preds = %60, %3
  %15 = phi i32 [ 0, %3 ], [ %53, %60 ]
  %16 = phi i32 [ %10, %3 ], [ %54, %60 ]
  %17 = phi i32 [ 0, %3 ], [ %55, %60 ]
  %18 = phi i32 [ 200, %3 ], [ %56, %60 ]
  %19 = tail call fastcc i32 @ctrl_lock_status(ptr noundef %0, ptr noundef %2)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %66

21:                                               ; preds = %14
  switch i32 %15, label %52 [
    i32 0, label %22
    i32 1, label %35
  ]

22:                                               ; preds = %21
  %23 = load i32, ptr %2, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = tail call fastcc i32 @ctrl_get_qam_sig_quality(ptr noundef %0)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  %29 = load i64, ptr %13, align 1
  %30 = icmp sgt i64 %29, 26800
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = add i32 %18, 200
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = tail call i32 @jiffies_to_msecs(i32 noundef %33) #13
  br label %52

35:                                               ; preds = %21
  %36 = load i32, ptr %2, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i32, ptr %11, align 4
  %40 = icmp eq i32 %39, 255
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = tail call i32 @jiffies_to_msecs(i32 noundef %42) #13
  %44 = sub i32 %43, %17
  %45 = icmp ugt i32 %44, 150
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  store i32 1, ptr %12, align 4
  %47 = tail call fastcc i32 @qam_flip_spec(ptr noundef %0)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load volatile i32, ptr @jiffies, align 64
  %51 = tail call i32 @jiffies_to_msecs(i32 noundef %50) #13
  br label %52

52:                                               ; preds = %49, %41, %38, %35, %31, %28, %22, %21
  %53 = phi i32 [ %15, %21 ], [ 4, %49 ], [ 1, %41 ], [ 1, %38 ], [ 1, %35 ], [ 1, %31 ], [ 0, %28 ], [ 0, %22 ]
  %54 = phi i32 [ %16, %21 ], [ %51, %49 ], [ %16, %41 ], [ %16, %38 ], [ %16, %35 ], [ %16, %31 ], [ %16, %28 ], [ %16, %22 ]
  %55 = phi i32 [ %17, %21 ], [ %17, %49 ], [ %17, %41 ], [ %17, %38 ], [ %17, %35 ], [ %34, %31 ], [ %17, %28 ], [ %17, %22 ]
  %56 = phi i32 [ %18, %21 ], [ -450, %49 ], [ %18, %41 ], [ %18, %38 ], [ %18, %35 ], [ %32, %31 ], [ %18, %28 ], [ %18, %22 ]
  tail call void @msleep(i32 noundef 10) #13
  %57 = load i32, ptr %2, align 4
  %58 = add i32 %57, -11
  %59 = icmp ult i32 %58, -10
  br i1 %59, label %69, label %60

60:                                               ; preds = %52
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = tail call i32 @jiffies_to_msecs(i32 noundef %61) #13
  %63 = sub i32 %62, %54
  %64 = add i32 %56, 900
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %14, label %69

66:                                               ; preds = %46, %25, %14
  %67 = phi i32 [ %19, %14 ], [ %26, %25 ], [ %47, %46 ]
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.qam256auto, i32 noundef %67) #14
  br label %69

69:                                               ; preds = %66, %60, %52
  %70 = phi i32 [ %67, %66 ], [ 0, %52 ], [ 0, %60 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_qam16(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x i8], align 2
  %23 = alloca [2 x i8], align 2
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x i8], align 2
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x i8], align 2
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x i8], align 2
  %31 = alloca [2 x i8], align 2
  %32 = alloca [2 x i8], align 2
  %33 = alloca [2 x i8], align 2
  %34 = alloca [2 x i8], align 2
  %35 = alloca [2 x i8], align 2
  %36 = alloca [2 x i8], align 2
  %37 = alloca [2 x i8], align 2
  %38 = alloca [2 x i8], align 2
  %39 = load ptr, ptr %0, align 4
  %40 = tail call fastcc i32 @drxdap_fasi_write_block(ptr noundef %39, i32 noundef 21233688, i16 noundef zeroext 12, ptr noundef nonnull @set_qam16.qam_dq_qual_fun, i32 noundef 0)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %1
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %40) #14
  br label %274

44:                                               ; preds = %1
  %45 = tail call fastcc i32 @drxdap_fasi_write_block(ptr noundef %39, i32 noundef 8593325, i16 noundef zeroext 12, ptr noundef nonnull @set_qam16.qam_eq_cma_rad, i32 noundef 0)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %45) #14
  br label %274

49:                                               ; preds = %44
  %50 = icmp eq ptr %39, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #13
  store i8 -116, ptr %38, align 2
  %52 = getelementptr inbounds [2 x i8], ptr %38, i32 0, i32 1
  store i8 0, ptr %52, align 1
  %53 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593294, i16 noundef zeroext 2, ptr noundef nonnull %38, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51, %49
  %56 = phi i32 [ %53, %51 ], [ -22, %49 ]
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %56) #14
  br label %274

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #13
  store i8 50, ptr %37, align 2
  %59 = getelementptr inbounds [2 x i8], ptr %37, i32 0, i32 1
  store i8 0, ptr %59, align 1
  %60 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593295, i16 noundef zeroext 2, ptr noundef nonnull %37, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %60) #14
  br label %274

64:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #13
  store i8 120, ptr %36, align 2
  %65 = getelementptr inbounds [2 x i8], ptr %36, i32 0, i32 1
  store i8 0, ptr %65, align 1
  %66 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593296, i16 noundef zeroext 2, ptr noundef nonnull %36, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %66) #14
  br label %274

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #13
  store i8 -26, ptr %35, align 2
  %71 = getelementptr inbounds [2 x i8], ptr %35, i32 0, i32 1
  store i8 0, ptr %71, align 1
  %72 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593299, i16 noundef zeroext 2, ptr noundef nonnull %35, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %72) #14
  br label %274

76:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #13
  store i8 95, ptr %34, align 2
  %77 = getelementptr inbounds [2 x i8], ptr %34, i32 0, i32 1
  store i8 0, ptr %77, align 1
  %78 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593298, i16 noundef zeroext 2, ptr noundef nonnull %34, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %78) #14
  br label %274

82:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #13
  store i8 105, ptr %33, align 2
  %83 = getelementptr inbounds [2 x i8], ptr %33, i32 0, i32 1
  store i8 0, ptr %83, align 1
  %84 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593297, i16 noundef zeroext 2, ptr noundef nonnull %33, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %84) #14
  br label %274

88:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #13
  store i8 40, ptr %32, align 2
  %89 = getelementptr inbounds [2 x i8], ptr %32, i32 0, i32 1
  store i8 0, ptr %89, align 1
  %90 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593300, i16 noundef zeroext 2, ptr noundef nonnull %32, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %90) #14
  br label %274

94:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #13
  store i8 56, ptr %31, align 2
  %95 = getelementptr inbounds [2 x i8], ptr %31, i32 0, i32 1
  store i8 0, ptr %95, align 1
  %96 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593301, i16 noundef zeroext 2, ptr noundef nonnull %31, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #13
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %96) #14
  br label %274

100:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #13
  store i8 3, ptr %30, align 2
  %101 = getelementptr inbounds [2 x i8], ptr %30, i32 0, i32 1
  store i8 0, ptr %101, align 1
  %102 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593302, i16 noundef zeroext 2, ptr noundef nonnull %30, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %102) #14
  br label %274

106:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #13
  store i8 16, ptr %29, align 2
  %107 = getelementptr inbounds [2 x i8], ptr %29, i32 0, i32 1
  store i8 0, ptr %107, align 1
  %108 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593284, i16 noundef zeroext 2, ptr noundef nonnull %29, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %108) #14
  br label %274

112:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #13
  store i8 -36, ptr %28, align 2
  %113 = getelementptr inbounds [2 x i8], ptr %28, i32 0, i32 1
  store i8 0, ptr %113, align 1
  %114 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593285, i16 noundef zeroext 2, ptr noundef nonnull %28, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #13
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %114) #14
  br label %274

118:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #13
  store i8 25, ptr %27, align 2
  %119 = getelementptr inbounds [2 x i8], ptr %27, i32 0, i32 1
  store i8 0, ptr %119, align 1
  %120 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593286, i16 noundef zeroext 2, ptr noundef nonnull %27, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %120) #14
  br label %274

124:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #13
  store i8 6, ptr %26, align 2
  %125 = getelementptr inbounds [2 x i8], ptr %26, i32 0, i32 1
  store i8 0, ptr %125, align 1
  %126 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593287, i16 noundef zeroext 2, ptr noundef nonnull %26, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %126) #14
  br label %274

130:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #13
  store i8 -24, ptr %25, align 2
  %131 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  store i8 -1, ptr %131, align 1
  %132 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593288, i16 noundef zeroext 2, ptr noundef nonnull %25, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #13
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %132) #14
  br label %274

136:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #13
  store i8 -65, ptr %24, align 2
  %137 = getelementptr inbounds [2 x i8], ptr %24, i32 0, i32 1
  store i8 -1, ptr %137, align 1
  %138 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593289, i16 noundef zeroext 2, ptr noundef nonnull %24, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #13
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %138) #14
  br label %274

142:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #13
  store i8 -127, ptr %23, align 2
  %143 = getelementptr inbounds [2 x i8], ptr %23, i32 0, i32 1
  store i8 -1, ptr %143, align 1
  %144 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593290, i16 noundef zeroext 2, ptr noundef nonnull %23, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #13
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %144) #14
  br label %274

148:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #13
  store i8 15, ptr %22, align 2
  %149 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  store i8 0, ptr %149, align 1
  %150 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593305, i16 noundef zeroext 2, ptr noundef nonnull %22, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #13
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %150) #14
  br label %274

154:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #13
  store i8 40, ptr %21, align 2
  %155 = getelementptr inbounds [2 x i8], ptr %21, i32 0, i32 1
  store i8 0, ptr %155, align 1
  %156 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593303, i16 noundef zeroext 2, ptr noundef nonnull %21, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #13
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %156) #14
  br label %274

160:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i8 2, ptr %20, align 2
  %161 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  store i8 0, ptr %161, align 1
  %162 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593308, i16 noundef zeroext 2, ptr noundef nonnull %20, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %162) #14
  br label %274

166:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 20, ptr %19, align 2
  %167 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 0, ptr %167, align 1
  %168 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593307, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %168) #14
  br label %274

172:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i8 -1, ptr %18, align 2
  %173 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  store i8 0, ptr %173, align 1
  %174 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593306, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %174) #14
  br label %274

178:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #13
  store i8 2, ptr %17, align 2
  %179 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  store i8 0, ptr %179, align 1
  %180 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593311, i16 noundef zeroext 2, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #13
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %180) #14
  br label %274

184:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i8 10, ptr %16, align 2
  %185 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  store i8 0, ptr %185, align 1
  %186 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593310, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %186) #14
  br label %274

190:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i8 50, ptr %15, align 2
  %191 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 0, ptr %191, align 1
  %192 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593309, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %192) #14
  br label %274

196:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i8 12, ptr %14, align 2
  %197 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  store i8 0, ptr %197, align 1
  %198 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593314, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %198) #14
  br label %274

202:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 24, ptr %13, align 2
  %203 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %203, align 1
  %204 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593313, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %204) #14
  br label %274

208:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 24, ptr %12, align 2
  %209 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %209, align 1
  %210 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593312, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %210) #14
  br label %274

214:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 12, ptr %11, align 2
  %215 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %215, align 1
  %216 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593317, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %214
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %216) #14
  br label %274

220:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 16, ptr %10, align 2
  %221 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 0, ptr %221, align 1
  %222 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593316, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %222) #14
  br label %274

226:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 16, ptr %9, align 2
  %227 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 0, ptr %227, align 1
  %228 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593315, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %226
  %231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %228) #14
  br label %274

232:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 16, ptr %8, align 2
  %233 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 0, ptr %233, align 1
  %234 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593320, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %232
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %234) #14
  br label %274

238:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 32, ptr %7, align 2
  %239 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %239, align 1
  %240 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593319, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %238
  %243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %240) #14
  br label %274

244:                                              ; preds = %238
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 -16, ptr %6, align 2
  %245 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %245, align 1
  %246 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593318, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %244
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %246) #14
  br label %274

250:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 5, ptr %5, align 2
  %251 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %251, align 1
  %252 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593323, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %250
  %255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %252) #14
  br label %274

256:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 15, ptr %4, align 2
  %257 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %257, align 1
  %258 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593322, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %258) #14
  br label %274

262:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 32, ptr %3, align 2
  %263 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %263, align 1
  %264 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593321, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %264) #14
  br label %274

268:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 0, ptr %2, align 2
  %269 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 -96, ptr %269, align 1
  %270 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593324, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %268
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam16, i32 noundef %270) #14
  br label %274

274:                                              ; preds = %272, %268, %266, %260, %254, %248, %242, %236, %230, %224, %218, %212, %206, %200, %194, %188, %182, %176, %170, %164, %158, %152, %146, %140, %134, %128, %122, %116, %110, %104, %98, %92, %86, %80, %74, %68, %62, %55, %47, %42
  %275 = phi i32 [ 0, %268 ], [ %40, %42 ], [ %45, %47 ], [ %56, %55 ], [ %60, %62 ], [ %66, %68 ], [ %72, %74 ], [ %78, %80 ], [ %84, %86 ], [ %90, %92 ], [ %96, %98 ], [ %102, %104 ], [ %108, %110 ], [ %114, %116 ], [ %120, %122 ], [ %126, %128 ], [ %132, %134 ], [ %138, %140 ], [ %144, %146 ], [ %150, %152 ], [ %156, %158 ], [ %162, %164 ], [ %168, %170 ], [ %174, %176 ], [ %180, %182 ], [ %186, %188 ], [ %192, %194 ], [ %198, %200 ], [ %204, %206 ], [ %210, %212 ], [ %216, %218 ], [ %222, %224 ], [ %228, %230 ], [ %234, %236 ], [ %240, %242 ], [ %246, %248 ], [ %252, %254 ], [ %258, %260 ], [ %264, %266 ], [ %270, %272 ]
  ret i32 %275
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_qam32(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x i8], align 2
  %23 = alloca [2 x i8], align 2
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x i8], align 2
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x i8], align 2
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x i8], align 2
  %31 = alloca [2 x i8], align 2
  %32 = alloca [2 x i8], align 2
  %33 = alloca [2 x i8], align 2
  %34 = alloca [2 x i8], align 2
  %35 = alloca [2 x i8], align 2
  %36 = alloca [2 x i8], align 2
  %37 = alloca [2 x i8], align 2
  %38 = alloca [2 x i8], align 2
  %39 = load ptr, ptr %0, align 4
  %40 = tail call fastcc i32 @drxdap_fasi_write_block(ptr noundef %39, i32 noundef 21233688, i16 noundef zeroext 12, ptr noundef nonnull @set_qam32.qam_dq_qual_fun, i32 noundef 0)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %1
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %40) #14
  br label %274

44:                                               ; preds = %1
  %45 = tail call fastcc i32 @drxdap_fasi_write_block(ptr noundef %39, i32 noundef 8593325, i16 noundef zeroext 12, ptr noundef nonnull @set_qam32.qam_eq_cma_rad, i32 noundef 0)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %45) #14
  br label %274

49:                                               ; preds = %44
  %50 = icmp eq ptr %39, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #13
  store i8 90, ptr %38, align 2
  %52 = getelementptr inbounds [2 x i8], ptr %38, i32 0, i32 1
  store i8 0, ptr %52, align 1
  %53 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593294, i16 noundef zeroext 2, ptr noundef nonnull %38, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51, %49
  %56 = phi i32 [ %53, %51 ], [ -22, %49 ]
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %56) #14
  br label %274

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #13
  store i8 50, ptr %37, align 2
  %59 = getelementptr inbounds [2 x i8], ptr %37, i32 0, i32 1
  store i8 0, ptr %59, align 1
  %60 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593295, i16 noundef zeroext 2, ptr noundef nonnull %37, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %60) #14
  br label %274

64:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #13
  store i8 100, ptr %36, align 2
  %65 = getelementptr inbounds [2 x i8], ptr %36, i32 0, i32 1
  store i8 0, ptr %65, align 1
  %66 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593296, i16 noundef zeroext 2, ptr noundef nonnull %36, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %66) #14
  br label %274

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #13
  store i8 -86, ptr %35, align 2
  %71 = getelementptr inbounds [2 x i8], ptr %35, i32 0, i32 1
  store i8 0, ptr %71, align 1
  %72 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593299, i16 noundef zeroext 2, ptr noundef nonnull %35, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %72) #14
  br label %274

76:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #13
  store i8 80, ptr %34, align 2
  %77 = getelementptr inbounds [2 x i8], ptr %34, i32 0, i32 1
  store i8 0, ptr %77, align 1
  %78 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593298, i16 noundef zeroext 2, ptr noundef nonnull %34, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %78) #14
  br label %274

82:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #13
  store i8 100, ptr %33, align 2
  %83 = getelementptr inbounds [2 x i8], ptr %33, i32 0, i32 1
  store i8 0, ptr %83, align 1
  %84 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593297, i16 noundef zeroext 2, ptr noundef nonnull %33, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %84) #14
  br label %274

88:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #13
  store i8 40, ptr %32, align 2
  %89 = getelementptr inbounds [2 x i8], ptr %32, i32 0, i32 1
  store i8 0, ptr %89, align 1
  %90 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593300, i16 noundef zeroext 2, ptr noundef nonnull %32, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %90) #14
  br label %274

94:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #13
  store i8 56, ptr %31, align 2
  %95 = getelementptr inbounds [2 x i8], ptr %31, i32 0, i32 1
  store i8 0, ptr %95, align 1
  %96 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593301, i16 noundef zeroext 2, ptr noundef nonnull %31, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #13
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %96) #14
  br label %274

100:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #13
  store i8 3, ptr %30, align 2
  %101 = getelementptr inbounds [2 x i8], ptr %30, i32 0, i32 1
  store i8 0, ptr %101, align 1
  %102 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593302, i16 noundef zeroext 2, ptr noundef nonnull %30, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %102) #14
  br label %274

106:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #13
  store i8 12, ptr %29, align 2
  %107 = getelementptr inbounds [2 x i8], ptr %29, i32 0, i32 1
  store i8 0, ptr %107, align 1
  %108 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593284, i16 noundef zeroext 2, ptr noundef nonnull %29, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %108) #14
  br label %274

112:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #13
  store i8 -116, ptr %28, align 2
  %113 = getelementptr inbounds [2 x i8], ptr %28, i32 0, i32 1
  store i8 0, ptr %113, align 1
  %114 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593285, i16 noundef zeroext 2, ptr noundef nonnull %28, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #13
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %114) #14
  br label %274

118:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #13
  store i8 -8, ptr %27, align 2
  %119 = getelementptr inbounds [2 x i8], ptr %27, i32 0, i32 1
  store i8 -1, ptr %119, align 1
  %120 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593286, i16 noundef zeroext 2, ptr noundef nonnull %27, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %120) #14
  br label %274

124:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #13
  store i8 -16, ptr %26, align 2
  %125 = getelementptr inbounds [2 x i8], ptr %26, i32 0, i32 1
  store i8 -1, ptr %125, align 1
  %126 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593287, i16 noundef zeroext 2, ptr noundef nonnull %26, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %126) #14
  br label %274

130:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #13
  store i8 -26, ptr %25, align 2
  %131 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  store i8 -1, ptr %131, align 1
  %132 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593288, i16 noundef zeroext 2, ptr noundef nonnull %25, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #13
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %132) #14
  br label %274

136:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #13
  store i8 -56, ptr %24, align 2
  %137 = getelementptr inbounds [2 x i8], ptr %24, i32 0, i32 1
  store i8 -1, ptr %137, align 1
  %138 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593289, i16 noundef zeroext 2, ptr noundef nonnull %24, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #13
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %138) #14
  br label %274

142:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #13
  store i8 -86, ptr %23, align 2
  %143 = getelementptr inbounds [2 x i8], ptr %23, i32 0, i32 1
  store i8 -1, ptr %143, align 1
  %144 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593290, i16 noundef zeroext 2, ptr noundef nonnull %23, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #13
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %144) #14
  br label %274

148:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #13
  store i8 15, ptr %22, align 2
  %149 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  store i8 0, ptr %149, align 1
  %150 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593305, i16 noundef zeroext 2, ptr noundef nonnull %22, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #13
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %150) #14
  br label %274

154:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #13
  store i8 40, ptr %21, align 2
  %155 = getelementptr inbounds [2 x i8], ptr %21, i32 0, i32 1
  store i8 0, ptr %155, align 1
  %156 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593303, i16 noundef zeroext 2, ptr noundef nonnull %21, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #13
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %156) #14
  br label %274

160:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i8 2, ptr %20, align 2
  %161 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  store i8 0, ptr %161, align 1
  %162 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593308, i16 noundef zeroext 2, ptr noundef nonnull %20, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %162) #14
  br label %274

166:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 20, ptr %19, align 2
  %167 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 0, ptr %167, align 1
  %168 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593307, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %168) #14
  br label %274

172:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i8 -1, ptr %18, align 2
  %173 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  store i8 0, ptr %173, align 1
  %174 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593306, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %174) #14
  br label %274

178:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #13
  store i8 2, ptr %17, align 2
  %179 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  store i8 0, ptr %179, align 1
  %180 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593311, i16 noundef zeroext 2, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #13
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %180) #14
  br label %274

184:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i8 10, ptr %16, align 2
  %185 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  store i8 0, ptr %185, align 1
  %186 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593310, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %186) #14
  br label %274

190:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i8 50, ptr %15, align 2
  %191 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 0, ptr %191, align 1
  %192 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593309, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %192) #14
  br label %274

196:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i8 12, ptr %14, align 2
  %197 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  store i8 0, ptr %197, align 1
  %198 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593314, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %198) #14
  br label %274

202:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 24, ptr %13, align 2
  %203 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %203, align 1
  %204 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593313, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %204) #14
  br label %274

208:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 24, ptr %12, align 2
  %209 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %209, align 1
  %210 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593312, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %210) #14
  br label %274

214:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 12, ptr %11, align 2
  %215 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %215, align 1
  %216 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593317, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %214
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %216) #14
  br label %274

220:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 16, ptr %10, align 2
  %221 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 0, ptr %221, align 1
  %222 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593316, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %222) #14
  br label %274

226:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 16, ptr %9, align 2
  %227 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 0, ptr %227, align 1
  %228 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593315, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %226
  %231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %228) #14
  br label %274

232:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 16, ptr %8, align 2
  %233 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 0, ptr %233, align 1
  %234 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593320, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %232
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %234) #14
  br label %274

238:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 32, ptr %7, align 2
  %239 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %239, align 1
  %240 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593319, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %238
  %243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %240) #14
  br label %274

244:                                              ; preds = %238
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 -80, ptr %6, align 2
  %245 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %245, align 1
  %246 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593318, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %244
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %246) #14
  br label %274

250:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 5, ptr %5, align 2
  %251 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %251, align 1
  %252 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593323, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %250
  %255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %252) #14
  br label %274

256:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 15, ptr %4, align 2
  %257 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %257, align 1
  %258 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593322, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %258) #14
  br label %274

262:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 8, ptr %3, align 2
  %263 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %263, align 1
  %264 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593321, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %264) #14
  br label %274

268:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 0, ptr %2, align 2
  %269 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 80, ptr %269, align 1
  %270 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593324, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %268
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam32, i32 noundef %270) #14
  br label %274

274:                                              ; preds = %272, %268, %266, %260, %254, %248, %242, %236, %230, %224, %218, %212, %206, %200, %194, %188, %182, %176, %170, %164, %158, %152, %146, %140, %134, %128, %122, %116, %110, %104, %98, %92, %86, %80, %74, %68, %62, %55, %47, %42
  %275 = phi i32 [ 0, %268 ], [ %40, %42 ], [ %45, %47 ], [ %56, %55 ], [ %60, %62 ], [ %66, %68 ], [ %72, %74 ], [ %78, %80 ], [ %84, %86 ], [ %90, %92 ], [ %96, %98 ], [ %102, %104 ], [ %108, %110 ], [ %114, %116 ], [ %120, %122 ], [ %126, %128 ], [ %132, %134 ], [ %138, %140 ], [ %144, %146 ], [ %150, %152 ], [ %156, %158 ], [ %162, %164 ], [ %168, %170 ], [ %174, %176 ], [ %180, %182 ], [ %186, %188 ], [ %192, %194 ], [ %198, %200 ], [ %204, %206 ], [ %210, %212 ], [ %216, %218 ], [ %222, %224 ], [ %228, %230 ], [ %234, %236 ], [ %240, %242 ], [ %246, %248 ], [ %252, %254 ], [ %258, %260 ], [ %264, %266 ], [ %270, %272 ]
  ret i32 %275
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_qam64(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x i8], align 2
  %23 = alloca [2 x i8], align 2
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x i8], align 2
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x i8], align 2
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x i8], align 2
  %31 = alloca [2 x i8], align 2
  %32 = alloca [2 x i8], align 2
  %33 = alloca [2 x i8], align 2
  %34 = alloca [2 x i8], align 2
  %35 = alloca [2 x i8], align 2
  %36 = alloca [2 x i8], align 2
  %37 = alloca [2 x i8], align 2
  %38 = alloca [2 x i8], align 2
  %39 = load ptr, ptr %0, align 4
  %40 = tail call fastcc i32 @drxdap_fasi_write_block(ptr noundef %39, i32 noundef 21233688, i16 noundef zeroext 12, ptr noundef nonnull @set_qam64.qam_dq_qual_fun, i32 noundef 0)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %1
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %40) #14
  br label %274

44:                                               ; preds = %1
  %45 = tail call fastcc i32 @drxdap_fasi_write_block(ptr noundef %39, i32 noundef 8593325, i16 noundef zeroext 12, ptr noundef nonnull @set_qam64.qam_eq_cma_rad, i32 noundef 0)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %45) #14
  br label %274

49:                                               ; preds = %44
  %50 = icmp eq ptr %39, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #13
  store i8 105, ptr %38, align 2
  %52 = getelementptr inbounds [2 x i8], ptr %38, i32 0, i32 1
  store i8 0, ptr %52, align 1
  %53 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593294, i16 noundef zeroext 2, ptr noundef nonnull %38, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51, %49
  %56 = phi i32 [ %53, %51 ], [ -22, %49 ]
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %56) #14
  br label %274

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #13
  store i8 60, ptr %37, align 2
  %59 = getelementptr inbounds [2 x i8], ptr %37, i32 0, i32 1
  store i8 0, ptr %59, align 1
  %60 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593295, i16 noundef zeroext 2, ptr noundef nonnull %37, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %60) #14
  br label %274

64:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #13
  store i8 100, ptr %36, align 2
  %65 = getelementptr inbounds [2 x i8], ptr %36, i32 0, i32 1
  store i8 0, ptr %65, align 1
  %66 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593296, i16 noundef zeroext 2, ptr noundef nonnull %36, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %66) #14
  br label %274

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #13
  store i8 -61, ptr %35, align 2
  %71 = getelementptr inbounds [2 x i8], ptr %35, i32 0, i32 1
  store i8 0, ptr %71, align 1
  %72 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593299, i16 noundef zeroext 2, ptr noundef nonnull %35, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %72) #14
  br label %274

76:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #13
  store i8 80, ptr %34, align 2
  %77 = getelementptr inbounds [2 x i8], ptr %34, i32 0, i32 1
  store i8 0, ptr %77, align 1
  %78 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593298, i16 noundef zeroext 2, ptr noundef nonnull %34, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %78) #14
  br label %274

82:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #13
  store i8 84, ptr %33, align 2
  %83 = getelementptr inbounds [2 x i8], ptr %33, i32 0, i32 1
  store i8 0, ptr %83, align 1
  %84 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593297, i16 noundef zeroext 2, ptr noundef nonnull %33, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %84) #14
  br label %274

88:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #13
  store i8 40, ptr %32, align 2
  %89 = getelementptr inbounds [2 x i8], ptr %32, i32 0, i32 1
  store i8 0, ptr %89, align 1
  %90 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593300, i16 noundef zeroext 2, ptr noundef nonnull %32, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %90) #14
  br label %274

94:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #13
  store i8 32, ptr %31, align 2
  %95 = getelementptr inbounds [2 x i8], ptr %31, i32 0, i32 1
  store i8 0, ptr %95, align 1
  %96 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593301, i16 noundef zeroext 2, ptr noundef nonnull %31, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #13
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %96) #14
  br label %274

100:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #13
  store i8 3, ptr %30, align 2
  %101 = getelementptr inbounds [2 x i8], ptr %30, i32 0, i32 1
  store i8 0, ptr %101, align 1
  %102 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593302, i16 noundef zeroext 2, ptr noundef nonnull %30, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %102) #14
  br label %274

106:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #13
  store i8 12, ptr %29, align 2
  %107 = getelementptr inbounds [2 x i8], ptr %29, i32 0, i32 1
  store i8 0, ptr %107, align 1
  %108 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593284, i16 noundef zeroext 2, ptr noundef nonnull %29, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %108) #14
  br label %274

112:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #13
  store i8 -115, ptr %28, align 2
  %113 = getelementptr inbounds [2 x i8], ptr %28, i32 0, i32 1
  store i8 0, ptr %113, align 1
  %114 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593285, i16 noundef zeroext 2, ptr noundef nonnull %28, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #13
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %114) #14
  br label %274

118:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #13
  store i8 7, ptr %27, align 2
  %119 = getelementptr inbounds [2 x i8], ptr %27, i32 0, i32 1
  store i8 0, ptr %119, align 1
  %120 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593286, i16 noundef zeroext 2, ptr noundef nonnull %27, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %120) #14
  br label %274

124:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #13
  store i8 0, ptr %26, align 2
  %125 = getelementptr inbounds [2 x i8], ptr %26, i32 0, i32 1
  store i8 0, ptr %125, align 1
  %126 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593287, i16 noundef zeroext 2, ptr noundef nonnull %26, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %126) #14
  br label %274

130:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #13
  store i8 -15, ptr %25, align 2
  %131 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  store i8 -1, ptr %131, align 1
  %132 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593288, i16 noundef zeroext 2, ptr noundef nonnull %25, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #13
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %132) #14
  br label %274

136:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #13
  store i8 -45, ptr %24, align 2
  %137 = getelementptr inbounds [2 x i8], ptr %24, i32 0, i32 1
  store i8 -1, ptr %137, align 1
  %138 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593289, i16 noundef zeroext 2, ptr noundef nonnull %24, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #13
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %138) #14
  br label %274

142:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #13
  store i8 -80, ptr %23, align 2
  %143 = getelementptr inbounds [2 x i8], ptr %23, i32 0, i32 1
  store i8 -1, ptr %143, align 1
  %144 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593290, i16 noundef zeroext 2, ptr noundef nonnull %23, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #13
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %144) #14
  br label %274

148:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #13
  store i8 15, ptr %22, align 2
  %149 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  store i8 0, ptr %149, align 1
  %150 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593305, i16 noundef zeroext 2, ptr noundef nonnull %22, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #13
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %150) #14
  br label %274

154:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #13
  store i8 40, ptr %21, align 2
  %155 = getelementptr inbounds [2 x i8], ptr %21, i32 0, i32 1
  store i8 0, ptr %155, align 1
  %156 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593303, i16 noundef zeroext 2, ptr noundef nonnull %21, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #13
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %156) #14
  br label %274

160:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i8 2, ptr %20, align 2
  %161 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  store i8 0, ptr %161, align 1
  %162 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593308, i16 noundef zeroext 2, ptr noundef nonnull %20, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %162) #14
  br label %274

166:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 30, ptr %19, align 2
  %167 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 0, ptr %167, align 1
  %168 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593307, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %168) #14
  br label %274

172:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i8 -1, ptr %18, align 2
  %173 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  store i8 0, ptr %173, align 1
  %174 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593306, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %174) #14
  br label %274

178:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #13
  store i8 2, ptr %17, align 2
  %179 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  store i8 0, ptr %179, align 1
  %180 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593311, i16 noundef zeroext 2, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #13
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %180) #14
  br label %274

184:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i8 15, ptr %16, align 2
  %185 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  store i8 0, ptr %185, align 1
  %186 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593310, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %186) #14
  br label %274

190:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i8 80, ptr %15, align 2
  %191 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 0, ptr %191, align 1
  %192 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593309, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %192) #14
  br label %274

196:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i8 12, ptr %14, align 2
  %197 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  store i8 0, ptr %197, align 1
  %198 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593314, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %198) #14
  br label %274

202:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 24, ptr %13, align 2
  %203 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %203, align 1
  %204 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593313, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %204) #14
  br label %274

208:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 24, ptr %12, align 2
  %209 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %209, align 1
  %210 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593312, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %210) #14
  br label %274

214:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 12, ptr %11, align 2
  %215 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %215, align 1
  %216 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593317, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %214
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %216) #14
  br label %274

220:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 16, ptr %10, align 2
  %221 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 0, ptr %221, align 1
  %222 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593316, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %222) #14
  br label %274

226:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 16, ptr %9, align 2
  %227 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 0, ptr %227, align 1
  %228 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593315, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %226
  %231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %228) #14
  br label %274

232:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 16, ptr %8, align 2
  %233 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 0, ptr %233, align 1
  %234 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593320, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %232
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %234) #14
  br label %274

238:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 48, ptr %7, align 2
  %239 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %239, align 1
  %240 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593319, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %238
  %243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %240) #14
  br label %274

244:                                              ; preds = %238
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 -96, ptr %6, align 2
  %245 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %245, align 1
  %246 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593318, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %244
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %246) #14
  br label %274

250:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 5, ptr %5, align 2
  %251 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %251, align 1
  %252 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593323, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %250
  %255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %252) #14
  br label %274

256:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 15, ptr %4, align 2
  %257 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %257, align 1
  %258 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593322, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %258) #14
  br label %274

262:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 32, ptr %3, align 2
  %263 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %263, align 1
  %264 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593321, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %264) #14
  br label %274

268:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 0, ptr %2, align 2
  %269 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 -88, ptr %269, align 1
  %270 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593324, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %268
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam64, i32 noundef %270) #14
  br label %274

274:                                              ; preds = %272, %268, %266, %260, %254, %248, %242, %236, %230, %224, %218, %212, %206, %200, %194, %188, %182, %176, %170, %164, %158, %152, %146, %140, %134, %128, %122, %116, %110, %104, %98, %92, %86, %80, %74, %68, %62, %55, %47, %42
  %275 = phi i32 [ 0, %268 ], [ %40, %42 ], [ %45, %47 ], [ %56, %55 ], [ %60, %62 ], [ %66, %68 ], [ %72, %74 ], [ %78, %80 ], [ %84, %86 ], [ %90, %92 ], [ %96, %98 ], [ %102, %104 ], [ %108, %110 ], [ %114, %116 ], [ %120, %122 ], [ %126, %128 ], [ %132, %134 ], [ %138, %140 ], [ %144, %146 ], [ %150, %152 ], [ %156, %158 ], [ %162, %164 ], [ %168, %170 ], [ %174, %176 ], [ %180, %182 ], [ %186, %188 ], [ %192, %194 ], [ %198, %200 ], [ %204, %206 ], [ %210, %212 ], [ %216, %218 ], [ %222, %224 ], [ %228, %230 ], [ %234, %236 ], [ %240, %242 ], [ %246, %248 ], [ %252, %254 ], [ %258, %260 ], [ %264, %266 ], [ %270, %272 ]
  ret i32 %275
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_qam128(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x i8], align 2
  %23 = alloca [2 x i8], align 2
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x i8], align 2
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x i8], align 2
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x i8], align 2
  %31 = alloca [2 x i8], align 2
  %32 = alloca [2 x i8], align 2
  %33 = alloca [2 x i8], align 2
  %34 = alloca [2 x i8], align 2
  %35 = alloca [2 x i8], align 2
  %36 = alloca [2 x i8], align 2
  %37 = alloca [2 x i8], align 2
  %38 = alloca [2 x i8], align 2
  %39 = load ptr, ptr %0, align 4
  %40 = tail call fastcc i32 @drxdap_fasi_write_block(ptr noundef %39, i32 noundef 21233688, i16 noundef zeroext 12, ptr noundef nonnull @set_qam128.qam_dq_qual_fun, i32 noundef 0)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %1
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %40) #14
  br label %274

44:                                               ; preds = %1
  %45 = tail call fastcc i32 @drxdap_fasi_write_block(ptr noundef %39, i32 noundef 8593325, i16 noundef zeroext 12, ptr noundef nonnull @set_qam128.qam_eq_cma_rad, i32 noundef 0)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %45) #14
  br label %274

49:                                               ; preds = %44
  %50 = icmp eq ptr %39, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #13
  store i8 50, ptr %38, align 2
  %52 = getelementptr inbounds [2 x i8], ptr %38, i32 0, i32 1
  store i8 0, ptr %52, align 1
  %53 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593294, i16 noundef zeroext 2, ptr noundef nonnull %38, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51, %49
  %56 = phi i32 [ %53, %51 ], [ -22, %49 ]
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %56) #14
  br label %274

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #13
  store i8 60, ptr %37, align 2
  %59 = getelementptr inbounds [2 x i8], ptr %37, i32 0, i32 1
  store i8 0, ptr %59, align 1
  %60 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593295, i16 noundef zeroext 2, ptr noundef nonnull %37, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %60) #14
  br label %274

64:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #13
  store i8 100, ptr %36, align 2
  %65 = getelementptr inbounds [2 x i8], ptr %36, i32 0, i32 1
  store i8 0, ptr %65, align 1
  %66 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593296, i16 noundef zeroext 2, ptr noundef nonnull %36, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %66) #14
  br label %274

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #13
  store i8 -116, ptr %35, align 2
  %71 = getelementptr inbounds [2 x i8], ptr %35, i32 0, i32 1
  store i8 0, ptr %71, align 1
  %72 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593299, i16 noundef zeroext 2, ptr noundef nonnull %35, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %72) #14
  br label %274

76:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #13
  store i8 80, ptr %34, align 2
  %77 = getelementptr inbounds [2 x i8], ptr %34, i32 0, i32 1
  store i8 0, ptr %77, align 1
  %78 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593298, i16 noundef zeroext 2, ptr noundef nonnull %34, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %78) #14
  br label %274

82:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #13
  store i8 100, ptr %33, align 2
  %83 = getelementptr inbounds [2 x i8], ptr %33, i32 0, i32 1
  store i8 0, ptr %83, align 1
  %84 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593297, i16 noundef zeroext 2, ptr noundef nonnull %33, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %84) #14
  br label %274

88:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #13
  store i8 40, ptr %32, align 2
  %89 = getelementptr inbounds [2 x i8], ptr %32, i32 0, i32 1
  store i8 0, ptr %89, align 1
  %90 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593300, i16 noundef zeroext 2, ptr noundef nonnull %32, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %90) #14
  br label %274

94:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #13
  store i8 32, ptr %31, align 2
  %95 = getelementptr inbounds [2 x i8], ptr %31, i32 0, i32 1
  store i8 0, ptr %95, align 1
  %96 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593301, i16 noundef zeroext 2, ptr noundef nonnull %31, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #13
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %96) #14
  br label %274

100:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #13
  store i8 3, ptr %30, align 2
  %101 = getelementptr inbounds [2 x i8], ptr %30, i32 0, i32 1
  store i8 0, ptr %101, align 1
  %102 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593302, i16 noundef zeroext 2, ptr noundef nonnull %30, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %102) #14
  br label %274

106:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #13
  store i8 8, ptr %29, align 2
  %107 = getelementptr inbounds [2 x i8], ptr %29, i32 0, i32 1
  store i8 0, ptr %107, align 1
  %108 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593284, i16 noundef zeroext 2, ptr noundef nonnull %29, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %108) #14
  br label %274

112:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #13
  store i8 65, ptr %28, align 2
  %113 = getelementptr inbounds [2 x i8], ptr %28, i32 0, i32 1
  store i8 0, ptr %113, align 1
  %114 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593285, i16 noundef zeroext 2, ptr noundef nonnull %28, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #13
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %114) #14
  br label %274

118:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #13
  store i8 5, ptr %27, align 2
  %119 = getelementptr inbounds [2 x i8], ptr %27, i32 0, i32 1
  store i8 0, ptr %119, align 1
  %120 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593286, i16 noundef zeroext 2, ptr noundef nonnull %27, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %120) #14
  br label %274

124:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #13
  store i8 3, ptr %26, align 2
  %125 = getelementptr inbounds [2 x i8], ptr %26, i32 0, i32 1
  store i8 0, ptr %125, align 1
  %126 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593287, i16 noundef zeroext 2, ptr noundef nonnull %26, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %126) #14
  br label %274

130:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #13
  store i8 -1, ptr %25, align 2
  %131 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  store i8 -1, ptr %131, align 1
  %132 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593288, i16 noundef zeroext 2, ptr noundef nonnull %25, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #13
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %132) #14
  br label %274

136:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #13
  store i8 12, ptr %24, align 2
  %137 = getelementptr inbounds [2 x i8], ptr %24, i32 0, i32 1
  store i8 0, ptr %137, align 1
  %138 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593289, i16 noundef zeroext 2, ptr noundef nonnull %24, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #13
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %138) #14
  br label %274

142:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #13
  store i8 -23, ptr %23, align 2
  %143 = getelementptr inbounds [2 x i8], ptr %23, i32 0, i32 1
  store i8 -1, ptr %143, align 1
  %144 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593290, i16 noundef zeroext 2, ptr noundef nonnull %23, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #13
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %144) #14
  br label %274

148:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #13
  store i8 15, ptr %22, align 2
  %149 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  store i8 0, ptr %149, align 1
  %150 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593305, i16 noundef zeroext 2, ptr noundef nonnull %22, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #13
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %150) #14
  br label %274

154:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #13
  store i8 40, ptr %21, align 2
  %155 = getelementptr inbounds [2 x i8], ptr %21, i32 0, i32 1
  store i8 0, ptr %155, align 1
  %156 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593303, i16 noundef zeroext 2, ptr noundef nonnull %21, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #13
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %156) #14
  br label %274

160:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i8 2, ptr %20, align 2
  %161 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  store i8 0, ptr %161, align 1
  %162 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593308, i16 noundef zeroext 2, ptr noundef nonnull %20, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %162) #14
  br label %274

166:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 40, ptr %19, align 2
  %167 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 0, ptr %167, align 1
  %168 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593307, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %168) #14
  br label %274

172:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i8 -1, ptr %18, align 2
  %173 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  store i8 0, ptr %173, align 1
  %174 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593306, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %174) #14
  br label %274

178:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #13
  store i8 2, ptr %17, align 2
  %179 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  store i8 0, ptr %179, align 1
  %180 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593311, i16 noundef zeroext 2, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #13
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %180) #14
  br label %274

184:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i8 20, ptr %16, align 2
  %185 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  store i8 0, ptr %185, align 1
  %186 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593310, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %186) #14
  br label %274

190:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i8 80, ptr %15, align 2
  %191 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 0, ptr %191, align 1
  %192 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593309, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %192) #14
  br label %274

196:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i8 12, ptr %14, align 2
  %197 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  store i8 0, ptr %197, align 1
  %198 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593314, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %198) #14
  br label %274

202:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 24, ptr %13, align 2
  %203 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %203, align 1
  %204 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593313, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %204) #14
  br label %274

208:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 24, ptr %12, align 2
  %209 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %209, align 1
  %210 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593312, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %210) #14
  br label %274

214:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 12, ptr %11, align 2
  %215 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %215, align 1
  %216 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593317, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %214
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %216) #14
  br label %274

220:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 16, ptr %10, align 2
  %221 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 0, ptr %221, align 1
  %222 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593316, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %222) #14
  br label %274

226:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 16, ptr %9, align 2
  %227 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 0, ptr %227, align 1
  %228 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593315, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %226
  %231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %228) #14
  br label %274

232:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 16, ptr %8, align 2
  %233 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 0, ptr %233, align 1
  %234 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593320, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %232
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %234) #14
  br label %274

238:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 32, ptr %7, align 2
  %239 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %239, align 1
  %240 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593319, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %238
  %243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %240) #14
  br label %274

244:                                              ; preds = %238
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 -112, ptr %6, align 2
  %245 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %245, align 1
  %246 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593318, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %244
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %246) #14
  br label %274

250:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 5, ptr %5, align 2
  %251 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %251, align 1
  %252 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593323, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %250
  %255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %252) #14
  br label %274

256:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 15, ptr %4, align 2
  %257 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %257, align 1
  %258 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593322, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %258) #14
  br label %274

262:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 16, ptr %3, align 2
  %263 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %263, align 1
  %264 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593321, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %264) #14
  br label %274

268:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 0, ptr %2, align 2
  %269 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 82, ptr %269, align 1
  %270 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593324, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %268
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam128, i32 noundef %270) #14
  br label %274

274:                                              ; preds = %272, %268, %266, %260, %254, %248, %242, %236, %230, %224, %218, %212, %206, %200, %194, %188, %182, %176, %170, %164, %158, %152, %146, %140, %134, %128, %122, %116, %110, %104, %98, %92, %86, %80, %74, %68, %62, %55, %47, %42
  %275 = phi i32 [ 0, %268 ], [ %40, %42 ], [ %45, %47 ], [ %56, %55 ], [ %60, %62 ], [ %66, %68 ], [ %72, %74 ], [ %78, %80 ], [ %84, %86 ], [ %90, %92 ], [ %96, %98 ], [ %102, %104 ], [ %108, %110 ], [ %114, %116 ], [ %120, %122 ], [ %126, %128 ], [ %132, %134 ], [ %138, %140 ], [ %144, %146 ], [ %150, %152 ], [ %156, %158 ], [ %162, %164 ], [ %168, %170 ], [ %174, %176 ], [ %180, %182 ], [ %186, %188 ], [ %192, %194 ], [ %198, %200 ], [ %204, %206 ], [ %210, %212 ], [ %216, %218 ], [ %222, %224 ], [ %228, %230 ], [ %234, %236 ], [ %240, %242 ], [ %246, %248 ], [ %252, %254 ], [ %258, %260 ], [ %264, %266 ], [ %270, %272 ]
  ret i32 %275
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_qam256(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x i8], align 2
  %23 = alloca [2 x i8], align 2
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x i8], align 2
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x i8], align 2
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x i8], align 2
  %31 = alloca [2 x i8], align 2
  %32 = alloca [2 x i8], align 2
  %33 = alloca [2 x i8], align 2
  %34 = alloca [2 x i8], align 2
  %35 = alloca [2 x i8], align 2
  %36 = alloca [2 x i8], align 2
  %37 = alloca [2 x i8], align 2
  %38 = alloca [2 x i8], align 2
  %39 = load ptr, ptr %0, align 4
  %40 = tail call fastcc i32 @drxdap_fasi_write_block(ptr noundef %39, i32 noundef 21233688, i16 noundef zeroext 12, ptr noundef nonnull @set_qam256.qam_dq_qual_fun, i32 noundef 0)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %1
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %40) #14
  br label %274

44:                                               ; preds = %1
  %45 = tail call fastcc i32 @drxdap_fasi_write_block(ptr noundef %39, i32 noundef 8593325, i16 noundef zeroext 12, ptr noundef nonnull @set_qam256.qam_eq_cma_rad, i32 noundef 0)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %45) #14
  br label %274

49:                                               ; preds = %44
  %50 = icmp eq ptr %39, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #13
  store i8 50, ptr %38, align 2
  %52 = getelementptr inbounds [2 x i8], ptr %38, i32 0, i32 1
  store i8 0, ptr %52, align 1
  %53 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593294, i16 noundef zeroext 2, ptr noundef nonnull %38, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51, %49
  %56 = phi i32 [ %53, %51 ], [ -22, %49 ]
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %56) #14
  br label %274

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %37) #13
  store i8 60, ptr %37, align 2
  %59 = getelementptr inbounds [2 x i8], ptr %37, i32 0, i32 1
  store i8 0, ptr %59, align 1
  %60 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593295, i16 noundef zeroext 2, ptr noundef nonnull %37, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %37) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %60) #14
  br label %274

64:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #13
  store i8 100, ptr %36, align 2
  %65 = getelementptr inbounds [2 x i8], ptr %36, i32 0, i32 1
  store i8 0, ptr %65, align 1
  %66 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593296, i16 noundef zeroext 2, ptr noundef nonnull %36, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #13
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %66) #14
  br label %274

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #13
  store i8 -106, ptr %35, align 2
  %71 = getelementptr inbounds [2 x i8], ptr %35, i32 0, i32 1
  store i8 0, ptr %71, align 1
  %72 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593299, i16 noundef zeroext 2, ptr noundef nonnull %35, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %72) #14
  br label %274

76:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #13
  store i8 80, ptr %34, align 2
  %77 = getelementptr inbounds [2 x i8], ptr %34, i32 0, i32 1
  store i8 0, ptr %77, align 1
  %78 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593298, i16 noundef zeroext 2, ptr noundef nonnull %34, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %78) #14
  br label %274

82:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #13
  store i8 110, ptr %33, align 2
  %83 = getelementptr inbounds [2 x i8], ptr %33, i32 0, i32 1
  store i8 0, ptr %83, align 1
  %84 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593297, i16 noundef zeroext 2, ptr noundef nonnull %33, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %84) #14
  br label %274

88:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #13
  store i8 40, ptr %32, align 2
  %89 = getelementptr inbounds [2 x i8], ptr %32, i32 0, i32 1
  store i8 0, ptr %89, align 1
  %90 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593300, i16 noundef zeroext 2, ptr noundef nonnull %32, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %90) #14
  br label %274

94:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #13
  store i8 16, ptr %31, align 2
  %95 = getelementptr inbounds [2 x i8], ptr %31, i32 0, i32 1
  store i8 0, ptr %95, align 1
  %96 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593301, i16 noundef zeroext 2, ptr noundef nonnull %31, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #13
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %96) #14
  br label %274

100:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #13
  store i8 3, ptr %30, align 2
  %101 = getelementptr inbounds [2 x i8], ptr %30, i32 0, i32 1
  store i8 0, ptr %101, align 1
  %102 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593302, i16 noundef zeroext 2, ptr noundef nonnull %30, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %102) #14
  br label %274

106:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #13
  store i8 8, ptr %29, align 2
  %107 = getelementptr inbounds [2 x i8], ptr %29, i32 0, i32 1
  store i8 0, ptr %107, align 1
  %108 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593284, i16 noundef zeroext 2, ptr noundef nonnull %29, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %108) #14
  br label %274

112:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #13
  store i8 74, ptr %28, align 2
  %113 = getelementptr inbounds [2 x i8], ptr %28, i32 0, i32 1
  store i8 0, ptr %113, align 1
  %114 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593285, i16 noundef zeroext 2, ptr noundef nonnull %28, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #13
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %114) #14
  br label %274

118:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #13
  store i8 18, ptr %27, align 2
  %119 = getelementptr inbounds [2 x i8], ptr %27, i32 0, i32 1
  store i8 0, ptr %119, align 1
  %120 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593286, i16 noundef zeroext 2, ptr noundef nonnull %27, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %120) #14
  br label %274

124:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #13
  store i8 13, ptr %26, align 2
  %125 = getelementptr inbounds [2 x i8], ptr %26, i32 0, i32 1
  store i8 0, ptr %125, align 1
  %126 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593287, i16 noundef zeroext 2, ptr noundef nonnull %26, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %126) #14
  br label %274

130:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #13
  store i8 7, ptr %25, align 2
  %131 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  store i8 0, ptr %131, align 1
  %132 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593288, i16 noundef zeroext 2, ptr noundef nonnull %25, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #13
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %132) #14
  br label %274

136:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #13
  store i8 0, ptr %24, align 2
  %137 = getelementptr inbounds [2 x i8], ptr %24, i32 0, i32 1
  store i8 0, ptr %137, align 1
  %138 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593289, i16 noundef zeroext 2, ptr noundef nonnull %24, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #13
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %138) #14
  br label %274

142:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #13
  store i8 -8, ptr %23, align 2
  %143 = getelementptr inbounds [2 x i8], ptr %23, i32 0, i32 1
  store i8 -1, ptr %143, align 1
  %144 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593290, i16 noundef zeroext 2, ptr noundef nonnull %23, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #13
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %144) #14
  br label %274

148:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #13
  store i8 15, ptr %22, align 2
  %149 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  store i8 0, ptr %149, align 1
  %150 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593305, i16 noundef zeroext 2, ptr noundef nonnull %22, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #13
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %150) #14
  br label %274

154:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #13
  store i8 40, ptr %21, align 2
  %155 = getelementptr inbounds [2 x i8], ptr %21, i32 0, i32 1
  store i8 0, ptr %155, align 1
  %156 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593303, i16 noundef zeroext 2, ptr noundef nonnull %21, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #13
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %156) #14
  br label %274

160:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i8 2, ptr %20, align 2
  %161 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  store i8 0, ptr %161, align 1
  %162 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593308, i16 noundef zeroext 2, ptr noundef nonnull %20, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %162) #14
  br label %274

166:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 50, ptr %19, align 2
  %167 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 0, ptr %167, align 1
  %168 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593307, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %168) #14
  br label %274

172:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i8 -1, ptr %18, align 2
  %173 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  store i8 0, ptr %173, align 1
  %174 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593306, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %174) #14
  br label %274

178:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #13
  store i8 2, ptr %17, align 2
  %179 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  store i8 0, ptr %179, align 1
  %180 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593311, i16 noundef zeroext 2, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #13
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %180) #14
  br label %274

184:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i8 25, ptr %16, align 2
  %185 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  store i8 0, ptr %185, align 1
  %186 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593310, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %186) #14
  br label %274

190:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i8 80, ptr %15, align 2
  %191 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 0, ptr %191, align 1
  %192 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593309, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %192) #14
  br label %274

196:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i8 12, ptr %14, align 2
  %197 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  store i8 0, ptr %197, align 1
  %198 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593314, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %198) #14
  br label %274

202:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 24, ptr %13, align 2
  %203 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %203, align 1
  %204 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593313, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %204) #14
  br label %274

208:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 24, ptr %12, align 2
  %209 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %209, align 1
  %210 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593312, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %210) #14
  br label %274

214:                                              ; preds = %208
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 12, ptr %11, align 2
  %215 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %215, align 1
  %216 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593317, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %214
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %216) #14
  br label %274

220:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #13
  store i8 16, ptr %10, align 2
  %221 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 0, ptr %221, align 1
  %222 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593316, i16 noundef zeroext 2, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #13
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %222) #14
  br label %274

226:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i8 16, ptr %9, align 2
  %227 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  store i8 0, ptr %227, align 1
  %228 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593315, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %226
  %231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %228) #14
  br label %274

232:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i8 16, ptr %8, align 2
  %233 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 0, ptr %233, align 1
  %234 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593320, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %232
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %234) #14
  br label %274

238:                                              ; preds = %232
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 48, ptr %7, align 2
  %239 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 0, ptr %239, align 1
  %240 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593319, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %238
  %243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %240) #14
  br label %274

244:                                              ; preds = %238
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 80, ptr %6, align 2
  %245 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 0, ptr %245, align 1
  %246 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593318, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %244
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %246) #14
  br label %274

250:                                              ; preds = %244
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i8 5, ptr %5, align 2
  %251 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 0, ptr %251, align 1
  %252 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593323, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %250
  %255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %252) #14
  br label %274

256:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 15, ptr %4, align 2
  %257 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %257, align 1
  %258 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593322, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %258) #14
  br label %274

262:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i8 16, ptr %3, align 2
  %263 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 0, ptr %263, align 1
  %264 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593321, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %264) #14
  br label %274

268:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 0, ptr %2, align 2
  %269 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 -86, ptr %269, align 1
  %270 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %39, i32 noundef 8593324, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %268
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.set_qam256, i32 noundef %270) #14
  br label %274

274:                                              ; preds = %272, %268, %266, %260, %254, %248, %242, %236, %230, %224, %218, %212, %206, %200, %194, %188, %182, %176, %170, %164, %158, %152, %146, %140, %134, %128, %122, %116, %110, %104, %98, %92, %86, %80, %74, %68, %62, %55, %47, %42
  %275 = phi i32 [ 0, %268 ], [ %40, %42 ], [ %45, %47 ], [ %56, %55 ], [ %60, %62 ], [ %66, %68 ], [ %72, %74 ], [ %78, %80 ], [ %84, %86 ], [ %90, %92 ], [ %96, %98 ], [ %102, %104 ], [ %108, %110 ], [ %114, %116 ], [ %120, %122 ], [ %126, %128 ], [ %132, %134 ], [ %138, %140 ], [ %144, %146 ], [ %150, %152 ], [ %156, %158 ], [ %162, %164 ], [ %168, %170 ], [ %174, %176 ], [ %180, %182 ], [ %186, %188 ], [ %192, %194 ], [ %198, %200 ], [ %204, %206 ], [ %210, %212 ], [ %216, %218 ], [ %222, %224 ], [ %228, %230 ], [ %234, %236 ], [ %240, %242 ], [ %246, %248 ], [ %252, %254 ], [ %258, %260 ], [ %264, %266 ], [ %270, %272 ]
  ret i32 %275
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_lock_status(ptr noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca %struct.drxjscu_cmd, align 4
  %4 = alloca [2 x i16], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %49, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drxj_data, ptr %12, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  store i32 1, ptr %1, align 4
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %15, 10
  br i1 %16, label %17, label %49

17:                                               ; preds = %9
  %18 = trunc i32 %15 to i16
  %19 = lshr i16 897, %18
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds [10 x i16], ptr @switch.table.ctrl_lock_status, i32 0, i32 %15
  %24 = load i16, ptr %23, align 2
  %25 = getelementptr inbounds [10 x i32], ptr @switch.table.ctrl_lock_status.47, i32 0, i32 %15
  %26 = load i32, ptr %25, align 4
  store i16 %24, ptr %3, align 4
  %27 = getelementptr inbounds %struct.drxjscu_cmd, ptr %3, i32 0, i32 1
  store i16 0, ptr %27, align 2
  %28 = getelementptr inbounds %struct.drxjscu_cmd, ptr %3, i32 0, i32 2
  store i16 2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.drxjscu_cmd, ptr %3, i32 0, i32 3
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.drxjscu_cmd, ptr %3, i32 0, i32 4
  store ptr %4, ptr %30, align 4
  %31 = call fastcc i32 @scu_command(ptr noundef %10, ptr noundef nonnull %3)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_lock_status, i32 noundef %31) #14
  br label %49

35:                                               ; preds = %22
  %36 = load ptr, ptr %30, align 4
  %37 = getelementptr i16, ptr %36, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp ugt i32 %26, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, ptr %1, align 4
  br label %49

42:                                               ; preds = %35
  %43 = icmp sgt i16 %38, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  store i32 2, ptr %1, align 4
  br label %49

45:                                               ; preds = %42
  %46 = icmp ult i16 %38, -16384
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  store i32 11, ptr %1, align 4
  br label %49

48:                                               ; preds = %45
  store i32 0, ptr %1, align 4
  br label %49

49:                                               ; preds = %48, %47, %44, %41, %33, %17, %9, %2
  %50 = phi i32 [ %31, %33 ], [ -22, %2 ], [ -5, %9 ], [ 0, %44 ], [ 0, %48 ], [ 0, %47 ], [ 0, %41 ], [ -5, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_get_qam_sig_quality(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.i2c_device_addr, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drxj_data, ptr %12, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 49, i32 1
  store i8 0, ptr %17, align 1
  %18 = icmp eq ptr %10, null
  br i1 %18, label %209, label %19

19:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i16 0, ptr %9, align 2, !annotation !8
  %20 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %10, i32 noundef 37945364, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  %21 = load i8, ptr %9, align 2
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %27 = icmp eq i32 %20, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i16 0, ptr %8, align 2, !annotation !8
  %29 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %10, i32 noundef 37945365, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i16 0, ptr %7, align 2, !annotation !8
  %32 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %10, i32 noundef 37945366, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i16 0, ptr %6, align 2, !annotation !8
  %35 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %10, i32 noundef 37945367, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  %38 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %10, i32 noundef 38010949, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  %39 = load i8, ptr %5, align 2
  %40 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37, %34, %31, %28, %19
  %44 = phi i32 [ %20, %19 ], [ %29, %28 ], [ %32, %31 ], [ %35, %34 ], [ %38, %37 ]
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.get_qamrs_err_count, i32 noundef %44) #14
  br label %209

46:                                               ; preds = %37
  %47 = zext i8 %41 to i16
  %48 = shl nuw i16 %47, 8
  %49 = zext i8 %39 to i16
  %50 = and i16 %48, 3840
  %51 = or i16 %50, %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  %52 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %10, i32 noundef 21168151, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  %53 = load i8, ptr %4, align 2
  %54 = zext i8 %53 to i16
  %55 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i16
  %58 = shl nuw i16 %57, 8
  %59 = or i16 %58, %54
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %60 = icmp eq i32 %52, 0
  br i1 %60, label %61, label %209

61:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %62 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %10, i32 noundef 38010950, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  %63 = load i8, ptr %3, align 2
  %64 = zext i8 %63 to i16
  %65 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i16
  %68 = shl nuw i16 %67, 8
  %69 = or i16 %68, %64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %70 = icmp eq i32 %62, 0
  br i1 %70, label %71, label %209

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.drxj_data, ptr %12, i32 0, i32 21
  %73 = load i16, ptr %72, align 2
  %74 = getelementptr inbounds %struct.drxj_data, ptr %12, i32 0, i32 20
  %75 = load i16, ptr %74, align 4
  %76 = zext i16 %73 to i32
  %77 = zext i16 %75 to i32
  %78 = mul nuw i32 %77, %76
  %79 = getelementptr inbounds %struct.drxj_data, ptr %12, i32 0, i32 19
  %80 = load i16, ptr %79, align 2
  %81 = zext i16 %80 to i32
  %82 = mul i32 %78, %81
  %83 = getelementptr inbounds %struct.drxj_data, ptr %12, i32 0, i32 18
  %84 = load i16, ptr %83, align 4
  %85 = getelementptr inbounds %struct.drxj_data, ptr %12, i32 0, i32 17
  %86 = load i16, ptr %85, align 2
  %87 = zext i16 %84 to i32
  %88 = zext i16 %86 to i32
  %89 = mul nuw i32 %88, %87
  %90 = getelementptr inbounds %struct.drxj_data, ptr %12, i32 0, i32 16
  %91 = load i16, ptr %90, align 4
  %92 = zext i16 %91 to i32
  %93 = mul i32 %89, %92
  %94 = add i32 %16, -3
  %95 = icmp ult i32 %94, 5
  br i1 %95, label %96, label %218

96:                                               ; preds = %71
  %97 = icmp eq i16 %59, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds [5 x i32], ptr @switch.table.ctrl_get_qam_sig_quality, i32 0, i32 %94
  %100 = load i32, ptr %99, align 4
  %101 = call fastcc i32 @log1_times100(i32 noundef %100)
  %102 = zext i16 %59 to i32
  %103 = call fastcc i32 @log1_times100(i32 noundef %102)
  %104 = sub i32 %101, %103
  %105 = and i32 %104, 65535
  %106 = mul nuw nsw i32 %105, 100
  br label %107

107:                                              ; preds = %98, %96
  %108 = phi i32 [ %106, %98 ], [ 0, %96 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i16 0, ptr %2, align 2, !annotation !8
  %109 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %10, i32 noundef 21364761, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  %110 = load i8, ptr %2, align 2
  %111 = zext i8 %110 to i16
  %112 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i16
  %115 = shl nuw i16 %114, 8
  %116 = or i16 %115, %111
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %117 = icmp eq i32 %109, 0
  br i1 %117, label %118, label %209

118:                                              ; preds = %107
  %119 = zext i16 %116 to i32
  %120 = lshr i32 %119, 12
  %121 = and i32 %119, 4095
  %122 = shl nuw nsw i32 %121, %120
  %123 = icmp ugt i32 %122, 4398023
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = mul i32 %93, 500000
  %126 = icmp ugt i16 %116, 12287
  %127 = select i1 %126, i32 1, i32 8
  %128 = mul i32 %125, %127
  %129 = lshr exact i32 %128, 3
  br label %135

130:                                              ; preds = %118
  %131 = icmp ugt i16 %116, 12287
  %132 = add nsw i32 %120, -3
  %133 = select i1 %131, i32 %132, i32 %120
  %134 = shl nuw nsw i32 %121, %133
  br label %135

135:                                              ; preds = %130, %124
  %136 = phi i32 [ %129, %124 ], [ %134, %130 ]
  %137 = lshr i32 %25, 4
  %138 = and i32 %26, 3840
  %139 = or i32 %138, %22
  %140 = shl nuw nsw i32 %139, %137
  %141 = add nuw nsw i32 %137, 1
  %142 = lshr i32 %82, %141
  %143 = icmp ugt i32 %139, %142
  %144 = lshr i32 %82, %137
  %145 = icmp eq i32 %144, 0
  %146 = select i1 %143, i1 true, i1 %145
  %147 = mul i32 %82, 500000
  %148 = lshr i32 %147, %137
  %149 = select i1 %146, i32 %148, i32 %140
  %150 = icmp eq i16 %69, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %135
  %152 = zext i16 %51 to i32
  %153 = mul nuw i32 %152, 742686
  %154 = zext i16 %69 to i32
  %155 = mul nuw nsw i32 %154, 100
  %156 = udiv i32 %153, %155
  br label %157

157:                                              ; preds = %151, %135
  %158 = phi i32 [ %153, %151 ], [ %137, %135 ]
  %159 = phi i32 [ %156, %151 ], [ -1, %135 ]
  %160 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 45, i32 1
  store i8 3, ptr %160, align 1
  %161 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 47, i32 1
  store i8 3, ptr %161, align 1
  %162 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 44, i32 1
  store i8 3, ptr %162, align 1
  %163 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 46, i32 1
  store i8 3, ptr %163, align 1
  %164 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 48, i32 1
  store i8 3, ptr %164, align 1
  %165 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 43, i32 1
  store i8 1, ptr %165, align 1
  %166 = zext i32 %108 to i64
  %167 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %166, ptr %167, align 1
  %168 = getelementptr inbounds %struct.drxj_data, ptr %12, i32 0, i32 10
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 9
  br i1 %170, label %171, label %186

171:                                              ; preds = %157
  %172 = zext i32 %136 to i64
  %173 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 44, i32 1, i32 0, i32 1
  %174 = load i64, ptr %173, align 1
  %175 = add i64 %174, %172
  store i64 %175, ptr %173, align 1
  %176 = icmp ugt i32 %158, 2
  %177 = select i1 %176, i32 1, i32 8
  %178 = mul i32 %177, %93
  %179 = lshr i32 %178, 3
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 45, i32 1, i32 0, i32 1
  %182 = load i64, ptr %181, align 1
  %183 = add i64 %182, %180
  store i64 %183, ptr %181, align 1
  %184 = lshr i32 %82, %158
  %185 = zext i32 %184 to i64
  br label %196

186:                                              ; preds = %157
  %187 = zext i32 %149 to i64
  %188 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 44, i32 1, i32 0, i32 1
  %189 = load i64, ptr %188, align 1
  %190 = add i64 %189, %187
  store i64 %190, ptr %188, align 1
  %191 = lshr i32 %82, %158
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 45, i32 1, i32 0, i32 1
  %194 = load i64, ptr %193, align 1
  %195 = add i64 %194, %192
  store i64 %195, ptr %193, align 1
  br label %196

196:                                              ; preds = %186, %171
  %197 = phi i64 [ %192, %186 ], [ %185, %171 ]
  %198 = zext i32 %159 to i64
  %199 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 46, i32 1, i32 0, i32 1
  %200 = load i64, ptr %199, align 1
  %201 = add i64 %200, %198
  store i64 %201, ptr %199, align 1
  %202 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 47, i32 1, i32 0, i32 1
  %203 = load i64, ptr %202, align 1
  %204 = add i64 %203, %197
  store i64 %204, ptr %202, align 1
  %205 = zext i16 %51 to i64
  %206 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 48, i32 1, i32 0, i32 1
  %207 = load i64, ptr %206, align 1
  %208 = add i64 %207, %205
  store i64 %208, ptr %206, align 1
  br label %218

209:                                              ; preds = %107, %61, %46, %43, %1
  %210 = phi i32 [ -22, %1 ], [ %44, %43 ], [ %52, %46 ], [ %62, %61 ], [ %109, %107 ]
  %211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ctrl_get_qam_sig_quality, i32 noundef %210) #14
  %212 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 45, i32 1
  store i8 0, ptr %212, align 1
  %213 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 47, i32 1
  store i8 0, ptr %213, align 1
  %214 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 44, i32 1
  store i8 0, ptr %214, align 1
  %215 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 46, i32 1
  store i8 0, ptr %215, align 1
  %216 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 48, i32 1
  store i8 0, ptr %216, align 1
  %217 = getelementptr inbounds %struct.drx39xxj_state, ptr %14, i32 0, i32 2, i32 8, i32 43, i32 1
  store i8 0, ptr %217, align 1
  br label %218

218:                                              ; preds = %209, %196, %71
  %219 = phi i32 [ %210, %209 ], [ 0, %196 ], [ -5, %71 ]
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @qam_flip_spec(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [4 x i8], align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x i8], align 2
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i16, align 2
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.drx_demod_instance, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #13
  store i32 0, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #13
  store i32 0, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #13
  store i16 0, ptr %23, align 2
  %27 = icmp eq ptr %24, null
  br i1 %27, label %195, label %28

28:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #13
  store i16 0, ptr %20, align 2, !annotation !8
  %29 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %24, i32 noundef 8593331, i16 noundef zeroext 2, ptr noundef nonnull %20, i32 noundef 0) #13
  %30 = load i8, ptr %20, align 2
  %31 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #13
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %34, label %195

34:                                               ; preds = %28
  %35 = and i8 %30, -23
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #13
  store i8 %35, ptr %19, align 2
  %36 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  store i8 %32, ptr %36, align 1
  %37 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 8593331, i16 noundef zeroext 2, ptr noundef nonnull %19, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %195

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #13
  store i8 0, ptr %18, align 2
  %40 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  store i8 0, ptr %40, align 1
  %41 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 21299218, i16 noundef zeroext 2, ptr noundef nonnull %18, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %195

43:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #13
  store i8 0, ptr %17, align 2
  %44 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  store i8 0, ptr %44, align 1
  %45 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 21299219, i16 noundef zeroext 2, ptr noundef nonnull %17, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %195

47:                                               ; preds = %43
  %48 = call fastcc i32 @drxj_dap_atomic_read_reg32(ptr noundef nonnull %24, i32 noundef 25296912, ptr noundef nonnull %21)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %195

50:                                               ; preds = %47
  %51 = call fastcc i32 @drxj_dap_atomic_read_reg32(ptr noundef nonnull %24, i32 noundef 25296914, ptr noundef nonnull %22)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %195

53:                                               ; preds = %50
  %54 = load i32, ptr %22, align 4
  %55 = load i32, ptr %21, align 4
  %56 = sub i32 %55, %54
  %57 = shl i32 %56, 1
  %58 = sub i32 %57, %55
  store i32 %58, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #13
  store i16 0, ptr %16, align 2, !annotation !8
  %59 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %24, i32 noundef 21233680, i16 noundef zeroext 2, ptr noundef nonnull %16, i32 noundef 0) #13
  %60 = load i8, ptr %16, align 2
  %61 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #13
  %63 = icmp eq i32 %59, 0
  br i1 %63, label %64, label %195

64:                                               ; preds = %53
  %65 = zext i8 %62 to i16
  %66 = shl nuw i16 %65, 8
  %67 = and i8 %60, -7
  %68 = zext i8 %67 to i16
  %69 = or i16 %66, %68
  store i16 %69, ptr %23, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #13
  store i8 %67, ptr %15, align 2
  %70 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  store i8 %62, ptr %70, align 1
  %71 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 21233680, i16 noundef zeroext 2, ptr noundef nonnull %15, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #13
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %195

73:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #13
  store i8 %67, ptr %14, align 2
  %74 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  store i8 %62, ptr %74, align 1
  %75 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 21102608, i16 noundef zeroext 2, ptr noundef nonnull %14, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #13
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %195

77:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i8 0, ptr %13, align 2
  %78 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  store i8 0, ptr %78, align 1
  %79 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 21299221, i16 noundef zeroext 2, ptr noundef nonnull %13, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %195

81:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i8 0, ptr %12, align 2
  %82 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  store i8 0, ptr %82, align 1
  %83 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 21299222, i16 noundef zeroext 2, ptr noundef nonnull %12, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %195

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #13
  store i8 0, ptr %11, align 2
  %86 = getelementptr inbounds [2 x i8], ptr %11, i32 0, i32 1
  store i8 0, ptr %86, align 1
  %87 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 21102610, i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %195

89:                                               ; preds = %85
  %90 = load i32, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  %91 = trunc i32 %90 to i8
  store i8 %91, ptr %10, align 4
  %92 = lshr i32 %90, 8
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds [4 x i8], ptr %10, i32 0, i32 1
  store i8 %93, ptr %94, align 1
  %95 = lshr i32 %90, 16
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds [4 x i8], ptr %10, i32 0, i32 2
  store i8 %96, ptr %97, align 2
  %98 = lshr i32 %90, 24
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds [4 x i8], ptr %10, i32 0, i32 3
  store i8 %99, ptr %100, align 1
  %101 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 25296912, i16 noundef zeroext 4, ptr noundef nonnull %10, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %195

103:                                              ; preds = %89
  %104 = load i32, ptr %21, align 4
  %105 = getelementptr inbounds %struct.drxj_data, ptr %26, i32 0, i32 33
  store i32 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.drxj_data, ptr %26, i32 0, i32 34
  %107 = load i8, ptr %106, align 4, !range !9
  %108 = xor i8 %107, 1
  store i8 %108, ptr %106, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #13
  store i16 0, ptr %9, align 2, !annotation !8
  %109 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %24, i32 noundef 21233680, i16 noundef zeroext 2, ptr noundef nonnull %9, i32 noundef 0) #13
  %110 = load i8, ptr %9, align 2
  %111 = zext i8 %110 to i16
  %112 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i16
  %115 = shl nuw i16 %114, 8
  %116 = or i16 %115, %111
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #13
  %117 = icmp eq i32 %109, 0
  br i1 %117, label %118, label %195

118:                                              ; preds = %103
  %119 = and i16 %116, -7
  store i16 %119, ptr %23, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  %120 = trunc i16 %119 to i8
  store i8 %120, ptr %8, align 2
  %121 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  store i8 %113, ptr %121, align 1
  %122 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 21233680, i16 noundef zeroext 2, ptr noundef nonnull %8, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %195

124:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i8 %120, ptr %7, align 2
  %125 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  store i8 %113, ptr %125, align 1
  %126 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 21102608, i16 noundef zeroext 2, ptr noundef nonnull %7, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %195

128:                                              ; preds = %137
  %129 = add nuw nsw i32 %132, 1
  %130 = icmp eq i32 %129, 28
  br i1 %130, label %145, label %131

131:                                              ; preds = %128, %124
  %132 = phi i32 [ %129, %128 ], [ 0, %124 ]
  %133 = shl nuw i32 %132, 1
  %134 = add nuw nsw i32 %133, 21233697
  %135 = call fastcc i32 @drxj_dap_read_reg16(ptr noundef nonnull %24, i32 noundef %134, ptr noundef nonnull %23, i32 noundef 0)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %195

137:                                              ; preds = %131
  %138 = load i16, ptr %23, align 2
  %139 = sub i16 0, %138
  %140 = call fastcc i32 @drxj_dap_write_reg16(ptr noundef nonnull %24, i32 noundef %134, i16 noundef zeroext %139, i32 noundef 0)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %128, label %195

142:                                              ; preds = %151
  %143 = add nuw nsw i32 %146, 1
  %144 = icmp eq i32 %143, 24
  br i1 %144, label %156, label %145

145:                                              ; preds = %142, %128
  %146 = phi i32 [ %143, %142 ], [ 0, %128 ]
  %147 = shl nuw i32 %146, 1
  %148 = add nuw nsw i32 %147, 21102625
  %149 = call fastcc i32 @drxj_dap_read_reg16(ptr noundef nonnull %24, i32 noundef %148, ptr noundef nonnull %23, i32 noundef 0)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %195

151:                                              ; preds = %145
  %152 = load i16, ptr %23, align 2
  %153 = sub i16 0, %152
  %154 = call fastcc i32 @drxj_dap_write_reg16(ptr noundef nonnull %24, i32 noundef %148, i16 noundef zeroext %153, i32 noundef 0)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %142, label %195

156:                                              ; preds = %142
  store i16 %116, ptr %23, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i8 %110, ptr %6, align 2
  %157 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 %113, ptr %157, align 1
  %158 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 21233680, i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %195

160:                                              ; preds = %156
  %161 = load i16, ptr %23, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  %162 = trunc i16 %161 to i8
  store i8 %162, ptr %5, align 2
  %163 = lshr i16 %161, 8
  %164 = trunc i16 %163 to i8
  %165 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %164, ptr %165, align 1
  %166 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 21102608, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %195

168:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i8 4, ptr %4, align 2
  %169 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %169, align 1
  %170 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 8593291, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %195

172:                                              ; preds = %168
  %173 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  br label %174

174:                                              ; preds = %180, %172
  %175 = phi i16 [ %188, %180 ], [ 0, %172 ]
  %176 = phi i32 [ %181, %180 ], [ 0, %172 ]
  %177 = icmp ne i16 %175, 4
  %178 = icmp ult i32 %176, 100
  %179 = select i1 %177, i1 %178, i1 false
  br i1 %179, label %180, label %190

180:                                              ; preds = %174
  %181 = add nuw nsw i32 %176, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %182 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %24, i32 noundef 8593354, i16 noundef zeroext 2, ptr noundef nonnull %3, i32 noundef 0) #13
  %183 = load i8, ptr %3, align 2
  %184 = zext i8 %183 to i16
  %185 = load i8, ptr %173, align 1
  %186 = zext i8 %185 to i16
  %187 = shl nuw i16 %186, 8
  %188 = or i16 %187, %184
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %189 = icmp eq i32 %182, 0
  br i1 %189, label %174, label %195

190:                                              ; preds = %174
  %191 = or i8 %30, 22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i8 %191, ptr %2, align 2
  %192 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %32, ptr %192, align 1
  %193 = call fastcc i32 @drxdap_fasi_write_block(ptr noundef nonnull %24, i32 noundef 8593331, i16 noundef zeroext 2, ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %190, %180, %168, %160, %156, %151, %145, %137, %131, %124, %118, %103, %89, %85, %81, %77, %73, %64, %53, %50, %47, %43, %39, %34, %28, %1
  %196 = phi i32 [ %29, %28 ], [ -22, %1 ], [ %37, %34 ], [ %41, %39 ], [ %45, %43 ], [ %48, %47 ], [ %51, %50 ], [ %59, %53 ], [ %71, %64 ], [ %75, %73 ], [ %79, %77 ], [ %83, %81 ], [ %87, %85 ], [ %101, %89 ], [ %109, %103 ], [ %122, %118 ], [ %126, %124 ], [ %158, %156 ], [ %166, %160 ], [ %170, %168 ], [ %193, %190 ], [ %182, %180 ], [ %149, %145 ], [ %154, %151 ], [ %135, %131 ], [ %140, %137 ]
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.qam_flip_spec, i32 noundef %196) #14
  br label %198

198:                                              ; preds = %195, %190
  %199 = phi i32 [ 0, %190 ], [ %196, %195 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #13
  ret i32 %199
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define internal fastcc i32 @log1_times100(i32 noundef %0) unnamed_addr #11 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %96, label %3

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 65536
  br i1 %4, label %5, label %67

5:                                                ; preds = %3
  %6 = and i32 %0, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %75

8:                                                ; preds = %5
  %9 = shl nuw nsw i32 %0, 1
  %10 = and i32 %0, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %75

12:                                               ; preds = %8
  %13 = shl nuw nsw i32 %0, 2
  %14 = and i32 %0, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = shl nuw nsw i32 %0, 3
  %18 = and i32 %0, 4096
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %16
  %21 = shl nuw nsw i32 %0, 4
  %22 = and i32 %0, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %20
  %25 = shl nuw nsw i32 %0, 5
  %26 = and i32 %0, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %24
  %29 = shl nuw nsw i32 %0, 6
  %30 = and i32 %0, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = shl nuw nsw i32 %0, 7
  %34 = and i32 %0, 256
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %32
  %37 = shl nuw nsw i32 %0, 8
  %38 = and i32 %0, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %36
  %41 = shl nuw nsw i32 %0, 9
  %42 = and i32 %0, 64
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %40
  %45 = shl nuw nsw i32 %0, 10
  %46 = and i32 %0, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  %49 = shl nuw nsw i32 %0, 11
  %50 = and i32 %0, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = shl nuw nsw i32 %0, 12
  %54 = and i32 %0, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = shl nuw nsw i32 %0, 13
  %58 = and i32 %0, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = and i32 %0, 2
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 15, i32 14
  %64 = shl nuw nsw i32 %0, %63
  %65 = xor i1 %62, true
  %66 = zext i1 %65 to i32
  br label %75

67:                                               ; preds = %67, %3
  %68 = phi i32 [ %71, %67 ], [ 15, %3 ]
  %69 = phi i32 [ %70, %67 ], [ %0, %3 ]
  %70 = lshr i32 %69, 1
  %71 = add nuw nsw i32 %68, 1
  %72 = icmp ugt i32 %68, 29
  %73 = icmp ult i32 %69, 131072
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %75, label %67

75:                                               ; preds = %67, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8, %5
  %76 = phi i32 [ %0, %5 ], [ %9, %8 ], [ %13, %12 ], [ %17, %16 ], [ %21, %20 ], [ %25, %24 ], [ %29, %28 ], [ %33, %32 ], [ %37, %36 ], [ %41, %40 ], [ %45, %44 ], [ %49, %48 ], [ %53, %52 ], [ %57, %56 ], [ %64, %60 ], [ %70, %67 ]
  %77 = phi i32 [ 15, %5 ], [ 14, %8 ], [ 13, %12 ], [ 12, %16 ], [ 11, %20 ], [ 10, %24 ], [ 9, %28 ], [ 8, %32 ], [ 7, %36 ], [ 6, %40 ], [ 5, %44 ], [ 4, %48 ], [ 3, %52 ], [ 2, %56 ], [ %66, %60 ], [ %71, %67 ]
  %78 = mul nuw nsw i32 %77, 6553600
  %79 = lshr i32 %76, 10
  %80 = and i32 %79, 31
  %81 = and i32 %76, 1023
  %82 = getelementptr [33 x i32], ptr @log1_times100.log2lut, i32 0, i32 %80
  %83 = load i32, ptr %82, align 4
  %84 = add nuw nsw i32 %80, 1
  %85 = getelementptr [33 x i32], ptr @log1_times100.log2lut, i32 0, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = sub i32 %86, %83
  %88 = mul i32 %87, %81
  %89 = lshr i32 %88, 10
  %90 = add i32 %78, %83
  %91 = add i32 %90, %89
  %92 = udiv i32 %91, 108853
  %93 = lshr i32 %92, 1
  %94 = and i32 %92, 1
  %95 = add nuw nsw i32 %93, %94
  br label %96

96:                                               ; preds = %75, %1
  %97 = phi i32 [ %95, %75 ], [ 0, %1 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drxj_dap_atomic_read_reg32(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.drxj_hi_cmd, align 2
  %7 = alloca i16, align 2
  %8 = icmp eq ptr %2, null
  br i1 %8, label %57, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %6) #13
  %10 = getelementptr inbounds i8, ptr %6, i32 12
  store i16 0, ptr %10, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #13
  store i16 0, ptr %7, align 2
  %11 = icmp eq ptr %0, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %6) #13
  br label %57

13:                                               ; preds = %9
  store i16 8, ptr %6, align 2
  %14 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %6, i32 0, i32 1
  store i16 66, ptr %14, align 2
  %15 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %6, i32 0, i32 2
  store i16 64, ptr %15, align 2
  %16 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %6, i32 0, i32 3
  store i16 1, ptr %16, align 2
  %17 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %6, i32 0, i32 4
  store i16 386, ptr %17, align 2
  %18 = trunc i32 %1 to i16
  %19 = and i16 %18, 32767
  %20 = getelementptr inbounds %struct.drxj_hi_cmd, ptr %6, i32 0, i32 5
  store i16 %19, ptr %20, align 2
  %21 = call fastcc i32 @hi_command(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  %24 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %0, i32 noundef 4325440, i16 noundef zeroext 2, ptr noundef nonnull %4, i32 noundef 0) #13
  %25 = load i8, ptr %4, align 2
  %26 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  %30 = call fastcc i32 @drxdap_fasi_read_block(ptr noundef nonnull %0, i32 noundef 4325441, i16 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 0) #13
  %31 = load i8, ptr %5, align 2
  %32 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %34 = icmp eq i32 %30, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = zext i8 %33 to i32
  %37 = zext i8 %31 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %6) #13
  %38 = shl nuw nsw i32 %36, 16
  %39 = shl nuw nsw i32 %37, 8
  %40 = or i32 %38, %39
  br label %47

41:                                               ; preds = %29, %23, %13
  %42 = phi i32 [ %21, %13 ], [ %30, %29 ], [ %24, %23 ]
  %43 = phi i8 [ 0, %13 ], [ %27, %29 ], [ 0, %23 ]
  %44 = phi i8 [ 0, %13 ], [ %25, %29 ], [ 0, %23 ]
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.drxj_dap_atomic_read_write_block, i32 noundef %42) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %6) #13
  %46 = icmp slt i32 %42, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %41, %35
  %48 = phi i32 [ 0, %35 ], [ %42, %41 ]
  %49 = phi i8 [ %25, %35 ], [ %44, %41 ]
  %50 = phi i8 [ %27, %35 ], [ %43, %41 ]
  %51 = phi i32 [ %40, %35 ], [ 0, %41 ]
  %52 = zext i8 %50 to i32
  %53 = or i32 %51, %52
  %54 = shl nuw i32 %53, 8
  %55 = zext i8 %49 to i32
  %56 = or i32 %54, %55
  store i32 %56, ptr %2, align 4
  br label %57

57:                                               ; preds = %47, %41, %12, %3
  %58 = phi i32 [ %48, %47 ], [ -22, %3 ], [ 0, %41 ], [ 0, %12 ]
  ret i32 %58
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

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
!10 = !{i64 760605, i64 760632}
!11 = !{i64 760945, i64 760972, i64 761006, i64 761027}
