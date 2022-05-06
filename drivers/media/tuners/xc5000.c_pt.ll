; ModuleID = '/llk/IR/drivers/media/tuners/xc5000.c_pt.bc'
source_filename = "../drivers/media/tuners/xc5000.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xc5000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22xc5000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_xc5000_attach:\09\09\09\09\09"
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
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xc5000_fw_cfg = type { ptr, i16, i16, i8, i8 }
%struct.XC_TV_STANDARD = type { ptr, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.xc5000_priv = type { %struct.tuner_i2c_props, %struct.list_head, i32, i16, i32, i32, i32, i8, i32, i8, i8, i16, i32, i16, i8, i8, ptr, %struct.delayed_work, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
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
%struct.xc5000_config = type { i8, i32, i8, i16, i16, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [48 x i8] c"parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@__param_str_no_poweroff = internal constant [12 x i8] c"no_poweroff\00", align 1
@no_poweroff = internal global i32 0, align 4
@__param_no_poweroff = internal constant %struct.kernel_param { ptr @__param_str_no_poweroff, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @no_poweroff } }, section "__param", align 4
@__UNIQUE_ID_no_powerofftype251 = internal constant [25 x i8] c"parmtype=no_poweroff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_no_poweroff252 = internal constant [186 x i8] c"parm=no_poweroff:0 (default) powers device off when not used.\0A\09\091 keep device energized and with tuner ready all the times.\0A\09\09Faster, but consumes more power and keeps the device hotter\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"\016%s: %s(%d-%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"xc5000\00", align 1
@__func__.xc5000_attach = private unnamed_addr constant [14 x i8] c"xc5000_attach\00", align 1
@xc5000_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xc5000_list_mutex, i64 12), ptr getelementptr (i8, ptr @xc5000_list_mutex, i64 12) } }, align 4
@hybrid_tuner_instance_list = internal global %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"\016xc5000: Successfully identified at address 0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"\016xc5000: Firmware has been loaded previously\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"\016xc5000: Firmware has not been loaded previously\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"\013xc5000: Device not found at addr 0x%02x (0x%x)\0A\00", align 1
@xc5000_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Xceive XC5000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 1023000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @xc5000_release, ptr @xc5000_init, ptr @xc5000_sleep, ptr @xc5000_suspend, ptr @xc5000_resume, ptr @xc5000_set_digital_params, ptr @xc5000_set_analog_params, ptr @xc5000_set_config, ptr @xc5000_get_frequency, ptr @xc5000_get_bandwidth, ptr @xc5000_get_if_frequency, ptr @xc5000_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_xc5000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_xc5000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_xc5000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xc5000_attach to i32), ptr @__kstrtab_xc5000_attach, ptr @__kstrtabns_xc5000_attach }, section "___ksymtab+xc5000_attach", align 4
@__UNIQUE_ID_author253 = internal constant [19 x i8] c"author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [47 x i8] c"description=Xceive xc5000 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [34 x i8] c"firmware=dvb-fe-xc5000-1.6.114.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [36 x i8] c"firmware=dvb-fe-xc5000c-4.1.30.7.fw\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"\016%s: %s()\0A\00", align 1
@__func__.xc5000_do_timer_sleep = private unnamed_addr constant [22 x i8] c"xc5000_do_timer_sleep\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"\013xc5000: %s() unable to shutdown tuner\0A\00", align 1
@__func__.xc5000_tuner_reset = private unnamed_addr constant [19 x i8] c"xc5000_tuner_reset\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"\013xc5000: reset failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"\013xc5000: no tuner reset callback function, fatal\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"\014xc5000: I2C read failed\0A\00", align 1
@__func__.xc5000_init = private unnamed_addr constant [12 x i8] c"xc5000_init\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"\013xc5000: Unable to initialise tuner\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\013xc5000: Upload failed. rc %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"\016%s: firmware read %zu bytes.\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"\013xc5000: Firmware file with incorrect size\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"\01c - retrying to upload firmware.\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"\013xc5000: FW checksum reading failed.\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"\013xc5000: FW checksum failed = 0x%04x.\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"\013xc5000: Can't request self-calibration.\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"\013xc5000: FW failed reading init status.\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"\013xc5000: FW init status failed = 0x%04x.\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"\013xc5000: PLL not running after fwload.\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"\013xc5000: can't set to cable mode.\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"\016xc5000: Firmware %s loaded and running.\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"\01c - too many retries. Giving up\0A\00", align 1
@xc5000a_1_6_114 = internal unnamed_addr constant %struct.xc5000_fw_cfg { ptr @.str.27, i16 12401, i16 -32660, i8 0, i8 0 }, align 4
@xc5000c_41_024_5 = internal unnamed_addr constant %struct.xc5000_fw_cfg { ptr @.str.28, i16 16497, i16 19, i8 1, i8 1 }, align 4
@.str.27 = private unnamed_addr constant [25 x i8] c"dvb-fe-xc5000-1.6.114.fw\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"dvb-fe-xc5000c-4.1.30.7.fw\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"\016%s: %s() returns id = 0x%x\0A\00", align 1
@__func__.xc5000_is_firmware_loaded = private unnamed_addr constant [26 x i8] c"xc5000_is_firmware_loaded\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"\016%s: %s() returns error %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"\016%s: waiting for firmware upload (%s)...\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"\016%s: firmware uploading...\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"\016%s: Firmware upload complete...\0A\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"\013xc5000: firmware upload failed...\0A\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"\013xc5000: I2C write failed (len=%i)\0A\00", align 1
@__func__.xc_initialize = private unnamed_addr constant [14 x i8] c"xc_initialize\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"\016%s: *** ADC envelope (0-1023) = %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"\016%s: *** Frequency error = %d Hz\0A\00", align 1
@.str.38 = private unnamed_addr constant [60 x i8] c"\016%s: *** Lock status (0-Wait, 1-Locked, 2-No-signal) = %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"\016%s: *** HW: V%d.%d, FW: V %d.%d.%d\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"\016%s: *** Horizontal sync frequency = %d Hz\0A\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"\016%s: *** Frame lines = %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"\016%s: *** Quality (0:<8dB, 7:>56dB) = %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"\016%s: *** Unweighted analog SNR = %d dB\0A\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"\016%s: *** Total gain = %d.%d dB\0A\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"\016%s: *** PLL lock status = 0x%04x\0A\00", align 1
@__func__.xc5000_sleep = private unnamed_addr constant [13 x i8] c"xc5000_sleep\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__func__.xc5000_suspend = private unnamed_addr constant [15 x i8] c"xc5000_suspend\00", align 1
@__func__.xc5000_resume = private unnamed_addr constant [14 x i8] c"xc5000_resume\00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"\016%s: Unable to load firmware and init tuner\0A\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"\016%s: %s() unknown radio input %d\0A\00", align 1
@__func__.xc5000_set_radio_freq = private unnamed_addr constant [22 x i8] c"xc5000_set_radio_freq\00", align 1
@xc5000_standard = internal unnamed_addr constant [24 x %struct.XC_TV_STANDARD] [%struct.XC_TV_STANDARD { ptr @.str.52, i16 1024, i16 -32736 }, %struct.XC_TV_STANDARD { ptr @.str.53, i16 1536, i16 -32736 }, %struct.XC_TV_STANDARD { ptr @.str.54, i16 1088, i16 -32736 }, %struct.XC_TV_STANDARD { ptr @.str.55, i16 1144, i16 -32736 }, %struct.XC_TV_STANDARD { ptr @.str.56, i16 2560, i16 -32695 }, %struct.XC_TV_STANDARD { ptr @.str.57, i16 3076, i16 -32695 }, %struct.XC_TV_STANDARD { ptr @.str.58, i16 2168, i16 -32679 }, %struct.XC_TV_STANDARD { ptr @.str.59, i16 4224, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.60, i16 3704, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.61, i16 5632, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.62, i16 3712, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.63, i16 5240, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.64, i16 4608, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.65, i16 3584, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.66, i16 5240, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.67, i16 -29054, i16 9 }, %struct.XC_TV_STANDARD { ptr @.str.68, i16 -29054, i16 16393 }, %struct.XC_TV_STANDARD { ptr @.str.69, i16 192, i16 -32766 }, %struct.XC_TV_STANDARD { ptr @.str.70, i16 192, i16 -32757 }, %struct.XC_TV_STANDARD { ptr @.str.71, i16 192, i16 -32741 }, %struct.XC_TV_STANDARD { ptr @.str.72, i16 192, i16 -32761 }, %struct.XC_TV_STANDARD { ptr @.str.73, i16 -26622, i16 -28670 }, %struct.XC_TV_STANDARD { ptr @.str.74, i16 520, i16 -28670 }, %struct.XC_TV_STANDARD { ptr @.str.75, i16 632, i16 -28670 }], align 4
@.str.48 = private unnamed_addr constant [37 x i8] c"\013xc5000: xc_set_tv_standard failed\0A\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"\013xc5000: xc_set_signal_source(%d) failed\0A\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"\016%s: %s(0x%04x,0x%04x)\0A\00", align 1
@__func__.xc_set_tv_standard = private unnamed_addr constant [19 x i8] c"xc_set_tv_standard\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"\016%s: %s() Standard = %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"M/N-NTSC/PAL-BTSC\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"M/N-NTSC/PAL-A2\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"M/N-NTSC/PAL-EIAJ\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"M/N-NTSC/PAL-Mono\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"B/G-PAL-A2\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"B/G-PAL-NICAM\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"B/G-PAL-MONO\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"I-PAL-NICAM\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"I-PAL-NICAM-MONO\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"D/K-PAL-A2\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"D/K-PAL-NICAM\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"D/K-PAL-MONO\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"D/K-SECAM-A2 DK1\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"D/K-SECAM-A2 L/DK3\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"D/K-SECAM-A2 MONO\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"L-SECAM-NICAM\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"L'-SECAM-NICAM\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"DTV6\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"DTV8\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"DTV7/8\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"DTV7\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"FM Radio-INPUT2\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"FM Radio-INPUT1\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"FM Radio-INPUT1_MONO\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"\016%s: %s(%d) Source = %s\0A\00", align 1
@__func__.xc_set_signal_source = private unnamed_addr constant [21 x i8] c"xc_set_signal_source\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"ANTENNA\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"CABLE\00", align 1
@.str.79 = private unnamed_addr constant [42 x i8] c"\013%s(), Invalid mode, defaulting to CABLE\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"\016%s: %s(%u)\0A\00", align 1
@__func__.xc_tune_channel = private unnamed_addr constant [16 x i8] c"xc_tune_channel\00", align 1
@__func__.xc_set_rf_frequency = private unnamed_addr constant [20 x i8] c"xc_set_rf_frequency\00", align 1
@.str.81 = private unnamed_addr constant [52 x i8] c"\016%s: xc5000: PLL not locked (0x%x).  Reloading...\0A\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"\013xc5000: Unable to reload fw\0A\00", align 1
@.str.83 = private unnamed_addr constant [42 x i8] c"\013xc5000: xc_Set_IF_frequency(%d) failed\0A\00", align 1
@.str.84 = private unnamed_addr constant [39 x i8] c"\016%s: %s() setting OUTPUT_AMP to 0x%x\0A\00", align 1
@__func__.xc5000_tune_digital = private unnamed_addr constant [20 x i8] c"xc5000_tune_digital\00", align 1
@.str.85 = private unnamed_addr constant [42 x i8] c"\016%s: %s(freq_khz = %d) freq_code = 0x%x\0A\00", align 1
@__func__.xc_set_IF_frequency = private unnamed_addr constant [20 x i8] c"xc_set_IF_frequency\00", align 1
@.str.86 = private unnamed_addr constant [30 x i8] c"\016%s: %s() frequency=%d (Hz)\0A\00", align 1
@__func__.xc5000_set_digital_params = private unnamed_addr constant [26 x i8] c"xc5000_set_digital_params\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"\016%s: %s() VSB modulation\0A\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"\016%s: %s() QAM modulation\0A\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"\016%s: %s() OFDM\0A\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c"\013xc5000 bandwidth not set!\0A\00", align 1
@.str.91 = private unnamed_addr constant [33 x i8] c"\016%s: %s() Bandwidth %dMHz (%d)\0A\00", align 1
@.str.92 = private unnamed_addr constant [45 x i8] c"\013xc5000: delivery system is not supported!\0A\00", align 1
@.str.93 = private unnamed_addr constant [45 x i8] c"\016%s: %s() frequency=%d (compensated to %d)\0A\00", align 1
@.str.94 = private unnamed_addr constant [43 x i8] c"\016%s: %s() frequency=%d (in units of khz)\0A\00", align 1
@__func__.xc5000_config_radio = private unnamed_addr constant [20 x i8] c"xc5000_config_radio\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c"\016%s: %s() radio input not configured\0A\00", align 1
@.str.96 = private unnamed_addr constant [47 x i8] c"\016%s: %s() frequency=%d (in units of 62.5khz)\0A\00", align 1
@__func__.xc5000_config_tv = private unnamed_addr constant [17 x i8] c"xc5000_config_tv\00", align 1
@__func__.xc5000_set_config = private unnamed_addr constant [18 x i8] c"xc5000_set_config\00", align 1
@__func__.xc5000_get_frequency = private unnamed_addr constant [21 x i8] c"xc5000_get_frequency\00", align 1
@__func__.xc5000_get_bandwidth = private unnamed_addr constant [21 x i8] c"xc5000_get_bandwidth\00", align 1
@__func__.xc5000_get_if_frequency = private unnamed_addr constant [24 x i8] c"xc5000_get_if_frequency\00", align 1
@.str.97 = private unnamed_addr constant [33 x i8] c"\016%s: %s() lock_status = 0x%08x\0A\00", align 1
@__func__.xc5000_get_status = private unnamed_addr constant [18 x i8] c"xc5000_get_status\00", align 1
@__func__.xc5000_release = private unnamed_addr constant [15 x i8] c"xc5000_release\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_license255, ptr @__UNIQUE_ID_no_poweroff252, ptr @__UNIQUE_ID_no_powerofftype251, ptr @__ksymtab_xc5000_attach, ptr @__param_debug, ptr @__param_no_poweroff], section "llvm.metadata"
@switch.table.xc5000_set_params = private unnamed_addr constant [3 x i32] [i32 22, i32 21, i32 23], align 4
@switch.table.xc5000_set_params.99 = private unnamed_addr constant [3 x i16] [i16 9, i16 9, i16 6], align 2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xc5000_attach(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = load i32, ptr @debug, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %13, %11 ], [ -1, %9 ]
  %16 = icmp eq ptr %2, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr %2, align 4
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ %19, %17 ], [ -1, %14 ]
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_attach, i32 noundef %15, i32 noundef %21) #8
  br label %23

23:                                               ; preds = %20, %3
  tail call void @mutex_lock(ptr noundef nonnull @xc5000_list_mutex) #9
  %24 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %25 = icmp eq ptr %24, @hybrid_tuner_instance_list
  br i1 %25, label %57, label %26

26:                                               ; preds = %23
  %27 = icmp eq ptr %1, null
  %28 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  br label %29

29:                                               ; preds = %45, %26
  %30 = phi ptr [ %24, %26 ], [ %46, %45 ]
  %31 = getelementptr i8, ptr %30, i32 -16
  br i1 %27, label %45, label %32

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %30, i32 -12
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.i2c_adapter, ptr %34, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = load i32, ptr %28, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8, ptr %2, align 4
  %43 = load i8, ptr %31, align 4
  %44 = icmp eq i8 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %41, %36, %32, %29
  %46 = load ptr, ptr %30, align 4
  %47 = icmp eq ptr %46, @hybrid_tuner_instance_list
  br i1 %47, label %57, label %29

48:                                               ; preds = %41
  %49 = getelementptr i8, ptr %30, i32 -4
  %50 = load ptr, ptr %49, align 4
  %51 = zext i8 %42 to i32
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %50, i32 noundef %38, i32 noundef %51) #8
  %53 = getelementptr i8, ptr %30, i32 -8
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %48, %45, %23
  %58 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %59 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 116) #10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %91, label %61

61:                                               ; preds = %57
  %62 = load i8, ptr %2, align 4
  store i8 %62, ptr %59, align 8
  %63 = getelementptr inbounds %struct.tuner_i2c_props, ptr %59, i32 0, i32 1
  store ptr %1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.tuner_i2c_props, ptr %59, i32 0, i32 3
  store ptr @.str.1, ptr %64, align 4
  %65 = icmp eq ptr %1, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %68 = load i32, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi i32 [ %68, %66 ], [ -1, %61 ]
  %71 = zext i8 %62 to i32
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %70, i32 noundef %71) #8
  %73 = getelementptr inbounds %struct.xc5000_priv, ptr %59, i32 0, i32 1
  %74 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr %73, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr @hybrid_tuner_instance_list, ptr %73, align 8
  %75 = getelementptr inbounds %struct.xc5000_priv, ptr %59, i32 0, i32 1, i32 1
  store ptr %74, ptr %75, align 4
  store volatile ptr %73, ptr %74, align 4
  %76 = getelementptr inbounds %struct.tuner_i2c_props, ptr %59, i32 0, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 8
  br label %79

79:                                               ; preds = %69, %48
  %80 = phi i32 [ %78, %69 ], [ %55, %48 ]
  %81 = phi ptr [ %59, %69 ], [ %31, %48 ]
  switch i32 %80, label %91 [
    i32 0, label %174
    i32 1, label %82
  ]

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.xc5000_priv, ptr %81, i32 0, i32 6
  store i32 6000000, ptr %83, align 4
  %84 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %81, ptr %84, align 4
  %85 = getelementptr inbounds %struct.xc5000_priv, ptr %81, i32 0, i32 16
  store ptr %0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.xc5000_priv, ptr %81, i32 0, i32 17
  store i32 -32, ptr %86, align 4
  %87 = getelementptr inbounds %struct.xc5000_priv, ptr %81, i32 0, i32 17, i32 0, i32 1
  store volatile ptr %87, ptr %87, align 4
  %88 = getelementptr inbounds %struct.xc5000_priv, ptr %81, i32 0, i32 17, i32 0, i32 1, i32 1
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.xc5000_priv, ptr %81, i32 0, i32 17, i32 0, i32 2
  store ptr @xc5000_do_timer_sleep, ptr %89, align 4
  %90 = getelementptr inbounds %struct.xc5000_priv, ptr %81, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %90, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #9
  br label %94

91:                                               ; preds = %79, %57
  %92 = phi ptr [ %81, %79 ], [ null, %57 ]
  %93 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %92, ptr %93, align 4
  br label %94

94:                                               ; preds = %91, %82
  %95 = phi ptr [ %92, %91 ], [ %81, %82 ]
  %96 = getelementptr inbounds %struct.xc5000_priv, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.xc5000_config, ptr %2, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  store i32 %101, ptr %96, align 4
  br label %102

102:                                              ; preds = %99, %94
  %103 = getelementptr inbounds %struct.xc5000_priv, ptr %95, i32 0, i32 3
  %104 = load i16, ptr %103, align 4
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.xc5000_config, ptr %2, i32 0, i32 3
  %108 = load i16, ptr %107, align 2
  store i16 %108, ptr %103, align 4
  br label %109

109:                                              ; preds = %106, %102
  %110 = getelementptr inbounds %struct.xc5000_priv, ptr %95, i32 0, i32 10
  %111 = load i8, ptr %110, align 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.xc5000_config, ptr %2, i32 0, i32 2
  %115 = load i8, ptr %114, align 4
  store i8 %115, ptr %110, align 1
  br label %116

116:                                              ; preds = %113, %109
  %117 = getelementptr inbounds %struct.xc5000_priv, ptr %95, i32 0, i32 12
  %118 = load i32, ptr %117, align 4
  %119 = icmp ne i32 %118, 0
  %120 = getelementptr inbounds %struct.xc5000_config, ptr %2, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %119, i1 %122, i1 false
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  store i32 %121, ptr %117, align 4
  br label %125

125:                                              ; preds = %124, %116
  %126 = getelementptr inbounds %struct.xc5000_priv, ptr %95, i32 0, i32 11
  %127 = load i16, ptr %126, align 2
  %128 = icmp ne i16 %127, 0
  %129 = getelementptr inbounds %struct.xc5000_config, ptr %2, i32 0, i32 4
  %130 = load i16, ptr %129, align 4
  %131 = icmp eq i16 %130, 0
  %132 = select i1 %128, i1 %131, i1 false
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  %134 = icmp eq i16 %130, 0
  %135 = select i1 %134, i16 138, i16 %130
  store i16 %135, ptr %126, align 2
  br label %136

136:                                              ; preds = %133, %125
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 0, ptr %4, align 2
  %137 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 8, ptr %137, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i16 0, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %138 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %138, i8 0, i32 16, i1 false) #9, !annotation !8
  %139 = load i8, ptr %95, align 4
  %140 = zext i8 %139 to i16
  store i16 %140, ptr %6, align 4
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %141, align 2
  store i16 2, ptr %138, align 4
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %142, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %140, ptr %143, align 4
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %144, align 2
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 2, ptr %145, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %146, align 4
  %147 = getelementptr inbounds %struct.tuner_i2c_props, ptr %95, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %6, i32 noundef 2) #9
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %153, label %151

151:                                              ; preds = %136
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %174

153:                                              ; preds = %136
  %154 = load i8, ptr %5, align 2
  %155 = zext i8 %154 to i16
  %156 = shl nuw i16 %155, 8
  %157 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i16
  %160 = or i16 %156, %159
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  switch i16 %160, label %162 [
    i16 5000, label %167
    i16 8192, label %161
  ]

161:                                              ; preds = %153
  br label %167

162:                                              ; preds = %153
  %163 = zext i16 %160 to i32
  %164 = load i8, ptr %2, align 4
  %165 = zext i8 %164 to i32
  %166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %165, i32 noundef %163) #8
  br label %174

167:                                              ; preds = %161, %153
  %168 = phi ptr [ @.str.6, %161 ], [ @.str.5, %153 ]
  %169 = load i8, ptr %2, align 4
  %170 = zext i8 %169 to i32
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %170) #8
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %168) #8
  call void @mutex_unlock(ptr noundef nonnull @xc5000_list_mutex) #9
  %173 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %173, ptr noundef nonnull align 4 dereferenceable(220) @xc5000_tuner_ops, i32 220, i1 false)
  br label %175

174:                                              ; preds = %162, %151, %79
  call void @mutex_unlock(ptr noundef nonnull @xc5000_list_mutex) #9
  call void @xc5000_release(ptr noundef %0)
  br label %175

175:                                              ; preds = %174, %167
  %176 = phi ptr [ null, %174 ], [ %0, %167 ]
  ret ptr %176
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xc5000_do_timer_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  br label %17

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_do_timer_sleep) #8
  %11 = load i32, ptr @debug, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_tuner_reset) #8
  br label %17

17:                                               ; preds = %15, %9, %6
  %18 = phi ptr [ %8, %6 ], [ %13, %15 ], [ %13, %9 ]
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dvb_adapter, ptr %24, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %26, %22
  %31 = getelementptr inbounds %struct.tuner_i2c_props, ptr %18, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi ptr [ %34, %30 ], [ %28, %26 ]
  %37 = tail call i32 %20(ptr noundef %36, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35, %17
  %40 = phi ptr [ @.str.10, %35 ], [ @.str.11, %17 ]
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %40) #8
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.xc5000_do_timer_sleep) #8
  br label %43

43:                                               ; preds = %39, %35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xc5000_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_release) #8
  br label %8

8:                                                ; preds = %6, %1
  tail call void @mutex_lock(ptr noundef nonnull @xc5000_list_mutex) #9
  %9 = icmp eq ptr %3, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 17
  %12 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %11) #9
  %13 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @release_firmware(ptr noundef nonnull %14) #9
  store ptr null, ptr %13, align 4
  br label %17

17:                                               ; preds = %16, %10
  %18 = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i32 [ %30, %28 ], [ -1, %22 ]
  %33 = load i8, ptr %3, align 4
  %34 = zext i8 %33 to i32
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %24, i32 noundef %32, i32 noundef %34) #8
  %36 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 1
  %37 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %41

41:                                               ; preds = %31, %17, %8
  tail call void @mutex_unlock(ptr noundef nonnull @xc5000_list_mutex) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc5000_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_init) #8
  br label %8

8:                                                ; preds = %6, %1
  %9 = tail call fastcc i32 @xc_load_fw_and_init_tuner(ptr noundef %0, i32 noundef 0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %17

13:                                               ; preds = %8
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call fastcc void @xc_debug_dump(ptr noundef %3)
  br label %17

17:                                               ; preds = %16, %13, %11
  %18 = phi i32 [ -121, %11 ], [ 0, %16 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc5000_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_sleep) #8
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, ptr @no_poweroff, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 17
  %13 = load ptr, ptr @system_wq, align 4
  %14 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %12, i32 noundef 500) #9
  br label %15

15:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc5000_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_suspend) #8
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 17
  %10 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %9) #9
  %11 = load ptr, ptr %2, align 4
  %12 = load i32, ptr @debug, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_tuner_reset) #8
  br label %16

16:                                               ; preds = %14, %8
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dvb_adapter, ptr %22, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.tuner_i2c_props, ptr %11, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi ptr [ %32, %28 ], [ %26, %24 ]
  %35 = tail call i32 %18(ptr noundef %34, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33, %16
  %38 = phi ptr [ @.str.10, %33 ], [ @.str.11, %16 ]
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %38) #8
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.xc5000_suspend) #8
  br label %41

41:                                               ; preds = %37, %33
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc5000_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_resume) #8
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @xc5000_set_params(ptr noundef %0)
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ %13, %12 ], [ 0, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc5000_set_digital_params(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = tail call fastcc i32 @xc_load_fw_and_init_tuner(ptr noundef %0, i32 noundef 0)
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr @debug, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %11, label %17, label %14

14:                                               ; preds = %1
  br i1 %13, label %15, label %101

15:                                               ; preds = %14
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1) #8
  br label %101

17:                                               ; preds = %1
  br i1 %13, label %18, label %20

18:                                               ; preds = %17
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_set_digital_params, i32 noundef %7) #8
  br label %20

20:                                               ; preds = %18, %17
  switch i32 %9, label %88 [
    i32 11, label %21
    i32 2, label %30
    i32 8, label %39
    i32 13, label %42
    i32 3, label %42
    i32 16, label %42
    i32 1, label %59
    i32 18, label %59
  ]

21:                                               ; preds = %20
  %22 = load i32, ptr @debug, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_set_digital_params) #8
  br label %26

26:                                               ; preds = %24, %21
  %27 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 9
  store i8 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 5
  store i32 1750000, ptr %28, align 4
  %29 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 7
  store i8 17, ptr %29, align 4
  br label %90

30:                                               ; preds = %20
  %31 = load i32, ptr @debug, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_set_digital_params) #8
  br label %35

35:                                               ; preds = %33, %30
  %36 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 9
  store i8 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 5
  store i32 1750000, ptr %37, align 4
  %38 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 7
  store i8 17, ptr %38, align 4
  br label %90

39:                                               ; preds = %20
  %40 = icmp eq i32 %6, 0
  %41 = select i1 %40, i32 6000000, i32 %6
  br label %42

42:                                               ; preds = %39, %20, %20, %20
  %43 = phi i32 [ %6, %20 ], [ %6, %20 ], [ %6, %20 ], [ %41, %39 ]
  %44 = load i32, ptr @debug, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_set_digital_params) #8
  br label %48

48:                                               ; preds = %46, %42
  switch i32 %43, label %51 [
    i32 6000000, label %53
    i32 7000000, label %49
    i32 8000000, label %50
  ]

49:                                               ; preds = %48
  br label %53

50:                                               ; preds = %48
  br label %53

51:                                               ; preds = %48
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #8
  br label %101

53:                                               ; preds = %50, %49, %48
  %54 = phi i8 [ 18, %50 ], [ 20, %49 ], [ 17, %48 ]
  %55 = phi i32 [ 2750000, %50 ], [ 2250000, %49 ], [ 1750000, %48 ]
  %56 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 7
  store i8 %54, ptr %56, align 4
  %57 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 5
  store i32 %55, ptr %57, align 4
  %58 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 9
  store i8 0, ptr %58, align 4
  br label %90

59:                                               ; preds = %20, %20
  %60 = load i32, ptr @debug, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_set_digital_params) #8
  br label %64

64:                                               ; preds = %62, %59
  %65 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 9
  store i8 1, ptr %65, align 4
  %66 = icmp ult i32 %6, 6000001
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 7
  store i8 17, ptr %68, align 4
  br label %74

69:                                               ; preds = %64
  %70 = icmp ult i32 %6, 7000001
  %71 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 7
  br i1 %70, label %72, label %73

72:                                               ; preds = %69
  store i8 20, ptr %71, align 4
  br label %74

73:                                               ; preds = %69
  store i8 19, ptr %71, align 4
  br label %74

74:                                               ; preds = %73, %72, %67
  %75 = phi i32 [ 2250000, %72 ], [ 2750000, %73 ], [ 1750000, %67 ]
  %76 = phi i32 [ 7, %72 ], [ 8, %73 ], [ 6, %67 ]
  %77 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 5
  store i32 %75, ptr %77, align 4
  %78 = load i32, ptr @debug, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = sub i32 %7, %75
  %82 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 4
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 8
  store i32 3, ptr %83, align 4
  br label %99

84:                                               ; preds = %74
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_set_digital_params, i32 noundef %76, i32 noundef %6) #8
  %86 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  br label %90

88:                                               ; preds = %20
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #8
  br label %101

90:                                               ; preds = %84, %53, %35, %26
  %91 = phi i32 [ 1750000, %26 ], [ 1750000, %35 ], [ %55, %53 ], [ %87, %84 ]
  %92 = load i32, ptr @debug, align 4
  %93 = sub i32 %7, %91
  %94 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 4
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 8
  store i32 3, ptr %95, align 4
  %96 = icmp sgt i32 %92, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_set_digital_params, i32 noundef %7, i32 noundef %93) #8
  br label %99

99:                                               ; preds = %97, %90, %80
  %100 = tail call fastcc i32 @xc5000_tune_digital(ptr noundef %0)
  br label %101

101:                                              ; preds = %99, %88, %51, %15, %14
  %102 = phi i32 [ -22, %88 ], [ %100, %99 ], [ -22, %51 ], [ -22, %15 ], [ -22, %14 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc5000_set_analog_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tuner_i2c_props, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %78, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %74 [
    i32 1, label %11
    i32 2, label %32
  ]

11:                                               ; preds = %8
  %12 = load i32, ptr @debug, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, ptr %1, align 8
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_config_radio, i32 noundef %15) #8
  br label %17

17:                                               ; preds = %14, %11
  %18 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 10
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, ptr @debug, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %78

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_config_radio) #8
  br label %78

26:                                               ; preds = %17
  %27 = load i32, ptr %1, align 8
  %28 = mul i32 %27, 125
  %29 = lshr i32 %28, 1
  %30 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 4
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 9
  store i8 0, ptr %31, align 4
  br label %74

32:                                               ; preds = %8
  %33 = load i32, ptr @debug, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, ptr %1, align 8
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_config_tv, i32 noundef %36) #8
  %38 = load i32, ptr %9, align 4
  %39 = trunc i32 %38 to i8
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i8 [ %39, %35 ], [ 2, %32 ]
  %42 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 9
  store i8 %41, ptr %42, align 4
  %43 = load i32, ptr %9, align 4
  %44 = icmp ugt i32 %43, 1
  %45 = select i1 %44, i8 1, i8 %41
  store i8 %45, ptr %42, align 4
  %46 = load i32, ptr %1, align 8
  %47 = mul i32 %46, 62500
  %48 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 4
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 46848
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %40
  %54 = and i64 %50, 7
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = and i64 %50, 16
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = and i64 %50, 224
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = and i64 %50, 3276800
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = and i64 %50, 4194304
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = and i64 %50, 8388608
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68, %65, %62, %59, %56, %53, %40
  %72 = phi i8 [ 0, %40 ], [ 5, %53 ], [ 7, %56 ], [ 10, %59 ], [ 12, %62 ], [ 15, %65 ], [ 16, %68 ]
  %73 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 7
  store i8 %72, ptr %73, align 4
  br label %74

74:                                               ; preds = %71, %68, %26, %8
  %75 = load i32, ptr %9, align 4
  %76 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 8
  store i32 %75, ptr %76, align 4
  %77 = tail call fastcc i32 @xc5000_set_params(ptr noundef %0)
  br label %78

78:                                               ; preds = %74, %24, %21, %2
  %79 = phi i32 [ %77, %74 ], [ -22, %2 ], [ -22, %24 ], [ -22, %21 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc5000_set_config(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_set_config) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.xc5000_config, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 2
  store i32 %11, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.xc5000_config, ptr %1, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 10
  store i8 %17, ptr %20, align 1
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.xc5000_config, ptr %1, i32 0, i32 4
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 11
  store i16 %23, ptr %26, align 2
  br label %27

27:                                               ; preds = %25, %21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc5000_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_get_frequency) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  store i32 %14, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc5000_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_get_bandwidth) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc5000_get_if_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_get_if_frequency) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.xc5000_priv, ptr %4, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, 1000
  store i32 %12, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc5000_get_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 0, ptr %3, align 2
  %8 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 4, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 16, i1 false) #9, !annotation !8
  %10 = load i8, ptr %7, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %12, align 2
  store i16 2, ptr %9, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 2) #9
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %32

24:                                               ; preds = %2
  %25 = load i8, ptr %4, align 2
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %27, %30
  br label %32

32:                                               ; preds = %24, %22
  %33 = phi i32 [ %31, %24 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %34 = load i32, ptr @debug, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_get_status, i32 noundef %33) #8
  br label %38

38:                                               ; preds = %36, %32
  store i32 %33, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xc_load_fw_and_init_tuner(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [64 x i8], align 1
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x %struct.i2c_msg], align 4
  %17 = alloca ptr, align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.xc5000_priv, ptr %19, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  %23 = select i1 %22, ptr @xc5000c_41_024_5, ptr @xc5000a_1_6_114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #9
  store ptr null, ptr %17, align 4, !annotation !8
  %24 = getelementptr inbounds %struct.xc5000_priv, ptr %19, i32 0, i32 17
  %25 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %24) #9
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %2
  %28 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 0, ptr %14, align 2
  %29 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 8, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #9
  store i16 0, ptr %15, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #9
  %30 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %30, i8 0, i32 16, i1 false) #9, !annotation !8
  %31 = load i8, ptr %28, align 4
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %16, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %33, align 2
  store i16 2, ptr %30, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %14, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  store i16 %32, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr %15, ptr %38, align 4
  %39 = getelementptr inbounds %struct.tuner_i2c_props, ptr %28, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %16, i32 noundef 2) #9
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %57

43:                                               ; preds = %27
  %44 = load i8, ptr %15, align 2
  %45 = zext i8 %44 to i16
  %46 = shl nuw i16 %45, 8
  %47 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i16
  %50 = or i16 %46, %49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  %51 = icmp eq i16 %50, 8192
  %52 = load i32, ptr @debug, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = zext i16 %50 to i32
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_is_firmware_loaded, i32 noundef %55) #8
  br label %63

57:                                               ; preds = %27
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  %59 = load i32, ptr @debug, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_is_firmware_loaded, i32 noundef -121) #8
  br label %64

63:                                               ; preds = %54, %43
  br i1 %51, label %64, label %386

64:                                               ; preds = %63, %61, %57, %2
  %65 = getelementptr inbounds %struct.xc5000_priv, ptr %19, i32 0, i32 18
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %94

68:                                               ; preds = %64
  %69 = load ptr, ptr %23, align 4
  %70 = getelementptr inbounds %struct.tuner_i2c_props, ptr %19, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.i2c_adapter, ptr %71, i32 0, i32 9, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = call i32 @request_firmware(ptr noundef nonnull %17, ptr noundef %69, ptr noundef %73) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %68
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %74) #8
  br label %386

78:                                               ; preds = %68
  %79 = load i32, ptr @debug, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load ptr, ptr %17, align 4
  %83 = load i32, ptr %82, align 4
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef %83) #8
  br label %85

85:                                               ; preds = %81, %78
  %86 = load ptr, ptr %17, align 4
  %87 = load i32, ptr %86, align 4
  %88 = select i1 %22, i32 16497, i32 12401
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  %92 = load ptr, ptr %17, align 4
  call void @release_firmware(ptr noundef %92) #9
  br label %386

93:                                               ; preds = %85
  store ptr %86, ptr %65, align 4
  br label %96

94:                                               ; preds = %64
  store ptr %66, ptr %17, align 4
  %95 = load ptr, ptr %23, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi ptr [ %95, %94 ], [ %69, %93 ]
  %98 = select i1 %22, i16 19, i16 -32660
  %99 = zext i1 %22 to i8
  %100 = getelementptr inbounds [64 x i8], ptr %13, i32 0, i32 1
  %101 = getelementptr inbounds i8, ptr %12, i32 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  %104 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 9
  %105 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %106 = getelementptr inbounds i8, ptr %13, i32 2
  %107 = getelementptr inbounds %struct.xc5000_priv, ptr %19, i32 0, i32 15
  %108 = getelementptr inbounds i8, ptr %9, i32 1
  %109 = getelementptr inbounds i8, ptr %11, i32 4
  %110 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  %116 = getelementptr inbounds %struct.tuner_i2c_props, ptr %19, i32 0, i32 1
  %117 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  %118 = getelementptr inbounds %struct.xc5000_priv, ptr %19, i32 0, i32 14
  %119 = getelementptr inbounds i8, ptr %6, i32 1
  %120 = getelementptr inbounds i8, ptr %8, i32 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  %127 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %128 = getelementptr inbounds %struct.xc5000_priv, ptr %19, i32 0, i32 13
  %129 = getelementptr inbounds i8, ptr %3, i32 1
  %130 = getelementptr inbounds i8, ptr %5, i32 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  %136 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  %137 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  br label %138

138:                                              ; preds = %373, %96
  %139 = phi i32 [ 0, %96 ], [ %374, %373 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %143

143:                                              ; preds = %141, %138
  %144 = load ptr, ptr %17, align 4
  %145 = load ptr, ptr %18, align 4
  %146 = load i32, ptr @debug, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.xc5000_priv, ptr %145, i32 0, i32 13
  store i16 %98, ptr %149, align 4
  %150 = getelementptr inbounds %struct.xc5000_priv, ptr %145, i32 0, i32 14
  store i8 %99, ptr %150, align 2
  %151 = getelementptr inbounds %struct.xc5000_priv, ptr %145, i32 0, i32 15
  store i8 %99, ptr %151, align 1
  br label %161

152:                                              ; preds = %143
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, ptr noundef %97) #8
  %154 = load i32, ptr @debug, align 4
  %155 = getelementptr inbounds %struct.xc5000_priv, ptr %145, i32 0, i32 13
  store i16 %98, ptr %155, align 4
  %156 = getelementptr inbounds %struct.xc5000_priv, ptr %145, i32 0, i32 14
  store i8 %99, ptr %156, align 2
  %157 = getelementptr inbounds %struct.xc5000_priv, ptr %145, i32 0, i32 15
  store i8 %99, ptr %157, align 1
  %158 = icmp sgt i32 %154, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1) #8
  br label %161

161:                                              ; preds = %159, %152, %148
  %162 = getelementptr inbounds %struct.firmware, ptr %144, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %13, i8 0, i32 64, i1 false) #9, !annotation !8
  %165 = getelementptr inbounds %struct.tuner_i2c_props, ptr %164, i32 0, i32 1
  %166 = getelementptr i8, ptr %163, i32 2
  %167 = load i8, ptr %163, align 1
  %168 = icmp eq i8 %167, -1
  %169 = getelementptr i8, ptr %163, i32 1
  %170 = load i8, ptr %169, align 1
  %171 = icmp eq i8 %170, -1
  %172 = select i1 %168, i1 %171, i1 false
  br i1 %172, label %266, label %173

173:                                              ; preds = %254, %161
  %174 = phi i8 [ %261, %254 ], [ %170, %161 ]
  %175 = phi i8 [ %257, %254 ], [ %167, %161 ]
  %176 = phi i32 [ %255, %254 ], [ 0, %161 ]
  %177 = zext i8 %175 to i32
  %178 = shl nuw nsw i32 %177, 8
  %179 = zext i8 %174 to i32
  %180 = or i32 %178, %179
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %213

182:                                              ; preds = %173
  %183 = load ptr, ptr %18, align 4
  %184 = load i32, ptr @debug, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_tuner_reset) #8
  br label %188

188:                                              ; preds = %186, %182
  %189 = load ptr, ptr %104, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %209, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %105, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.dvb_adapter, ptr %192, i32 0, i32 5
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %194, %191
  %199 = getelementptr inbounds %struct.tuner_i2c_props, ptr %183, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.i2c_adapter, ptr %200, i32 0, i32 3
  %202 = load ptr, ptr %201, align 4
  br label %203

203:                                              ; preds = %198, %194
  %204 = phi ptr [ %202, %198 ], [ %196, %194 ]
  %205 = call i32 %189(ptr noundef %204, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = add i32 %176, 2
  br label %254

209:                                              ; preds = %203, %188
  %210 = phi ptr [ @.str.10, %203 ], [ @.str.11, %188 ]
  %211 = phi i32 [ %205, %203 ], [ -22, %188 ]
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %210) #8
  br label %283

213:                                              ; preds = %173
  %214 = and i32 %177, 128
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  %217 = and i32 %180, 32767
  call void @msleep(i32 noundef %217) #9
  %218 = add i32 %176, 2
  br label %254

219:                                              ; preds = %213
  %220 = add i32 %176, 2
  %221 = getelementptr i8, ptr %163, i32 %220
  %222 = load i8, ptr %221, align 1
  store i8 %222, ptr %13, align 1
  %223 = add i32 %176, 3
  %224 = getelementptr i8, ptr %163, i32 %223
  %225 = load i8, ptr %224, align 1
  store i8 %225, ptr %100, align 1
  %226 = icmp ugt i32 %180, 2
  br i1 %226, label %227, label %252

227:                                              ; preds = %219
  %228 = getelementptr i8, ptr %166, i32 %176
  br label %229

229:                                              ; preds = %248, %227
  %230 = phi i32 [ %250, %248 ], [ 2, %227 ]
  %231 = sub i32 %180, %230
  %232 = icmp ugt i32 %231, 62
  %233 = add i32 %231, 2
  %234 = select i1 %232, i32 64, i32 %233
  %235 = icmp ugt i32 %234, 2
  br i1 %235, label %236, label %239

236:                                              ; preds = %229
  %237 = getelementptr i8, ptr %228, i32 %230
  %238 = call i32 @llvm.umin.i32(i32 %231, i32 62) #9
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %106, ptr align 1 %237, i32 %238, i1 false) #9
  br label %239

239:                                              ; preds = %236, %229
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  store i32 0, ptr %101, align 4, !annotation !8
  %240 = load i8, ptr %164, align 4
  %241 = zext i8 %240 to i16
  store i16 %241, ptr %12, align 4
  store i16 0, ptr %102, align 2
  %242 = trunc i32 %234 to i16
  store i16 %242, ptr %101, align 4
  store ptr %13, ptr %103, align 4
  %243 = load ptr, ptr %165, align 4
  %244 = call i32 @i2c_transfer(ptr noundef %243, ptr noundef nonnull %12, i32 noundef 1) #9
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %248, label %246

246:                                              ; preds = %239
  %247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %234) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  br label %283

248:                                              ; preds = %239
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  %249 = add i32 %230, -2
  %250 = add i32 %249, %234
  %251 = icmp ugt i32 %180, %250
  br i1 %251, label %229, label %252

252:                                              ; preds = %248, %219
  %253 = add i32 %180, %220
  br label %254

254:                                              ; preds = %252, %216, %207
  %255 = phi i32 [ %218, %216 ], [ %253, %252 ], [ %208, %207 ]
  %256 = getelementptr i8, ptr %163, i32 %255
  %257 = load i8, ptr %256, align 1
  %258 = icmp eq i8 %257, -1
  %259 = add i32 %255, 1
  %260 = getelementptr i8, ptr %163, i32 %259
  %261 = load i8, ptr %260, align 1
  %262 = icmp eq i8 %261, -1
  %263 = select i1 %258, i1 %262, i1 false
  br i1 %263, label %264, label %173

264:                                              ; preds = %254
  %265 = load ptr, ptr %18, align 4
  br label %266

266:                                              ; preds = %264, %161
  %267 = phi ptr [ %265, %264 ], [ %164, %161 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #9
  %268 = getelementptr inbounds %struct.xc5000_priv, ptr %267, i32 0, i32 12
  %269 = load i32, ptr %268, align 4
  %270 = icmp eq i32 %269, 2
  br i1 %270, label %271, label %277

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.xc5000_priv, ptr %267, i32 0, i32 3
  %273 = load i16, ptr %272, align 4
  %274 = icmp eq i16 %273, 31875
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = call fastcc i32 @xc_write_reg(ptr noundef %267, i16 noundef zeroext 15, i16 noundef zeroext -32639) #9
  br label %277

277:                                              ; preds = %275, %271, %266
  %278 = phi i32 [ %276, %275 ], [ 0, %271 ], [ 0, %266 ]
  %279 = load i32, ptr @debug, align 4
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %277
  %282 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1) #8
  br label %286

283:                                              ; preds = %246, %209
  %284 = phi i32 [ -121, %246 ], [ %211, %209 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #9
  %285 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #8
  br label %383

286:                                              ; preds = %281, %277
  %287 = icmp eq i32 %278, 0
  br i1 %287, label %288, label %383

288:                                              ; preds = %286
  call void @msleep(i32 noundef 20) #9
  %289 = load i8, ptr %107, align 1
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %310, label %291

291:                                              ; preds = %288
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  store i8 0, ptr %9, align 2
  store i8 18, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  store i16 0, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %109, i8 0, i32 16, i1 false) #9, !annotation !8
  %292 = load i8, ptr %19, align 4
  %293 = zext i8 %292 to i16
  store i16 %293, ptr %11, align 4
  store i16 0, ptr %110, align 2
  store i16 2, ptr %109, align 4
  store ptr %9, ptr %111, align 4
  store i16 %293, ptr %112, align 4
  store i16 1, ptr %113, align 2
  store i16 2, ptr %114, align 4
  store ptr %10, ptr %115, align 4
  %294 = load ptr, ptr %116, align 4
  %295 = call i32 @i2c_transfer(ptr noundef %294, ptr noundef nonnull %11, i32 noundef 2) #9
  %296 = icmp eq i32 %295, 2
  br i1 %296, label %300, label %297

297:                                              ; preds = %291
  %298 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  %299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #8
  br label %369

300:                                              ; preds = %291
  %301 = load i8, ptr %10, align 2
  %302 = zext i8 %301 to i16
  %303 = shl nuw i16 %302, 8
  %304 = load i8, ptr %117, align 1
  %305 = zext i8 %304 to i16
  %306 = or i16 %303, %305
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  %307 = icmp eq i16 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %300
  %309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef 0) #8
  br label %369

310:                                              ; preds = %300, %288
  %311 = load i32, ptr @debug, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  %314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_initialize) #8
  br label %315

315:                                              ; preds = %313, %310
  %316 = call fastcc i32 @xc_write_reg(ptr noundef %19, i16 noundef zeroext 0, i16 noundef zeroext 0) #9
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %315
  %319 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #8
  br label %369

320:                                              ; preds = %315
  call void @msleep(i32 noundef 100) #9
  %321 = load i8, ptr %118, align 2
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %342, label %323

323:                                              ; preds = %320
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 0, ptr %6, align 2
  store i8 19, ptr %119, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i16 0, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %120, i8 0, i32 16, i1 false) #9, !annotation !8
  %324 = load i8, ptr %19, align 4
  %325 = zext i8 %324 to i16
  store i16 %325, ptr %8, align 4
  store i16 0, ptr %121, align 2
  store i16 2, ptr %120, align 4
  store ptr %6, ptr %122, align 4
  store i16 %325, ptr %123, align 4
  store i16 1, ptr %124, align 2
  store i16 2, ptr %125, align 4
  store ptr %7, ptr %126, align 4
  %326 = load ptr, ptr %116, align 4
  %327 = call i32 @i2c_transfer(ptr noundef %326, ptr noundef nonnull %8, i32 noundef 2) #9
  %328 = icmp eq i32 %327, 2
  br i1 %328, label %332, label %329

329:                                              ; preds = %323
  %330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %331 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #8
  br label %369

332:                                              ; preds = %323
  %333 = load i8, ptr %7, align 2
  %334 = zext i8 %333 to i16
  %335 = shl nuw i16 %334, 8
  %336 = load i8, ptr %127, align 1
  %337 = zext i8 %336 to i16
  %338 = or i16 %335, %337
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %339 = icmp eq i16 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %332
  %341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 0) #8
  br label %369

342:                                              ; preds = %332, %320
  %343 = load i16, ptr %128, align 4
  %344 = icmp eq i16 %343, 0
  br i1 %344, label %364, label %345

345:                                              ; preds = %342
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  %346 = lshr i16 %343, 8
  %347 = trunc i16 %346 to i8
  store i8 %347, ptr %3, align 2
  %348 = trunc i16 %343 to i8
  store i8 %348, ptr %129, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %130, i8 0, i32 16, i1 false) #9, !annotation !8
  %349 = load i8, ptr %19, align 4
  %350 = zext i8 %349 to i16
  store i16 %350, ptr %5, align 4
  store i16 0, ptr %131, align 2
  store i16 2, ptr %130, align 4
  store ptr %3, ptr %132, align 4
  store i16 %350, ptr %133, align 4
  store i16 1, ptr %134, align 2
  store i16 2, ptr %135, align 4
  store ptr %4, ptr %136, align 4
  %351 = load ptr, ptr %116, align 4
  %352 = call i32 @i2c_transfer(ptr noundef %351, ptr noundef nonnull %5, i32 noundef 2) #9
  %353 = icmp eq i32 %352, 2
  br i1 %353, label %354, label %375

354:                                              ; preds = %345
  %355 = load i8, ptr %4, align 2
  %356 = zext i8 %355 to i16
  %357 = shl nuw i16 %356, 8
  %358 = load i8, ptr %137, align 1
  %359 = zext i8 %358 to i16
  %360 = or i16 %357, %359
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %361 = icmp ugt i16 %360, 63
  br i1 %361, label %362, label %364

362:                                              ; preds = %354
  %363 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #8
  br label %369

364:                                              ; preds = %354, %342
  %365 = call fastcc i32 @xc_write_reg(ptr noundef %19, i16 noundef zeroext 13, i16 noundef zeroext 1)
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %381, label %367

367:                                              ; preds = %364
  %368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #8
  br label %369

369:                                              ; preds = %367, %362, %340, %329, %318, %308, %297
  %370 = phi i32 [ 0, %297 ], [ %316, %318 ], [ 0, %329 ], [ 0, %362 ], [ %365, %367 ], [ 0, %340 ], [ 0, %308 ]
  %371 = add nuw nsw i32 %139, 1
  %372 = icmp eq i32 %371, 5
  br i1 %372, label %379, label %373

373:                                              ; preds = %375, %369
  %374 = phi i32 [ %371, %369 ], [ %377, %375 ]
  br label %138

375:                                              ; preds = %345
  %376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %377 = add nuw nsw i32 %139, 1
  %378 = icmp eq i32 %377, 5
  br i1 %378, label %383, label %373

379:                                              ; preds = %369
  %380 = icmp eq i32 %370, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %379, %364
  %382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %97) #8
  br label %386

383:                                              ; preds = %379, %375, %286, %283
  %384 = phi i32 [ %370, %379 ], [ %284, %283 ], [ -121, %375 ], [ %278, %286 ]
  %385 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #8
  br label %386

386:                                              ; preds = %383, %381, %90, %76, %63
  %387 = phi i32 [ %74, %76 ], [ -22, %90 ], [ 0, %63 ], [ %384, %383 ], [ 0, %381 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #9
  ret i32 %387
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xc_debug_dump(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x %struct.i2c_msg], align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x %struct.i2c_msg], align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x %struct.i2c_msg], align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x %struct.i2c_msg], align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x %struct.i2c_msg], align 4
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x i8], align 2
  %31 = alloca [2 x %struct.i2c_msg], align 4
  %32 = alloca [2 x i8], align 2
  %33 = alloca [2 x i8], align 2
  %34 = alloca [2 x %struct.i2c_msg], align 4
  tail call void @msleep(i32 noundef 100) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #9
  store i8 0, ptr %32, align 2
  %35 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 0, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #9
  store i16 0, ptr %33, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %34) #9
  %36 = getelementptr inbounds i8, ptr %34, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %36, i8 0, i32 16, i1 false) #9, !annotation !8
  %37 = load i8, ptr %0, align 4
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %34, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %39, align 2
  store i16 2, ptr %36, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %32, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1
  store i16 %38, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1, i32 1
  store i16 1, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1, i32 2
  store i16 2, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1, i32 3
  store ptr %33, ptr %44, align 4
  %45 = getelementptr inbounds %struct.tuner_i2c_props, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %34, i32 noundef 2) #9
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %51, label %49

49:                                               ; preds = %1
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %59

51:                                               ; preds = %1
  %52 = load i8, ptr %33, align 2
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = getelementptr inbounds [2 x i8], ptr %33, i32 0, i32 1
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %54, %57
  br label %59

59:                                               ; preds = %51, %49
  %60 = phi i32 [ %58, %51 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %34) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #9
  %61 = load i32, ptr @debug, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = and i32 %60, 65535
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef %64) #8
  br label %66

66:                                               ; preds = %63, %59
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #9
  store i8 0, ptr %29, align 2
  %67 = getelementptr inbounds i8, ptr %29, i32 1
  store i8 5, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #9
  store i16 0, ptr %30, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %31) #9
  %68 = getelementptr inbounds i8, ptr %31, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %68, i8 0, i32 16, i1 false) #9, !annotation !8
  %69 = load i8, ptr %0, align 4
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %31, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %71, align 2
  store i16 2, ptr %68, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %29, ptr %72, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 1
  store i16 %70, ptr %73, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 1, i32 1
  store i16 1, ptr %74, align 2
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 1, i32 2
  store i16 2, ptr %75, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 1, i32 3
  store ptr %30, ptr %76, align 4
  %77 = load ptr, ptr %45, align 4
  %78 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %31, i32 noundef 2) #9
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %82, label %80

80:                                               ; preds = %66
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %31) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #9
  br label %92

82:                                               ; preds = %66
  %83 = load i8, ptr %30, align 2
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 8
  %86 = getelementptr inbounds [2 x i8], ptr %30, i32 0, i32 1
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %85, %88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %31) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #9
  %90 = mul nuw nsw i32 %89, 15625
  %91 = udiv i32 %90, 1000
  br label %92

92:                                               ; preds = %82, %80
  %93 = phi i32 [ %91, %82 ], [ 0, %80 ]
  %94 = load i32, ptr @debug, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef %93) #8
  br label %98

98:                                               ; preds = %96, %92
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #9
  store i8 0, ptr %26, align 2
  %99 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 4, ptr %99, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #9
  store i16 0, ptr %27, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #9
  %100 = getelementptr inbounds i8, ptr %28, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %100, i8 0, i32 16, i1 false) #9, !annotation !8
  %101 = load i8, ptr %0, align 4
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %28, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %103, align 2
  store i16 2, ptr %100, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %26, ptr %104, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1
  store i16 %102, ptr %105, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 1
  store i16 1, ptr %106, align 2
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 2
  store i16 2, ptr %107, align 4
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 3
  store ptr %27, ptr %108, align 4
  %109 = load ptr, ptr %45, align 4
  %110 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %28, i32 noundef 2) #9
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %114, label %112

112:                                              ; preds = %98
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %122

114:                                              ; preds = %98
  %115 = load i8, ptr %27, align 2
  %116 = zext i8 %115 to i32
  %117 = shl nuw nsw i32 %116, 8
  %118 = getelementptr inbounds [2 x i8], ptr %27, i32 0, i32 1
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = or i32 %117, %120
  br label %122

122:                                              ; preds = %114, %112
  %123 = phi i32 [ %121, %114 ], [ 0, %112 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #9
  %124 = load i32, ptr @debug, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = and i32 %123, 65535
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef %127) #8
  br label %129

129:                                              ; preds = %126, %122
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #9
  store i8 0, ptr %23, align 2
  %130 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 7, ptr %130, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #9
  store i16 0, ptr %24, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #9
  %131 = getelementptr inbounds i8, ptr %25, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %131, i8 0, i32 16, i1 false) #9, !annotation !8
  %132 = load i8, ptr %0, align 4
  %133 = zext i8 %132 to i16
  store i16 %133, ptr %25, align 4
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %134, align 2
  store i16 2, ptr %131, align 4
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %23, ptr %135, align 4
  %136 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1
  store i16 %133, ptr %136, align 4
  %137 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 1
  store i16 1, ptr %137, align 2
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 2
  store i16 2, ptr %138, align 4
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 3
  store ptr %24, ptr %139, align 4
  %140 = load ptr, ptr %45, align 4
  %141 = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %25, i32 noundef 2) #9
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %145, label %143

143:                                              ; preds = %129
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #9
  br label %153

145:                                              ; preds = %129
  %146 = load i8, ptr %24, align 2
  %147 = getelementptr inbounds [2 x i8], ptr %24, i32 0, i32 1
  %148 = load i8, ptr %147, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #9
  %149 = lshr i8 %146, 4
  %150 = and i8 %146, 15
  %151 = lshr i8 %148, 4
  %152 = and i8 %148, 15
  br label %153

153:                                              ; preds = %145, %143
  %154 = phi i8 [ %149, %145 ], [ 0, %143 ]
  %155 = phi i8 [ %150, %145 ], [ 0, %143 ]
  %156 = phi i8 [ %151, %145 ], [ 0, %143 ]
  %157 = phi i8 [ %152, %145 ], [ 0, %143 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #9
  store i8 0, ptr %20, align 2
  %158 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 13, ptr %158, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #9
  store i16 0, ptr %21, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #9
  %159 = getelementptr inbounds i8, ptr %22, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %159, i8 0, i32 16, i1 false) #9, !annotation !8
  %160 = load i8, ptr %0, align 4
  %161 = zext i8 %160 to i16
  store i16 %161, ptr %22, align 4
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %162, align 2
  store i16 2, ptr %159, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %20, ptr %163, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1
  store i16 %161, ptr %164, align 4
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 1
  store i16 1, ptr %165, align 2
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 2
  store i16 2, ptr %166, align 4
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 3
  store ptr %21, ptr %167, align 4
  %168 = load ptr, ptr %45, align 4
  %169 = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %22, i32 noundef 2) #9
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %173, label %171

171:                                              ; preds = %153
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %181

173:                                              ; preds = %153
  %174 = load i8, ptr %21, align 2
  %175 = zext i8 %174 to i32
  %176 = shl nuw nsw i32 %175, 8
  %177 = getelementptr inbounds [2 x i8], ptr %21, i32 0, i32 1
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = or i32 %176, %179
  br label %181

181:                                              ; preds = %173, %171
  %182 = phi i32 [ %180, %173 ], [ 0, %171 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #9
  %183 = load i32, ptr @debug, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = zext i8 %154 to i32
  %187 = zext i8 %155 to i32
  %188 = zext i8 %156 to i32
  %189 = zext i8 %157 to i32
  %190 = and i32 %182, 65535
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef %186, i32 noundef %187, i32 noundef %188, i32 noundef %189, i32 noundef %190) #8
  br label %192

192:                                              ; preds = %185, %181
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #9
  store i8 0, ptr %17, align 2
  %193 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 3, ptr %193, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #9
  store i16 0, ptr %18, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #9
  %194 = getelementptr inbounds i8, ptr %19, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %194, i8 0, i32 16, i1 false) #9, !annotation !8
  %195 = load i8, ptr %0, align 4
  %196 = zext i8 %195 to i16
  store i16 %196, ptr %19, align 4
  %197 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %197, align 2
  store i16 2, ptr %194, align 4
  %198 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %17, ptr %198, align 4
  %199 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1
  store i16 %196, ptr %199, align 4
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 1
  store i16 1, ptr %200, align 2
  %201 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 2
  store i16 2, ptr %201, align 4
  %202 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 3
  store ptr %18, ptr %202, align 4
  %203 = load ptr, ptr %45, align 4
  %204 = call i32 @i2c_transfer(ptr noundef %203, ptr noundef nonnull %19, i32 noundef 2) #9
  %205 = icmp eq i32 %204, 2
  br i1 %205, label %208, label %206

206:                                              ; preds = %192
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #9
  br label %219

208:                                              ; preds = %192
  %209 = load i8, ptr %18, align 2
  %210 = zext i8 %209 to i32
  %211 = shl nuw nsw i32 %210, 8
  %212 = getelementptr inbounds [2 x i8], ptr %18, i32 0, i32 1
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #9
  %215 = and i32 %211, 3840
  %216 = or i32 %215, %214
  %217 = mul nuw nsw i32 %216, 763
  %218 = udiv i32 %217, 100
  br label %219

219:                                              ; preds = %208, %206
  %220 = phi i32 [ %218, %208 ], [ 0, %206 ]
  %221 = load i32, ptr @debug, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef %220) #8
  br label %225

225:                                              ; preds = %223, %219
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 0, ptr %14, align 2
  %226 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 2, ptr %226, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #9
  store i16 0, ptr %15, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #9
  %227 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %227, i8 0, i32 16, i1 false) #9, !annotation !8
  %228 = load i8, ptr %0, align 4
  %229 = zext i8 %228 to i16
  store i16 %229, ptr %16, align 4
  %230 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %230, align 2
  store i16 2, ptr %227, align 4
  %231 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %14, ptr %231, align 4
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  store i16 %229, ptr %232, align 4
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %233, align 2
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 2, ptr %234, align 4
  %235 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr %15, ptr %235, align 4
  %236 = load ptr, ptr %45, align 4
  %237 = call i32 @i2c_transfer(ptr noundef %236, ptr noundef nonnull %16, i32 noundef 2) #9
  %238 = icmp eq i32 %237, 2
  br i1 %238, label %241, label %239

239:                                              ; preds = %225
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %249

241:                                              ; preds = %225
  %242 = load i8, ptr %15, align 2
  %243 = zext i8 %242 to i32
  %244 = shl nuw nsw i32 %243, 8
  %245 = getelementptr inbounds [2 x i8], ptr %15, i32 0, i32 1
  %246 = load i8, ptr %245, align 1
  %247 = zext i8 %246 to i32
  %248 = or i32 %244, %247
  br label %249

249:                                              ; preds = %241, %239
  %250 = phi i32 [ %248, %241 ], [ 0, %239 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  %251 = load i32, ptr @debug, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %249
  %254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1, i32 noundef %250) #8
  br label %255

255:                                              ; preds = %253, %249
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #9
  store i8 0, ptr %11, align 2
  %256 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 1, ptr %256, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i16 0, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #9
  %257 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %257, i8 0, i32 16, i1 false) #9, !annotation !8
  %258 = load i8, ptr %0, align 4
  %259 = zext i8 %258 to i16
  store i16 %259, ptr %13, align 4
  %260 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %260, align 2
  store i16 2, ptr %257, align 4
  %261 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %261, align 4
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  store i16 %259, ptr %262, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %263, align 2
  %264 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 2, ptr %264, align 4
  %265 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %265, align 4
  %266 = load ptr, ptr %45, align 4
  %267 = call i32 @i2c_transfer(ptr noundef %266, ptr noundef nonnull %13, i32 noundef 2) #9
  %268 = icmp eq i32 %267, 2
  br i1 %268, label %271, label %269

269:                                              ; preds = %255
  %270 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %276

271:                                              ; preds = %255
  %272 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  %273 = load i8, ptr %272, align 1
  %274 = and i8 %273, 7
  %275 = zext i8 %274 to i32
  br label %276

276:                                              ; preds = %271, %269
  %277 = phi i32 [ %275, %271 ], [ 0, %269 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #9
  %278 = load i32, ptr @debug, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef %277) #8
  br label %282

282:                                              ; preds = %280, %276
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 0, ptr %8, align 2
  %283 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 6, ptr %283, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  store i16 0, ptr %9, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  %284 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %284, i8 0, i32 16, i1 false) #9, !annotation !8
  %285 = load i8, ptr %0, align 4
  %286 = zext i8 %285 to i16
  store i16 %286, ptr %10, align 4
  %287 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %287, align 2
  store i16 2, ptr %284, align 4
  %288 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %8, ptr %288, align 4
  %289 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %286, ptr %289, align 4
  %290 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %290, align 2
  %291 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 2, ptr %291, align 4
  %292 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %9, ptr %292, align 4
  %293 = load ptr, ptr %45, align 4
  %294 = call i32 @i2c_transfer(ptr noundef %293, ptr noundef nonnull %10, i32 noundef 2) #9
  %295 = icmp eq i32 %294, 2
  br i1 %295, label %298, label %296

296:                                              ; preds = %282
  %297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %303

298:                                              ; preds = %282
  %299 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %300 = load i8, ptr %299, align 1
  %301 = and i8 %300, 63
  %302 = zext i8 %301 to i32
  br label %303

303:                                              ; preds = %298, %296
  %304 = phi i32 [ %302, %298 ], [ 0, %296 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  %305 = load i32, ptr @debug, align 4
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %303
  %308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef %304) #8
  br label %309

309:                                              ; preds = %307, %303
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 0, ptr %5, align 2
  %310 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 15, ptr %310, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i16 0, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %311 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %311, i8 0, i32 16, i1 false) #9, !annotation !8
  %312 = load i8, ptr %0, align 4
  %313 = zext i8 %312 to i16
  store i16 %313, ptr %7, align 4
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %314, align 2
  store i16 2, ptr %311, align 4
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %315, align 4
  %316 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %313, ptr %316, align 4
  %317 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %317, align 2
  %318 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 2, ptr %318, align 4
  %319 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %319, align 4
  %320 = load ptr, ptr %45, align 4
  %321 = call i32 @i2c_transfer(ptr noundef %320, ptr noundef nonnull %7, i32 noundef 2) #9
  %322 = icmp eq i32 %321, 2
  br i1 %322, label %325, label %323

323:                                              ; preds = %309
  %324 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %333

325:                                              ; preds = %309
  %326 = load i8, ptr %6, align 2
  %327 = zext i8 %326 to i32
  %328 = shl nuw nsw i32 %327, 8
  %329 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %330 = load i8, ptr %329, align 1
  %331 = zext i8 %330 to i32
  %332 = or i32 %328, %331
  br label %333

333:                                              ; preds = %325, %323
  %334 = phi i32 [ %332, %325 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  %335 = load i32, ptr @debug, align 4
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %343

337:                                              ; preds = %333
  %338 = lshr i32 %334, 8
  %339 = and i32 %334, 255
  %340 = mul nuw nsw i32 %339, 100
  %341 = lshr i32 %340, 8
  %342 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1, i32 noundef %338, i32 noundef %341) #8
  br label %343

343:                                              ; preds = %337, %333
  %344 = getelementptr inbounds %struct.xc5000_priv, ptr %0, i32 0, i32 13
  %345 = load i16, ptr %344, align 4
  %346 = icmp eq i16 %345, 0
  br i1 %346, label %378, label %347

347:                                              ; preds = %343
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  %348 = lshr i16 %345, 8
  %349 = trunc i16 %348 to i8
  store i8 %349, ptr %2, align 2
  %350 = getelementptr inbounds i8, ptr %2, i32 1
  %351 = trunc i16 %345 to i8
  store i8 %351, ptr %350, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 0, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %352 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %352, i8 0, i32 16, i1 false) #9, !annotation !8
  %353 = load i8, ptr %0, align 4
  %354 = zext i8 %353 to i16
  store i16 %354, ptr %4, align 4
  %355 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %355, align 2
  store i16 2, ptr %352, align 4
  %356 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %356, align 4
  %357 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %354, ptr %357, align 4
  %358 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %358, align 2
  %359 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 2, ptr %359, align 4
  %360 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %3, ptr %360, align 4
  %361 = load ptr, ptr %45, align 4
  %362 = call i32 @i2c_transfer(ptr noundef %361, ptr noundef nonnull %4, i32 noundef 2) #9
  %363 = icmp eq i32 %362, 2
  br i1 %363, label %366, label %364

364:                                              ; preds = %347
  %365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  br label %378

366:                                              ; preds = %347
  %367 = load i8, ptr %3, align 2
  %368 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %369 = load i8, ptr %368, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %370 = load i32, ptr @debug, align 4
  %371 = icmp sgt i32 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %366
  %373 = zext i8 %367 to i32
  %374 = shl nuw nsw i32 %373, 8
  %375 = zext i8 %369 to i32
  %376 = or i32 %374, %375
  %377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef %376) #8
  br label %378

378:                                              ; preds = %372, %366, %364, %343
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xc_write_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = trunc i16 %1 to i8
  %10 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 1
  store i8 %9, ptr %10, align 1
  %11 = lshr i16 %2, 8
  %12 = trunc i16 %11 to i8
  %13 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 2
  store i8 %12, ptr %13, align 2
  %14 = trunc i16 %2 to i8
  %15 = getelementptr inbounds [4 x i8], ptr %8, i32 0, i32 3
  store i8 %14, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %16 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %16, align 4, !annotation !8
  %17 = load i8, ptr %0, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %7, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %8, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tuner_i2c_props, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %7, i32 noundef 1) #9
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  br label %65

27:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  %28 = getelementptr inbounds i8, ptr %4, i32 1
  %29 = getelementptr inbounds i8, ptr %6, i32 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  %36 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  br label %37

37:                                               ; preds = %56, %27
  %38 = phi i32 [ 100, %27 ], [ %57, %56 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 0, ptr %4, align 2
  store i8 9, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i16 0, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %29, i8 0, i32 16, i1 false) #9, !annotation !8
  %39 = load i8, ptr %0, align 4
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %6, align 4
  store i16 0, ptr %30, align 2
  store i16 2, ptr %29, align 4
  store ptr %4, ptr %31, align 4
  store i16 %40, ptr %32, align 4
  store i16 1, ptr %33, align 2
  store i16 2, ptr %34, align 4
  store ptr %5, ptr %35, align 4
  %41 = load ptr, ptr %21, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %6, i32 noundef 2) #9
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %60

46:                                               ; preds = %37
  %47 = load i8, ptr %5, align 2
  %48 = zext i8 %47 to i16
  %49 = shl nuw i16 %48, 8
  %50 = load i8, ptr %36, align 1
  %51 = zext i8 %50 to i16
  %52 = or i16 %49, %51
  store i16 %52, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  %53 = icmp eq i8 %50, 0
  %54 = icmp eq i8 %47, 0
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %65, label %56

56:                                               ; preds = %46
  call void @msleep(i32 noundef 5) #9
  %57 = add nsw i32 %38, -1
  %58 = icmp ne i32 %57, 0
  %59 = and i1 %58, %43
  br i1 %59, label %37, label %60

60:                                               ; preds = %56, %44
  %61 = phi i32 [ %38, %44 ], [ %57, %56 ]
  %62 = phi i32 [ -121, %44 ], [ 0, %56 ]
  %63 = icmp eq i32 %61, 0
  %64 = select i1 %63, i32 -121, i32 %62
  br label %65

65:                                               ; preds = %60, %46, %25
  %66 = phi i32 [ -121, %25 ], [ %64, %60 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xc5000_set_params(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @xc_load_fw_and_init_tuner(ptr noundef %0, i32 noundef 0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr @debug, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %232

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.1) #8
  br label %232

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.xc5000_priv, ptr %6, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %232 [
    i32 1, label %17
    i32 2, label %107
    i32 3, label %230
  ]

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.xc5000_priv, ptr %18, i32 0, i32 10
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = add i8 %20, -1
  %23 = icmp ult i8 %22, 3
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr @debug, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %232

27:                                               ; preds = %24
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_set_radio_freq, i32 noundef %21) #8
  br label %232

29:                                               ; preds = %17
  %30 = sext i8 %22 to i32
  %31 = getelementptr inbounds [3 x i32], ptr @switch.table.xc5000_set_params, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %32, i32 2
  %34 = load i16, ptr %33, align 2
  %35 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %32, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = load i32, ptr @debug, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = zext i16 %34 to i32
  %41 = zext i16 %36 to i32
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_tv_standard, i32 noundef %40, i32 noundef %41) #8
  %43 = load i32, ptr @debug, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %32
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_tv_standard, ptr noundef %47) #8
  br label %49

49:                                               ; preds = %45, %39, %29
  %50 = tail call fastcc i32 @xc_write_reg(ptr noundef %18, i16 noundef zeroext 1, i16 noundef zeroext %34) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = tail call fastcc i32 @xc_write_reg(ptr noundef %18, i16 noundef zeroext 2, i16 noundef zeroext %36) #9
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52, %49
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #8
  br label %232

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.xc5000_priv, ptr %18, i32 0, i32 9
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i16
  %61 = load i32, ptr @debug, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = zext i8 %59 to i32
  %65 = icmp eq i8 %59, 0
  %66 = select i1 %65, ptr @.str.77, ptr @.str.78
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_signal_source, i32 noundef %64, ptr noundef nonnull %66) #8
  br label %68

68:                                               ; preds = %63, %57
  %69 = icmp ugt i8 %59, 1
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.xc_set_signal_source) #8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i16 [ 1, %70 ], [ %60, %68 ]
  %74 = tail call fastcc i32 @xc_write_reg(ptr noundef %18, i16 noundef zeroext 13, i16 noundef zeroext %73) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i8, ptr %58, align 4
  %78 = zext i8 %77 to i32
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %78) #8
  br label %232

80:                                               ; preds = %72
  %81 = load i8, ptr %19, align 1
  %82 = add i8 %81, -1
  %83 = icmp ult i8 %82, 3
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = sext i8 %82 to i32
  %86 = getelementptr inbounds [3 x i16], ptr @switch.table.xc5000_set_params.99, i32 0, i32 %85
  %87 = load i16, ptr %86, align 2
  %88 = tail call fastcc i32 @xc_write_reg(ptr noundef %18, i16 noundef zeroext 11, i16 noundef zeroext %87) #9
  br label %89

89:                                               ; preds = %84, %80
  %90 = getelementptr inbounds %struct.xc5000_priv, ptr %18, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = load i32, ptr @debug, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_tune_channel, i32 noundef %91) #8
  %96 = load i32, ptr @debug, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_rf_frequency, i32 noundef %91) #8
  br label %100

100:                                              ; preds = %98, %94, %89
  %101 = add i32 %91, -1023000001
  %102 = icmp ult i32 %101, -1022000001
  br i1 %102, label %232, label %103

103:                                              ; preds = %100
  %104 = udiv i32 %91, 15625
  %105 = trunc i32 %104 to i16
  %106 = tail call fastcc i32 @xc_write_reg(ptr noundef %18, i16 noundef zeroext 16, i16 noundef zeroext %105) #9
  br label %232

107:                                              ; preds = %14
  %108 = load ptr, ptr %5, align 4
  %109 = getelementptr inbounds %struct.xc5000_priv, ptr %108, i32 0, i32 9
  %110 = getelementptr inbounds %struct.xc5000_priv, ptr %108, i32 0, i32 7
  %111 = getelementptr inbounds %struct.xc5000_priv, ptr %108, i32 0, i32 4
  %112 = getelementptr inbounds %struct.xc5000_priv, ptr %108, i32 0, i32 13
  %113 = getelementptr inbounds i8, ptr %2, i32 1
  %114 = getelementptr inbounds i8, ptr %4, i32 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  %121 = getelementptr inbounds %struct.tuner_i2c_props, ptr %108, i32 0, i32 1
  %122 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  br label %123

123:                                              ; preds = %225, %107
  %124 = load i8, ptr %109, align 4
  %125 = zext i8 %124 to i16
  %126 = load i32, ptr @debug, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = zext i8 %124 to i32
  %130 = icmp eq i8 %124, 0
  %131 = select i1 %130, ptr @.str.77, ptr @.str.78
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_signal_source, i32 noundef %129, ptr noundef nonnull %131) #8
  br label %133

133:                                              ; preds = %128, %123
  %134 = icmp ugt i8 %124, 1
  br i1 %134, label %135, label %137

135:                                              ; preds = %133
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.xc_set_signal_source) #8
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i16 [ 1, %135 ], [ %125, %133 ]
  %139 = call fastcc i32 @xc_write_reg(ptr noundef %108, i16 noundef zeroext 13, i16 noundef zeroext %138) #9
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i8, ptr %109, align 4
  %143 = zext i8 %142 to i32
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %143) #8
  br label %232

145:                                              ; preds = %137
  %146 = load i8, ptr %110, align 4
  %147 = zext i8 %146 to i32
  %148 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %147, i32 2
  %149 = load i16, ptr %148, align 2
  %150 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %147, i32 1
  %151 = load i16, ptr %150, align 4
  %152 = load i32, ptr @debug, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %145
  %155 = zext i16 %149 to i32
  %156 = zext i16 %151 to i32
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_tv_standard, i32 noundef %155, i32 noundef %156) #8
  %158 = load i32, ptr @debug, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load i8, ptr %110, align 4
  %162 = zext i8 %161 to i32
  %163 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %162
  %164 = load ptr, ptr %163, align 4
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_tv_standard, ptr noundef %164) #8
  br label %166

166:                                              ; preds = %160, %154, %145
  %167 = call fastcc i32 @xc_write_reg(ptr noundef %108, i16 noundef zeroext 1, i16 noundef zeroext %149) #9
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = call fastcc i32 @xc_write_reg(ptr noundef %108, i16 noundef zeroext 2, i16 noundef zeroext %151) #9
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %169, %166
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #8
  br label %232

174:                                              ; preds = %169
  %175 = call fastcc i32 @xc_write_reg(ptr noundef %108, i16 noundef zeroext 11, i16 noundef zeroext 9) #9
  %176 = load i32, ptr %111, align 4
  %177 = load i32, ptr @debug, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_tune_channel, i32 noundef %176) #8
  %181 = load i32, ptr @debug, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_rf_frequency, i32 noundef %176) #8
  br label %185

185:                                              ; preds = %183, %179, %174
  %186 = add i32 %176, -1023000001
  %187 = icmp ult i32 %186, -1022000001
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  %189 = udiv i32 %176, 15625
  %190 = trunc i32 %189 to i16
  %191 = call fastcc i32 @xc_write_reg(ptr noundef %108, i16 noundef zeroext 16, i16 noundef zeroext %190) #9
  br label %192

192:                                              ; preds = %188, %185
  %193 = load i32, ptr @debug, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  call fastcc void @xc_debug_dump(ptr noundef %108) #9
  br label %196

196:                                              ; preds = %195, %192
  %197 = load i16, ptr %112, align 4
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %232, label %199

199:                                              ; preds = %196
  call void @msleep(i32 noundef 20) #9
  %200 = load i16, ptr %112, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  %201 = lshr i16 %200, 8
  %202 = trunc i16 %201 to i8
  store i8 %202, ptr %2, align 2
  %203 = trunc i16 %200 to i8
  store i8 %203, ptr %113, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 0, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %114, i8 0, i32 16, i1 false) #9, !annotation !8
  %204 = load i8, ptr %108, align 4
  %205 = zext i8 %204 to i16
  store i16 %205, ptr %4, align 4
  store i16 0, ptr %115, align 2
  store i16 2, ptr %114, align 4
  store ptr %2, ptr %116, align 4
  store i16 %205, ptr %117, align 4
  store i16 1, ptr %118, align 2
  store i16 2, ptr %119, align 4
  store ptr %3, ptr %120, align 4
  %206 = load ptr, ptr %121, align 4
  %207 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %4, i32 noundef 2) #9
  %208 = icmp eq i32 %207, 2
  br i1 %208, label %211, label %209

209:                                              ; preds = %199
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  br label %232

211:                                              ; preds = %199
  %212 = load i8, ptr %3, align 2
  %213 = zext i8 %212 to i16
  %214 = shl nuw i16 %213, 8
  %215 = load i8, ptr %122, align 1
  %216 = zext i8 %215 to i16
  %217 = or i16 %214, %216
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %218 = zext i16 %217 to i32
  %219 = icmp ugt i16 %217, 63
  br i1 %219, label %220, label %232

220:                                              ; preds = %211
  %221 = load i32, ptr @debug, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1, i32 noundef %218) #8
  br label %225

225:                                              ; preds = %223, %220
  %226 = call fastcc i32 @xc_load_fw_and_init_tuner(ptr noundef %0, i32 noundef 1) #9
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %123, label %228

228:                                              ; preds = %225
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #8
  br label %232

230:                                              ; preds = %14
  %231 = tail call fastcc i32 @xc5000_tune_digital(ptr noundef %0)
  br label %232

232:                                              ; preds = %230, %228, %211, %209, %196, %172, %141, %103, %100, %76, %55, %27, %24, %14, %12, %9
  %233 = phi i32 [ %231, %230 ], [ -22, %12 ], [ -22, %9 ], [ 0, %14 ], [ -121, %55 ], [ -121, %76 ], [ -22, %27 ], [ -22, %24 ], [ 0, %100 ], [ 0, %103 ], [ -121, %141 ], [ -121, %172 ], [ -121, %228 ], [ -121, %209 ], [ 0, %196 ], [ 0, %211 ]
  ret i32 %233
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xc5000_tune_digital(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 9
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i16
  %9 = load i32, ptr @debug, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = zext i8 %7 to i32
  %13 = icmp eq i8 %7, 0
  %14 = select i1 %13, ptr @.str.77, ptr @.str.78
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_signal_source, i32 noundef %12, ptr noundef nonnull %14) #8
  br label %16

16:                                               ; preds = %11, %1
  %17 = icmp ugt i8 %7, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.xc_set_signal_source) #8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i16 [ 1, %18 ], [ %8, %16 ]
  %22 = tail call fastcc i32 @xc_write_reg(ptr noundef %3, i16 noundef zeroext 13, i16 noundef zeroext %21) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8, ptr %6, align 4
  %26 = zext i8 %25 to i32
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %26) #8
  br label %109

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 7
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %31, i32 2
  %33 = load i16, ptr %32, align 2
  %34 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %31, i32 1
  %35 = load i16, ptr %34, align 4
  %36 = load i32, ptr @debug, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %28
  %39 = zext i16 %33 to i32
  %40 = zext i16 %35 to i32
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_tv_standard, i32 noundef %39, i32 noundef %40) #8
  %42 = load i32, ptr @debug, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i8, ptr %29, align 4
  %46 = zext i8 %45 to i32
  %47 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_tv_standard, ptr noundef %48) #8
  br label %50

50:                                               ; preds = %44, %38, %28
  %51 = tail call fastcc i32 @xc_write_reg(ptr noundef %3, i16 noundef zeroext 1, i16 noundef zeroext %33) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = tail call fastcc i32 @xc_write_reg(ptr noundef %3, i16 noundef zeroext 2, i16 noundef zeroext %35) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53, %50
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #8
  br label %109

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = shl i32 %60, 10
  %62 = udiv i32 %61, 1000
  %63 = load i32, ptr @debug, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_IF_frequency, i32 noundef %60, i32 noundef %62) #8
  br label %67

67:                                               ; preds = %65, %58
  %68 = trunc i32 %62 to i16
  %69 = tail call fastcc i32 @xc_write_reg(ptr noundef %3, i16 noundef zeroext 5, i16 noundef zeroext %68) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %59, align 4
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %72) #8
  br label %109

74:                                               ; preds = %67
  %75 = load i32, ptr @debug, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 11
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc5000_tune_digital, i32 noundef %80) #8
  br label %82

82:                                               ; preds = %77, %74
  %83 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 11
  %84 = load i16, ptr %83, align 2
  %85 = tail call fastcc i32 @xc_write_reg(ptr noundef %3, i16 noundef zeroext 11, i16 noundef zeroext %84)
  %86 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr @debug, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_tune_channel, i32 noundef %87) #8
  %92 = load i32, ptr @debug, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_rf_frequency, i32 noundef %87) #8
  br label %96

96:                                               ; preds = %94, %90, %82
  %97 = add i32 %87, -1023000001
  %98 = icmp ult i32 %97, -1022000001
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = udiv i32 %87, 15625
  %101 = trunc i32 %100 to i16
  %102 = tail call fastcc i32 @xc_write_reg(ptr noundef %3, i16 noundef zeroext 16, i16 noundef zeroext %101) #9
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i32, ptr @debug, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  tail call fastcc void @xc_debug_dump(ptr noundef %3)
  br label %107

107:                                              ; preds = %106, %103
  %108 = getelementptr inbounds %struct.xc5000_priv, ptr %3, i32 0, i32 6
  store i32 %5, ptr %108, align 4
  br label %109

109:                                              ; preds = %107, %71, %56, %24
  %110 = phi i32 [ -121, %24 ], [ -121, %56 ], [ -5, %71 ], [ 0, %107 ]
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
