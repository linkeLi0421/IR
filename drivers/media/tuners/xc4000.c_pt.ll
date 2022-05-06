; ModuleID = '/llk/IR/drivers/media/tuners/xc4000.c_pt.bc'
source_filename = "../drivers/media/tuners/xc4000.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xc4000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22xc4000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_xc4000_attach:\09\09\09\09\09"
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
%struct.kparam_string = type { i32, ptr }
%struct.lock_class_key = type {}
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.XC_TV_STANDARD = type { ptr, i16, i16, i16 }
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
%struct.xc4000_priv = type { %struct.tuner_i2c_props, %struct.list_head, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, %struct.firmware_properties, i16, i16, %struct.mutex }
%struct.firmware_properties = type { i32, i64, i64, i16, i32, i32 }
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
%struct.xc4000_config = type { i8, i8, i8, i8, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.firmware_description = type { i32, i64, i16, ptr, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [55 x i8] c"parm=debug:Debugging level (0 to 2, default: 0 (off)).\00", section ".modinfo", align 1
@__param_str_no_poweroff = internal constant [12 x i8] c"no_poweroff\00", align 1
@no_poweroff = internal global i32 0, align 4
@__param_no_poweroff = internal constant %struct.kernel_param { ptr @__param_str_no_poweroff, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @no_poweroff } }, section "__param", align 4
@__UNIQUE_ID_no_powerofftype251 = internal constant [25 x i8] c"parmtype=no_poweroff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_no_poweroff252 = internal constant [108 x i8] c"parm=no_poweroff:Power management (1: disabled, 2: enabled, 0 (default): use device-specific default mode).\00", section ".modinfo", align 1
@__param_str_audio_std = internal constant [10 x i8] c"audio_std\00", align 1
@audio_std = internal global i32 0, align 4
@__param_audio_std = internal constant %struct.kernel_param { ptr @__param_str_audio_std, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @audio_std } }, section "__param", align 4
@__UNIQUE_ID_audio_stdtype253 = internal constant [23 x i8] c"parmtype=audio_std:int\00", section ".modinfo", align 1
@__UNIQUE_ID_audio_std254 = internal constant [441 x i8] c"parm=audio_std:Audio standard. XC4000 audio decoder explicitly needs to know what audio standard is needed for some video standards with audio A2 or NICAM. The valid settings are a sum of:\0A 1: use NICAM/B or A2/B instead of NICAM/A or A2/A\0A 2: use A2 instead of NICAM or BTSC\0A 4: use SECAM/K3 instead of K1\0A 8: use PAL-D/K audio for SECAM-D/K\0A16: use FM radio input 1 instead of input 2\0A32: use mono audio (the lower three bits are ignored)\00", section ".modinfo", align 1
@__param_str_firmware_name = internal constant [14 x i8] c"firmware_name\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_firmware_name = internal constant %struct.kparam_string { i32 30, ptr @firmware_name }, align 4
@__param_firmware_name = internal constant %struct.kernel_param { ptr @__param_str_firmware_name, ptr @__this_module, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.64 { ptr @__param_string_firmware_name } }, section "__param", align 4
@__UNIQUE_ID_firmware_nametype255 = internal constant [30 x i8] c"parmtype=firmware_name:string\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware_name256 = internal constant [84 x i8] c"parm=firmware_name:Firmware file name. Allows overriding the default firmware name.\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"\016%s: %s(%d-%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"xc4000\00", align 1
@__func__.xc4000_attach = private unnamed_addr constant [14 x i8] c"xc4000_attach\00", align 1
@xc4000_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xc4000_list_mutex, i64 12), ptr getelementptr (i8, ptr @xc4000_list_mutex, i64 12) } }, align 4
@hybrid_tuner_instance_list = internal global %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", align 1
@xc4000_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"&priv->lock\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"\016xc4000: Successfully identified at address 0x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"\016xc4000: Firmware has been loaded previously\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"\016xc4000: Firmware has not been loaded previously\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\013xc4000: Device not found at addr 0x%02x (0x%x)\0A\00", align 1
@xc4000_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Xceive XC4000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 1023000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @xc4000_release, ptr @xc4000_init, ptr @xc4000_sleep, ptr null, ptr null, ptr @xc4000_set_params, ptr @xc4000_set_analog_params, ptr null, ptr @xc4000_get_frequency, ptr @xc4000_get_bandwidth, ptr null, ptr @xc4000_get_status, ptr @xc4000_get_signal, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_xc4000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_xc4000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_xc4000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xc4000_attach to i32), ptr @__kstrtab_xc4000_attach, ptr @__kstrtabns_xc4000_attach }, section "___ksymtab+xc4000_attach", align 4
@__UNIQUE_ID_author257 = internal constant [33 x i8] c"author=Steven Toth, Davide Ferri\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [47 x i8] c"description=Xceive xc4000 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware260 = internal constant [32 x i8] c"firmware=dvb-fe-xc4000-1.4.1.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware261 = internal constant [30 x i8] c"firmware=dvb-fe-xc4000-1.4.fw\00", section ".modinfo", align 1
@firmware_name = internal global [30 x i8] zeroinitializer, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"\013xc4000: I2C read failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"\016%s: %s()\0A\00", align 1
@__func__.xc4000_init = private unnamed_addr constant [12 x i8] c"xc4000_init\00", align 1
@__func__.xc4000_sleep = private unnamed_addr constant [13 x i8] c"xc4000_sleep\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"\013xc4000: %s() unable to shutdown tuner\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"\013xc4000: I2C write failed (len=%i)\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"\013bytes %*ph\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"\016%s: %s() frequency=%d (Hz)\0A\00", align 1
@__func__.xc4000_set_params = private unnamed_addr constant [18 x i8] c"xc4000_set_params\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"\016%s: %s() VSB modulation\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"\016%s: %s() QAM modulation\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\016%s: %s() OFDM\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"\013xc4000 delivery system not supported!\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"\016%s: %s() frequency=%d (compensated)\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"\013xc4000: xc_set_signal_source(%d) failed\0A\00", align 1
@xc4000_standard = internal unnamed_addr constant [24 x %struct.XC_TV_STANDARD] [%struct.XC_TV_STANDARD { ptr @.str.89, i16 0, i16 -32608, i16 4500 }, %struct.XC_TV_STANDARD { ptr @.str.90, i16 0, i16 -32608, i16 4600 }, %struct.XC_TV_STANDARD { ptr @.str.91, i16 64, i16 -32608, i16 4500 }, %struct.XC_TV_STANDARD { ptr @.str.92, i16 120, i16 -32608, i16 4500 }, %struct.XC_TV_STANDARD { ptr @.str.93, i16 0, i16 -32423, i16 5640 }, %struct.XC_TV_STANDARD { ptr @.str.94, i16 4, i16 -32423, i16 5740 }, %struct.XC_TV_STANDARD { ptr @.str.95, i16 120, i16 -32423, i16 5500 }, %struct.XC_TV_STANDARD { ptr @.str.96, i16 128, i16 -32695, i16 6240 }, %struct.XC_TV_STANDARD { ptr @.str.97, i16 120, i16 -32695, i16 6000 }, %struct.XC_TV_STANDARD { ptr @.str.98, i16 0, i16 -32695, i16 6380 }, %struct.XC_TV_STANDARD { ptr @.str.99, i16 128, i16 -32695, i16 6200 }, %struct.XC_TV_STANDARD { ptr @.str.100, i16 120, i16 -32695, i16 6500 }, %struct.XC_TV_STANDARD { ptr @.str.101, i16 0, i16 -32695, i16 6340 }, %struct.XC_TV_STANDARD { ptr @.str.102, i16 0, i16 -32695, i16 6000 }, %struct.XC_TV_STANDARD { ptr @.str.103, i16 120, i16 -32695, i16 6500 }, %struct.XC_TV_STANDARD { ptr @.str.104, i16 128, i16 -32695, i16 6200 }, %struct.XC_TV_STANDARD { ptr @.str.105, i16 -32640, i16 9, i16 6200 }, %struct.XC_TV_STANDARD { ptr @.str.106, i16 -32640, i16 16393, i16 6200 }, %struct.XC_TV_STANDARD { ptr @.str.107, i16 192, i16 -32766, i16 0 }, %struct.XC_TV_STANDARD { ptr @.str.108, i16 192, i16 -32757, i16 0 }, %struct.XC_TV_STANDARD { ptr @.str.109, i16 192, i16 -32741, i16 0 }, %struct.XC_TV_STANDARD { ptr @.str.110, i16 192, i16 -32761, i16 0 }, %struct.XC_TV_STANDARD { ptr @.str.111, i16 8, i16 -26624, i16 10700 }, %struct.XC_TV_STANDARD { ptr @.str.112, i16 8, i16 -28672, i16 10700 }], align 4
@.str.21 = private unnamed_addr constant [37 x i8] c"\013xc4000: xc_set_tv_standard failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"\013xc4000: setting registers failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"\016%s: %s called\0A\00", align 1
@__func__.check_firmware = private unnamed_addr constant [15 x i8] c"check_firmware\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"\016%s: checking firmware, user requested type=\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"\01c(%x), id %016llx, \00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"\01cscode_tbl \00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"\01cint_freq %d, \00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"\01cscode_nr %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"\016%s: BASE firmware not changed.\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"\013Error %d while loading base firmware\0A\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"\016%s: Load init1 firmware, if exists\0A\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"\013%s %d-%04x: Error %d while loading init1 firmware\0A\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"\016%s: Std-specific firmware already loaded.\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"\016%s: SCODE firmware already loaded.\0A\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"\016%s: load scode failed %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"\013Unable to read tuner registers.\0A\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"\016%s: Device is Xceive %d version %d.%d, firmware version %d.%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"\014Incorrect readback of firmware version %d.%d.\0A\00", align 1
@.str.39 = private unnamed_addr constant [58 x i8] c"\014Read invalid device hardware information - tuner hung?\0A\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"\016%s: Retrying firmware load\0A\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"\01cBASE \00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"\01cINIT1 \00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"\01cF8MHZ \00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"\01cMTS \00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"\01cD2620 \00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"\01cD2633 \00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"\01cDTV6 \00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"\01cQAM \00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"\01cDTV7 \00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"\01cDTV78 \00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"\01cDTV8 \00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"\01cFM \00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"\01cINPUT1 \00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"\01cLCD \00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"\01cNOGD \00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"\01cMONO \00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"\01cATSC \00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"\01cIF \00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"\01cLG60 \00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"\01cATI638 \00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"\01cOREN538 \00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"\01cOREN36 \00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"\01cTOYOTA388 \00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"\01cTOYOTA794 \00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"\01cDIBCOM52 \00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"\01cZARLINK456 \00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"\01cCHINA \00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"\01cF6MHZ \00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"\01cINPUT2 \00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"\01cSCODE \00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"\01cHAS_IF_%d \00", align 1
@__func__.xc4000_tuner_reset = private unnamed_addr constant [19 x i8] c"xc4000_tuner_reset\00", align 1
@.str.72 = private unnamed_addr constant [24 x i8] c"\013xc4000: reset failed\0A\00", align 1
@.str.73 = private unnamed_addr constant [51 x i8] c"\013xc4000: no tuner reset callback function, fatal\0A\00", align 1
@.str.74 = private unnamed_addr constant [30 x i8] c"\013Error! firmware not loaded\0A\00", align 1
@.str.75 = private unnamed_addr constant [80 x i8] c"\014Selecting best matching firmware (%u bits differ) for type=(%x), id %016llx:\0A\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"\017%s firmware for type=\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"Can't find\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"Found\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"\017(%x), id %016llx.\0A\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"\016%s: %s called int_freq=%d\0A\00", align 1
@__func__.load_scode = private unnamed_addr constant [11 x i8] c"load_scode\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"\016%s %d-%04x: Loading SCODE for type=\00", align 1
@.str.82 = private unnamed_addr constant [21 x i8] c"\01c(%x), id %016llx.\0A\00", align 1
@.str.83 = private unnamed_addr constant [42 x i8] c"\013failed to put device into direct mode!\0A\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"\013Failed to set scode %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"\016%s: %s(%d) Source = %s\0A\00", align 1
@__func__.xc_set_signal_source = private unnamed_addr constant [21 x i8] c"xc_set_signal_source\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"ANTENNA\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"CABLE\00", align 1
@.str.88 = private unnamed_addr constant [42 x i8] c"\013%s(), Invalid mode, defaulting to CABLE\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"M/N-NTSC/PAL-BTSC\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"M/N-NTSC/PAL-A2\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"M/N-NTSC/PAL-EIAJ\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"M/N-NTSC/PAL-Mono\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"B/G-PAL-A2\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"B/G-PAL-NICAM\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"B/G-PAL-MONO\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"I-PAL-NICAM\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"I-PAL-NICAM-MONO\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"D/K-PAL-A2\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"D/K-PAL-NICAM\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"D/K-PAL-MONO\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"D/K-SECAM-A2 DK1\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"D/K-SECAM-A2 L/DK3\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"D/K-SECAM-A2 MONO\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"D/K-SECAM-NICAM\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"L-SECAM-NICAM\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"L'-SECAM-NICAM\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"DTV6\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"DTV8\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"DTV7/8\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"DTV7\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"FM Radio-INPUT2\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"FM Radio-INPUT1\00", align 1
@.str.113 = private unnamed_addr constant [25 x i8] c"\016%s: %s(0x%04x,0x%04x)\0A\00", align 1
@__func__.xc_set_tv_standard = private unnamed_addr constant [19 x i8] c"xc_set_tv_standard\00", align 1
@.str.114 = private unnamed_addr constant [26 x i8] c"\016%s: %s() Standard = %s\0A\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"\016%s: %s(%u)\0A\00", align 1
@__func__.xc_tune_channel = private unnamed_addr constant [16 x i8] c"xc_tune_channel\00", align 1
@__func__.xc_set_rf_frequency = private unnamed_addr constant [20 x i8] c"xc_set_rf_frequency\00", align 1
@.str.116 = private unnamed_addr constant [38 x i8] c"\016%s: *** ADC envelope (0-1023) = %d\0A\00", align 1
@.str.117 = private unnamed_addr constant [35 x i8] c"\016%s: *** Frequency error = %d Hz\0A\00", align 1
@.str.118 = private unnamed_addr constant [60 x i8] c"\016%s: *** Lock status (0-Wait, 1-Locked, 2-No-signal) = %d\0A\00", align 1
@.str.119 = private unnamed_addr constant [42 x i8] c"\016%s: *** HW: V%02x.%02x, FW: V%02x.%02x\0A\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c"\016%s: *** Horizontal sync frequency = %d Hz\0A\00", align 1
@.str.121 = private unnamed_addr constant [28 x i8] c"\016%s: *** Frame lines = %d\0A\00", align 1
@.str.122 = private unnamed_addr constant [42 x i8] c"\016%s: *** Quality (0:<8dB, 7:>56dB) = %d\0A\00", align 1
@.str.123 = private unnamed_addr constant [37 x i8] c"\016%s: *** Signal level = -%ddB (%d)\0A\00", align 1
@.str.124 = private unnamed_addr constant [35 x i8] c"\016%s: *** Noise level = %ddB (%d)\0A\00", align 1
@.str.125 = private unnamed_addr constant [46 x i8] c"\016%s: %s() frequency=%d (in units of 62.5Hz)\0A\00", align 1
@__func__.xc4000_set_analog_params = private unnamed_addr constant [25 x i8] c"xc4000_set_analog_params\00", align 1
@.str.126 = private unnamed_addr constant [47 x i8] c"\016%s: %s() frequency=%d (in units of 62.5khz)\0A\00", align 1
@.str.127 = private unnamed_addr constant [32 x i8] c"\016%s: %s() freq = %u, SNR = %d\0A\00", align 1
@__func__.xc4000_get_frequency = private unnamed_addr constant [21 x i8] c"xc4000_get_frequency\00", align 1
@__func__.xc4000_get_bandwidth = private unnamed_addr constant [21 x i8] c"xc4000_get_bandwidth\00", align 1
@.str.128 = private unnamed_addr constant [29 x i8] c"\016%s: %s() lock_status = %d\0A\00", align 1
@__func__.xc4000_get_status = private unnamed_addr constant [18 x i8] c"xc4000_get_status\00", align 1
@.str.129 = private unnamed_addr constant [45 x i8] c"\017%s %d-%04x: Signal strength: -%ddB (%05d)\0A\00", align 1
@.str.130 = private unnamed_addr constant [40 x i8] c"\017%s %d-%04x: Noise level: %ddB (%05d)\0A\00", align 1
@.str.131 = private unnamed_addr constant [34 x i8] c"\016%s: Reading custom firmware %s\0A\00", align 1
@.str.132 = private unnamed_addr constant [23 x i8] c"dvb-fe-xc4000-1.4.1.fw\00", align 1
@.str.133 = private unnamed_addr constant [34 x i8] c"\016%s: Trying to read firmware %s\0A\00", align 1
@.str.134 = private unnamed_addr constant [21 x i8] c"dvb-fe-xc4000-1.4.fw\00", align 1
@.str.135 = private unnamed_addr constant [33 x i8] c"\013Error: firmware %s not found.\0A\00", align 1
@.str.136 = private unnamed_addr constant [41 x i8] c"\013Error %d while requesting firmware %s\0A\00", align 1
@.str.137 = private unnamed_addr constant [28 x i8] c"\016%s: Loading Firmware: %s\0A\00", align 1
@.str.138 = private unnamed_addr constant [45 x i8] c"\013Error: firmware file %s has invalid size!\0A\00", align 1
@.str.139 = private unnamed_addr constant [63 x i8] c"\016%s: Loading %d firmware images from %s, type: %s, ver %d.%d\0A\00", align 1
@.str.140 = private unnamed_addr constant [44 x i8] c"\013Not enough memory to load firmware file.\0A\00", align 1
@.str.141 = private unnamed_addr constant [52 x i8] c"\013More firmware images in file than were expected!\0A\00", align 1
@.str.142 = private unnamed_addr constant [68 x i8] c"\013Firmware type (%x), id %llx is corrupted (size=%zd, expected %d)\0A\00", align 1
@.str.143 = private unnamed_addr constant [25 x i8] c"\017Reading firmware type \00", align 1
@.str.144 = private unnamed_addr constant [27 x i8] c"\017(%x), id %llx, size=%d.\0A\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"\013Firmware file is incomplete!\0A\00", align 1
@.str.146 = private unnamed_addr constant [34 x i8] c"\013Firmware header is incomplete!\0A\00", align 1
@.str.147 = private unnamed_addr constant [38 x i8] c"\013Error: firmware file is corrupted!\0A\00", align 1
@.str.148 = private unnamed_addr constant [30 x i8] c"\016%s: Firmware files loaded.\0A\00", align 1
@__func__.xc4000_release = private unnamed_addr constant [15 x i8] c"xc4000_release\00", align 1
@.str.149 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_audio_std254, ptr @__UNIQUE_ID_audio_stdtype253, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_firmware260, ptr @__UNIQUE_ID_firmware261, ptr @__UNIQUE_ID_firmware_name256, ptr @__UNIQUE_ID_firmware_nametype255, ptr @__UNIQUE_ID_license259, ptr @__UNIQUE_ID_no_poweroff252, ptr @__UNIQUE_ID_no_powerofftype251, ptr @__ksymtab_xc4000_attach, ptr @__param_audio_std, ptr @__param_debug, ptr @__param_firmware_name, ptr @__param_no_poweroff], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xc4000_attach(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) #0 {
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
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_attach, i32 noundef %15, i32 noundef %21) #9
  br label %23

23:                                               ; preds = %20, %3
  tail call void @mutex_lock(ptr noundef nonnull @xc4000_list_mutex) #10
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
  %43 = load i8, ptr %31, align 8
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
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %50, i32 noundef %38, i32 noundef %51) #9
  %53 = getelementptr i8, ptr %30, i32 -8
  %54 = load i32, ptr %53, align 8
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %48, %45, %23
  %58 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %59 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 120) #11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %89, label %61

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
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %70, i32 noundef %71) #9
  %73 = getelementptr inbounds %struct.xc4000_priv, ptr %59, i32 0, i32 1
  %74 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr %73, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr @hybrid_tuner_instance_list, ptr %73, align 8
  %75 = getelementptr inbounds %struct.xc4000_priv, ptr %59, i32 0, i32 1, i32 1
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
  switch i32 %80, label %89 [
    i32 0, label %160
    i32 1, label %82
  ]

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.xc4000_priv, ptr %81, i32 0, i32 7
  store i32 6000000, ptr %83, align 4
  %84 = getelementptr inbounds %struct.xc4000_priv, ptr %81, i32 0, i32 4
  store i32 4560, ptr %84, align 8
  %85 = getelementptr inbounds %struct.xc4000_priv, ptr %81, i32 0, i32 10
  store i8 0, ptr %85, align 2
  %86 = getelementptr inbounds %struct.xc4000_priv, ptr %81, i32 0, i32 11
  store i8 -122, ptr %86, align 1
  %87 = getelementptr inbounds %struct.xc4000_priv, ptr %81, i32 0, i32 12
  store i8 1, ptr %87, align 4
  %88 = getelementptr inbounds %struct.xc4000_priv, ptr %81, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %88, ptr noundef nonnull @.str.4, ptr noundef nonnull @xc4000_attach.__key) #10
  br label %89

89:                                               ; preds = %82, %79, %57
  %90 = phi ptr [ %81, %82 ], [ %81, %79 ], [ null, %57 ]
  %91 = phi i32 [ 1, %82 ], [ %80, %79 ], [ -12, %57 ]
  %92 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %90, ptr %92, align 4
  %93 = getelementptr inbounds %struct.xc4000_config, ptr %2, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.xc4000_priv, ptr %90, i32 0, i32 4
  store i32 %94, ptr %97, align 8
  %98 = getelementptr inbounds %struct.xc4000_config, ptr %2, i32 0, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = getelementptr inbounds %struct.xc4000_priv, ptr %90, i32 0, i32 10
  store i8 %99, ptr %100, align 2
  %101 = getelementptr inbounds %struct.xc4000_config, ptr %2, i32 0, i32 2
  %102 = load i8, ptr %101, align 2
  %103 = getelementptr inbounds %struct.xc4000_priv, ptr %90, i32 0, i32 11
  store i8 %102, ptr %103, align 1
  %104 = getelementptr inbounds %struct.xc4000_config, ptr %2, i32 0, i32 3
  %105 = load i8, ptr %104, align 1
  %106 = getelementptr inbounds %struct.xc4000_priv, ptr %90, i32 0, i32 12
  store i8 %105, ptr %106, align 4
  br label %107

107:                                              ; preds = %96, %89
  %108 = icmp eq i32 %91, 1
  br i1 %108, label %109, label %133

109:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 2048, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %110 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %110, i8 0, i32 16, i1 false) #10, !annotation !8
  %111 = load i8, ptr %90, align 8
  %112 = zext i8 %111 to i16
  store i16 %112, ptr %6, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %113, align 2
  store i16 2, ptr %110, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %114, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %112, ptr %115, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %116, align 2
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 2, ptr %117, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %118, align 4
  %119 = getelementptr inbounds %struct.tuner_i2c_props, ptr %90, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %6, i32 noundef 2) #10
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %131

123:                                              ; preds = %109
  %124 = load i8, ptr %5, align 2
  %125 = zext i8 %124 to i16
  %126 = shl nuw i16 %125, 8
  %127 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i16
  %130 = or i16 %126, %129
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  br label %141

131:                                              ; preds = %109
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  br label %160

133:                                              ; preds = %107
  %134 = getelementptr inbounds %struct.xc4000_priv, ptr %90, i32 0, i32 15
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.xc4000_priv, ptr %90, i32 0, i32 16
  %140 = load i16, ptr %139, align 8
  br label %141

141:                                              ; preds = %138, %123
  %142 = phi i16 [ %130, %123 ], [ %140, %138 ]
  switch i16 %142, label %144 [
    i16 4000, label %149
    i16 4100, label %149
    i16 8192, label %143
  ]

143:                                              ; preds = %141, %133
  br label %149

144:                                              ; preds = %141
  %145 = zext i16 %142 to i32
  %146 = load i8, ptr %2, align 4
  %147 = zext i8 %146 to i32
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %147, i32 noundef %145) #9
  br label %160

149:                                              ; preds = %143, %141, %141
  %150 = phi ptr [ @.str.7, %143 ], [ @.str.6, %141 ], [ @.str.6, %141 ]
  %151 = load i8, ptr %2, align 4
  %152 = zext i8 %151 to i32
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %152) #9
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %150) #9
  call void @mutex_unlock(ptr noundef nonnull @xc4000_list_mutex) #10
  %155 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %155, ptr noundef nonnull align 4 dereferenceable(220) @xc4000_tuner_ops, i32 220, i1 false)
  br i1 %108, label %156, label %162

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.xc4000_priv, ptr %90, i32 0, i32 18
  call void @mutex_lock(ptr noundef %157) #10
  %158 = call fastcc i32 @xc4000_fwupload(ptr noundef %0)
  call void @mutex_unlock(ptr noundef %157) #10
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %161

160:                                              ; preds = %144, %131, %79
  call void @mutex_unlock(ptr noundef nonnull @xc4000_list_mutex) #10
  br label %161

161:                                              ; preds = %160, %156
  call void @xc4000_release(ptr noundef %0)
  br label %162

162:                                              ; preds = %161, %156, %149
  %163 = phi ptr [ null, %161 ], [ %0, %156 ], [ %0, %149 ]
  ret ptr %163
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xc4000_fwupload(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca [33 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(33) %3, i8 0, i32 33, i1 false), !annotation !8
  %6 = load i8, ptr @firmware_name, align 1
  %7 = icmp eq i8 %6, 0
  %8 = load i32, ptr @debug, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %7, label %15, label %10

10:                                               ; preds = %1
  br i1 %9, label %11, label %13

11:                                               ; preds = %10
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.1, ptr noundef nonnull @firmware_name) #9
  br label %13

13:                                               ; preds = %11, %10
  %14 = getelementptr inbounds %struct.tuner_i2c_props, ptr %5, i32 0, i32 1
  br label %30

15:                                               ; preds = %1
  br i1 %9, label %16, label %18

16:                                               ; preds = %15
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.132) #9
  br label %18

18:                                               ; preds = %16, %15
  %19 = getelementptr inbounds %struct.tuner_i2c_props, ptr %5, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 9, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef nonnull @.str.132, ptr noundef %22) #10
  %24 = icmp eq i32 %23, -2
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load i32, ptr @debug, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.134) #9
  br label %30

30:                                               ; preds = %28, %25, %13
  %31 = phi ptr [ %14, %13 ], [ %19, %28 ], [ %19, %25 ]
  %32 = phi ptr [ @firmware_name, %13 ], [ @.str.134, %28 ], [ @.str.134, %25 ]
  %33 = load ptr, ptr %31, align 4
  %34 = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 9, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef nonnull %32, ptr noundef %35) #10
  br label %37

37:                                               ; preds = %30, %18
  %38 = phi ptr [ @.str.132, %18 ], [ %32, %30 ]
  %39 = phi i32 [ %23, %18 ], [ %36, %30 ]
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = icmp eq i32 %39, -2
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef nonnull %38) #9
  br label %172

45:                                               ; preds = %41
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %39, ptr noundef nonnull %38) #9
  br label %172

47:                                               ; preds = %37
  %48 = load i32, ptr @debug, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.1, ptr noundef nonnull %38) #9
  br label %52

52:                                               ; preds = %50, %47
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr inbounds %struct.firmware, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load i32, ptr %53, align 4
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = icmp ult i32 %56, 36
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull %38) #9
  br label %159

61:                                               ; preds = %52
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, ptr noundef align 1 dereferenceable(32) %55, i32 32, i1 false)
  %62 = getelementptr inbounds [33 x i8], ptr %3, i32 0, i32 32
  store i8 0, ptr %62, align 1
  %63 = getelementptr i8, ptr %55, i32 32
  %64 = load i16, ptr %63, align 1
  %65 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 14
  store i16 %64, ptr %65, align 2
  %66 = getelementptr i8, ptr %55, i32 34
  %67 = load i16, ptr %66, align 1
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %55, i32 36
  %70 = load i32, ptr @debug, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = zext i16 %64 to i32
  %74 = lshr i32 %73, 8
  %75 = and i32 %73, 255
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.1, i32 noundef %68, ptr noundef nonnull %38, ptr noundef nonnull %3, i32 noundef %74, i32 noundef %75) #9
  br label %77

77:                                               ; preds = %72, %61
  %78 = shl nuw nsw i32 %68, 5
  %79 = call noalias align 64 ptr @__kmalloc(i32 noundef %78, i32 noundef 3520) #12
  %80 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 2
  store ptr %79, ptr %80, align 8
  %81 = icmp eq ptr %79, null
  br i1 %81, label %159, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 3
  store i32 %68, ptr %83, align 4
  %84 = icmp ult ptr %69, %57
  br i1 %84, label %85, label %151

85:                                               ; preds = %82
  %86 = ptrtoint ptr %57 to i32
  br label %87

87:                                               ; preds = %137, %85
  %88 = phi ptr [ %69, %85 ], [ %146, %137 ]
  %89 = phi i32 [ 0, %85 ], [ %147, %137 ]
  %90 = icmp eq i32 %89, %68
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #9
  br label %159

93:                                               ; preds = %87
  %94 = ptrtoint ptr %88 to i32
  %95 = sub i32 %86, %94
  %96 = icmp ult i32 %95, 16
  br i1 %96, label %157, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr %88, align 1
  %99 = getelementptr i8, ptr %88, i32 4
  %100 = load i64, ptr %99, align 1
  %101 = getelementptr i8, ptr %88, i32 12
  %102 = and i32 %98, 1073741824
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %97
  %105 = load i16, ptr %101, align 1
  %106 = getelementptr i8, ptr %88, i32 14
  %107 = ptrtoint ptr %106 to i32
  %108 = sub i32 %86, %107
  %109 = icmp ult i32 %108, 4
  br i1 %109, label %157, label %110

110:                                              ; preds = %104, %97
  %111 = phi i16 [ %105, %104 ], [ 0, %97 ]
  %112 = phi ptr [ %106, %104 ], [ %101, %97 ]
  %113 = load i32, ptr %112, align 1
  %114 = getelementptr i8, ptr %112, i32 4
  %115 = icmp eq i32 %113, 0
  %116 = ptrtoint ptr %114 to i32
  %117 = sub i32 %86, %116
  %118 = icmp ugt i32 %113, %117
  %119 = select i1 %115, i1 true, i1 %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %98, i64 noundef %100, i32 noundef %117, i32 noundef %113) #9
  br label %159

122:                                              ; preds = %110
  %123 = call ptr @kmemdup(ptr noundef %114, i32 noundef %113, i32 noundef 3264) #10
  %124 = load ptr, ptr %80, align 8
  %125 = getelementptr %struct.firmware_description, ptr %124, i32 %89, i32 3
  store ptr %123, ptr %125, align 4
  %126 = load ptr, ptr %80, align 8
  %127 = getelementptr %struct.firmware_description, ptr %126, i32 %89, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %159, label %130

130:                                              ; preds = %122
  %131 = load i32, ptr @debug, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #9
  call fastcc void @dump_firm_type_and_int_freq(i32 noundef %98, i16 noundef zeroext %111)
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %98, i64 noundef %100, i32 noundef %113) #9
  %136 = load ptr, ptr %80, align 8
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi ptr [ %126, %130 ], [ %136, %133 ]
  %139 = getelementptr %struct.firmware_description, ptr %138, i32 %89
  store i32 %98, ptr %139, align 8
  %140 = load ptr, ptr %80, align 8
  %141 = getelementptr %struct.firmware_description, ptr %140, i32 %89, i32 1
  store i64 %100, ptr %141, align 8
  %142 = load ptr, ptr %80, align 8
  %143 = getelementptr %struct.firmware_description, ptr %142, i32 %89, i32 4
  store i32 %113, ptr %143, align 8
  %144 = load ptr, ptr %80, align 8
  %145 = getelementptr %struct.firmware_description, ptr %144, i32 %89, i32 2
  store i16 %111, ptr %145, align 8
  %146 = getelementptr i8, ptr %114, i32 %113
  %147 = add nuw nsw i32 %89, 1
  %148 = icmp ult ptr %146, %57
  br i1 %148, label %87, label %149

149:                                              ; preds = %137
  %150 = load i32, ptr %83, align 4
  br label %151

151:                                              ; preds = %149, %82
  %152 = phi i32 [ %68, %82 ], [ %150, %149 ]
  %153 = phi i32 [ 0, %82 ], [ %147, %149 ]
  %154 = icmp eq i32 %153, %152
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #9
  br label %159

157:                                              ; preds = %104, %93
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146) #9
  br label %159

159:                                              ; preds = %157, %155, %122, %120, %91, %77, %59
  %160 = phi ptr [ @.str.140, %77 ], [ @.str.147, %120 ], [ @.str.147, %91 ], [ @.str.147, %157 ], [ @.str.147, %155 ], [ @.str.147, %59 ], [ @.str.140, %122 ]
  %161 = phi i32 [ -12, %77 ], [ -22, %120 ], [ -22, %91 ], [ -22, %157 ], [ -22, %155 ], [ -22, %59 ], [ -12, %122 ]
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %160) #9
  br label %163

163:                                              ; preds = %159, %151
  %164 = phi i32 [ %39, %151 ], [ %161, %159 ]
  %165 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %165) #10
  %166 = icmp eq i32 %164, 0
  %167 = load i32, ptr @debug, align 4
  %168 = icmp sgt i32 %167, 0
  %169 = select i1 %166, i1 %168, i1 false
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.1) #9
  br label %172

172:                                              ; preds = %170, %163, %45, %43
  %173 = phi i32 [ %39, %45 ], [ -2, %43 ], [ 0, %170 ], [ %164, %163 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xc4000_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_release) #9
  br label %8

8:                                                ; preds = %6, %1
  tail call void @mutex_lock(ptr noundef nonnull @xc4000_list_mutex) #10
  %9 = icmp eq ptr %3, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ %23, %21 ], [ -1, %15 ]
  %26 = load i8, ptr %3, align 8
  %27 = zext i8 %26 to i32
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %17, i32 noundef %25, i32 noundef %27) #9
  %29 = getelementptr inbounds %struct.xc4000_priv, ptr %3, i32 0, i32 1
  %30 = getelementptr inbounds %struct.xc4000_priv, ptr %3, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %34

34:                                               ; preds = %24, %10, %8
  tail call void @mutex_unlock(ptr noundef nonnull @xc4000_list_mutex) #10
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc4000_init(ptr nocapture noundef readnone %0) #0 {
  %2 = load i32, ptr @debug, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_init) #9
  br label %6

6:                                                ; preds = %4, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc4000_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_sleep) #9
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = load i32, ptr @no_poweroff, align 4
  switch i32 %12, label %43 [
    i32 2, label %17
    i32 0, label %13
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 10
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %13, %10
  %18 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 15
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %17
  store i32 -2147483648, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 2048, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %23 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 4, ptr %23, align 4, !annotation !8
  %24 = load i8, ptr %5, align 8
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %2, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.tuner_i2c_props, ptr %5, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %2, i32 noundef 1) #10
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %36, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 13
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %41

37:                                               ; preds = %32
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #9
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.xc4000_sleep) #9
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi i32 [ -121, %37 ], [ 0, %36 ]
  call void @msleep(i32 noundef 20) #10
  br label %43

43:                                               ; preds = %41, %17, %13, %10
  %44 = phi i32 [ %42, %41 ], [ 0, %17 ], [ 0, %13 ], [ 0, %10 ]
  call void @mutex_unlock(ptr noundef %11) #10
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc4000_set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [4 x i8], align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [4 x i8], align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr @debug, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, ptr %8, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_set_params, i32 noundef %18) #9
  br label %20

20:                                               ; preds = %17, %1
  %21 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %21) #10
  switch i32 %10, label %69 [
    i32 11, label %22
    i32 2, label %31
    i32 3, label %40
    i32 16, label %40
  ]

22:                                               ; preds = %20
  %23 = load i32, ptr @debug, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_set_params) #9
  br label %27

27:                                               ; preds = %25, %22
  %28 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 9
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 6
  store i32 1750000, ptr %29, align 8
  %30 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 8
  store i8 18, ptr %30, align 8
  br label %71

31:                                               ; preds = %20
  %32 = load i32, ptr @debug, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_set_params) #9
  br label %36

36:                                               ; preds = %34, %31
  %37 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 9
  store i8 1, ptr %37, align 1
  %38 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 6
  store i32 1750000, ptr %38, align 8
  %39 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 8
  store i8 18, ptr %39, align 8
  br label %71

40:                                               ; preds = %20, %20
  %41 = load i32, ptr @debug, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_set_params) #9
  br label %45

45:                                               ; preds = %43, %40
  %46 = icmp eq i32 %12, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %45
  %48 = load i32, ptr %8, align 4
  %49 = icmp ult i32 %48, 400000000
  %50 = select i1 %49, i32 2250000, i32 2750000
  %51 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 6
  store i32 %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 8
  store i8 20, ptr %52, align 8
  br label %65

53:                                               ; preds = %45
  %54 = icmp ult i32 %12, 6000001
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 8
  store i8 18, ptr %56, align 8
  %57 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 6
  store i32 1750000, ptr %57, align 8
  br label %65

58:                                               ; preds = %53
  %59 = icmp ult i32 %12, 7000001
  %60 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 8
  br i1 %59, label %61, label %63

61:                                               ; preds = %58
  store i8 21, ptr %60, align 8
  %62 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 6
  store i32 2250000, ptr %62, align 8
  br label %65

63:                                               ; preds = %58
  store i8 19, ptr %60, align 8
  %64 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 6
  store i32 2750000, ptr %64, align 8
  br label %65

65:                                               ; preds = %63, %61, %55, %47
  %66 = phi i32 [ %50, %47 ], [ 1750000, %55 ], [ 2250000, %61 ], [ 2750000, %63 ]
  %67 = phi i32 [ 256, %47 ], [ 32, %55 ], [ 128, %61 ], [ 512, %63 ]
  %68 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 9
  store i8 0, ptr %68, align 1
  br label %71

69:                                               ; preds = %20
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %195

71:                                               ; preds = %65, %36, %27
  %72 = phi i32 [ %66, %65 ], [ 1750000, %36 ], [ 1750000, %27 ]
  %73 = phi i32 [ %67, %65 ], [ 32, %36 ], [ 32, %27 ]
  %74 = load i32, ptr %8, align 4
  %75 = sub i32 %74, %72
  %76 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 5
  store i32 %75, ptr %76, align 4
  %77 = load i32, ptr @debug, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_set_params, i32 noundef %75) #9
  br label %81

81:                                               ; preds = %79, %71
  %82 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 4
  %83 = load i32, ptr %82, align 8
  %84 = trunc i32 %83 to i16
  %85 = tail call fastcc i32 @check_firmware(ptr noundef %0, i32 noundef %73, i64 noundef 0, i16 noundef zeroext %84)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %195

87:                                               ; preds = %81
  %88 = load i32, ptr %11, align 4
  %89 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 7
  store i32 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 9
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i16
  %93 = tail call fastcc i32 @xc_set_signal_source(ptr noundef %14, i16 noundef zeroext %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %87
  %96 = load i8, ptr %90, align 1
  %97 = zext i8 %96 to i32
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %97) #9
  br label %195

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 8
  %101 = load i8, ptr %100, align 8
  %102 = zext i8 %101 to i32
  %103 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc4000_standard, i32 0, i32 %102, i32 2
  %104 = load i16, ptr %103, align 2
  %105 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc4000_standard, i32 0, i32 %102, i32 1
  %106 = load i16, ptr %105, align 4
  %107 = icmp eq i32 %73, 32
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 14
  %110 = load i16, ptr %109, align 2
  %111 = icmp ne i16 %110, 258
  %112 = zext i1 %111 to i16
  %113 = or i16 %104, %112
  br label %114

114:                                              ; preds = %108, %99
  %115 = phi i16 [ %104, %99 ], [ %113, %108 ]
  %116 = tail call fastcc i32 @xc_set_tv_standard(ptr noundef %14, i16 noundef zeroext %115, i16 noundef zeroext %106)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #9
  br label %120

120:                                              ; preds = %118, %114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 1024, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %121 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %121, align 4, !annotation !8
  %122 = load i8, ptr %14, align 8
  %123 = zext i8 %122 to i16
  store i16 %123, ptr %6, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %124, align 2
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %125, align 4
  %126 = getelementptr inbounds %struct.tuner_i2c_props, ptr %14, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %6, i32 noundef 1) #10
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %137, label %130

130:                                              ; preds = %120
  %131 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 13
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #9
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br label %138

137:                                              ; preds = %130, %120
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br label %138

138:                                              ; preds = %137, %134
  %139 = phi i32 [ 0, %137 ], [ %116, %134 ]
  %140 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 11
  %141 = load i8, ptr %140, align 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %167, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 14
  %145 = load i16, ptr %144, align 2
  %146 = icmp eq i16 %145, 258
  %147 = icmp eq i8 %141, -122
  %148 = select i1 %146, i1 %147, i1 false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 4096, ptr %5, align 4, !annotation !8
  %149 = select i1 %148, i8 -124, i8 %141
  %150 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  store i8 %149, ptr %150, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %151 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %151, align 4, !annotation !8
  %152 = load i8, ptr %14, align 8
  %153 = zext i8 %152 to i16
  store i16 %153, ptr %4, align 4
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %154, align 2
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %155, align 4
  %156 = load ptr, ptr %126, align 4
  %157 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %4, i32 noundef 1) #10
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %166, label %159

159:                                              ; preds = %143
  %160 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 13
  %161 = load i8, ptr %160, align 1
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #9
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %167

166:                                              ; preds = %159, %143
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %167

167:                                              ; preds = %166, %163, %138
  %168 = phi i32 [ %139, %138 ], [ %139, %166 ], [ -121, %163 ]
  %169 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 12
  %170 = load i8, ptr %169, align 4
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %189, label %172

172:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 16780800, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %173 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 4, ptr %173, align 4, !annotation !8
  %174 = load i8, ptr %14, align 8
  %175 = zext i8 %174 to i16
  store i16 %175, ptr %2, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %176, align 2
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %177, align 4
  %178 = load ptr, ptr %126, align 4
  %179 = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %2, i32 noundef 1) #10
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %188, label %181

181:                                              ; preds = %172
  %182 = getelementptr inbounds %struct.xc4000_priv, ptr %14, i32 0, i32 13
  %183 = load i8, ptr %182, align 1
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #9
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %191

188:                                              ; preds = %181, %172
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %189

189:                                              ; preds = %188, %167
  %190 = icmp eq i32 %168, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %189, %185
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %193

193:                                              ; preds = %191, %189
  %194 = load i32, ptr %76, align 4
  call fastcc void @xc_tune_channel(ptr noundef %14, i32 noundef %194)
  br label %195

195:                                              ; preds = %193, %95, %81, %69
  %196 = phi i32 [ -22, %69 ], [ -121, %81 ], [ %93, %95 ], [ 0, %193 ]
  call void @mutex_unlock(ptr noundef %21) #10
  ret i32 %196
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc4000_set_analog_params(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [4 x i8], align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [4 x i8], align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [4 x i8], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  %14 = load i32, ptr @debug, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %13, label %16, label %33

16:                                               ; preds = %2
  br i1 %15, label %17, label %20

17:                                               ; preds = %16
  %18 = load i32, ptr %1, align 8
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_set_analog_params, i32 noundef %18) #9
  br label %20

20:                                               ; preds = %17, %16
  %21 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %21) #10
  %22 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  store i64 0, ptr %22, align 8
  %23 = load i32, ptr %1, align 8
  %24 = mul i32 %23, 125
  %25 = lshr i32 %24, 1
  %26 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 5
  store i32 %25, ptr %26, align 4
  %27 = load i32, ptr @audio_std, align 4
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  br i1 %29, label %32, label %31

31:                                               ; preds = %20
  store i8 23, ptr %30, align 8
  br label %136

32:                                               ; preds = %20
  store i8 22, ptr %30, align 8
  br label %136

33:                                               ; preds = %2
  br i1 %15, label %34, label %37

34:                                               ; preds = %33
  %35 = load i32, ptr %1, align 8
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_set_analog_params, i32 noundef %35) #9
  br label %37

37:                                               ; preds = %34, %33
  %38 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %38) #10
  %39 = load i32, ptr %1, align 8
  %40 = mul i32 %39, 62500
  %41 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 5
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 16777215
  %45 = icmp eq i64 %44, 0
  %46 = select i1 %45, i64 7, i64 %44
  store i64 %46, ptr %42, align 8
  %47 = load i32, ptr @audio_std, align 4
  %48 = and i32 %47, 32
  %49 = icmp eq i32 %48, 0
  %50 = shl nuw nsw i32 %48, 10
  %51 = and i64 %46, 46848
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %37
  store i64 46848, ptr %42, align 8
  br i1 %49, label %56, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 3, ptr %55, align 8
  br label %136

56:                                               ; preds = %53
  %57 = and i32 %47, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  store i64 12884948736, ptr %42, align 8
  %60 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 1, ptr %60, align 8
  br label %136

61:                                               ; preds = %56
  store i64 137439000320, ptr %42, align 8
  %62 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 0, ptr %62, align 8
  br label %136

63:                                               ; preds = %37
  %64 = and i64 %46, 7
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %63
  store i64 7, ptr %42, align 8
  br i1 %49, label %69, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 6, ptr %68, align 8
  br label %136

69:                                               ; preds = %66
  %70 = and i32 %47, 2
  %71 = icmp eq i32 %70, 0
  %72 = and i32 %47, 1
  %73 = icmp eq i32 %72, 0
  br i1 %71, label %74, label %79

74:                                               ; preds = %69
  br i1 %73, label %75, label %77

75:                                               ; preds = %74
  store i64 17179869191, ptr %42, align 8
  %76 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 5, ptr %76, align 8
  br label %136

77:                                               ; preds = %74
  store i64 34359738375, ptr %42, align 8
  %78 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 5, ptr %78, align 8
  br label %136

79:                                               ; preds = %69
  br i1 %73, label %80, label %82

80:                                               ; preds = %79
  store i64 4294967303, ptr %42, align 8
  %81 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 4, ptr %81, align 8
  br label %136

82:                                               ; preds = %79
  store i64 8589934599, ptr %42, align 8
  %83 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 4, ptr %83, align 8
  br label %136

84:                                               ; preds = %63
  %85 = and i64 %46, 16
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  store i64 51539607568, ptr %42, align 8
  %88 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  br i1 %49, label %90, label %89

89:                                               ; preds = %87
  store i8 8, ptr %88, align 8
  br label %136

90:                                               ; preds = %87
  store i8 7, ptr %88, align 8
  br label %136

91:                                               ; preds = %84
  %92 = and i64 %46, 224
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  store i64 224, ptr %42, align 8
  br i1 %49, label %97, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 11, ptr %96, align 8
  br label %136

97:                                               ; preds = %94
  %98 = and i32 %47, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  store i64 12884902112, ptr %42, align 8
  %101 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 9, ptr %101, align 8
  br label %136

102:                                              ; preds = %97
  store i64 51539607776, ptr %42, align 8
  %103 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 10, ptr %103, align 8
  br label %136

104:                                              ; preds = %91
  %105 = and i64 %46, 3276800
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %104
  store i64 12888178688, ptr %42, align 8
  %108 = and i32 %47, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 15, ptr %111, align 8
  br label %136

112:                                              ; preds = %107
  br i1 %49, label %115, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 14, ptr %114, align 8
  br label %136

115:                                              ; preds = %112
  %116 = and i32 %47, 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  store i64 12955287552, ptr %42, align 8
  %119 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 13, ptr %119, align 8
  br label %136

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 12, ptr %121, align 8
  br label %136

122:                                              ; preds = %104
  %123 = and i64 %46, 4194304
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  store i64 51543801856, ptr %42, align 8
  %126 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 16, ptr %126, align 8
  br label %136

127:                                              ; preds = %122
  %128 = and i64 %46, 8388608
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  %132 = load i8, ptr %131, align 8
  %133 = zext i8 %132 to i32
  br label %136

134:                                              ; preds = %127
  store i64 51547996160, ptr %42, align 8
  %135 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  store i8 17, ptr %135, align 8
  br label %136

136:                                              ; preds = %134, %130, %125, %120, %118, %113, %110, %102, %100, %95, %90, %89, %82, %80, %77, %75, %67, %61, %59, %54, %32, %31
  %137 = phi i32 [ 23, %31 ], [ 22, %32 ], [ 3, %54 ], [ 1, %59 ], [ 0, %61 ], [ 6, %67 ], [ 4, %82 ], [ 4, %80 ], [ 5, %77 ], [ 5, %75 ], [ 8, %89 ], [ 7, %90 ], [ 11, %95 ], [ 9, %100 ], [ 10, %102 ], [ 15, %110 ], [ 14, %113 ], [ 13, %118 ], [ 12, %120 ], [ 16, %125 ], [ 17, %134 ], [ %133, %130 ]
  %138 = phi i32 [ 3072, %31 ], [ 268436480, %32 ], [ 32768, %54 ], [ 0, %59 ], [ 0, %61 ], [ 32768, %67 ], [ 0, %82 ], [ 0, %80 ], [ 0, %77 ], [ 0, %75 ], [ 32768, %89 ], [ 0, %90 ], [ 32768, %95 ], [ 0, %100 ], [ 0, %102 ], [ 0, %110 ], [ 32768, %113 ], [ 0, %118 ], [ 0, %120 ], [ 0, %125 ], [ 0, %134 ], [ %50, %130 ]
  %139 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 9
  store i8 1, ptr %139, align 1
  %140 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %141 = load i64, ptr %140, align 8
  %142 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  %143 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc4000_standard, i32 0, i32 %137, i32 3
  %144 = load i16, ptr %143, align 4
  %145 = tail call fastcc i32 @check_firmware(ptr noundef %0, i32 noundef %138, i64 noundef %141, i16 noundef zeroext %144)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %247

147:                                              ; preds = %136
  %148 = load i8, ptr %139, align 1
  %149 = zext i8 %148 to i16
  %150 = tail call fastcc i32 @xc_set_signal_source(ptr noundef %10, i16 noundef zeroext %149)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %147
  %153 = load i8, ptr %139, align 1
  %154 = zext i8 %153 to i32
  %155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %154) #9
  br label %247

156:                                              ; preds = %147
  %157 = load i8, ptr %142, align 8
  %158 = zext i8 %157 to i32
  %159 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc4000_standard, i32 0, i32 %158, i32 2
  %160 = load i16, ptr %159, align 2
  %161 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc4000_standard, i32 0, i32 %158, i32 1
  %162 = load i16, ptr %161, align 4
  %163 = add i8 %157, -4
  %164 = icmp ult i8 %163, 3
  br i1 %164, label %165, label %176

165:                                              ; preds = %156
  %166 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 14
  %167 = load i16, ptr %166, align 2
  %168 = icmp eq i16 %167, 258
  %169 = and i16 %160, -257
  %170 = select i1 %168, i16 %169, i16 %160
  %171 = load i32, ptr @audio_std, align 4
  %172 = trunc i32 %171 to i16
  %173 = shl i16 %172, 7
  %174 = and i16 %173, 128
  %175 = or i16 %174, %170
  br label %176

176:                                              ; preds = %165, %156
  %177 = phi i16 [ %160, %156 ], [ %175, %165 ]
  %178 = tail call fastcc i32 @xc_set_tv_standard(ptr noundef %10, i16 noundef zeroext %177, i16 noundef zeroext %162)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %176
  %181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #9
  br label %247

182:                                              ; preds = %176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 1024, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %183 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %183, align 4, !annotation !8
  %184 = load i8, ptr %10, align 8
  %185 = zext i8 %184 to i16
  store i16 %185, ptr %7, align 4
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %186, align 2
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %8, ptr %187, align 4
  %188 = getelementptr inbounds %struct.tuner_i2c_props, ptr %10, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = call i32 @i2c_transfer(ptr noundef %189, ptr noundef nonnull %7, i32 noundef 1) #10
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %199, label %192

192:                                              ; preds = %182
  %193 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 13
  %194 = load i8, ptr %193, align 1
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #9
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  br label %200

199:                                              ; preds = %192, %182
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  br label %200

200:                                              ; preds = %199, %196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 16781312, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %201 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 4, ptr %201, align 4, !annotation !8
  %202 = load i8, ptr %10, align 8
  %203 = zext i8 %202 to i16
  store i16 %203, ptr %5, align 4
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %204, align 2
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %205, align 4
  %206 = load ptr, ptr %188, align 4
  %207 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %5, i32 noundef 1) #10
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %216, label %209

209:                                              ; preds = %200
  %210 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 13
  %211 = load i8, ptr %210, align 1
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #9
  %215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %217

216:                                              ; preds = %209, %200
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %217

217:                                              ; preds = %216, %213
  %218 = phi i1 [ false, %213 ], [ true, %216 ]
  %219 = phi i32 [ -121, %213 ], [ 0, %216 ]
  %220 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 12
  %221 = load i8, ptr %220, align 4
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %240, label %223

223:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 16780800, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %224 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %224, align 4, !annotation !8
  %225 = load i8, ptr %10, align 8
  %226 = zext i8 %225 to i16
  store i16 %226, ptr %3, align 4
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %227, align 2
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %228, align 4
  %229 = load ptr, ptr %188, align 4
  %230 = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %3, i32 noundef 1) #10
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %239, label %232

232:                                              ; preds = %223
  %233 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 13
  %234 = load i8, ptr %233, align 1
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #9
  %238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %241

239:                                              ; preds = %232, %223
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %240

240:                                              ; preds = %239, %217
  br i1 %218, label %244, label %241

241:                                              ; preds = %240, %236
  %242 = phi i32 [ -121, %236 ], [ %219, %240 ]
  %243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %247

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 5
  %246 = load i32, ptr %245, align 4
  call fastcc void @xc_tune_channel(ptr noundef %10, i32 noundef %246)
  br label %247

247:                                              ; preds = %244, %241, %180, %152, %136
  %248 = phi i32 [ -121, %136 ], [ %150, %152 ], [ %178, %180 ], [ %242, %241 ], [ 0, %244 ]
  %249 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %249) #10
  ret i32 %248
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc4000_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xc4000_priv, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xc4000_priv, ptr %7, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, %9
  store i32 %12, ptr %1, align 4
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.xc4000_priv, ptr %7, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %16) #10
  %17 = getelementptr inbounds %struct.xc4000_priv, ptr %7, i32 0, i32 15
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 1953
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 1536, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %22 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %22, i8 0, i32 16, i1 false) #10, !annotation !8
  %23 = load i8, ptr %7, align 8
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %5, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 2, ptr %22, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %24, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %5, i32 noundef 2) #10
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %48

35:                                               ; preds = %21
  %36 = load i8, ptr %4, align 2
  %37 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  call void @mutex_unlock(ptr noundef %16) #10
  %39 = load i32, ptr @debug, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = zext i8 %36 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = zext i8 %38 to i32
  %45 = or i32 %43, %44
  %46 = load i32, ptr %1, align 4
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_get_frequency, i32 noundef %46, i32 noundef %45) #9
  br label %55

48:                                               ; preds = %21
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %50

50:                                               ; preds = %48, %15
  call void @mutex_unlock(ptr noundef %16) #10
  %51 = load i32, ptr @debug, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_get_frequency) #9
  br label %55

55:                                               ; preds = %53, %50, %41, %35, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc4000_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_get_bandwidth) #9
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.xc4000_priv, ptr %4, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc4000_get_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xc4000_priv, ptr %7, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.xc4000_priv, ptr %7, i32 0, i32 15
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 1024, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = load i8, ptr %7, align 8
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %5, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 2, ptr %14, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 2) #10
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %29, label %27

27:                                               ; preds = %13
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %40

29:                                               ; preds = %13
  %30 = load i8, ptr %4, align 2
  %31 = zext i8 %30 to i16
  %32 = shl nuw i16 %31, 8
  %33 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i16
  %36 = or i16 %32, %35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %37 = icmp eq i16 %36, 1
  %38 = select i1 %37, i32 3, i32 0
  %39 = zext i16 %36 to i32
  br label %40

40:                                               ; preds = %29, %27, %2
  %41 = phi i32 [ 0, %27 ], [ 0, %2 ], [ %39, %29 ]
  %42 = phi i32 [ 0, %27 ], [ 0, %2 ], [ %38, %29 ]
  store i32 %42, ptr %1, align 4
  %43 = load i32, ptr %9, align 8
  %44 = and i32 %43, 928
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = and i32 %42, 1
  store i32 %47, ptr %1, align 4
  br label %48

48:                                               ; preds = %46, %40
  call void @mutex_unlock(ptr noundef %8) #10
  %49 = load i32, ptr @debug, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_get_status, i32 noundef %41) #9
  br label %53

53:                                               ; preds = %51, %48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc4000_get_signal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %11) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 2560, ptr %6, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 0, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %12 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false) #10, !annotation !8
  %13 = load i8, ptr %10, align 8
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %8, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %15, align 2
  store i16 2, ptr %12, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %14, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tuner_i2c_props, ptr %10, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %8, i32 noundef 2) #10
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @mutex_unlock(ptr noundef %11) #10
  br label %112

27:                                               ; preds = %2
  %28 = load i8, ptr %7, align 2
  %29 = zext i8 %28 to i16
  %30 = shl nuw i16 %29, 8
  %31 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i16
  %34 = or i16 %30, %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @mutex_unlock(ptr noundef %11) #10
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.tuner_i2c_props, ptr %10, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %21, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi i32 [ %44, %42 ], [ -1, %37 ]
  %47 = load i8, ptr %10, align 8
  %48 = zext i8 %47 to i32
  %49 = zext i16 %34 to i32
  %50 = lshr i32 %49, 8
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %39, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %49) #9
  br label %52

52:                                               ; preds = %45, %27
  %53 = getelementptr inbounds %struct.xc4000_priv, ptr %10, i32 0, i32 8
  %54 = load i8, ptr %53, align 8
  %55 = add i8 %54, -18
  %56 = icmp ult i8 %55, 4
  br i1 %56, label %105, label %57

57:                                               ; preds = %52
  call void @mutex_lock(ptr noundef %11) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 2816, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %58 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %58, i8 0, i32 16, i1 false) #10, !annotation !8
  %59 = load i8, ptr %10, align 8
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %5, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %61, align 2
  store i16 2, ptr %58, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %60, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %66, align 4
  %67 = load ptr, ptr %21, align 4
  %68 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %5, i32 noundef 2) #10
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %72, label %70

70:                                               ; preds = %57
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %80

72:                                               ; preds = %57
  %73 = load i8, ptr %4, align 2
  %74 = zext i8 %73 to i16
  %75 = shl nuw i16 %74, 8
  %76 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i16
  %79 = or i16 %75, %78
  br label %80

80:                                               ; preds = %72, %70
  %81 = phi i16 [ %79, %72 ], [ %34, %70 ]
  %82 = phi i32 [ 0, %72 ], [ -121, %70 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  call void @mutex_unlock(ptr noundef %11) #10
  %83 = load i32, ptr @debug, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.tuner_i2c_props, ptr %10, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %21, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.i2c_adapter, ptr %88, i32 0, i32 11
  %92 = load i32, ptr %91, align 4
  br label %93

93:                                               ; preds = %90, %85
  %94 = phi i32 [ %92, %90 ], [ -1, %85 ]
  %95 = load i8, ptr %10, align 8
  %96 = zext i8 %95 to i32
  %97 = zext i16 %81 to i32
  %98 = lshr i32 %97, 8
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %87, i32 noundef %94, i32 noundef %96, i32 noundef %98, i32 noundef %97) #9
  br label %100

100:                                              ; preds = %93, %80
  %101 = icmp ugt i16 %81, 8191
  br i1 %101, label %112, label %102

102:                                              ; preds = %100
  %103 = xor i16 %81, -1
  %104 = shl i16 %103, 3
  br label %112

105:                                              ; preds = %52
  %106 = icmp ult i16 %34, 12801
  br i1 %106, label %112, label %107

107:                                              ; preds = %105
  %108 = icmp ugt i16 %34, 28985
  br i1 %108, label %112, label %109

109:                                              ; preds = %107
  %110 = mul i16 %34, -4
  %111 = add i16 %110, -14340
  br label %112

112:                                              ; preds = %109, %107, %105, %102, %100, %25
  %113 = phi i16 [ %111, %109 ], [ %104, %102 ], [ 0, %25 ], [ 0, %100 ], [ -1, %105 ], [ 0, %107 ]
  %114 = phi i32 [ 0, %109 ], [ %82, %102 ], [ -121, %25 ], [ %82, %100 ], [ 0, %105 ], [ 0, %107 ]
  store i16 %113, ptr %1, align 2
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_firmware(ptr nocapture noundef readonly %0, i32 noundef %1, i64 noundef %2, i16 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [4 x i8], align 4
  %15 = alloca [13 x i8], align 1
  %16 = alloca [5 x i8], align 4
  %17 = alloca %struct.firmware_properties, align 8
  %18 = alloca i64, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %17) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %17, i8 0, i32 40, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #10
  store i64 0, ptr %18, align 8, !annotation !8
  %21 = load i32, ptr @debug, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.check_firmware) #9
  br label %25

25:                                               ; preds = %23, %4
  %26 = getelementptr inbounds %struct.xc4000_priv, ptr %20, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = tail call fastcc i32 @xc4000_fwupload(ptr noundef %0)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %421, label %32

32:                                               ; preds = %29, %25
  %33 = phi i32 [ 0, %25 ], [ %30, %29 ]
  %34 = getelementptr inbounds %struct.firmware_properties, ptr %17, i32 0, i32 1
  %35 = getelementptr inbounds %struct.firmware_properties, ptr %17, i32 0, i32 2
  %36 = getelementptr inbounds %struct.firmware_properties, ptr %17, i32 0, i32 4
  %37 = getelementptr inbounds %struct.firmware_properties, ptr %17, i32 0, i32 5
  %38 = getelementptr inbounds %struct.firmware_properties, ptr %17, i32 0, i32 3
  %39 = icmp eq i16 %3, 0
  %40 = zext i16 %3 to i32
  %41 = getelementptr inbounds %struct.xc4000_priv, ptr %20, i32 0, i32 15
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 9
  %43 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %44 = or i32 %1, 1
  %45 = getelementptr inbounds %struct.xc4000_priv, ptr %20, i32 0, i32 15, i32 2
  %46 = getelementptr inbounds %struct.xc4000_priv, ptr %20, i32 0, i32 15, i32 4
  %47 = getelementptr inbounds %struct.xc4000_priv, ptr %20, i32 0, i32 15, i32 5
  %48 = getelementptr inbounds [13 x i8], ptr %15, i32 0, i32 1
  %49 = getelementptr inbounds i8, ptr %13, i32 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  %52 = getelementptr inbounds i8, ptr %12, i32 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  %55 = getelementptr inbounds [5 x i8], ptr %16, i32 0, i32 4
  %56 = getelementptr inbounds i8, ptr %11, i32 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %59 = getelementptr inbounds i8, ptr %10, i32 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  %66 = getelementptr inbounds %struct.tuner_i2c_props, ptr %20, i32 0, i32 1
  %67 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %68 = getelementptr inbounds i8, ptr %7, i32 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  %75 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %76 = getelementptr inbounds %struct.xc4000_priv, ptr %20, i32 0, i32 14
  %77 = getelementptr inbounds %struct.xc4000_priv, ptr %20, i32 0, i32 16
  %78 = getelementptr inbounds %struct.xc4000_priv, ptr %20, i32 0, i32 17
  %79 = getelementptr inbounds %struct.tuner_i2c_props, ptr %20, i32 0, i32 3
  %80 = load i32, ptr @debug, align 4
  br label %81

81:                                               ; preds = %416, %32
  %82 = phi i32 [ %80, %32 ], [ %417, %416 ]
  %83 = phi i1 [ true, %32 ], [ false, %416 ]
  %84 = phi i32 [ %33, %32 ], [ %409, %416 ]
  store i32 %1, ptr %17, align 8
  store i64 %2, ptr %34, align 8
  store i64 %2, ptr %35, align 8
  store i32 536870912, ptr %36, align 4
  store i32 0, ptr %37, align 8
  store i16 %3, ptr %38, align 8
  %85 = icmp sgt i32 %82, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1) #9
  %88 = load i32, ptr @debug, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = phi i32 [ %88, %86 ], [ %82, %81 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  call fastcc void @dump_firm_type_and_int_freq(i32 noundef %1, i16 noundef zeroext 0)
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %1, i64 noundef %2) #9
  br i1 %39, label %94, label %96

94:                                               ; preds = %92
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #9
  br label %98

96:                                               ; preds = %92
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %40) #9
  br label %98

98:                                               ; preds = %96, %94
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef 0) #9
  br label %100

100:                                              ; preds = %98, %89
  %101 = load i32, ptr %41, align 8
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr @debug, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %170

107:                                              ; preds = %104
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1) #9
  br label %170

109:                                              ; preds = %100
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %41, i8 0, i32 40, i1 false)
  %110 = load ptr, ptr %19, align 4
  %111 = load i32, ptr @debug, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc4000_tuner_reset) #9
  br label %115

115:                                              ; preds = %113, %109
  %116 = load ptr, ptr %42, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %134, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %43, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.dvb_adapter, ptr %119, i32 0, i32 5
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %121, %118
  %126 = getelementptr inbounds %struct.tuner_i2c_props, ptr %110, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.i2c_adapter, ptr %127, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  br label %130

130:                                              ; preds = %125, %121
  %131 = phi ptr [ %129, %125 ], [ %123, %121 ]
  %132 = call i32 %116(ptr noundef %131, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130, %115
  %135 = phi ptr [ @.str.72, %130 ], [ @.str.73, %115 ]
  %136 = phi i32 [ -121, %130 ], [ -22, %115 ]
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %135) #9
  br label %408

138:                                              ; preds = %130
  store i64 0, ptr %18, align 8
  %139 = call fastcc i32 @load_firmware(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %18)
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %139) #9
  br label %408

143:                                              ; preds = %138
  %144 = load i32, ptr @debug, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1) #9
  br label %148

148:                                              ; preds = %146, %143
  %149 = call fastcc i32 @load_firmware(ptr noundef %0, i32 noundef 16385, ptr noundef nonnull %18)
  %150 = icmp eq i32 %149, -2
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = call fastcc i32 @load_firmware(ptr noundef %0, i32 noundef 16385, ptr noundef nonnull %18)
  br label %153

153:                                              ; preds = %151, %148
  %154 = phi i32 [ %152, %151 ], [ %149, %148 ]
  %155 = icmp slt i32 %154, 0
  %156 = icmp ne i32 %154, -2
  %157 = and i1 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %153
  %159 = load ptr, ptr %79, align 4
  %160 = load ptr, ptr %66, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.i2c_adapter, ptr %160, i32 0, i32 11
  %164 = load i32, ptr %163, align 4
  br label %165

165:                                              ; preds = %162, %158
  %166 = phi i32 [ %164, %162 ], [ -1, %158 ]
  %167 = load i8, ptr %20, align 8
  %168 = zext i8 %167 to i32
  %169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %159, i32 noundef %166, i32 noundef %168, i32 noundef %154) #9
  br label %408

170:                                              ; preds = %153, %107, %104
  %171 = phi i32 [ %84, %107 ], [ %84, %104 ], [ %154, %153 ]
  %172 = load i32, ptr %41, align 8
  %173 = icmp eq i32 %172, %44
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = load i64, ptr %45, align 8
  %176 = icmp eq i64 %175, %2
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i32, ptr @debug, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1) #9
  br label %187

182:                                              ; preds = %174, %170
  store i32 0, ptr %46, align 4
  %183 = call fastcc i32 @load_firmware(ptr noundef %0, i32 noundef %1, ptr noundef %34)
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %408, label %185

185:                                              ; preds = %182
  %186 = load i32, ptr %36, align 4
  br label %187

187:                                              ; preds = %185, %180, %177
  %188 = phi i32 [ 536870912, %180 ], [ 536870912, %177 ], [ %186, %185 ]
  %189 = phi i32 [ %171, %180 ], [ %171, %177 ], [ %183, %185 ]
  %190 = load i32, ptr %46, align 4
  %191 = icmp eq i32 %190, %188
  br i1 %191, label %194, label %192

192:                                              ; preds = %187
  %193 = load i32, ptr %37, align 8
  br label %203

194:                                              ; preds = %187
  %195 = load i32, ptr %47, align 8
  %196 = load i32, ptr %37, align 8
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %194
  %199 = load i32, ptr @debug, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %330

201:                                              ; preds = %198
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1) #9
  br label %330

203:                                              ; preds = %194, %192
  %204 = phi i32 [ %193, %192 ], [ %196, %194 ]
  %205 = load i32, ptr %17, align 8
  %206 = or i32 %205, %188
  %207 = load i16, ptr %38, align 8
  %208 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %16) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(5) %16, i8 0, i32 5, i1 false) #10, !annotation !8
  %209 = load i32, ptr @debug, align 4
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %203
  %212 = zext i16 %207 to i32
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.load_scode, i32 noundef %212) #9
  br label %214

214:                                              ; preds = %211, %203
  %215 = icmp eq i16 %207, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %214
  %217 = getelementptr inbounds %struct.xc4000_priv, ptr %208, i32 0, i32 3
  %218 = load i32, ptr %217, align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %239

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.xc4000_priv, ptr %208, i32 0, i32 2
  %222 = load ptr, ptr %221, align 8
  br label %226

223:                                              ; preds = %214
  %224 = call fastcc i32 @seek_firmware(ptr noundef %0, i32 noundef %206, ptr noundef %34) #10
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %324, label %242

226:                                              ; preds = %236, %220
  %227 = phi i32 [ 0, %220 ], [ %237, %236 ]
  %228 = getelementptr %struct.firmware_description, ptr %222, i32 %227, i32 2
  %229 = load i16, ptr %228, align 8
  %230 = icmp eq i16 %229, %207
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = getelementptr %struct.firmware_description, ptr %222, i32 %227
  %233 = load i32, ptr %232, align 8
  %234 = and i32 %233, 1073741824
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231, %226
  %237 = add nuw nsw i32 %227, 1
  %238 = icmp eq i32 %237, %218
  br i1 %238, label %324, label %226

239:                                              ; preds = %231, %216
  %240 = phi i32 [ 0, %216 ], [ %227, %231 ]
  %241 = icmp eq i32 %240, %218
  br i1 %241, label %324, label %242

242:                                              ; preds = %239, %223
  %243 = phi i32 [ %240, %239 ], [ %224, %223 ]
  %244 = getelementptr inbounds %struct.xc4000_priv, ptr %208, i32 0, i32 2
  %245 = load ptr, ptr %244, align 8
  %246 = getelementptr %struct.firmware_description, ptr %245, i32 %243, i32 4
  %247 = load i32, ptr %246, align 8
  %248 = icmp ne i32 %247, 192
  %249 = icmp sgt i32 %204, 15
  %250 = or i1 %249, %248
  br i1 %250, label %324, label %251

251:                                              ; preds = %242
  %252 = getelementptr %struct.firmware_description, ptr %245, i32 %243, i32 3
  %253 = load ptr, ptr %252, align 4
  %254 = mul i32 %204, 12
  %255 = getelementptr i8, ptr %253, i32 %254
  %256 = load i32, ptr @debug, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %282, label %258

258:                                              ; preds = %251
  %259 = getelementptr inbounds %struct.tuner_i2c_props, ptr %208, i32 0, i32 3
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.tuner_i2c_props, ptr %208, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %267, label %264

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.i2c_adapter, ptr %262, i32 0, i32 11
  %266 = load i32, ptr %265, align 4
  br label %267

267:                                              ; preds = %264, %258
  %268 = phi i32 [ %266, %264 ], [ -1, %258 ]
  %269 = load i8, ptr %208, align 8
  %270 = zext i8 %269 to i32
  %271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %260, i32 noundef %268, i32 noundef %270) #9
  %272 = load ptr, ptr %244, align 8
  %273 = getelementptr %struct.firmware_description, ptr %272, i32 %243
  %274 = load i32, ptr %273, align 8
  %275 = getelementptr %struct.firmware_description, ptr %272, i32 %243, i32 2
  %276 = load i16, ptr %275, align 8
  call fastcc void @dump_firm_type_and_int_freq(i32 noundef %274, i16 noundef zeroext %276) #10
  %277 = load ptr, ptr %244, align 8
  %278 = getelementptr %struct.firmware_description, ptr %277, i32 %243
  %279 = load i32, ptr %278, align 8
  %280 = load i64, ptr %34, align 8
  %281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %279, i64 noundef %280) #9
  br label %282

282:                                              ; preds = %267, %251
  store i8 0, ptr %15, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %48, ptr noundef align 1 dereferenceable(12) %255, i32 12, i1 false) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i32 1280, ptr %14, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  store i32 4, ptr %49, align 4, !annotation !8
  %283 = load i8, ptr %208, align 8
  %284 = zext i8 %283 to i16
  store i16 %284, ptr %13, align 4
  store i16 0, ptr %50, align 2
  store ptr %14, ptr %51, align 4
  %285 = getelementptr inbounds %struct.tuner_i2c_props, ptr %208, i32 0, i32 1
  %286 = load ptr, ptr %285, align 4
  %287 = call i32 @i2c_transfer(ptr noundef %286, ptr noundef nonnull %13, i32 noundef 1) #10
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %297, label %289

289:                                              ; preds = %282
  %290 = getelementptr inbounds %struct.xc4000_priv, ptr %208, i32 0, i32 13
  %291 = load i8, ptr %290, align 1
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %289
  %294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #9
  %295 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  %296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #9
  br label %324

297:                                              ; preds = %289, %282
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  store i32 13, ptr %52, align 4, !annotation !8
  %298 = load i8, ptr %208, align 8
  %299 = zext i8 %298 to i16
  store i16 %299, ptr %12, align 4
  store i16 0, ptr %53, align 2
  store ptr %15, ptr %54, align 4
  %300 = load ptr, ptr %285, align 4
  %301 = call i32 @i2c_transfer(ptr noundef %300, ptr noundef nonnull %12, i32 noundef 1) #10
  %302 = icmp eq i32 %301, 1
  br i1 %302, label %307, label %303

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.xc4000_priv, ptr %208, i32 0, i32 13
  %305 = load i8, ptr %304, align 1
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %303, %297
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  br label %311

308:                                              ; preds = %303
  %309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 13) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  %310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef -121) #9
  br label %311

311:                                              ; preds = %308, %307
  store i32 0, ptr %16, align 4
  store i8 -120, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  store i32 5, ptr %56, align 4, !annotation !8
  %312 = load i8, ptr %208, align 8
  %313 = zext i8 %312 to i16
  store i16 %313, ptr %11, align 4
  store i16 0, ptr %57, align 2
  store ptr %16, ptr %58, align 4
  %314 = load ptr, ptr %285, align 4
  %315 = call i32 @i2c_transfer(ptr noundef %314, ptr noundef nonnull %11, i32 noundef 1) #10
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %323, label %317

317:                                              ; preds = %311
  %318 = getelementptr inbounds %struct.xc4000_priv, ptr %208, i32 0, i32 13
  %319 = load i8, ptr %318, align 1
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %317
  %322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 5) #9
  br label %323

323:                                              ; preds = %321, %317, %311
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @msleep(i32 noundef 10) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %15) #10
  br label %330

324:                                              ; preds = %293, %242, %239, %236, %223
  %325 = phi i32 [ -5, %293 ], [ %224, %223 ], [ -2, %239 ], [ -22, %242 ], [ -2, %236 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %15) #10
  %326 = load i32, ptr @debug, align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %324
  %329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef %325) #9
  br label %330

330:                                              ; preds = %328, %324, %323, %201, %198
  %331 = phi i32 [ %189, %201 ], [ %189, %198 ], [ %325, %328 ], [ %325, %324 ], [ 0, %323 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i16 2048, ptr %8, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i16 0, ptr %9, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %59, i8 0, i32 16, i1 false) #10, !annotation !8
  %332 = load i8, ptr %20, align 8
  %333 = zext i8 %332 to i16
  store i16 %333, ptr %10, align 4
  store i16 0, ptr %60, align 2
  store i16 2, ptr %59, align 4
  store ptr %8, ptr %61, align 4
  store i16 %333, ptr %62, align 4
  store i16 1, ptr %63, align 2
  store i16 2, ptr %64, align 4
  store ptr %9, ptr %65, align 4
  %334 = load ptr, ptr %66, align 4
  %335 = call i32 @i2c_transfer(ptr noundef %334, ptr noundef nonnull %10, i32 noundef 2) #10
  %336 = icmp eq i32 %335, 2
  br i1 %336, label %340, label %337

337:                                              ; preds = %330
  %338 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  %339 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #9
  br label %408

340:                                              ; preds = %330
  %341 = load i8, ptr %9, align 2
  %342 = zext i8 %341 to i16
  %343 = shl nuw i16 %342, 8
  %344 = load i8, ptr %67, align 1
  %345 = zext i8 %344 to i16
  %346 = or i16 %343, %345
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 1792, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 0, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %68, i8 0, i32 16, i1 false) #10, !annotation !8
  %347 = load i8, ptr %20, align 8
  %348 = zext i8 %347 to i16
  store i16 %348, ptr %7, align 4
  store i16 0, ptr %69, align 2
  store i16 2, ptr %68, align 4
  store ptr %5, ptr %70, align 4
  store i16 %348, ptr %71, align 4
  store i16 1, ptr %72, align 2
  store i16 2, ptr %73, align 4
  store ptr %6, ptr %74, align 4
  %349 = load ptr, ptr %66, align 4
  %350 = call i32 @i2c_transfer(ptr noundef %349, ptr noundef nonnull %7, i32 noundef 2) #10
  %351 = icmp eq i32 %350, 2
  br i1 %351, label %355, label %352

352:                                              ; preds = %340
  %353 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  %354 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #9
  br label %408

355:                                              ; preds = %340
  %356 = load i8, ptr %6, align 2
  %357 = load i8, ptr %75, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  %358 = lshr i8 %356, 4
  %359 = and i8 %356, 15
  %360 = lshr i8 %357, 4
  %361 = and i8 %357, 15
  %362 = load i32, ptr @debug, align 4
  %363 = icmp sgt i32 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %355
  %365 = zext i8 %360 to i32
  %366 = zext i8 %361 to i32
  br label %374

367:                                              ; preds = %355
  %368 = zext i16 %346 to i32
  %369 = zext i8 %358 to i32
  %370 = zext i8 %359 to i32
  %371 = zext i8 %360 to i32
  %372 = zext i8 %361 to i32
  %373 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef %368, i32 noundef %369, i32 noundef %370, i32 noundef %371, i32 noundef %372) #9
  br label %374

374:                                              ; preds = %367, %364
  %375 = phi i32 [ %366, %364 ], [ %372, %367 ]
  %376 = phi i32 [ %365, %364 ], [ %371, %367 ]
  %377 = load i16, ptr %76, align 2
  %378 = zext i16 %377 to i32
  %379 = shl nuw nsw i32 %376, 8
  %380 = or i32 %379, %375
  %381 = icmp eq i32 %380, %378
  br i1 %381, label %384, label %382

382:                                              ; preds = %374
  %383 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %376, i32 noundef %375) #9
  br label %408

384:                                              ; preds = %374
  %385 = load i16, ptr %77, align 8
  %386 = icmp eq i16 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %384
  switch i16 %346, label %403 [
    i16 4100, label %388
    i16 4000, label %388
  ]

388:                                              ; preds = %387, %387
  store i16 %346, ptr %77, align 8
  %389 = zext i8 %358 to i16
  %390 = shl nuw nsw i16 %389, 8
  %391 = zext i8 %359 to i16
  %392 = or i16 %390, %391
  store i16 %392, ptr %78, align 2
  br label %405

393:                                              ; preds = %384
  %394 = icmp eq i16 %385, %346
  br i1 %394, label %395, label %403

395:                                              ; preds = %393
  %396 = load i16, ptr %78, align 2
  %397 = zext i16 %396 to i32
  %398 = zext i8 %358 to i32
  %399 = shl nuw nsw i32 %398, 8
  %400 = zext i8 %359 to i32
  %401 = or i32 %399, %400
  %402 = icmp eq i32 %401, %397
  br i1 %402, label %405, label %403

403:                                              ; preds = %395, %393, %387
  %404 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #9
  br label %408

405:                                              ; preds = %395, %388
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %41, ptr noundef nonnull align 8 dereferenceable(40) %17, i32 40, i1 false)
  %406 = load i32, ptr %41, align 8
  %407 = or i32 %406, 1
  store i32 %407, ptr %41, align 8
  br label %421

408:                                              ; preds = %403, %382, %352, %337, %182, %165, %141, %134
  %409 = phi i32 [ %331, %337 ], [ %331, %352 ], [ %331, %382 ], [ %331, %403 ], [ %183, %182 ], [ %139, %141 ], [ %154, %165 ], [ %136, %134 ]
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %41, i8 0, i32 40, i1 false)
  br i1 %83, label %410, label %418

410:                                              ; preds = %408
  call void @msleep(i32 noundef 50) #10
  %411 = load i32, ptr @debug, align 4
  %412 = icmp sgt i32 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %410
  %414 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1) #9
  %415 = load i32, ptr @debug, align 4
  br label %416

416:                                              ; preds = %413, %410
  %417 = phi i32 [ %415, %413 ], [ %411, %410 ]
  br label %81

418:                                              ; preds = %408
  %419 = icmp eq i32 %409, -2
  %420 = select i1 %419, i32 -22, i32 %409
  br label %421

421:                                              ; preds = %418, %405, %29
  %422 = phi i32 [ %420, %418 ], [ 0, %405 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %17) #10
  ret i32 %422
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xc_set_signal_source(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [4 x i8], align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = zext i16 %1 to i32
  %9 = icmp eq i16 %1, 0
  %10 = select i1 %9, ptr @.str.86, ptr @.str.87
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_signal_source, i32 noundef %8, ptr noundef nonnull %10) #9
  br label %12

12:                                               ; preds = %7, %2
  %13 = icmp ugt i16 %1, 1
  %14 = trunc i16 %1 to i8
  %15 = lshr i16 %1, 8
  %16 = trunc i16 %15 to i8
  br i1 %13, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.xc_set_signal_source) #9
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i8 [ 1, %17 ], [ %14, %12 ]
  %21 = phi i8 [ 0, %17 ], [ %16, %12 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 2560, ptr %4, align 4, !annotation !8
  %22 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  store i8 %21, ptr %22, align 2
  %23 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  store i8 %20, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %24 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %24, align 4, !annotation !8
  %25 = load i8, ptr %0, align 8
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %3, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tuner_i2c_props, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %3, i32 noundef 1) #10
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %40, label %33

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.xc4000_priv, ptr %0, i32 0, i32 13
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #9
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %4) #9
  br label %40

40:                                               ; preds = %37, %33, %19
  %41 = phi i32 [ -121, %37 ], [ 0, %33 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xc_set_tv_standard(ptr nocapture noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [4 x i8], align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [4 x i8], align 4
  %8 = load i32, ptr @debug, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = zext i16 %1 to i32
  %12 = zext i16 %2 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_tv_standard, i32 noundef %11, i32 noundef %12) #9
  %14 = load i32, ptr @debug, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.xc4000_priv, ptr %0, i32 0, i32 8
  %18 = load i8, ptr %17, align 8
  %19 = zext i8 %18 to i32
  %20 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc4000_standard, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_tv_standard, ptr noundef %21) #9
  br label %23

23:                                               ; preds = %16, %10, %3
  %24 = getelementptr inbounds %struct.xc4000_priv, ptr %0, i32 0, i32 13
  store i8 1, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 256, ptr %7, align 4, !annotation !8
  %25 = lshr i16 %1, 8
  %26 = trunc i16 %25 to i8
  %27 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 2
  store i8 %26, ptr %27, align 2
  %28 = trunc i16 %1 to i8
  %29 = getelementptr inbounds [4 x i8], ptr %7, i32 0, i32 3
  store i8 %28, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %30 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %30, align 4, !annotation !8
  %31 = load i8, ptr %0, align 8
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %6, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tuner_i2c_props, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %6, i32 noundef 1) #10
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %45, label %39

39:                                               ; preds = %23
  %40 = load i8, ptr %24, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #9
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br label %67

45:                                               ; preds = %39, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 512, ptr %5, align 4, !annotation !8
  %46 = lshr i16 %2, 8
  %47 = trunc i16 %46 to i8
  %48 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  store i8 %47, ptr %48, align 2
  %49 = trunc i16 %2 to i8
  %50 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  store i8 %49, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %51 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %51, align 4, !annotation !8
  %52 = load i8, ptr %0, align 8
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %4, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %55, align 4
  %56 = load ptr, ptr %35, align 4
  %57 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %4, i32 noundef 1) #10
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %65, label %59

59:                                               ; preds = %45
  %60 = load i8, ptr %24, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #9
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %5) #9
  br label %65

65:                                               ; preds = %62, %59, %45
  %66 = phi i32 [ -121, %62 ], [ 0, %59 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %67

67:                                               ; preds = %65, %42
  %68 = phi i32 [ %66, %65 ], [ -121, %42 ]
  store i8 0, ptr %24, align 1
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xc_tune_channel(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x i8], align 2
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x %struct.i2c_msg], align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x i8], align 2
  %23 = alloca [2 x %struct.i2c_msg], align 4
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x i8], align 2
  %26 = alloca [2 x %struct.i2c_msg], align 4
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x i8], align 2
  %29 = alloca [2 x %struct.i2c_msg], align 4
  %30 = alloca [2 x i8], align 2
  %31 = alloca [2 x i8], align 2
  %32 = alloca [2 x %struct.i2c_msg], align 4
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [4 x i8], align 4
  %35 = load i32, ptr @debug, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.xc4000_priv, ptr %0, i32 0, i32 13
  store i8 1, ptr %38, align 1
  br label %46

39:                                               ; preds = %2
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_tune_channel, i32 noundef %1) #9
  %41 = load i32, ptr @debug, align 4
  %42 = getelementptr inbounds %struct.xc4000_priv, ptr %0, i32 0, i32 13
  store i8 1, ptr %42, align 1
  %43 = icmp sgt i32 %41, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.xc_set_rf_frequency, i32 noundef %1) #9
  br label %46

46:                                               ; preds = %44, %39, %37
  %47 = phi ptr [ %38, %37 ], [ %42, %44 ], [ %42, %39 ]
  %48 = add i32 %1, -1023000001
  %49 = icmp ult i32 %48, -1022000001
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i8 0, ptr %47, align 1
  br label %400

51:                                               ; preds = %46
  %52 = udiv i32 %1, 15625
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #10
  store i32 768, ptr %34, align 4, !annotation !8
  %53 = lshr i32 %52, 8
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [4 x i8], ptr %34, i32 0, i32 2
  store i8 %54, ptr %55, align 2
  %56 = trunc i32 %52 to i8
  %57 = getelementptr inbounds [4 x i8], ptr %34, i32 0, i32 3
  store i8 %56, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  %58 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 4, ptr %58, align 4, !annotation !8
  %59 = load i8, ptr %0, align 8
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %33, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %34, ptr %62, align 4
  %63 = getelementptr inbounds %struct.tuner_i2c_props, ptr %0, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %33, i32 noundef 1) #10
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %73, label %67

67:                                               ; preds = %51
  %68 = load i8, ptr %47, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 4) #9
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %34) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #10
  store i8 0, ptr %47, align 1
  br label %400

73:                                               ; preds = %67, %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #10
  store i8 0, ptr %47, align 1
  %74 = getelementptr inbounds %struct.xc4000_priv, ptr %0, i32 0, i32 15
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 1952
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %73
  %79 = getelementptr inbounds i8, ptr %32, i32 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 1
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 2
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 3
  %86 = getelementptr inbounds [2 x i8], ptr %31, i32 0, i32 1
  br label %87

87:                                               ; preds = %104, %78
  %88 = phi i32 [ 40, %78 ], [ %106, %104 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #10
  store i16 1024, ptr %30, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #10
  store i16 0, ptr %31, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %32) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %79, i8 0, i32 16, i1 false) #10, !annotation !8
  %89 = load i8, ptr %0, align 8
  %90 = zext i8 %89 to i16
  store i16 %90, ptr %32, align 4
  store i16 0, ptr %80, align 2
  store i16 2, ptr %79, align 4
  store ptr %30, ptr %81, align 4
  store i16 %90, ptr %82, align 4
  store i16 1, ptr %83, align 2
  store i16 2, ptr %84, align 4
  store ptr %31, ptr %85, align 4
  %91 = load ptr, ptr %63, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %32, i32 noundef 2) #10
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %96, label %94

94:                                               ; preds = %87
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #10
  br label %104

96:                                               ; preds = %87
  %97 = load i8, ptr %31, align 2
  %98 = zext i8 %97 to i16
  %99 = shl nuw i16 %98, 8
  %100 = load i8, ptr %86, align 1
  %101 = zext i8 %100 to i16
  %102 = or i16 %99, %101
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #10
  %103 = icmp eq i16 %102, 1
  br i1 %103, label %110, label %104

104:                                              ; preds = %96, %94
  %105 = phi i16 [ 0, %94 ], [ %102, %96 ]
  call void @msleep(i32 noundef 5) #10
  %106 = add nsw i32 %88, -1
  %107 = icmp eq i16 %105, 0
  %108 = icmp ne i32 %106, 0
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %87, label %110

110:                                              ; preds = %104, %96, %73
  %111 = load i32, ptr @debug, align 4
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 10, i32 100
  call void @msleep(i32 noundef %113) #10
  %114 = load i32, ptr @debug, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %400, label %116

116:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #10
  store i16 0, ptr %27, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #10
  store i16 0, ptr %28, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %29) #10
  %117 = getelementptr inbounds i8, ptr %29, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %117, i8 0, i32 16, i1 false) #10, !annotation !8
  %118 = load i8, ptr %0, align 8
  %119 = zext i8 %118 to i16
  store i16 %119, ptr %29, align 4
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %120, align 2
  store i16 2, ptr %117, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %27, ptr %121, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1
  store i16 %119, ptr %122, align 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 1
  store i16 1, ptr %123, align 2
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 2
  store i16 2, ptr %124, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 3
  store ptr %28, ptr %125, align 4
  %126 = load ptr, ptr %63, align 4
  %127 = call i32 @i2c_transfer(ptr noundef %126, ptr noundef nonnull %29, i32 noundef 2) #10
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %131, label %129

129:                                              ; preds = %116
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %139

131:                                              ; preds = %116
  %132 = load i8, ptr %28, align 2
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 8
  %135 = getelementptr inbounds [2 x i8], ptr %28, i32 0, i32 1
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %134, %137
  br label %139

139:                                              ; preds = %131, %129
  %140 = phi i32 [ %138, %131 ], [ 0, %129 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #10
  %141 = load i32, ptr @debug, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = and i32 %140, 65535
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.1, i32 noundef %144) #9
  br label %146

146:                                              ; preds = %143, %139
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #10
  store i16 1280, ptr %24, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #10
  store i16 0, ptr %25, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #10
  %147 = getelementptr inbounds i8, ptr %26, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %147, i8 0, i32 16, i1 false) #10, !annotation !8
  %148 = load i8, ptr %0, align 8
  %149 = zext i8 %148 to i16
  store i16 %149, ptr %26, align 4
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %150, align 2
  store i16 2, ptr %147, align 4
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %24, ptr %151, align 4
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1
  store i16 %149, ptr %152, align 4
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 1
  store i16 1, ptr %153, align 2
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 2
  store i16 2, ptr %154, align 4
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 3
  store ptr %25, ptr %155, align 4
  %156 = load ptr, ptr %63, align 4
  %157 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %26, i32 noundef 2) #10
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %161, label %159

159:                                              ; preds = %146
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #10
  br label %174

161:                                              ; preds = %146
  %162 = load i8, ptr %25, align 2
  %163 = zext i8 %162 to i16
  %164 = shl nuw i16 %163, 8
  %165 = getelementptr inbounds [2 x i8], ptr %25, i32 0, i32 1
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i16
  %168 = or i16 %164, %167
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #10
  %169 = zext i16 %168 to i32
  %170 = sub nuw nsw i32 65536, %169
  %171 = icmp slt i16 %168, 0
  %172 = select i1 %171, i32 %170, i32 %169
  %173 = mul nuw nsw i32 %172, 15625
  br label %174

174:                                              ; preds = %161, %159
  %175 = phi i32 [ %173, %161 ], [ 0, %159 ]
  %176 = load i32, ptr @debug, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.1, i32 noundef %175) #9
  br label %180

180:                                              ; preds = %178, %174
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #10
  store i16 1024, ptr %21, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #10
  store i16 0, ptr %22, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #10
  %181 = getelementptr inbounds i8, ptr %23, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %181, i8 0, i32 16, i1 false) #10, !annotation !8
  %182 = load i8, ptr %0, align 8
  %183 = zext i8 %182 to i16
  store i16 %183, ptr %23, align 4
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %184, align 2
  store i16 2, ptr %181, align 4
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %21, ptr %185, align 4
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1
  store i16 %183, ptr %186, align 4
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 1
  store i16 1, ptr %187, align 2
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 2
  store i16 2, ptr %188, align 4
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 3
  store ptr %22, ptr %189, align 4
  %190 = load ptr, ptr %63, align 4
  %191 = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %23, i32 noundef 2) #10
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %195, label %193

193:                                              ; preds = %180
  %194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %203

195:                                              ; preds = %180
  %196 = load i8, ptr %22, align 2
  %197 = zext i8 %196 to i32
  %198 = shl nuw nsw i32 %197, 8
  %199 = getelementptr inbounds [2 x i8], ptr %22, i32 0, i32 1
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i32
  %202 = or i32 %198, %201
  br label %203

203:                                              ; preds = %195, %193
  %204 = phi i32 [ %202, %195 ], [ 0, %193 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #10
  %205 = load i32, ptr @debug, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = and i32 %204, 65535
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.1, i32 noundef %208) #9
  br label %210

210:                                              ; preds = %207, %203
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #10
  store i16 1792, ptr %18, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #10
  store i16 0, ptr %19, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #10
  %211 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %211, i8 0, i32 16, i1 false) #10, !annotation !8
  %212 = load i8, ptr %0, align 8
  %213 = zext i8 %212 to i16
  store i16 %213, ptr %20, align 4
  %214 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %214, align 2
  store i16 2, ptr %211, align 4
  %215 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %18, ptr %215, align 4
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  store i16 %213, ptr %216, align 4
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %217, align 2
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 2, ptr %218, align 4
  %219 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %19, ptr %219, align 4
  %220 = load ptr, ptr %63, align 4
  %221 = call i32 @i2c_transfer(ptr noundef %220, ptr noundef nonnull %20, i32 noundef 2) #10
  %222 = icmp eq i32 %221, 2
  br i1 %222, label %225, label %223

223:                                              ; preds = %210
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  br label %237

225:                                              ; preds = %210
  %226 = load i8, ptr %19, align 2
  %227 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  %228 = load i8, ptr %227, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  %229 = lshr i8 %226, 4
  %230 = and i8 %226, 15
  %231 = lshr i8 %228, 4
  %232 = and i8 %228, 15
  %233 = zext i8 %229 to i32
  %234 = zext i8 %230 to i32
  %235 = zext i8 %231 to i32
  %236 = zext i8 %232 to i32
  br label %237

237:                                              ; preds = %225, %223
  %238 = phi i32 [ %233, %225 ], [ 0, %223 ]
  %239 = phi i32 [ %234, %225 ], [ 0, %223 ]
  %240 = phi i32 [ %235, %225 ], [ 0, %223 ]
  %241 = phi i32 [ %236, %225 ], [ 0, %223 ]
  %242 = load i32, ptr @debug, align 4
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %237
  %245 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.1, i32 noundef %238, i32 noundef %239, i32 noundef %240, i32 noundef %241) #9
  br label %246

246:                                              ; preds = %244, %237
  %247 = getelementptr inbounds %struct.xc4000_priv, ptr %0, i32 0, i32 8
  %248 = load i8, ptr %247, align 8
  %249 = icmp ult i8 %248, 18
  br i1 %249, label %250, label %311

250:                                              ; preds = %246
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #10
  store i16 768, ptr %15, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #10
  store i16 0, ptr %16, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #10
  %251 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %251, i8 0, i32 16, i1 false) #10, !annotation !8
  %252 = load i8, ptr %0, align 8
  %253 = zext i8 %252 to i16
  store i16 %253, ptr %17, align 4
  %254 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %254, align 2
  store i16 2, ptr %251, align 4
  %255 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %255, align 4
  %256 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  store i16 %253, ptr %256, align 4
  %257 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %257, align 2
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 2, ptr %258, align 4
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %259, align 4
  %260 = load ptr, ptr %63, align 4
  %261 = call i32 @i2c_transfer(ptr noundef %260, ptr noundef nonnull %17, i32 noundef 2) #10
  %262 = icmp eq i32 %261, 2
  br i1 %262, label %265, label %263

263:                                              ; preds = %250
  %264 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  br label %276

265:                                              ; preds = %250
  %266 = load i8, ptr %16, align 2
  %267 = zext i8 %266 to i32
  %268 = shl nuw nsw i32 %267, 8
  %269 = getelementptr inbounds [2 x i8], ptr %16, i32 0, i32 1
  %270 = load i8, ptr %269, align 1
  %271 = zext i8 %270 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  %272 = and i32 %268, 3840
  %273 = or i32 %272, %271
  %274 = mul nuw nsw i32 %273, 763
  %275 = udiv i32 %274, 100
  br label %276

276:                                              ; preds = %265, %263
  %277 = phi i32 [ %275, %265 ], [ 0, %263 ]
  %278 = load i32, ptr @debug, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.1, i32 noundef %277) #9
  br label %282

282:                                              ; preds = %280, %276
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i16 512, ptr %12, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #10
  store i16 0, ptr %13, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %283 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %283, i8 0, i32 16, i1 false) #10, !annotation !8
  %284 = load i8, ptr %0, align 8
  %285 = zext i8 %284 to i16
  store i16 %285, ptr %14, align 4
  %286 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %286, align 2
  store i16 2, ptr %283, align 4
  %287 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %287, align 4
  %288 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  store i16 %285, ptr %288, align 4
  %289 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %289, align 2
  %290 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 2, ptr %290, align 4
  %291 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %291, align 4
  %292 = load ptr, ptr %63, align 4
  %293 = call i32 @i2c_transfer(ptr noundef %292, ptr noundef nonnull %14, i32 noundef 2) #10
  %294 = icmp eq i32 %293, 2
  br i1 %294, label %297, label %295

295:                                              ; preds = %282
  %296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %305

297:                                              ; preds = %282
  %298 = load i8, ptr %13, align 2
  %299 = zext i8 %298 to i32
  %300 = shl nuw nsw i32 %299, 8
  %301 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  %302 = load i8, ptr %301, align 1
  %303 = zext i8 %302 to i32
  %304 = or i32 %300, %303
  br label %305

305:                                              ; preds = %297, %295
  %306 = phi i32 [ %304, %297 ], [ 0, %295 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  %307 = load i32, ptr @debug, align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.1, i32 noundef %306) #9
  br label %311

311:                                              ; preds = %309, %305, %246
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i16 256, ptr %9, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i16 0, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %312 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %312, i8 0, i32 16, i1 false) #10, !annotation !8
  %313 = load i8, ptr %0, align 8
  %314 = zext i8 %313 to i16
  store i16 %314, ptr %11, align 4
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %315, align 2
  store i16 2, ptr %312, align 4
  %316 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %316, align 4
  %317 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %314, ptr %317, align 4
  %318 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %318, align 2
  %319 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 2, ptr %319, align 4
  %320 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %320, align 4
  %321 = load ptr, ptr %63, align 4
  %322 = call i32 @i2c_transfer(ptr noundef %321, ptr noundef nonnull %11, i32 noundef 2) #10
  %323 = icmp eq i32 %322, 2
  br i1 %323, label %326, label %324

324:                                              ; preds = %311
  %325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %334

326:                                              ; preds = %311
  %327 = load i8, ptr %10, align 2
  %328 = zext i8 %327 to i32
  %329 = shl nuw nsw i32 %328, 8
  %330 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  %331 = load i8, ptr %330, align 1
  %332 = zext i8 %331 to i32
  %333 = or i32 %329, %332
  br label %334

334:                                              ; preds = %326, %324
  %335 = phi i32 [ %333, %326 ], [ 0, %324 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  %336 = load i32, ptr @debug, align 4
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %334
  %339 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.1, i32 noundef %335) #9
  br label %340

340:                                              ; preds = %338, %334
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 2560, ptr %6, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 0, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %341 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %341, i8 0, i32 16, i1 false) #10, !annotation !8
  %342 = load i8, ptr %0, align 8
  %343 = zext i8 %342 to i16
  store i16 %343, ptr %8, align 4
  %344 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %344, align 2
  store i16 2, ptr %341, align 4
  %345 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %345, align 4
  %346 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %343, ptr %346, align 4
  %347 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %347, align 2
  %348 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 2, ptr %348, align 4
  %349 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %349, align 4
  %350 = load ptr, ptr %63, align 4
  %351 = call i32 @i2c_transfer(ptr noundef %350, ptr noundef nonnull %8, i32 noundef 2) #10
  %352 = icmp eq i32 %351, 2
  br i1 %352, label %355, label %353

353:                                              ; preds = %340
  %354 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %363

355:                                              ; preds = %340
  %356 = load i8, ptr %7, align 2
  %357 = zext i8 %356 to i32
  %358 = shl nuw nsw i32 %357, 8
  %359 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %360 = load i8, ptr %359, align 1
  %361 = zext i8 %360 to i32
  %362 = or i32 %358, %361
  br label %363

363:                                              ; preds = %355, %353
  %364 = phi i32 [ %362, %355 ], [ 0, %353 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  %365 = load i32, ptr @debug, align 4
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %363
  %368 = lshr i32 %364, 8
  %369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.1, i32 noundef %368, i32 noundef %364) #9
  br label %370

370:                                              ; preds = %367, %363
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 2816, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %371 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %371, i8 0, i32 16, i1 false) #10, !annotation !8
  %372 = load i8, ptr %0, align 8
  %373 = zext i8 %372 to i16
  store i16 %373, ptr %5, align 4
  %374 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %374, align 2
  store i16 2, ptr %371, align 4
  %375 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %375, align 4
  %376 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %373, ptr %376, align 4
  %377 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %377, align 2
  %378 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %378, align 4
  %379 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %379, align 4
  %380 = load ptr, ptr %63, align 4
  %381 = call i32 @i2c_transfer(ptr noundef %380, ptr noundef nonnull %5, i32 noundef 2) #10
  %382 = icmp eq i32 %381, 2
  br i1 %382, label %385, label %383

383:                                              ; preds = %370
  %384 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %393

385:                                              ; preds = %370
  %386 = load i8, ptr %4, align 2
  %387 = zext i8 %386 to i32
  %388 = shl nuw nsw i32 %387, 8
  %389 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %390 = load i8, ptr %389, align 1
  %391 = zext i8 %390 to i32
  %392 = or i32 %388, %391
  br label %393

393:                                              ; preds = %385, %383
  %394 = phi i32 [ %392, %385 ], [ 0, %383 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %395 = load i32, ptr @debug, align 4
  %396 = icmp sgt i32 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %393
  %398 = lshr i32 %394, 8
  %399 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.1, i32 noundef %398, i32 noundef %394) #9
  br label %400

400:                                              ; preds = %397, %393, %110, %70, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dump_firm_type_and_int_freq(i32 noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = and i32 %0, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  br label %7

7:                                                ; preds = %5, %2
  %8 = and i32 %0, 16384
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #9
  br label %12

12:                                               ; preds = %10, %7
  %13 = and i32 %0, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #9
  br label %17

17:                                               ; preds = %15, %12
  %18 = and i32 %0, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #9
  br label %22

22:                                               ; preds = %20, %17
  %23 = and i32 %0, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #9
  br label %27

27:                                               ; preds = %25, %22
  %28 = and i32 %0, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #9
  br label %32

32:                                               ; preds = %30, %27
  %33 = and i32 %0, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #9
  br label %37

37:                                               ; preds = %35, %32
  %38 = and i32 %0, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #9
  br label %42

42:                                               ; preds = %40, %37
  %43 = and i32 %0, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #9
  br label %47

47:                                               ; preds = %45, %42
  %48 = and i32 %0, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #9
  br label %52

52:                                               ; preds = %50, %47
  %53 = and i32 %0, 512
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #9
  br label %57

57:                                               ; preds = %55, %52
  %58 = and i32 %0, 1024
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #9
  br label %62

62:                                               ; preds = %60, %57
  %63 = and i32 %0, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #9
  br label %67

67:                                               ; preds = %65, %62
  %68 = and i32 %0, 4096
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #9
  br label %72

72:                                               ; preds = %70, %67
  %73 = and i32 %0, 8192
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #9
  br label %77

77:                                               ; preds = %75, %72
  %78 = and i32 %0, 32768
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #9
  br label %82

82:                                               ; preds = %80, %77
  %83 = and i32 %0, 65536
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #9
  br label %87

87:                                               ; preds = %85, %82
  %88 = and i32 %0, 131072
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #9
  br label %92

92:                                               ; preds = %90, %87
  %93 = and i32 %0, 262144
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #9
  br label %97

97:                                               ; preds = %95, %92
  %98 = and i32 %0, 524288
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #9
  br label %102

102:                                              ; preds = %100, %97
  %103 = and i32 %0, 1048576
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #9
  br label %107

107:                                              ; preds = %105, %102
  %108 = and i32 %0, 2097152
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #9
  br label %112

112:                                              ; preds = %110, %107
  %113 = and i32 %0, 4194304
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #9
  br label %117

117:                                              ; preds = %115, %112
  %118 = and i32 %0, 8388608
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #9
  br label %122

122:                                              ; preds = %120, %117
  %123 = and i32 %0, 16777216
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #9
  br label %127

127:                                              ; preds = %125, %122
  %128 = and i32 %0, 33554432
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #9
  br label %132

132:                                              ; preds = %130, %127
  %133 = and i32 %0, 67108864
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #9
  br label %137

137:                                              ; preds = %135, %132
  %138 = and i32 %0, 134217728
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #9
  br label %142

142:                                              ; preds = %140, %137
  %143 = and i32 %0, 268435456
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #9
  br label %147

147:                                              ; preds = %145, %142
  %148 = and i32 %0, 536870912
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #9
  br label %152

152:                                              ; preds = %150, %147
  %153 = and i32 %0, 1073741824
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = zext i16 %1 to i32
  %157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %156) #9
  br label %158

158:                                              ; preds = %155, %152
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @load_firmware(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [64 x i8], align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call fastcc i32 @seek_firmware(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %102, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.xc4000_priv, ptr %7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr %struct.firmware_description, ptr %12, i32 %8, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.xc4000_priv, ptr %7, i32 0, i32 13
  store i8 1, ptr %15, align 1
  %16 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false) #10, !annotation !8
  %17 = getelementptr inbounds [64 x i8], ptr %5, i32 0, i32 1
  %18 = getelementptr inbounds i8, ptr %4, i32 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %21 = getelementptr inbounds %struct.tuner_i2c_props, ptr %16, i32 0, i32 1
  %22 = getelementptr inbounds %struct.xc4000_priv, ptr %16, i32 0, i32 13
  %23 = getelementptr inbounds i8, ptr %5, i32 2
  %24 = getelementptr i8, ptr %14, i32 2
  %25 = load i8, ptr %14, align 1
  %26 = icmp eq i8 %25, -1
  %27 = getelementptr i8, ptr %14, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, -1
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %100, label %31

31:                                               ; preds = %90, %10
  %32 = phi i8 [ %97, %90 ], [ %28, %10 ]
  %33 = phi i8 [ %93, %90 ], [ %25, %10 ]
  %34 = phi i32 [ %91, %90 ], [ 0, %10 ]
  %35 = zext i8 %33 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = zext i8 %32 to i32
  %38 = or i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = add i32 %34, 2
  br label %90

42:                                               ; preds = %31
  %43 = and i32 %35, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = and i32 %38, 32767
  call void @msleep(i32 noundef %46) #10
  %47 = add i32 %34, 2
  br label %90

48:                                               ; preds = %42
  %49 = add i32 %34, 2
  %50 = getelementptr i8, ptr %14, i32 %49
  %51 = load i8, ptr %50, align 1
  store i8 %51, ptr %5, align 1
  %52 = add i32 %34, 3
  %53 = getelementptr i8, ptr %14, i32 %52
  %54 = load i8, ptr %53, align 1
  store i8 %54, ptr %17, align 1
  %55 = icmp ugt i32 %38, 2
  br i1 %55, label %56, label %88

56:                                               ; preds = %48
  %57 = getelementptr i8, ptr %24, i32 %34
  br label %58

58:                                               ; preds = %84, %56
  %59 = phi i32 [ %86, %84 ], [ 2, %56 ]
  %60 = sub i32 %38, %59
  %61 = icmp ugt i32 %60, 62
  %62 = add i32 %60, 2
  %63 = select i1 %61, i32 64, i32 %62
  %64 = icmp ugt i32 %63, 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = getelementptr i8, ptr %57, i32 %59
  %67 = call i32 @llvm.umin.i32(i32 %60, i32 62) #10
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %66, i32 %67, i1 false) #10
  br label %68

68:                                               ; preds = %65, %58
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i32 0, ptr %18, align 4, !annotation !8
  %69 = load i8, ptr %16, align 8
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %4, align 4
  store i16 0, ptr %19, align 2
  %71 = trunc i32 %63 to i16
  store i16 %71, ptr %18, align 4
  store ptr %5, ptr %20, align 4
  %72 = load ptr, ptr %21, align 4
  %73 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %4, i32 noundef 1) #10
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %84, label %75

75:                                               ; preds = %68
  %76 = load i8, ptr %22, align 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %63) #9
  %80 = icmp eq i32 %63, 4
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 4, ptr noundef nonnull %5) #9
  br label %83

83:                                               ; preds = %81, %78
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %100

84:                                               ; preds = %75, %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  %85 = add i32 %59, -2
  %86 = add i32 %85, %63
  %87 = icmp ugt i32 %38, %86
  br i1 %87, label %58, label %88

88:                                               ; preds = %84, %48
  %89 = add i32 %38, %49
  br label %90

90:                                               ; preds = %88, %45, %40
  %91 = phi i32 [ %41, %40 ], [ %47, %45 ], [ %89, %88 ]
  %92 = getelementptr i8, ptr %14, i32 %91
  %93 = load i8, ptr %92, align 1
  %94 = icmp eq i8 %93, -1
  %95 = add i32 %91, 1
  %96 = getelementptr i8, ptr %14, i32 %95
  %97 = load i8, ptr %96, align 1
  %98 = icmp eq i8 %97, -1
  %99 = select i1 %94, i1 %98, i1 false
  br i1 %99, label %100, label %31

100:                                              ; preds = %90, %83, %10
  %101 = phi i32 [ -121, %83 ], [ 0, %10 ], [ 0, %90 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  store i8 0, ptr %15, align 1
  br label %102

102:                                              ; preds = %100, %3
  %103 = phi i32 [ %101, %100 ], [ %8, %3 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @seek_firmware(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #9
  br label %75

11:                                               ; preds = %3
  %12 = and i32 %1, -536870913
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, ptr %2, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i64 255, ptr %2, align 8
  br label %18

18:                                               ; preds = %17, %14, %11
  %19 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %49, %18
  %23 = phi i32 [ %50, %49 ], [ %20, %18 ]
  %24 = phi i32 [ %53, %49 ], [ 0, %18 ]
  %25 = phi i32 [ %52, %49 ], [ -1, %18 ]
  %26 = phi i32 [ %51, %49 ], [ 255, %18 ]
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr %struct.firmware_description, ptr %27, i32 %24
  %29 = load i32, ptr %28, align 8
  %30 = xor i32 %29, %1
  %31 = and i32 %30, 536889249
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %22
  %34 = and i32 %30, 805437439
  %35 = load i64, ptr %2, align 8
  %36 = getelementptr %struct.firmware_description, ptr %27, i32 %24, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = xor i64 %37, -1
  %39 = and i64 %35, %38
  %40 = tail call i32 @__sw_hweight64(i64 noundef %39) #10
  %41 = tail call i32 @__sw_hweight32(i32 noundef %34) #10
  %42 = add i32 %41, %40
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %33
  %45 = icmp ult i32 %42, %26
  %46 = tail call i32 @llvm.umin.i32(i32 %42, i32 %26)
  %47 = select i1 %45, i32 %24, i32 %25
  %48 = load i32, ptr %19, align 4
  br label %49

49:                                               ; preds = %44, %22
  %50 = phi i32 [ %23, %22 ], [ %48, %44 ]
  %51 = phi i32 [ %26, %22 ], [ %46, %44 ]
  %52 = phi i32 [ %25, %22 ], [ %47, %44 ]
  %53 = add nuw nsw i32 %24, 1
  %54 = icmp slt i32 %53, %50
  br i1 %54, label %22, label %55

55:                                               ; preds = %49
  %56 = icmp slt i32 %52, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %55
  %58 = load i64, ptr %2, align 8
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %51, i32 noundef %1, i64 noundef %58) #9
  br label %60

60:                                               ; preds = %57, %33
  %61 = phi i32 [ %52, %57 ], [ %24, %33 ]
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr %struct.firmware_description, ptr %62, i32 %61, i32 1
  %64 = load i64, ptr %63, align 8
  store i64 %64, ptr %2, align 8
  br label %65

65:                                               ; preds = %60, %55, %18
  %66 = phi i32 [ %61, %60 ], [ -2, %55 ], [ -2, %18 ]
  %67 = load i32, ptr @debug, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = icmp slt i32 %66, 0
  %71 = select i1 %70, ptr @.str.77, ptr @.str.78
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull %71) #9
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %1, i16 noundef zeroext 0)
  %73 = load i64, ptr %2, align 8
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %1, i64 noundef %73) #9
  br label %75

75:                                               ; preds = %69, %65, %9
  %76 = phi i32 [ -22, %9 ], [ %66, %69 ], [ %66, %65 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

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
