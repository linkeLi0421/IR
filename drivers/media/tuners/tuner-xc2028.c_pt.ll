; ModuleID = '/llk/IR/drivers/media/tuners/tuner-xc2028.c_pt.bc'
source_filename = "../drivers/media/tuners/tuner-xc2028.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xc2028_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22xc2028_attach\22\09\09\09\09\09"
module asm "__kstrtabns_xc2028_attach:\09\09\09\09\09"
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
%struct.xc2028_config = type { ptr, i8, ptr }
%struct.xc2028_data = type { %struct.list_head, %struct.tuner_i2c_props, i32, i32, ptr, ptr, i32, i16, i16, i16, %struct.xc2028_ctrl, %struct.firmware_properties, %struct.mutex }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex }
%struct.firmware_description = type { i32, i64, i16, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype251 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug252 = internal constant [41 x i8] c"parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_no_poweroff = internal constant [12 x i8] c"no_poweroff\00", align 1
@no_poweroff = internal global i32 0, align 4
@__param_no_poweroff = internal constant %struct.kernel_param { ptr @__param_str_no_poweroff, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @no_poweroff } }, section "__param", align 4
@__UNIQUE_ID_no_powerofftype253 = internal constant [25 x i8] c"parmtype=no_poweroff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_no_poweroff254 = internal constant [185 x i8] c"parm=no_poweroff:0 (default) powers device off when not used.\0A1 keep device energized and with tuner ready all the times.\0A  Faster, but consumes more power and keeps the device hotter\0A\00", section ".modinfo", align 1
@__param_str_audio_std = internal constant [10 x i8] c"audio_std\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_audio_std = internal constant %struct.kparam_string { i32 8, ptr @audio_std }, align 4
@__param_audio_std = internal constant %struct.kernel_param { ptr @__param_str_audio_std, ptr @__this_module, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.64 { ptr @__param_string_audio_std } }, section "__param", align 4
@__UNIQUE_ID_audio_stdtype255 = internal constant [26 x i8] c"parmtype=audio_std:string\00", section ".modinfo", align 1
@__UNIQUE_ID_audio_std256 = internal constant [214 x i8] c"parm=audio_std:Audio standard. XC3028 audio decoder explicitly needs to know what audio\0Astandard is needed for some video standards with audio A2 or NICAM.\0AThe valid values are:\0AA2\0AA2/A\0AA2/B\0ANICAM\0ANICAM/A\0ANICAM/B\0A\00", section ".modinfo", align 1
@__param_str_firmware_name = internal constant [14 x i8] c"firmware_name\00", align 1
@__param_string_firmware_name = internal constant %struct.kparam_string { i32 30, ptr @firmware_name }, align 4
@__param_firmware_name = internal constant %struct.kernel_param { ptr @__param_str_firmware_name, ptr @__this_module, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.64 { ptr @__param_string_firmware_name } }, section "__param", align 4
@__UNIQUE_ID_firmware_nametype257 = internal constant [30 x i8] c"parmtype=firmware_name:string\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware_name258 = internal constant [84 x i8] c"parm=firmware_name:Firmware file name. Allows overriding the default firmware name\0A\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [37 x i8] c"\017xc2028: Xcv2028/3028 init called!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\013xc2028: No frontend!\0A\00", align 1
@xc2028_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xc2028_list_mutex, i64 12), ptr getelementptr (i8, ptr @xc2028_list_mutex, i64 12) } }, align 4
@hybrid_tuner_instance_list = internal global %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"xc2028\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", align 1
@xc2028_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"&priv->lock\00", align 1
@xc2028_dvb_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Xceive XC3028\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 42000000, i32 864000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @xc2028_dvb_release, ptr null, ptr @xc2028_sleep, ptr null, ptr null, ptr @xc2028_set_params, ptr @xc2028_set_analog_freq, ptr @xc2028_set_config, ptr @xc2028_get_frequency, ptr null, ptr null, ptr null, ptr @xc2028_signal, ptr @xc2028_get_afc, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"\016%s %d-%04x: type set to %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"XCeive xc2028/xc3028 tuner\00", align 1
@__kstrtab_xc2028_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_xc2028_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_xc2028_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xc2028_attach to i32), ptr @__kstrtab_xc2028_attach, ptr @__kstrtabns_xc2028_attach }, section "___ksymtab+xc2028_attach", align 4
@__UNIQUE_ID_description259 = internal constant [46 x i8] c"description=Xceive xc2028/xc3028 tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [47 x i8] c"author=Michel Ludwig <michel.ludwig@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [50 x i8] c"author=Mauro Carvalho Chehab <mchehab@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware263 = internal constant [23 x i8] c"firmware=xc3028-v27.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware264 = internal constant [24 x i8] c"firmware=xc3028L-v36.fw\00", section ".modinfo", align 1
@audio_std = internal global [8 x i8] zeroinitializer, align 1
@firmware_name = internal global [30 x i8] zeroinitializer, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"\017%s %d-%04x: Putting xc2028/3028 into poweroff mode.\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"\017%s %d-%04x: Printing sleep stack trace:\0A\00", align 1
@xc2028_sleep._val = internal global [4 x i8] c"\00\08\00\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"\013%s %d-%04x: Error on line %d: %d\0A\00", align 1
@xc2028_sleep._val.11 = internal global [4 x i8] c"\80\08\00\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"\017%s %d-%04x: %s called\0A\00", align 1
@__func__.xc2028_set_params = private unnamed_addr constant [18 x i8] c"xc2028_set_params\00", align 1
@__func__.generic_set_freq = private unnamed_addr constant [17 x i8] c"generic_set_freq\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"\017%s %d-%04x: should set frequency %d kHz\0A\00", align 1
@generic_set_freq._val = internal global [2 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"\013%s %d-%04x: Unsupported tuner type %d.\0A\00", align 1
@generic_set_freq._val.15 = internal global [4 x i8] c"\00\02\00\00", align 1
@generic_set_freq._val.16 = internal global [4 x i8] c"\80\02\00\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"\016%s %d-%04x: i2c output error: rc = %d (should be %d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"\017%s %d-%04x: divisor= %*ph (freq=%d.%03d)\0A\00", align 1
@__func__.check_firmware = private unnamed_addr constant [15 x i8] c"check_firmware\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"\017%s %d-%04x: checking firmware, user requested type=\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"\01c(%x), id %016llx, \00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"\01cscode_tbl \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"\01c(%x), \00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"\01cint_freq %d, \00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"\01cscode_nr %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"\017%s %d-%04x: BASE firmware not changed.\0A\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"\013%s %d-%04x: Error %d while loading base firmware\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"\017%s %d-%04x: Load init1 firmware, if exists\0A\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"\013%s %d-%04x: Error %d while loading init1 firmware\0A\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"\017%s %d-%04x: Std-specific firmware already loaded.\0A\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"\017%s %d-%04x: SCODE firmware already loaded.\0A\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"\017%s %d-%04x: Trying to load scode %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [47 x i8] c"\013%s %d-%04x: Unable to read tuner registers.\0A\00", align 1
@.str.33 = private unnamed_addr constant [73 x i8] c"\017%s %d-%04x: Device is Xceive %d version %d.%d, firmware version %d.%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"\013%s %d-%04x: Incorrect readback of firmware version.\0A\00", align 1
@.str.36 = private unnamed_addr constant [70 x i8] c"\013%s %d-%04x: Read invalid device hardware information - tuner hung?\0A\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"\017%s %d-%04x: Retrying firmware load\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"\01cBASE \00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"\01cINIT1 \00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"\01cF8MHZ \00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"\01cMTS \00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"\01cD2620 \00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"\01cD2633 \00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"\01cDTV6 \00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"\01cQAM \00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"\01cDTV7 \00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"\01cDTV78 \00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"\01cDTV8 \00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"\01cFM \00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"\01cINPUT1 \00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"\01cLCD \00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"\01cNOGD \00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"\01cMONO \00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"\01cATSC \00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"\01cIF \00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"\01cLG60 \00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"\01cATI638 \00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"\01cOREN538 \00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"\01cOREN36 \00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"\01cTOYOTA388 \00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"\01cTOYOTA794 \00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"\01cDIBCOM52 \00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"\01cZARLINK456 \00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"\01cCHINA \00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"\01cF6MHZ \00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"\01cINPUT2 \00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"\01cSCODE \00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"\01cHAS_IF_%d \00", align 1
@__func__.load_firmware = private unnamed_addr constant [14 x i8] c"load_firmware\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"\016%s %d-%04x: Loading firmware for type=\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"\01c(%x), id %016llx.\0A\00", align 1
@.str.71 = private unnamed_addr constant [44 x i8] c"\013%s %d-%04x: Firmware chunk size is wrong\0A\00", align 1
@.str.72 = private unnamed_addr constant [38 x i8] c"\013%s %d-%04x: Error at RESET code %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x: Invalid RESET code %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [48 x i8] c"\013%s %d-%04x: missing bytes: need %d, have %zd\0A\00", align 1
@.str.75 = private unnamed_addr constant [37 x i8] c"\013%s %d-%04x: %d returned from send\0A\00", align 1
@.str.76 = private unnamed_addr constant [41 x i8] c"\013%s %d-%04x: error executing flush: %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"\017%s %d-%04x: %s called, want type=\00", align 1
@__func__.seek_firmware = private unnamed_addr constant [14 x i8] c"seek_firmware\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"\013%s %d-%04x: Error! firmware not loaded\0A\00", align 1
@.str.79 = private unnamed_addr constant [67 x i8] c"\017%s %d-%04x: Selecting best matching firmware (%d bits) for type=\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"\01c(%x), id %016llx:\0A\00", align 1
@.str.81 = private unnamed_addr constant [36 x i8] c"\017%s %d-%04x: %s firmware for type=\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"Can't find\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"Found\00", align 1
@__func__.load_scode = private unnamed_addr constant [11 x i8] c"load_scode\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"\016%s %d-%04x: Loading SCODE for type=\00", align 1
@load_scode._val = internal global [4 x i8] c" \00\00\00", align 1
@load_scode._val.85 = internal global [4 x i8] c"\A0\00\00\00", align 1
@load_scode._val.86 = internal global [2 x i8] c"\00\8C", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"\017%s %d-%04x: %s %04x called\0A\00", align 1
@__func__.xc2028_get_reg = private unnamed_addr constant [15 x i8] c"xc2028_get_reg\00", align 1
@.str.88 = private unnamed_addr constant [55 x i8] c"\013%s %d-%04x: i2c input error: rc = %d (should be %d)\0A\00", align 1
@__func__.free_firmware = private unnamed_addr constant [14 x i8] c"free_firmware\00", align 1
@__func__.xc2028_set_analog_freq = private unnamed_addr constant [23 x i8] c"xc2028_set_analog_freq\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"A2/A\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"A2/B\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"NICAM\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"NICAM/A\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"NICAM/B\00", align 1
@__func__.xc2028_get_frequency = private unnamed_addr constant [21 x i8] c"xc2028_get_frequency\00", align 1
@__func__.xc2028_signal = private unnamed_addr constant [14 x i8] c"xc2028_signal\00", align 1
@.str.95 = private unnamed_addr constant [37 x i8] c"\017%s %d-%04x: signal strength is %d\0A\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"\017%s %d-%04x: AFC is %d Hz\0A\00", align 1
@__func__.xc2028_set_config = private unnamed_addr constant [18 x i8] c"xc2028_set_config\00", align 1
@.str.97 = private unnamed_addr constant [45 x i8] c"\013%s %d-%04x: Failed to request firmware %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [45 x i8] c"\017%s %d-%04x: request_firmware_nowait(): %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"\013%s %d-%04x: Could not load firmware %s.\0A\00", align 1
@__func__.load_all_firmwares = private unnamed_addr constant [19 x i8] c"load_all_firmwares\00", align 1
@.str.102 = private unnamed_addr constant [57 x i8] c"\013%s %d-%04x: Error: firmware file %s has invalid size!\0A\00", align 1
@.str.103 = private unnamed_addr constant [71 x i8] c"\016%s %d-%04x: Loading %d firmware images from %s, type: %s, ver %d.%d\0A\00", align 1
@.str.104 = private unnamed_addr constant [56 x i8] c"\013%s %d-%04x: Not enough memory to load firmware file.\0A\00", align 1
@.str.105 = private unnamed_addr constant [64 x i8] c"\013%s %d-%04x: More firmware images in file than were expected!\0A\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"\013%s %d-%04x: Firmware type \00", align 1
@.str.107 = private unnamed_addr constant [54 x i8] c"\01c(%x), id %llx is corrupted (size=%zd, expected %d)\0A\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"\017%s %d-%04x: Reading firmware type \00", align 1
@.str.109 = private unnamed_addr constant [27 x i8] c"\01c(%x), id %llx, size=%d.\0A\00", align 1
@.str.110 = private unnamed_addr constant [44 x i8] c"\013%s %d-%04x: Firmware file is incomplete!\0A\00", align 1
@.str.111 = private unnamed_addr constant [46 x i8] c"\013%s %d-%04x: Firmware header is incomplete!\0A\00", align 1
@.str.112 = private unnamed_addr constant [50 x i8] c"\013%s %d-%04x: Error: firmware file is corrupted!\0A\00", align 1
@.str.113 = private unnamed_addr constant [57 x i8] c"\016%s %d-%04x: Releasing partially loaded firmware file.\0A\00", align 1
@.str.114 = private unnamed_addr constant [38 x i8] c"\017%s %d-%04x: Firmware files loaded.\0A\00", align 1
@__func__.xc2028_dvb_release = private unnamed_addr constant [19 x i8] c"xc2028_dvb_release\00", align 1
@.str.115 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_audio_std256, ptr @__UNIQUE_ID_audio_stdtype255, ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_debug252, ptr @__UNIQUE_ID_debugtype251, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_firmware263, ptr @__UNIQUE_ID_firmware264, ptr @__UNIQUE_ID_firmware_name258, ptr @__UNIQUE_ID_firmware_nametype257, ptr @__UNIQUE_ID_license262, ptr @__UNIQUE_ID_no_poweroff254, ptr @__UNIQUE_ID_no_powerofftype253, ptr @__ksymtab_xc2028_attach, ptr @__param_audio_std, ptr @__param_debug, ptr @__param_firmware_name, ptr @__param_no_poweroff], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xc2028_attach(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = load i32, ptr @debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %7

7:                                                ; preds = %5, %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %105, label %9

9:                                                ; preds = %7
  %10 = icmp eq ptr %0, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %105

13:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @xc2028_list_mutex) #13
  %14 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %15 = icmp eq ptr %14, @hybrid_tuner_instance_list
  br i1 %15, label %49, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 4
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 11
  %20 = getelementptr inbounds %struct.xc2028_config, ptr %1, i32 0, i32 1
  br label %21

21:                                               ; preds = %37, %16
  %22 = phi ptr [ %14, %16 ], [ %38, %37 ]
  br i1 %18, label %37, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.xc2028_data, ptr %22, i32 0, i32 1
  %25 = getelementptr inbounds %struct.xc2028_data, ptr %22, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %19, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i8, ptr %20, align 4
  %35 = load i8, ptr %24, align 8
  %36 = icmp eq i8 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33, %28, %23, %21
  %38 = load ptr, ptr %22, align 4
  %39 = icmp eq ptr %38, @hybrid_tuner_instance_list
  br i1 %39, label %49, label %21

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.xc2028_data, ptr %22, i32 0, i32 1, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = zext i8 %34 to i32
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %42, i32 noundef %30, i32 noundef %43) #12
  %45 = getelementptr inbounds %struct.xc2028_data, ptr %22, i32 0, i32 1, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %40, %37, %13
  %50 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 144) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %81, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.xc2028_config, ptr %1, i32 0, i32 1
  %55 = load i8, ptr %54, align 4
  %56 = getelementptr inbounds %struct.xc2028_data, ptr %51, i32 0, i32 1
  store i8 %55, ptr %56, align 8
  %57 = load ptr, ptr %1, align 4
  %58 = getelementptr inbounds %struct.xc2028_data, ptr %51, i32 0, i32 1, i32 1
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.xc2028_data, ptr %51, i32 0, i32 1, i32 3
  store ptr @.str.3, ptr %59, align 4
  %60 = icmp eq ptr %57, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.i2c_adapter, ptr %57, i32 0, i32 11
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %53
  %65 = phi i32 [ %63, %61 ], [ -1, %53 ]
  %66 = zext i8 %55 to i32
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %65, i32 noundef %66) #12
  %68 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr %51, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr @hybrid_tuner_instance_list, ptr %51, align 8
  %69 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %68, ptr %69, align 4
  store volatile ptr %51, ptr %68, align 4
  %70 = getelementptr inbounds %struct.xc2028_data, ptr %51, i32 0, i32 1, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 8
  br label %73

73:                                               ; preds = %64, %40
  %74 = phi i32 [ %72, %64 ], [ %47, %40 ]
  %75 = phi ptr [ %51, %64 ], [ %22, %40 ]
  switch i32 %74, label %81 [
    i32 0, label %104
    i32 1, label %76
    i32 2, label %79
  ]

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.xc2028_data, ptr %75, i32 0, i32 10, i32 1
  store i32 13, ptr %77, align 4
  %78 = getelementptr inbounds %struct.xc2028_data, ptr %75, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %78, ptr noundef nonnull @.str.5, ptr noundef nonnull @xc2028_attach.__key) #13
  br label %79

79:                                               ; preds = %76, %73
  %80 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %75, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %73, %49
  %82 = phi ptr [ %75, %73 ], [ null, %49 ], [ %75, %79 ]
  %83 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %83, ptr noundef nonnull align 4 dereferenceable(220) @xc2028_dvb_tuner_ops, i32 220, i1 false)
  %84 = getelementptr inbounds %struct.xc2028_data, ptr %82, i32 0, i32 1
  %85 = getelementptr inbounds %struct.xc2028_data, ptr %82, i32 0, i32 1, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.xc2028_data, ptr %82, i32 0, i32 1, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.i2c_adapter, ptr %88, i32 0, i32 11
  %92 = load i32, ptr %91, align 4
  br label %93

93:                                               ; preds = %90, %81
  %94 = phi i32 [ %92, %90 ], [ -1, %81 ]
  %95 = load i8, ptr %84, align 8
  %96 = zext i8 %95 to i32
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %86, i32 noundef %94, i32 noundef %96, ptr noundef nonnull @.str.7) #12
  %98 = getelementptr inbounds %struct.xc2028_config, ptr %1, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %93
  %102 = tail call i32 @xc2028_set_config(ptr noundef nonnull %0, ptr noundef nonnull %99)
  br label %103

103:                                              ; preds = %101, %93
  tail call void @mutex_unlock(ptr noundef nonnull @xc2028_list_mutex) #13
  br label %105

104:                                              ; preds = %73
  tail call void @mutex_unlock(ptr noundef nonnull @xc2028_list_mutex) #13
  tail call void @xc2028_dvb_release(ptr noundef nonnull %0)
  br label %105

105:                                              ; preds = %104, %103, %11, %7
  %106 = phi ptr [ %0, %103 ], [ null, %104 ], [ null, %11 ], [ null, %7 ]
  ret ptr %106
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

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc2028_set_config(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i32 [ %16, %14 ], [ -1, %7 ]
  %19 = load i8, ptr %8, align 8
  %20 = zext i8 %19 to i32
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %10, i32 noundef %18, i32 noundef %20, ptr noundef nonnull @__func__.xc2028_set_config) #12
  br label %22

22:                                               ; preds = %17, %2
  %23 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %23) #13
  %24 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %24, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false)
  %25 = load i8, ptr @firmware_name, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load ptr, ptr %1, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 4
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @strcmp(ptr noundef nonnull %28, ptr noundef nonnull %32)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call fastcc void @free_firmware(ptr noundef %4)
  br label %38

38:                                               ; preds = %37, %34, %30, %27, %22
  %39 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 10, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %40, 9
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 13, ptr %39, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %43
  %48 = load i8, ptr @firmware_name, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 4
  store ptr @firmware_name, ptr %51, align 8
  br label %57

52:                                               ; preds = %47
  %53 = load ptr, ptr %1, align 4
  %54 = tail call noalias ptr @kstrdup(ptr noundef %53, i32 noundef 3264) #13
  %55 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 4
  store ptr %54, ptr %55, align 8
  %56 = icmp eq ptr %54, null
  br i1 %56, label %83, label %57

57:                                               ; preds = %52, %50
  %58 = phi ptr [ %51, %50 ], [ %55, %52 ]
  %59 = phi ptr [ @firmware_name, %50 ], [ %54, %52 ]
  %60 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 1
  %61 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 1, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.i2c_adapter, ptr %62, i32 0, i32 9, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 @request_firmware_nowait(ptr noundef nonnull @__this_module, i1 noundef zeroext true, ptr noundef nonnull %59, ptr noundef %64, i32 noundef 3264, ptr noundef %0, ptr noundef nonnull @load_firmware_cb) #13
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 1, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %61, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.i2c_adapter, ptr %70, i32 0, i32 11
  %74 = load i32, ptr %73, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = phi i32 [ %74, %72 ], [ -1, %67 ]
  %77 = load i8, ptr %60, align 8
  %78 = zext i8 %77 to i32
  %79 = load ptr, ptr %58, align 8
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %69, i32 noundef %76, i32 noundef %78, ptr noundef %79) #12
  br label %81

81:                                               ; preds = %75, %57
  %82 = phi i32 [ 4, %75 ], [ 1, %57 ]
  store i32 %82, ptr %44, align 4
  br label %83

83:                                               ; preds = %81, %52, %43
  %84 = phi i32 [ 0, %43 ], [ -12, %52 ], [ %65, %81 ]
  tail call void @mutex_unlock(ptr noundef %23) #13
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xc2028_dvb_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.xc2028_data, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.xc2028_data, ptr %3, i32 0, i32 1, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xc2028_data, ptr %3, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %15, %13 ], [ -1, %6 ]
  %18 = load i8, ptr %7, align 8
  %19 = zext i8 %18 to i32
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %9, i32 noundef %17, i32 noundef %19, ptr noundef nonnull @__func__.xc2028_dvb_release) #12
  br label %21

21:                                               ; preds = %16, %1
  tail call void @mutex_lock(ptr noundef nonnull @xc2028_list_mutex) #13
  %22 = icmp eq ptr %3, null
  br i1 %22, label %52, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.xc2028_data, ptr %3, i32 0, i32 1, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  tail call fastcc void @free_firmware(ptr noundef nonnull %3)
  %28 = load i32, ptr %24, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %25, %23 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.xc2028_data, ptr %3, i32 0, i32 1
  %32 = add i32 %30, -1
  store i32 %32, ptr %24, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.xc2028_data, ptr %3, i32 0, i32 1, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.xc2028_data, ptr %3, i32 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 11
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i32 [ %42, %40 ], [ -1, %34 ]
  %45 = load i8, ptr %31, align 8
  %46 = zext i8 %45 to i32
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %36, i32 noundef %44, i32 noundef %46) #12
  %48 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %52

52:                                               ; preds = %43, %29, %21
  tail call void @mutex_unlock(ptr noundef nonnull @xc2028_list_mutex) #13
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc2028_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %9 [
    i32 0, label %123
    i32 1, label %123
    i32 2, label %10
    i32 4, label %8
  ]

8:                                                ; preds = %1
  br label %123

9:                                                ; preds = %1
  br label %123

10:                                               ; preds = %1
  %11 = load i32, ptr @no_poweroff, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %123

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 10, i32 4
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %123

18:                                               ; preds = %13
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = phi i32 [ %30, %28 ], [ -1, %21 ]
  %33 = load i8, ptr %22, align 8
  %34 = zext i8 %33 to i32
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %24, i32 noundef %32, i32 noundef %34) #12
  %36 = load i32, ptr @debug, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load ptr, ptr %23, align 4
  %40 = load ptr, ptr %25, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i32 [ %44, %42 ], [ -1, %38 ]
  %47 = load i8, ptr %22, align 8
  %48 = zext i8 %47 to i32
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %39, i32 noundef %46, i32 noundef %48) #12
  tail call void @dump_stack() #12
  br label %50

50:                                               ; preds = %45, %31, %18
  %51 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %51) #13
  %52 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 7
  %53 = load i16, ptr %52, align 4
  %54 = icmp ult i16 %53, 514
  %55 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1
  br i1 %54, label %56, label %85

56:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %57 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %57, align 4, !annotation !8
  %58 = load i8, ptr %55, align 4
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %3, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %60, align 2
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr @xc2028_sleep._val, ptr %61, align 4
  %62 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %3, i32 noundef 1) #13
  %65 = icmp eq i32 %64, 1
  %66 = select i1 %65, i32 4, i32 %64
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %81, label %68

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %62, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.i2c_adapter, ptr %71, i32 0, i32 11
  %75 = load i32, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = phi i32 [ %75, %73 ], [ -1, %68 ]
  %78 = load i8, ptr %55, align 8
  %79 = zext i8 %78 to i32
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %70, i32 noundef %77, i32 noundef %79, i32 noundef 1312, i32 noundef %66) #12
  br label %114

81:                                               ; preds = %56
  %82 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 10, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %119, label %117

85:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #13
  %86 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 4, ptr %86, align 4, !annotation !8
  %87 = load i8, ptr %55, align 4
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %2, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %89, align 2
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr @xc2028_sleep._val.11, ptr %90, align 4
  %91 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %2, i32 noundef 1) #13
  %94 = icmp eq i32 %93, 1
  %95 = select i1 %94, i32 4, i32 %93
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #13
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %110, label %97

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %91, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.i2c_adapter, ptr %100, i32 0, i32 11
  %104 = load i32, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = phi i32 [ %104, %102 ], [ -1, %97 ]
  %107 = load i8, ptr %55, align 8
  %108 = zext i8 %107 to i32
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %99, i32 noundef %106, i32 noundef %108, i32 noundef 1314, i32 noundef %95) #12
  br label %114

110:                                              ; preds = %85
  %111 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 10, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %117

114:                                              ; preds = %105, %76
  %115 = phi i32 [ %66, %76 ], [ %95, %105 ]
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %119, label %121

117:                                              ; preds = %110, %81
  %118 = phi i32 [ %83, %81 ], [ %112, %110 ]
  call void @msleep(i32 noundef %118) #13
  br label %119

119:                                              ; preds = %117, %114, %110, %81
  %120 = phi i32 [ %115, %114 ], [ 4, %110 ], [ 4, %81 ], [ 4, %117 ]
  store i32 3, ptr %6, align 4
  br label %121

121:                                              ; preds = %119, %114
  %122 = phi i32 [ %120, %119 ], [ %115, %114 ]
  call void @mutex_unlock(ptr noundef %51) #13
  br label %123

123:                                              ; preds = %121, %13, %10, %9, %8, %1, %1
  %124 = phi i32 [ %122, %121 ], [ 0, %10 ], [ 0, %13 ], [ -19, %8 ], [ -11, %1 ], [ -11, %1 ], [ 0, %9 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc2028_set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.xc2028_data, ptr %8, i32 0, i32 1
  %13 = getelementptr inbounds %struct.xc2028_data, ptr %8, i32 0, i32 1, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.xc2028_data, ptr %8, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi i32 [ %20, %18 ], [ -1, %11 ]
  %23 = load i8, ptr %12, align 8
  %24 = zext i8 %23 to i32
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %14, i32 noundef %22, i32 noundef %24, ptr noundef nonnull @__func__.xc2028_set_params) #12
  br label %26

26:                                               ; preds = %21, %1
  %27 = getelementptr inbounds %struct.xc2028_data, ptr %8, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %30 [
    i32 0, label %98
    i32 1, label %98
    i32 4, label %29
  ]

29:                                               ; preds = %26
  br label %98

30:                                               ; preds = %26
  switch i32 %4, label %98 [
    i32 3, label %31
    i32 16, label %31
    i32 11, label %50
  ]

31:                                               ; preds = %30, %30
  %32 = icmp ult i32 %6, 6000001
  %33 = select i1 %32, i32 64, i32 0
  %34 = getelementptr inbounds %struct.xc2028_data, ptr %8, i32 0, i32 10, i32 6
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, 3
  %37 = zext i8 %36 to i32
  switch i32 %37, label %42 [
    i32 1, label %38
    i32 2, label %40
  ]

38:                                               ; preds = %31
  %39 = or i32 %33, 16
  br label %50

40:                                               ; preds = %31
  %41 = or i32 %33, 8
  br label %50

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.xc2028_data, ptr %8, i32 0, i32 10, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 4560
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = or i32 %33, 16
  br label %50

48:                                               ; preds = %42
  %49 = or i32 %33, 8
  br label %50

50:                                               ; preds = %48, %46, %40, %38, %30
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ], [ %41, %40 ], [ %39, %38 ], [ 65552, %30 ]
  %52 = icmp ult i32 %6, 6000001
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = or i32 %51, 32
  %55 = getelementptr inbounds %struct.xc2028_data, ptr %8, i32 0, i32 10, i32 4
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, -13
  store i8 %57, ptr %55, align 4
  br label %82

58:                                               ; preds = %50
  %59 = icmp ult i32 %6, 7000001
  %60 = load i32, ptr %2, align 4
  %61 = icmp ult i32 %60, 470000000
  %62 = getelementptr inbounds %struct.xc2028_data, ptr %8, i32 0, i32 10, i32 4
  %63 = load i8, ptr %62, align 4
  br i1 %59, label %64, label %73

64:                                               ; preds = %58
  %65 = and i8 %63, -9
  %66 = or i8 %63, 4
  %67 = select i1 %61, i8 %66, i8 %65
  store i8 %67, ptr %62, align 4
  %68 = and i8 %67, 12
  %69 = icmp eq i8 %68, 12
  %70 = select i1 %69, i32 256, i32 128
  %71 = or i32 %51, %70
  %72 = or i32 %71, 2
  br label %82

73:                                               ; preds = %58
  %74 = or i8 %63, 8
  %75 = and i8 %63, -5
  %76 = select i1 %61, i8 %75, i8 %74
  store i8 %76, ptr %62, align 4
  %77 = and i8 %76, 12
  %78 = icmp eq i8 %77, 12
  %79 = select i1 %78, i32 256, i32 512
  %80 = or i32 %51, %79
  %81 = or i32 %80, 2
  br label %82

82:                                               ; preds = %73, %64, %53
  %83 = phi i32 [ %54, %53 ], [ %72, %64 ], [ %81, %73 ]
  %84 = getelementptr inbounds %struct.xc2028_data, ptr %8, i32 0, i32 10, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = trunc i32 %85 to i16
  %89 = getelementptr inbounds %struct.xc2028_data, ptr %8, i32 0, i32 7
  %90 = load i16, ptr %89, align 4
  %91 = icmp ult i16 %90, 770
  %92 = add i16 %88, 200
  %93 = select i1 %91, i16 %92, i16 %88
  br label %94

94:                                               ; preds = %87, %82
  %95 = phi i16 [ 0, %82 ], [ %93, %87 ]
  %96 = load i32, ptr %2, align 4
  %97 = tail call fastcc i32 @generic_set_freq(ptr noundef %0, i32 noundef %96, i32 noundef 3, i32 noundef %83, i64 noundef 0, i16 noundef zeroext %95)
  br label %98

98:                                               ; preds = %94, %30, %29, %26, %26
  %99 = phi i32 [ %97, %94 ], [ -22, %30 ], [ -19, %29 ], [ -11, %26 ], [ -11, %26 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc2028_set_analog_freq(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i32 [ %16, %14 ], [ -1, %7 ]
  %19 = load i8, ptr %8, align 8
  %20 = zext i8 %19 to i32
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %10, i32 noundef %18, i32 noundef %20, ptr noundef nonnull @__func__.xc2028_set_analog_freq) #12
  br label %22

22:                                               ; preds = %17, %2
  %23 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 10, i32 4
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 2
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, i32 1024, i32 3072
  %32 = load i32, ptr %1, align 8
  %33 = mul i32 %32, 625
  %34 = udiv i32 %33, 10
  %35 = tail call fastcc i32 @generic_set_freq(ptr noundef %0, i32 noundef %34, i32 noundef 1, i32 noundef %31, i64 noundef 0, i16 noundef zeroext 0)
  br label %70

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %38 = load i64, ptr %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i64 46848, ptr %37, align 8
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i64 [ 46848, %40 ], [ %38, %36 ]
  %43 = and i64 %42, 46848
  %44 = icmp eq i64 %43, 0
  %45 = select i1 %44, i32 2, i32 0
  %46 = tail call i32 @strcasecmp(ptr noundef nonnull @audio_std, ptr noundef nonnull @.str.89) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %41
  %49 = tail call i32 @strcasecmp(ptr noundef nonnull @audio_std, ptr noundef nonnull @.str.90) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @strcasecmp(ptr noundef nonnull @audio_std, ptr noundef nonnull @.str.91) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @strcasecmp(ptr noundef nonnull @audio_std, ptr noundef nonnull @.str.92) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = tail call i32 @strcasecmp(ptr noundef nonnull @audio_std, ptr noundef nonnull @.str.93) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @strcasecmp(ptr noundef nonnull @audio_std, ptr noundef nonnull @.str.94) #13
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i64 34359738368, i64 0
  br label %64

64:                                               ; preds = %60, %57, %54, %51, %48, %41
  %65 = phi i64 [ 12884901888, %41 ], [ 4294967296, %48 ], [ 8589934592, %51 ], [ 51539607552, %54 ], [ 17179869184, %57 ], [ %63, %60 ]
  %66 = or i64 %65, %42
  store i64 %66, ptr %37, align 8
  %67 = load i32, ptr %1, align 8
  %68 = mul i32 %67, 62500
  %69 = tail call fastcc i32 @generic_set_freq(ptr noundef %0, i32 noundef %68, i32 noundef 2, i32 noundef %45, i64 noundef %66, i16 noundef zeroext 0)
  br label %70

70:                                               ; preds = %64, %26
  %71 = phi i32 [ %35, %26 ], [ %69, %64 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc2028_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i32 [ %16, %14 ], [ -1, %7 ]
  %19 = load i8, ptr %8, align 8
  %20 = zext i8 %19 to i32
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %10, i32 noundef %18, i32 noundef %20, ptr noundef nonnull @__func__.xc2028_get_frequency) #12
  br label %22

22:                                               ; preds = %17, %2
  %23 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %26 [
    i32 0, label %29
    i32 1, label %29
    i32 4, label %25
  ]

25:                                               ; preds = %22
  br label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.xc2028_data, ptr %4, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  store i32 %28, ptr %1, align 4
  br label %29

29:                                               ; preds = %26, %25, %22, %22
  %30 = phi i32 [ 0, %26 ], [ -19, %25 ], [ -11, %22 ], [ -11, %22 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc2028_signal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 1
  %11 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %9
  %20 = phi i32 [ %18, %16 ], [ -1, %9 ]
  %21 = load i8, ptr %10, align 8
  %22 = zext i8 %21 to i32
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %12, i32 noundef %20, i32 noundef %22, ptr noundef nonnull @__func__.xc2028_signal) #12
  br label %24

24:                                               ; preds = %19, %2
  %25 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %28 [
    i32 0, label %82
    i32 1, label %82
    i32 2, label %29
    i32 4, label %27
  ]

27:                                               ; preds = %24
  br label %82

28:                                               ; preds = %24
  store i16 0, ptr %1, align 2
  br label %82

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %30) #13
  %31 = call fastcc i32 @xc2028_get_reg(ptr noundef %6, i16 noundef zeroext 2, ptr noundef nonnull %3)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %29
  %34 = load i16, ptr %3, align 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  tail call void @msleep(i32 noundef 6) #13
  %37 = call fastcc i32 @xc2028_get_reg(ptr noundef %6, i16 noundef zeroext 2, ptr noundef nonnull %3)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %36
  %40 = load i16, ptr %3, align 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  tail call void @msleep(i32 noundef 6) #13
  %43 = call fastcc i32 @xc2028_get_reg(ptr noundef %6, i16 noundef zeroext 2, ptr noundef nonnull %3)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %42
  %46 = load i16, ptr %3, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  tail call void @msleep(i32 noundef 6) #13
  br label %53

49:                                               ; preds = %45, %39, %33
  %50 = phi i32 [ %31, %33 ], [ %37, %39 ], [ %43, %45 ]
  %51 = phi i16 [ %34, %33 ], [ %40, %39 ], [ %46, %45 ]
  %52 = icmp eq i16 %51, 2
  br i1 %52, label %61, label %53

53:                                               ; preds = %49, %48
  %54 = call fastcc i32 @xc2028_get_reg(ptr noundef %6, i16 noundef zeroext 64, ptr noundef nonnull %4)
  %55 = icmp slt i32 %54, 0
  %56 = load i16, ptr %4, align 2
  br i1 %55, label %61, label %57

57:                                               ; preds = %53
  %58 = shl i16 %56, 12
  %59 = and i16 %58, 28672
  %60 = or i16 %59, 4095
  store i16 %60, ptr %4, align 2
  br label %61

61:                                               ; preds = %57, %53, %49, %42, %36, %29
  %62 = phi i16 [ 0, %49 ], [ %60, %57 ], [ 0, %42 ], [ 0, %36 ], [ 0, %29 ], [ %56, %53 ]
  %63 = phi i32 [ %50, %49 ], [ 0, %57 ], [ %43, %42 ], [ %37, %36 ], [ %31, %29 ], [ %54, %53 ]
  tail call void @mutex_unlock(ptr noundef %30) #13
  store i16 %62, ptr %1, align 2
  %64 = load i32, ptr @debug, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 1
  %68 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 1, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 1, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.i2c_adapter, ptr %71, i32 0, i32 11
  %75 = load i32, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %66
  %77 = phi i32 [ %75, %73 ], [ -1, %66 ]
  %78 = load i8, ptr %67, align 8
  %79 = zext i8 %78 to i32
  %80 = zext i16 %62 to i32
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %69, i32 noundef %77, i32 noundef %79, i32 noundef %80) #12
  br label %82

82:                                               ; preds = %76, %61, %28, %27, %24, %24
  %83 = phi i32 [ 0, %28 ], [ %63, %76 ], [ %63, %61 ], [ -19, %27 ], [ -11, %24 ], [ -11, %24 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xc2028_get_afc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2
  %7 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %10 [
    i32 0, label %61
    i32 1, label %61
    i32 2, label %11
    i32 4, label %9
  ]

9:                                                ; preds = %2
  br label %61

10:                                               ; preds = %2
  store i32 0, ptr %1, align 4
  br label %61

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = call fastcc i32 @xc2028_get_reg(ptr noundef %6, i16 noundef zeroext 2, ptr noundef nonnull %3)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %11
  %16 = load i16, ptr %3, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  tail call void @msleep(i32 noundef 6) #13
  %19 = call fastcc i32 @xc2028_get_reg(ptr noundef %6, i16 noundef zeroext 2, ptr noundef nonnull %3)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %59, label %21

21:                                               ; preds = %18
  %22 = load i16, ptr %3, align 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  tail call void @msleep(i32 noundef 6) #13
  %25 = call fastcc i32 @xc2028_get_reg(ptr noundef %6, i16 noundef zeroext 2, ptr noundef nonnull %3)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %24
  %28 = load i16, ptr %3, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void @msleep(i32 noundef 6) #13
  br label %35

31:                                               ; preds = %27, %21, %15
  %32 = phi i32 [ %13, %15 ], [ %19, %21 ], [ %25, %27 ]
  %33 = phi i16 [ %16, %15 ], [ %22, %21 ], [ %28, %27 ]
  %34 = icmp eq i16 %33, 2
  br i1 %34, label %59, label %35

35:                                               ; preds = %31, %30
  %36 = call fastcc i32 @xc2028_get_reg(ptr noundef %6, i16 noundef zeroext 1, ptr noundef nonnull %4)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %35
  %39 = load i16, ptr %4, align 2
  %40 = sext i16 %39 to i32
  %41 = mul nsw i32 %40, 15625
  store i32 %41, ptr %1, align 4
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 1
  %46 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 1, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.xc2028_data, ptr %6, i32 0, i32 1, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 11
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = phi i32 [ %53, %51 ], [ -1, %44 ]
  %56 = load i8, ptr %45, align 8
  %57 = zext i8 %56 to i32
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %47, i32 noundef %55, i32 noundef %57, i32 noundef %41) #12
  br label %59

59:                                               ; preds = %54, %38, %35, %31, %24, %18, %11
  %60 = phi i32 [ %32, %31 ], [ %36, %35 ], [ 0, %54 ], [ 0, %38 ], [ %13, %11 ], [ %19, %18 ], [ %25, %24 ]
  tail call void @mutex_unlock(ptr noundef %12) #13
  br label %61

61:                                               ; preds = %59, %10, %9, %2, %2
  %62 = phi i32 [ %60, %59 ], [ 0, %10 ], [ -19, %9 ], [ -11, %2 ], [ -11, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret i32 %62
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tuner_i2c_xfer_send(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #7 {
  %4 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = load i8, ptr %0, align 4
  %7 = zext i8 %6 to i16
  store i16 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  %10 = trunc i32 %2 to i16
  store i16 %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tuner_i2c_props, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %4, i32 noundef 1) #13
  %15 = icmp eq i32 %14, 1
  %16 = select i1 %15, i32 %2, i32 %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @generic_set_freq(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i16 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca %struct.firmware_properties, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i64, align 8
  %15 = alloca [4 x i8], align 4
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #13
  store i32 0, ptr %15, align 4, !annotation !8
  %18 = load i32, ptr @debug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1
  %22 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = phi i32 [ %29, %27 ], [ -1, %20 ]
  %32 = load i8, ptr %21, align 8
  %33 = zext i8 %32 to i32
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %23, i32 noundef %31, i32 noundef %33, ptr noundef nonnull @__func__.generic_set_freq) #12
  br label %35

35:                                               ; preds = %30, %6
  %36 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %36) #13
  %37 = load i32, ptr @debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1
  %41 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.i2c_adapter, ptr %44, i32 0, i32 11
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi i32 [ %48, %46 ], [ -1, %39 ]
  %51 = load i8, ptr %40, align 8
  %52 = zext i8 %51 to i32
  %53 = udiv i32 %1, 1000
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %42, i32 noundef %50, i32 noundef %52, i32 noundef %53) #12
  %55 = load i32, ptr @debug, align 4
  br label %56

56:                                               ; preds = %49, %35
  %57 = phi i32 [ %55, %49 ], [ 0, %35 ]
  %58 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %11, i8 0, i32 40, i1 false) #13, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #13
  store i16 0, ptr %12, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #13
  store i16 0, ptr %13, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  store i64 0, ptr %14, align 8, !annotation !8
  %59 = icmp eq i32 %57, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 1
  %62 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 1, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 1, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.i2c_adapter, ptr %65, i32 0, i32 11
  %69 = load i32, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %60
  %71 = phi i32 [ %69, %67 ], [ -1, %60 ]
  %72 = load i8, ptr %61, align 8
  %73 = zext i8 %72 to i32
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %63, i32 noundef %71, i32 noundef %73, ptr noundef nonnull @__func__.check_firmware) #12
  br label %75

75:                                               ; preds = %70, %56
  %76 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  switch i32 %77, label %79 [
    i32 0, label %646
    i32 1, label %646
    i32 2, label %80
    i32 3, label %78
    i32 4, label %646
  ]

78:                                               ; preds = %75
  br label %80

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %78, %75
  %81 = phi i32 [ 0, %78 ], [ 0, %79 ], [ 1, %75 ]
  %82 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 10, i32 4
  %83 = load i8, ptr %82, align 4
  %84 = and i8 %83, 1
  %85 = icmp ne i8 %84, 0
  %86 = and i32 %3, 1024
  %87 = icmp eq i32 %86, 0
  %88 = and i1 %87, %85
  %89 = or i32 %3, 4
  %90 = select i1 %88, i32 %89, i32 %3
  %91 = getelementptr inbounds %struct.firmware_properties, ptr %11, i32 0, i32 1
  %92 = getelementptr inbounds %struct.firmware_properties, ptr %11, i32 0, i32 2
  %93 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 10, i32 3
  %94 = getelementptr inbounds %struct.firmware_properties, ptr %11, i32 0, i32 4
  %95 = getelementptr inbounds %struct.firmware_properties, ptr %11, i32 0, i32 5
  %96 = getelementptr inbounds %struct.firmware_properties, ptr %11, i32 0, i32 3
  %97 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 1
  %98 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 1, i32 3
  %99 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 1, i32 1
  %100 = icmp eq i16 %5, 0
  %101 = zext i16 %5 to i32
  %102 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 11
  %103 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 9
  %104 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %105 = or i32 %90, 1
  %106 = or i32 %90, 16385
  %107 = and i32 %90, -16388
  %108 = or i32 %107, 16385
  %109 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 11, i32 2
  %110 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 11, i32 4
  %111 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 11, i32 5
  %112 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 7
  %113 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 8
  %114 = getelementptr inbounds %struct.xc2028_data, ptr %58, i32 0, i32 9
  %115 = load i32, ptr @debug, align 4
  %116 = and i32 %90, 268454918
  %117 = or i32 %116, 1
  br label %118

118:                                              ; preds = %641, %80
  %119 = phi i32 [ %115, %80 ], [ %642, %641 ]
  %120 = phi i32 [ 0, %80 ], [ %625, %641 ]
  %121 = phi i32 [ %81, %80 ], [ %622, %641 ]
  store i32 %90, ptr %11, align 8
  store i64 %4, ptr %91, align 8
  store i64 %4, ptr %92, align 8
  %122 = load i32, ptr %93, align 4
  %123 = or i32 %122, 536870912
  store i32 %123, ptr %94, align 4
  store i32 0, ptr %95, align 8
  store i16 %5, ptr %96, align 8
  %124 = icmp eq i32 %119, 0
  br i1 %124, label %150, label %125

125:                                              ; preds = %118
  %126 = load ptr, ptr %98, align 4
  %127 = load ptr, ptr %99, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.i2c_adapter, ptr %127, i32 0, i32 11
  %131 = load i32, ptr %130, align 4
  br label %132

132:                                              ; preds = %129, %125
  %133 = phi i32 [ %131, %129 ], [ -1, %125 ]
  %134 = load i8, ptr %97, align 8
  %135 = zext i8 %134 to i32
  %136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %126, i32 noundef %133, i32 noundef %135) #12
  %137 = load i32, ptr @debug, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %132
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %90, i16 noundef zeroext 0) #13
  %140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %90, i64 noundef %4) #12
  br i1 %100, label %141, label %146

141:                                              ; preds = %139
  %142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  %143 = load i32, ptr %93, align 4
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %143, i16 noundef zeroext 0) #13
  %144 = load i32, ptr %93, align 4
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %144) #12
  br label %148

146:                                              ; preds = %139
  %147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %101) #12
  br label %148

148:                                              ; preds = %146, %141
  %149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef 0) #12
  br label %150

150:                                              ; preds = %148, %132, %118
  %151 = load i32, ptr %76, align 4
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %153, label %172

153:                                              ; preds = %150
  %154 = load i32, ptr %102, align 8
  %155 = and i32 %154, 268454919
  %156 = icmp eq i32 %117, %155
  br i1 %156, label %157, label %172

157:                                              ; preds = %153
  %158 = load i32, ptr @debug, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %244, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %98, align 4
  %162 = load ptr, ptr %99, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.i2c_adapter, ptr %162, i32 0, i32 11
  %166 = load i32, ptr %165, align 4
  br label %167

167:                                              ; preds = %164, %160
  %168 = phi i32 [ %166, %164 ], [ -1, %160 ]
  %169 = load i8, ptr %97, align 8
  %170 = zext i8 %169 to i32
  %171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %161, i32 noundef %168, i32 noundef %170) #12
  br label %244

172:                                              ; preds = %153, %150
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %102, i8 0, i32 40, i1 false) #13
  %173 = load ptr, ptr %16, align 4
  %174 = load ptr, ptr %103, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %621, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %104, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.dvb_adapter, ptr %177, i32 0, i32 5
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %188

183:                                              ; preds = %179, %176
  %184 = getelementptr inbounds %struct.xc2028_data, ptr %173, i32 0, i32 1, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.i2c_adapter, ptr %185, i32 0, i32 3
  %187 = load ptr, ptr %186, align 4
  br label %188

188:                                              ; preds = %183, %179
  %189 = phi ptr [ %187, %183 ], [ %181, %179 ]
  %190 = tail call i32 %174(ptr noundef %189, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %621, label %192

192:                                              ; preds = %188
  store i64 0, ptr %14, align 8
  %193 = call fastcc i32 @load_firmware(ptr noundef %0, i32 noundef %105, ptr noundef nonnull %14) #13
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load ptr, ptr %98, align 4
  %197 = load ptr, ptr %99, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.i2c_adapter, ptr %197, i32 0, i32 11
  %201 = load i32, ptr %200, align 4
  br label %202

202:                                              ; preds = %199, %195
  %203 = phi i32 [ %201, %199 ], [ -1, %195 ]
  %204 = load i8, ptr %97, align 8
  %205 = zext i8 %204 to i32
  %206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %196, i32 noundef %203, i32 noundef %205, i32 noundef %193) #12
  br label %621

207:                                              ; preds = %192
  %208 = load i32, ptr @debug, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %222, label %210

210:                                              ; preds = %207
  %211 = load ptr, ptr %98, align 4
  %212 = load ptr, ptr %99, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.i2c_adapter, ptr %212, i32 0, i32 11
  %216 = load i32, ptr %215, align 4
  br label %217

217:                                              ; preds = %214, %210
  %218 = phi i32 [ %216, %214 ], [ -1, %210 ]
  %219 = load i8, ptr %97, align 8
  %220 = zext i8 %219 to i32
  %221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %211, i32 noundef %218, i32 noundef %220) #12
  br label %222

222:                                              ; preds = %217, %207
  %223 = call fastcc i32 @load_firmware(ptr noundef %0, i32 noundef %106, ptr noundef nonnull %14) #13
  %224 = icmp eq i32 %223, -2
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call fastcc i32 @load_firmware(ptr noundef %0, i32 noundef %108, ptr noundef nonnull %14) #13
  br label %227

227:                                              ; preds = %225, %222
  %228 = phi i32 [ %226, %225 ], [ %223, %222 ]
  %229 = icmp slt i32 %228, 0
  %230 = icmp ne i32 %228, -2
  %231 = and i1 %229, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %227
  %233 = load ptr, ptr %98, align 4
  %234 = load ptr, ptr %99, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %239, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.i2c_adapter, ptr %234, i32 0, i32 11
  %238 = load i32, ptr %237, align 4
  br label %239

239:                                              ; preds = %236, %232
  %240 = phi i32 [ %238, %236 ], [ -1, %232 ]
  %241 = load i8, ptr %97, align 8
  %242 = zext i8 %241 to i32
  %243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %233, i32 noundef %240, i32 noundef %242, i32 noundef %228) #12
  br label %621

244:                                              ; preds = %227, %167, %157
  %245 = phi i32 [ %121, %167 ], [ %121, %157 ], [ %228, %227 ]
  %246 = load i32, ptr %102, align 8
  %247 = icmp eq i32 %246, %105
  br i1 %247, label %248, label %266

248:                                              ; preds = %244
  %249 = load i64, ptr %109, align 8
  %250 = icmp eq i64 %249, %4
  br i1 %250, label %251, label %266

251:                                              ; preds = %248
  %252 = load i32, ptr @debug, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %278, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %98, align 4
  %256 = load ptr, ptr %99, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %261, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.i2c_adapter, ptr %256, i32 0, i32 11
  %260 = load i32, ptr %259, align 4
  br label %261

261:                                              ; preds = %258, %254
  %262 = phi i32 [ %260, %258 ], [ -1, %254 ]
  %263 = load i8, ptr %97, align 8
  %264 = zext i8 %263 to i32
  %265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %255, i32 noundef %262, i32 noundef %264) #12
  br label %278

266:                                              ; preds = %248, %244
  store i32 0, ptr %110, align 4
  %267 = call fastcc i32 @load_firmware(ptr noundef %0, i32 noundef %90, ptr noundef %91) #13
  %268 = icmp eq i32 %267, -2
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load i32, ptr %11, align 8
  %271 = and i32 %270, -3
  %272 = call fastcc i32 @load_firmware(ptr noundef %0, i32 noundef %271, ptr noundef %91) #13
  br label %273

273:                                              ; preds = %269, %266
  %274 = phi i32 [ %272, %269 ], [ %267, %266 ]
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %621, label %276

276:                                              ; preds = %273
  %277 = load i32, ptr %94, align 4
  br label %278

278:                                              ; preds = %276, %261, %251
  %279 = phi i32 [ %123, %261 ], [ %123, %251 ], [ %277, %276 ]
  %280 = phi i32 [ %245, %261 ], [ %245, %251 ], [ %274, %276 ]
  %281 = load i32, ptr %110, align 4
  %282 = icmp eq i32 %281, %279
  br i1 %282, label %283, label %302

283:                                              ; preds = %278
  %284 = load i32, ptr %111, align 8
  %285 = load i32, ptr %95, align 8
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %302

287:                                              ; preds = %283
  %288 = load i32, ptr @debug, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %523, label %290

290:                                              ; preds = %287
  %291 = load ptr, ptr %98, align 4
  %292 = load ptr, ptr %99, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.i2c_adapter, ptr %292, i32 0, i32 11
  %296 = load i32, ptr %295, align 4
  br label %297

297:                                              ; preds = %294, %290
  %298 = phi i32 [ %296, %294 ], [ -1, %290 ]
  %299 = load i8, ptr %97, align 8
  %300 = zext i8 %299 to i32
  %301 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %291, i32 noundef %298, i32 noundef %300) #12
  br label %523

302:                                              ; preds = %283, %278
  %303 = load i32, ptr %11, align 8
  %304 = and i32 %303, 1024
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %523

306:                                              ; preds = %302
  %307 = load i32, ptr @debug, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %306
  %310 = load i32, ptr %95, align 8
  %311 = load i16, ptr %96, align 8
  %312 = load ptr, ptr %16, align 4
  br label %345

313:                                              ; preds = %306
  %314 = load ptr, ptr %98, align 4
  %315 = load ptr, ptr %99, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %320, label %317

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.i2c_adapter, ptr %315, i32 0, i32 11
  %319 = load i32, ptr %318, align 4
  br label %320

320:                                              ; preds = %317, %313
  %321 = phi i32 [ %319, %317 ], [ -1, %313 ]
  %322 = load i8, ptr %97, align 8
  %323 = zext i8 %322 to i32
  %324 = load i32, ptr %95, align 8
  %325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %314, i32 noundef %321, i32 noundef %323, i32 noundef %324) #12
  %326 = load i32, ptr @debug, align 4
  %327 = load i16, ptr %96, align 8
  %328 = load ptr, ptr %16, align 4
  %329 = icmp eq i32 %326, 0
  br i1 %329, label %345, label %330

330:                                              ; preds = %320
  %331 = getelementptr inbounds %struct.xc2028_data, ptr %328, i32 0, i32 1
  %332 = getelementptr inbounds %struct.xc2028_data, ptr %328, i32 0, i32 1, i32 3
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.xc2028_data, ptr %328, i32 0, i32 1, i32 1
  %335 = load ptr, ptr %334, align 4
  %336 = icmp eq ptr %335, null
  br i1 %336, label %340, label %337

337:                                              ; preds = %330
  %338 = getelementptr inbounds %struct.i2c_adapter, ptr %335, i32 0, i32 11
  %339 = load i32, ptr %338, align 4
  br label %340

340:                                              ; preds = %337, %330
  %341 = phi i32 [ %339, %337 ], [ -1, %330 ]
  %342 = load i8, ptr %331, align 8
  %343 = zext i8 %342 to i32
  %344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %333, i32 noundef %341, i32 noundef %343, ptr noundef nonnull @__func__.load_scode) #12
  br label %345

345:                                              ; preds = %340, %320, %309
  %346 = phi ptr [ %312, %309 ], [ %328, %340 ], [ %328, %320 ]
  %347 = phi i16 [ %311, %309 ], [ %327, %340 ], [ %327, %320 ]
  %348 = phi i32 [ %310, %309 ], [ %324, %340 ], [ %324, %320 ]
  %349 = icmp eq i16 %347, 0
  br i1 %349, label %357, label %350

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.xc2028_data, ptr %346, i32 0, i32 6
  %352 = load i32, ptr %351, align 8
  %353 = icmp sgt i32 %352, 0
  br i1 %353, label %354, label %374

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.xc2028_data, ptr %346, i32 0, i32 5
  %356 = load ptr, ptr %355, align 4
  br label %361

357:                                              ; preds = %345
  %358 = or i32 %303, %279
  %359 = call fastcc i32 @seek_firmware(ptr noundef %0, i32 noundef %358, ptr noundef %91) #13
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %523, label %377

361:                                              ; preds = %371, %354
  %362 = phi i32 [ 0, %354 ], [ %372, %371 ]
  %363 = getelementptr %struct.firmware_description, ptr %356, i32 %362, i32 2
  %364 = load i16, ptr %363, align 8
  %365 = icmp eq i16 %364, %347
  br i1 %365, label %366, label %371

366:                                              ; preds = %361
  %367 = getelementptr %struct.firmware_description, ptr %356, i32 %362
  %368 = load i32, ptr %367, align 8
  %369 = and i32 %368, 1073741824
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %366, %361
  %372 = add nuw nsw i32 %362, 1
  %373 = icmp eq i32 %372, %352
  br i1 %373, label %523, label %361

374:                                              ; preds = %366, %350
  %375 = phi i32 [ 0, %350 ], [ %362, %366 ]
  %376 = icmp eq i32 %375, %352
  br i1 %376, label %523, label %377

377:                                              ; preds = %374, %357
  %378 = phi i32 [ %375, %374 ], [ %359, %357 ]
  %379 = getelementptr inbounds %struct.xc2028_data, ptr %346, i32 0, i32 5
  %380 = load ptr, ptr %379, align 4
  %381 = getelementptr %struct.firmware_description, ptr %380, i32 %378
  %382 = getelementptr %struct.firmware_description, ptr %380, i32 %378, i32 3
  %383 = load ptr, ptr %382, align 4
  %384 = load i32, ptr %381, align 8
  %385 = and i32 %384, 1073741824
  %386 = icmp eq i32 %385, 0
  %387 = getelementptr %struct.firmware_description, ptr %380, i32 %378, i32 4
  %388 = load i32, ptr %387, align 8
  br i1 %386, label %395, label %389

389:                                              ; preds = %377
  %390 = icmp ne i32 %388, 192
  %391 = icmp sgt i32 %348, 15
  %392 = or i1 %391, %390
  br i1 %392, label %523, label %393

393:                                              ; preds = %389
  %394 = mul i32 %348, 12
  br label %406

395:                                              ; preds = %377
  %396 = icmp ne i32 %388, 224
  %397 = icmp sgt i32 %348, 15
  %398 = or i1 %397, %396
  br i1 %398, label %523, label %399

399:                                              ; preds = %395
  %400 = mul i32 %348, 14
  %401 = getelementptr i8, ptr %383, i32 %400
  %402 = load i16, ptr %401, align 2
  %403 = icmp eq i16 %402, 12
  br i1 %403, label %404, label %523

404:                                              ; preds = %399
  %405 = add i32 %400, 2
  br label %406

406:                                              ; preds = %404, %393
  %407 = phi i32 [ %394, %393 ], [ %405, %404 ]
  %408 = getelementptr i8, ptr %383, i32 %407
  %409 = getelementptr inbounds %struct.xc2028_data, ptr %346, i32 0, i32 1
  %410 = getelementptr inbounds %struct.xc2028_data, ptr %346, i32 0, i32 1, i32 3
  %411 = load ptr, ptr %410, align 4
  %412 = getelementptr inbounds %struct.xc2028_data, ptr %346, i32 0, i32 1, i32 1
  %413 = load ptr, ptr %412, align 4
  %414 = icmp eq ptr %413, null
  br i1 %414, label %418, label %415

415:                                              ; preds = %406
  %416 = getelementptr inbounds %struct.i2c_adapter, ptr %413, i32 0, i32 11
  %417 = load i32, ptr %416, align 4
  br label %418

418:                                              ; preds = %415, %406
  %419 = phi i32 [ %417, %415 ], [ -1, %406 ]
  %420 = load i8, ptr %409, align 8
  %421 = zext i8 %420 to i32
  %422 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %411, i32 noundef %419, i32 noundef %421) #12
  %423 = load ptr, ptr %379, align 4
  %424 = getelementptr %struct.firmware_description, ptr %423, i32 %378
  %425 = load i32, ptr %424, align 8
  %426 = getelementptr %struct.firmware_description, ptr %423, i32 %378, i32 2
  %427 = load i16, ptr %426, align 8
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %425, i16 noundef zeroext %427) #13
  %428 = load ptr, ptr %379, align 4
  %429 = getelementptr %struct.firmware_description, ptr %428, i32 %378
  %430 = load i32, ptr %429, align 8
  %431 = load i64, ptr %91, align 8
  %432 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %430, i64 noundef %431) #12
  %433 = getelementptr inbounds %struct.xc2028_data, ptr %346, i32 0, i32 7
  %434 = load i16, ptr %433, align 4
  %435 = icmp ult i16 %434, 514
  br i1 %435, label %436, label %455

436:                                              ; preds = %418
  %437 = tail call fastcc i32 @tuner_i2c_xfer_send(ptr noundef %409, ptr noundef nonnull @load_scode._val, i32 noundef 4) #13
  %438 = icmp eq i32 %437, 4
  br i1 %438, label %451, label %439

439:                                              ; preds = %436
  %440 = load ptr, ptr %410, align 4
  %441 = load ptr, ptr %412, align 4
  %442 = icmp eq ptr %441, null
  br i1 %442, label %446, label %443

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct.i2c_adapter, ptr %441, i32 0, i32 11
  %445 = load i32, ptr %444, align 4
  br label %446

446:                                              ; preds = %443, %439
  %447 = phi i32 [ %445, %443 ], [ -1, %439 ]
  %448 = load i8, ptr %409, align 8
  %449 = zext i8 %448 to i32
  %450 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %440, i32 noundef %447, i32 noundef %449, i32 noundef 698, i32 noundef %437) #12
  br label %474

451:                                              ; preds = %436
  %452 = getelementptr inbounds %struct.xc2028_data, ptr %346, i32 0, i32 10, i32 2
  %453 = load i32, ptr %452, align 4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %479, label %477

455:                                              ; preds = %418
  %456 = tail call fastcc i32 @tuner_i2c_xfer_send(ptr noundef %409, ptr noundef nonnull @load_scode._val.85, i32 noundef 4) #13
  %457 = icmp eq i32 %456, 4
  br i1 %457, label %470, label %458

458:                                              ; preds = %455
  %459 = load ptr, ptr %410, align 4
  %460 = load ptr, ptr %412, align 4
  %461 = icmp eq ptr %460, null
  br i1 %461, label %465, label %462

462:                                              ; preds = %458
  %463 = getelementptr inbounds %struct.i2c_adapter, ptr %460, i32 0, i32 11
  %464 = load i32, ptr %463, align 4
  br label %465

465:                                              ; preds = %462, %458
  %466 = phi i32 [ %464, %462 ], [ -1, %458 ]
  %467 = load i8, ptr %409, align 8
  %468 = zext i8 %467 to i32
  %469 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %459, i32 noundef %466, i32 noundef %468, i32 noundef 700, i32 noundef %456) #12
  br label %474

470:                                              ; preds = %455
  %471 = getelementptr inbounds %struct.xc2028_data, ptr %346, i32 0, i32 10, i32 2
  %472 = load i32, ptr %471, align 4
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %479, label %477

474:                                              ; preds = %465, %446
  %475 = phi i32 [ %437, %446 ], [ %456, %465 ]
  %476 = icmp slt i32 %475, 0
  br i1 %476, label %523, label %479

477:                                              ; preds = %470, %451
  %478 = phi i32 [ %453, %451 ], [ %472, %470 ]
  tail call void @msleep(i32 noundef %478) #13
  br label %479

479:                                              ; preds = %477, %474, %470, %451
  %480 = tail call fastcc i32 @tuner_i2c_xfer_send(ptr noundef %409, ptr noundef %408, i32 noundef 12) #13
  %481 = icmp eq i32 %480, 12
  br i1 %481, label %494, label %482

482:                                              ; preds = %479
  %483 = load ptr, ptr %410, align 4
  %484 = load ptr, ptr %412, align 4
  %485 = icmp eq ptr %484, null
  br i1 %485, label %489, label %486

486:                                              ; preds = %482
  %487 = getelementptr inbounds %struct.i2c_adapter, ptr %484, i32 0, i32 11
  %488 = load i32, ptr %487, align 4
  br label %489

489:                                              ; preds = %486, %482
  %490 = phi i32 [ %488, %486 ], [ -1, %482 ]
  %491 = load i8, ptr %409, align 8
  %492 = zext i8 %491 to i32
  %493 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %483, i32 noundef %490, i32 noundef %492, i32 noundef %480, i32 noundef 12) #12
  br label %494

494:                                              ; preds = %489, %479
  %495 = getelementptr inbounds %struct.xc2028_data, ptr %346, i32 0, i32 10, i32 2
  %496 = load i32, ptr %495, align 4
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %499, label %498

498:                                              ; preds = %494
  tail call void @msleep(i32 noundef %496) #13
  br label %499

499:                                              ; preds = %498, %494
  %500 = icmp slt i32 %480, 0
  br i1 %500, label %523, label %501

501:                                              ; preds = %499
  %502 = tail call fastcc i32 @tuner_i2c_xfer_send(ptr noundef %409, ptr noundef nonnull @load_scode._val.86, i32 noundef 2) #13
  %503 = icmp eq i32 %502, 2
  br i1 %503, label %516, label %504

504:                                              ; preds = %501
  %505 = load ptr, ptr %410, align 4
  %506 = load ptr, ptr %412, align 4
  %507 = icmp eq ptr %506, null
  br i1 %507, label %511, label %508

508:                                              ; preds = %504
  %509 = getelementptr inbounds %struct.i2c_adapter, ptr %506, i32 0, i32 11
  %510 = load i32, ptr %509, align 4
  br label %511

511:                                              ; preds = %508, %504
  %512 = phi i32 [ %510, %508 ], [ -1, %504 ]
  %513 = load i8, ptr %409, align 8
  %514 = zext i8 %513 to i32
  %515 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %505, i32 noundef %512, i32 noundef %514, i32 noundef 708, i32 noundef %502) #12
  br label %520

516:                                              ; preds = %501
  %517 = load i32, ptr %495, align 4
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %520, label %519

519:                                              ; preds = %516
  tail call void @msleep(i32 noundef %517) #13
  br label %520

520:                                              ; preds = %519, %516, %511
  %521 = icmp slt i32 %502, 0
  %522 = select i1 %521, i32 -5, i32 0
  br label %523

523:                                              ; preds = %520, %499, %474, %399, %395, %389, %374, %371, %357, %302, %297, %287
  %524 = phi i32 [ %280, %297 ], [ %280, %287 ], [ %280, %302 ], [ %359, %357 ], [ -2, %374 ], [ -22, %389 ], [ -22, %399 ], [ -22, %395 ], [ -5, %474 ], [ -5, %499 ], [ %522, %520 ], [ -2, %371 ]
  %525 = call fastcc i32 @xc2028_get_reg(ptr noundef %58, i16 noundef zeroext 4, ptr noundef nonnull %12) #13
  %526 = icmp slt i32 %525, 0
  br i1 %526, label %530, label %527

527:                                              ; preds = %523
  %528 = call fastcc i32 @xc2028_get_reg(ptr noundef %58, i16 noundef zeroext 8, ptr noundef nonnull %13) #13
  %529 = icmp slt i32 %528, 0
  br i1 %529, label %530, label %542

530:                                              ; preds = %527, %523
  %531 = load ptr, ptr %98, align 4
  %532 = load ptr, ptr %99, align 4
  %533 = icmp eq ptr %532, null
  br i1 %533, label %537, label %534

534:                                              ; preds = %530
  %535 = getelementptr inbounds %struct.i2c_adapter, ptr %532, i32 0, i32 11
  %536 = load i32, ptr %535, align 4
  br label %537

537:                                              ; preds = %534, %530
  %538 = phi i32 [ %536, %534 ], [ -1, %530 ]
  %539 = load i8, ptr %97, align 8
  %540 = zext i8 %539 to i32
  %541 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %531, i32 noundef %538, i32 noundef %540) #12
  br label %621

542:                                              ; preds = %527
  %543 = load i32, ptr @debug, align 4
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %567, label %545

545:                                              ; preds = %542
  %546 = load ptr, ptr %98, align 4
  %547 = load ptr, ptr %99, align 4
  %548 = icmp eq ptr %547, null
  br i1 %548, label %552, label %549

549:                                              ; preds = %545
  %550 = getelementptr inbounds %struct.i2c_adapter, ptr %547, i32 0, i32 11
  %551 = load i32, ptr %550, align 4
  br label %552

552:                                              ; preds = %549, %545
  %553 = phi i32 [ %551, %549 ], [ -1, %545 ]
  %554 = load i8, ptr %97, align 8
  %555 = zext i8 %554 to i32
  %556 = load i16, ptr %13, align 2
  %557 = zext i16 %556 to i32
  %558 = load i16, ptr %12, align 2
  %559 = zext i16 %558 to i32
  %560 = lshr i32 %559, 12
  %561 = lshr i32 %559, 8
  %562 = and i32 %561, 15
  %563 = lshr i32 %559, 4
  %564 = and i32 %563, 15
  %565 = and i32 %559, 15
  %566 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %546, i32 noundef %553, i32 noundef %555, i32 noundef %557, i32 noundef %560, i32 noundef %562, i32 noundef %564, i32 noundef %565) #12
  br label %567

567:                                              ; preds = %552, %542
  %568 = load i8, ptr %82, align 4
  %569 = and i8 %568, 32
  %570 = icmp eq i8 %569, 0
  br i1 %570, label %571, label %618

571:                                              ; preds = %567
  %572 = load i16, ptr %112, align 4
  %573 = zext i16 %572 to i32
  %574 = load i16, ptr %12, align 2
  %575 = zext i16 %574 to i32
  %576 = shl nuw nsw i32 %575, 4
  %577 = and i32 %576, 3840
  %578 = and i32 %575, 15
  %579 = or i32 %577, %578
  %580 = icmp eq i32 %579, %573
  br i1 %580, label %593, label %581

581:                                              ; preds = %571
  %582 = load ptr, ptr %98, align 4
  %583 = load ptr, ptr %99, align 4
  %584 = icmp eq ptr %583, null
  br i1 %584, label %588, label %585

585:                                              ; preds = %581
  %586 = getelementptr inbounds %struct.i2c_adapter, ptr %583, i32 0, i32 11
  %587 = load i32, ptr %586, align 4
  br label %588

588:                                              ; preds = %585, %581
  %589 = phi i32 [ %587, %585 ], [ -1, %581 ]
  %590 = load i8, ptr %97, align 8
  %591 = zext i8 %590 to i32
  %592 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %582, i32 noundef %589, i32 noundef %591) #12
  br label %621

593:                                              ; preds = %571
  %594 = load i16, ptr %113, align 2
  %595 = icmp eq i16 %594, 0
  %596 = load i16, ptr %13, align 2
  br i1 %595, label %597, label %600

597:                                              ; preds = %593
  switch i16 %596, label %606 [
    i16 3028, label %598
    i16 2028, label %598
  ]

598:                                              ; preds = %597, %597
  store i16 %596, ptr %113, align 2
  %599 = and i16 %574, -256
  store i16 %599, ptr %114, align 8
  br label %618

600:                                              ; preds = %593
  %601 = icmp eq i16 %594, %596
  br i1 %601, label %602, label %606

602:                                              ; preds = %600
  %603 = load i16, ptr %114, align 8
  %604 = and i16 %574, -256
  %605 = icmp eq i16 %603, %604
  br i1 %605, label %618, label %606

606:                                              ; preds = %602, %600, %597
  %607 = load ptr, ptr %98, align 4
  %608 = load ptr, ptr %99, align 4
  %609 = icmp eq ptr %608, null
  br i1 %609, label %613, label %610

610:                                              ; preds = %606
  %611 = getelementptr inbounds %struct.i2c_adapter, ptr %608, i32 0, i32 11
  %612 = load i32, ptr %611, align 4
  br label %613

613:                                              ; preds = %610, %606
  %614 = phi i32 [ %612, %610 ], [ -1, %606 ]
  %615 = load i8, ptr %97, align 8
  %616 = zext i8 %615 to i32
  %617 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %607, i32 noundef %614, i32 noundef %616) #12
  br label %621

618:                                              ; preds = %602, %598, %567
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %102, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 40, i1 false) #13
  %619 = load i32, ptr %102, align 8
  %620 = or i32 %619, 1
  store i32 %620, ptr %102, align 8
  store i32 2, ptr %76, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #13
  br label %649

621:                                              ; preds = %613, %588, %537, %273, %239, %202, %188, %172
  %622 = phi i32 [ %524, %537 ], [ %524, %613 ], [ %524, %588 ], [ %274, %273 ], [ %190, %188 ], [ %193, %202 ], [ %228, %239 ], [ -22, %172 ]
  tail call fastcc void @free_firmware(ptr noundef %58) #13
  %623 = icmp eq i32 %120, 8
  br i1 %623, label %643, label %624

624:                                              ; preds = %621
  tail call void @msleep(i32 noundef 50) #13
  %625 = add nuw nsw i32 %120, 1
  %626 = load i32, ptr @debug, align 4
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %641, label %628

628:                                              ; preds = %624
  %629 = load ptr, ptr %98, align 4
  %630 = load ptr, ptr %99, align 4
  %631 = icmp eq ptr %630, null
  br i1 %631, label %635, label %632

632:                                              ; preds = %628
  %633 = getelementptr inbounds %struct.i2c_adapter, ptr %630, i32 0, i32 11
  %634 = load i32, ptr %633, align 4
  br label %635

635:                                              ; preds = %632, %628
  %636 = phi i32 [ %634, %632 ], [ -1, %628 ]
  %637 = load i8, ptr %97, align 8
  %638 = zext i8 %637 to i32
  %639 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %629, i32 noundef %636, i32 noundef %638) #12
  %640 = load i32, ptr @debug, align 4
  br label %641

641:                                              ; preds = %635, %624
  %642 = phi i32 [ %640, %635 ], [ 0, %624 ]
  br label %118

643:                                              ; preds = %621
  %644 = tail call i32 @xc2028_sleep(ptr noundef %0) #13
  %645 = icmp eq i32 %622, -2
  br i1 %645, label %646, label %647

646:                                              ; preds = %643, %75, %75, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #13
  br label %858

647:                                              ; preds = %643
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #13
  %648 = icmp slt i32 %622, 0
  br i1 %648, label %858, label %649

649:                                              ; preds = %647, %618
  switch i32 %2, label %686 [
    i32 2, label %650
    i32 1, label %701
    i32 3, label %680
  ]

650:                                              ; preds = %649
  %651 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  %652 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %652, align 4, !annotation !8
  %653 = load i8, ptr %651, align 4
  %654 = zext i8 %653 to i16
  store i16 %654, ptr %10, align 4
  %655 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %655, align 2
  %656 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr @generic_set_freq._val, ptr %656, align 4
  %657 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 1
  %658 = load ptr, ptr %657, align 4
  %659 = call i32 @i2c_transfer(ptr noundef %658, ptr noundef nonnull %10, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  %660 = add i32 %659, -1
  %661 = icmp ult i32 %660, 2
  br i1 %661, label %675, label %662

662:                                              ; preds = %650
  %663 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 3
  %664 = load ptr, ptr %663, align 4
  %665 = load ptr, ptr %657, align 4
  %666 = icmp eq ptr %665, null
  br i1 %666, label %670, label %667

667:                                              ; preds = %662
  %668 = getelementptr inbounds %struct.i2c_adapter, ptr %665, i32 0, i32 11
  %669 = load i32, ptr %668, align 4
  br label %670

670:                                              ; preds = %667, %662
  %671 = phi i32 [ %669, %667 ], [ -1, %662 ]
  %672 = load i8, ptr %651, align 8
  %673 = zext i8 %672 to i32
  %674 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %664, i32 noundef %671, i32 noundef %673, i32 noundef 1037, i32 noundef %659) #12
  br label %701

675:                                              ; preds = %650
  %676 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 10, i32 2
  %677 = load i32, ptr %676, align 4
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %701, label %679

679:                                              ; preds = %675
  call void @msleep(i32 noundef %677) #13
  br label %701

680:                                              ; preds = %649
  %681 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 11
  %682 = load i32, ptr %681, align 8
  %683 = and i32 %682, 32
  %684 = icmp eq i32 %683, 0
  %685 = select i1 %684, i32 -2750000, i32 -1750000
  br label %701

686:                                              ; preds = %649
  %687 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1
  %688 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 3
  %689 = load ptr, ptr %688, align 4
  %690 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 1
  %691 = load ptr, ptr %690, align 4
  %692 = icmp eq ptr %691, null
  br i1 %692, label %696, label %693

693:                                              ; preds = %686
  %694 = getelementptr inbounds %struct.i2c_adapter, ptr %691, i32 0, i32 11
  %695 = load i32, ptr %694, align 4
  br label %696

696:                                              ; preds = %693, %686
  %697 = phi i32 [ %695, %693 ], [ -1, %686 ]
  %698 = load i8, ptr %687, align 8
  %699 = zext i8 %698 to i32
  %700 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %689, i32 noundef %697, i32 noundef %699, i32 noundef %2) #12
  br label %701

701:                                              ; preds = %696, %680, %679, %675, %670, %649
  %702 = phi i32 [ 0, %696 ], [ 0, %649 ], [ 0, %675 ], [ 0, %679 ], [ 0, %670 ], [ %685, %680 ]
  %703 = add i32 %1, 7812
  %704 = add i32 %703, %702
  %705 = udiv i32 %704, 15625
  %706 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 7
  %707 = load i16, ptr %706, align 4
  %708 = icmp ult i16 %707, 514
  %709 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1
  br i1 %708, label %710, label %739

710:                                              ; preds = %701
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %711 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 4, ptr %711, align 4, !annotation !8
  %712 = load i8, ptr %709, align 4
  %713 = zext i8 %712 to i16
  store i16 %713, ptr %9, align 4
  %714 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %714, align 2
  %715 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr @generic_set_freq._val.15, ptr %715, align 4
  %716 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 1
  %717 = load ptr, ptr %716, align 4
  %718 = call i32 @i2c_transfer(ptr noundef %717, ptr noundef nonnull %9, i32 noundef 1) #13
  %719 = icmp eq i32 %718, 1
  %720 = select i1 %719, i32 4, i32 %718
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  %721 = icmp eq i32 %720, 4
  br i1 %721, label %735, label %722

722:                                              ; preds = %710
  %723 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 3
  %724 = load ptr, ptr %723, align 4
  %725 = load ptr, ptr %716, align 4
  %726 = icmp eq ptr %725, null
  br i1 %726, label %730, label %727

727:                                              ; preds = %722
  %728 = getelementptr inbounds %struct.i2c_adapter, ptr %725, i32 0, i32 11
  %729 = load i32, ptr %728, align 4
  br label %730

730:                                              ; preds = %727, %722
  %731 = phi i32 [ %729, %727 ], [ -1, %722 ]
  %732 = load i8, ptr %709, align 8
  %733 = zext i8 %732 to i32
  %734 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %724, i32 noundef %731, i32 noundef %733, i32 noundef 1118, i32 noundef %720) #12
  br label %768

735:                                              ; preds = %710
  %736 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 10, i32 2
  %737 = load i32, ptr %736, align 4
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %773, label %771

739:                                              ; preds = %701
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  %740 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 4, ptr %740, align 4, !annotation !8
  %741 = load i8, ptr %709, align 4
  %742 = zext i8 %741 to i16
  store i16 %742, ptr %8, align 4
  %743 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %743, align 2
  %744 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr @generic_set_freq._val.16, ptr %744, align 4
  %745 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 1
  %746 = load ptr, ptr %745, align 4
  %747 = call i32 @i2c_transfer(ptr noundef %746, ptr noundef nonnull %8, i32 noundef 1) #13
  %748 = icmp eq i32 %747, 1
  %749 = select i1 %748, i32 4, i32 %747
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  %750 = icmp eq i32 %749, 4
  br i1 %750, label %764, label %751

751:                                              ; preds = %739
  %752 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 3
  %753 = load ptr, ptr %752, align 4
  %754 = load ptr, ptr %745, align 4
  %755 = icmp eq ptr %754, null
  br i1 %755, label %759, label %756

756:                                              ; preds = %751
  %757 = getelementptr inbounds %struct.i2c_adapter, ptr %754, i32 0, i32 11
  %758 = load i32, ptr %757, align 4
  br label %759

759:                                              ; preds = %756, %751
  %760 = phi i32 [ %758, %756 ], [ -1, %751 ]
  %761 = load i8, ptr %709, align 8
  %762 = zext i8 %761 to i32
  %763 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %753, i32 noundef %760, i32 noundef %762, i32 noundef 1120, i32 noundef %749) #12
  br label %768

764:                                              ; preds = %739
  %765 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 10, i32 2
  %766 = load i32, ptr %765, align 4
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %773, label %771

768:                                              ; preds = %759, %730
  %769 = phi i32 [ %720, %730 ], [ %749, %759 ]
  %770 = icmp slt i32 %769, 0
  br i1 %770, label %858, label %773

771:                                              ; preds = %764, %735
  %772 = phi i32 [ %737, %735 ], [ %766, %764 ]
  call void @msleep(i32 noundef %772) #13
  br label %773

773:                                              ; preds = %771, %768, %764, %735
  %774 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 10, i32 2
  %775 = load i32, ptr %774, align 4
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %778, label %777

777:                                              ; preds = %773
  call void @msleep(i32 noundef %775) #13
  br label %778

778:                                              ; preds = %777, %773
  %779 = load ptr, ptr %16, align 4
  %780 = load ptr, ptr %103, align 4
  %781 = icmp eq ptr %780, null
  br i1 %781, label %797, label %782

782:                                              ; preds = %778
  %783 = load ptr, ptr %104, align 4
  %784 = icmp eq ptr %783, null
  br i1 %784, label %789, label %785

785:                                              ; preds = %782
  %786 = getelementptr inbounds %struct.dvb_adapter, ptr %783, i32 0, i32 5
  %787 = load ptr, ptr %786, align 4
  %788 = icmp eq ptr %787, null
  br i1 %788, label %789, label %794

789:                                              ; preds = %785, %782
  %790 = getelementptr inbounds %struct.xc2028_data, ptr %779, i32 0, i32 1, i32 1
  %791 = load ptr, ptr %790, align 4
  %792 = getelementptr inbounds %struct.i2c_adapter, ptr %791, i32 0, i32 3
  %793 = load ptr, ptr %792, align 4
  br label %794

794:                                              ; preds = %789, %785
  %795 = phi ptr [ %793, %789 ], [ %787, %785 ]
  %796 = call i32 %780(ptr noundef %795, i32 noundef 0, i32 noundef 1, i32 noundef 1) #13
  br label %797

797:                                              ; preds = %794, %778
  call void @msleep(i32 noundef 10) #13
  store i8 0, ptr %15, align 4
  %798 = lshr i32 %705, 16
  %799 = trunc i32 %798 to i8
  %800 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 1
  store i8 %799, ptr %800, align 1
  %801 = lshr i32 %705, 8
  %802 = trunc i32 %801 to i8
  %803 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 2
  store i8 %802, ptr %803, align 2
  %804 = trunc i32 %705 to i8
  %805 = getelementptr inbounds [4 x i8], ptr %15, i32 0, i32 3
  store i8 %804, ptr %805, align 1
  %806 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %807 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %807, align 4, !annotation !8
  %808 = load i8, ptr %806, align 4
  %809 = zext i8 %808 to i16
  store i16 %809, ptr %7, align 4
  %810 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %810, align 2
  %811 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %15, ptr %811, align 4
  %812 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 1
  %813 = load ptr, ptr %812, align 4
  %814 = call i32 @i2c_transfer(ptr noundef %813, ptr noundef nonnull %7, i32 noundef 1) #13
  %815 = icmp eq i32 %814, 1
  %816 = select i1 %815, i32 4, i32 %814
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  %817 = icmp eq i32 %816, 4
  br i1 %817, label %831, label %818

818:                                              ; preds = %797
  %819 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 3
  %820 = load ptr, ptr %819, align 4
  %821 = load ptr, ptr %812, align 4
  %822 = icmp eq ptr %821, null
  br i1 %822, label %826, label %823

823:                                              ; preds = %818
  %824 = getelementptr inbounds %struct.i2c_adapter, ptr %821, i32 0, i32 11
  %825 = load i32, ptr %824, align 4
  br label %826

826:                                              ; preds = %823, %818
  %827 = phi i32 [ %825, %823 ], [ -1, %818 ]
  %828 = load i8, ptr %806, align 8
  %829 = zext i8 %828 to i32
  %830 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %820, i32 noundef %827, i32 noundef %829, i32 noundef %816, i32 noundef 4) #12
  br label %831

831:                                              ; preds = %826, %797
  %832 = load i32, ptr %774, align 4
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %835, label %834

834:                                              ; preds = %831
  call void @msleep(i32 noundef %832) #13
  br label %835

835:                                              ; preds = %834, %831
  %836 = icmp slt i32 %816, 0
  br i1 %836, label %858, label %837

837:                                              ; preds = %835
  call void @msleep(i32 noundef 100) #13
  %838 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 2
  store i32 %1, ptr %838, align 8
  %839 = load i32, ptr @debug, align 4
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %858, label %841

841:                                              ; preds = %837
  %842 = getelementptr inbounds %struct.xc2028_data, ptr %17, i32 0, i32 1, i32 3
  %843 = load ptr, ptr %842, align 4
  %844 = load ptr, ptr %812, align 4
  %845 = icmp eq ptr %844, null
  br i1 %845, label %849, label %846

846:                                              ; preds = %841
  %847 = getelementptr inbounds %struct.i2c_adapter, ptr %844, i32 0, i32 11
  %848 = load i32, ptr %847, align 4
  br label %849

849:                                              ; preds = %846, %841
  %850 = phi i32 [ %848, %846 ], [ -1, %841 ]
  %851 = load i8, ptr %806, align 8
  %852 = zext i8 %851 to i32
  %853 = udiv i32 %1, 1000000
  %854 = mul i32 %853, 1000000
  %855 = sub i32 %1, %854
  %856 = udiv i32 %855, 1000
  %857 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %843, i32 noundef %850, i32 noundef %852, i32 noundef 4, ptr noundef nonnull %15, i32 noundef %853, i32 noundef %856) #12
  br label %858

858:                                              ; preds = %849, %837, %835, %768, %647, %646
  %859 = phi i32 [ -22, %647 ], [ %769, %768 ], [ %814, %835 ], [ 0, %849 ], [ 0, %837 ], [ -22, %646 ]
  call void @mutex_unlock(ptr noundef %36) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #13
  ret i32 %859
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dump_firm_type_and_int_freq(i32 noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = and i32 %0, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #12
  br label %7

7:                                                ; preds = %5, %2
  %8 = and i32 %0, 16384
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #12
  br label %12

12:                                               ; preds = %10, %7
  %13 = and i32 %0, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  br label %17

17:                                               ; preds = %15, %12
  %18 = and i32 %0, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #12
  br label %22

22:                                               ; preds = %20, %17
  %23 = and i32 %0, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #12
  br label %27

27:                                               ; preds = %25, %22
  %28 = and i32 %0, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #12
  br label %32

32:                                               ; preds = %30, %27
  %33 = and i32 %0, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #12
  br label %37

37:                                               ; preds = %35, %32
  %38 = and i32 %0, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #12
  br label %42

42:                                               ; preds = %40, %37
  %43 = and i32 %0, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #12
  br label %47

47:                                               ; preds = %45, %42
  %48 = and i32 %0, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #12
  br label %52

52:                                               ; preds = %50, %47
  %53 = and i32 %0, 512
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #12
  br label %57

57:                                               ; preds = %55, %52
  %58 = and i32 %0, 1024
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #12
  br label %62

62:                                               ; preds = %60, %57
  %63 = and i32 %0, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  br label %67

67:                                               ; preds = %65, %62
  %68 = and i32 %0, 4096
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #12
  br label %72

72:                                               ; preds = %70, %67
  %73 = and i32 %0, 8192
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #12
  br label %77

77:                                               ; preds = %75, %72
  %78 = and i32 %0, 32768
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  br label %82

82:                                               ; preds = %80, %77
  %83 = and i32 %0, 65536
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #12
  br label %87

87:                                               ; preds = %85, %82
  %88 = and i32 %0, 131072
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #12
  br label %92

92:                                               ; preds = %90, %87
  %93 = and i32 %0, 262144
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #12
  br label %97

97:                                               ; preds = %95, %92
  %98 = and i32 %0, 524288
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #12
  br label %102

102:                                              ; preds = %100, %97
  %103 = and i32 %0, 1048576
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  br label %107

107:                                              ; preds = %105, %102
  %108 = and i32 %0, 2097152
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #12
  br label %112

112:                                              ; preds = %110, %107
  %113 = and i32 %0, 4194304
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #12
  br label %117

117:                                              ; preds = %115, %112
  %118 = and i32 %0, 8388608
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #12
  br label %122

122:                                              ; preds = %120, %117
  %123 = and i32 %0, 16777216
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %127

127:                                              ; preds = %125, %122
  %128 = and i32 %0, 33554432
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #12
  br label %132

132:                                              ; preds = %130, %127
  %133 = and i32 %0, 67108864
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #12
  br label %137

137:                                              ; preds = %135, %132
  %138 = and i32 %0, 134217728
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #12
  br label %142

142:                                              ; preds = %140, %137
  %143 = and i32 %0, 268435456
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  br label %147

147:                                              ; preds = %145, %142
  %148 = and i32 %0, 536870912
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #12
  br label %152

152:                                              ; preds = %150, %147
  %153 = and i32 %0, 1073741824
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = zext i16 %1 to i32
  %157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %156) #12
  br label %158

158:                                              ; preds = %155, %152
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @load_firmware(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [80 x i8], align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %5, i8 0, i32 80, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.xc2028_data, ptr %7, i32 0, i32 10, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 80
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 80, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %3
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.xc2028_data, ptr %7, i32 0, i32 1
  %17 = getelementptr inbounds %struct.xc2028_data, ptr %7, i32 0, i32 1, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.xc2028_data, ptr %7, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi i32 [ %24, %22 ], [ -1, %15 ]
  %27 = load i8, ptr %16, align 8
  %28 = zext i8 %27 to i32
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %18, i32 noundef %26, i32 noundef %28, ptr noundef nonnull @__func__.load_firmware) #12
  br label %30

30:                                               ; preds = %25, %12
  %31 = tail call fastcc i32 @seek_firmware(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %297, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.xc2028_data, ptr %7, i32 0, i32 1
  %35 = getelementptr inbounds %struct.xc2028_data, ptr %7, i32 0, i32 1, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.xc2028_data, ptr %7, i32 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 11
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi i32 [ %42, %40 ], [ -1, %33 ]
  %45 = load i8, ptr %34, align 8
  %46 = zext i8 %45 to i32
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %36, i32 noundef %44, i32 noundef %46) #12
  %48 = getelementptr inbounds %struct.xc2028_data, ptr %7, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.firmware_description, ptr %49, i32 %31
  %51 = load i32, ptr %50, align 8
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %51, i16 noundef zeroext 0)
  %52 = load ptr, ptr %48, align 4
  %53 = getelementptr %struct.firmware_description, ptr %52, i32 %31
  %54 = load i32, ptr %53, align 8
  %55 = load i64, ptr %2, align 8
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %54, i64 noundef %55) #12
  %57 = load ptr, ptr %48, align 4
  %58 = getelementptr %struct.firmware_description, ptr %57, i32 %31, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr %struct.firmware_description, ptr %57, i32 %31, i32 4
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr i8, ptr %59, i32 %61
  %63 = icmp ult ptr %59, %62
  br i1 %63, label %64, label %297

64:                                               ; preds = %43
  %65 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 9
  %66 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %67 = getelementptr inbounds i8, ptr %5, i32 1
  %68 = getelementptr inbounds i8, ptr %4, i32 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %71 = getelementptr inbounds %struct.xc2028_data, ptr %7, i32 0, i32 10, i32 2
  br label %72

72:                                               ; preds = %294, %64
  %73 = phi ptr [ %59, %64 ], [ %295, %294 ]
  %74 = getelementptr i8, ptr %73, i32 2
  %75 = icmp ugt ptr %74, %62
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load ptr, ptr %35, align 4
  %78 = load ptr, ptr %37, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.i2c_adapter, ptr %78, i32 0, i32 11
  %82 = load i32, ptr %81, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = phi i32 [ %82, %80 ], [ -1, %76 ]
  %85 = load i8, ptr %34, align 8
  %86 = zext i8 %85 to i32
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %77, i32 noundef %84, i32 noundef %86) #12
  br label %297

88:                                               ; preds = %72
  %89 = load i16, ptr %73, align 2
  %90 = zext i16 %89 to i32
  switch i16 %89, label %126 [
    i16 -1, label %297
    i16 0, label %91
  ]

91:                                               ; preds = %88
  %92 = load ptr, ptr %6, align 4
  %93 = load ptr, ptr %65, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %111, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %66, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.dvb_adapter, ptr %96, i32 0, i32 5
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %98, %95
  %103 = getelementptr inbounds %struct.xc2028_data, ptr %92, i32 0, i32 1, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.i2c_adapter, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  br label %107

107:                                              ; preds = %102, %98
  %108 = phi ptr [ %106, %102 ], [ %100, %98 ]
  %109 = call i32 %93(ptr noundef %108, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %294

111:                                              ; preds = %107, %91
  %112 = load ptr, ptr %35, align 4
  %113 = load ptr, ptr %37, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.i2c_adapter, ptr %113, i32 0, i32 11
  %117 = load i32, ptr %116, align 4
  br label %118

118:                                              ; preds = %115, %111
  %119 = phi i32 [ %117, %115 ], [ -1, %111 ]
  %120 = load i8, ptr %34, align 8
  %121 = zext i8 %120 to i32
  %122 = load i8, ptr %74, align 1
  %123 = and i8 %122, 127
  %124 = zext i8 %123 to i32
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %112, i32 noundef %119, i32 noundef %121, i32 noundef %124) #12
  br label %297

126:                                              ; preds = %88
  %127 = icmp ugt i16 %89, -257
  br i1 %127, label %128, label %179

128:                                              ; preds = %126
  %129 = icmp eq i16 %89, -256
  br i1 %129, label %130, label %165

130:                                              ; preds = %128
  %131 = load ptr, ptr %6, align 4
  %132 = load ptr, ptr %65, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %150, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %66, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.dvb_adapter, ptr %135, i32 0, i32 5
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %137, %134
  %142 = getelementptr inbounds %struct.xc2028_data, ptr %131, i32 0, i32 1, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.i2c_adapter, ptr %143, i32 0, i32 3
  %145 = load ptr, ptr %144, align 4
  br label %146

146:                                              ; preds = %141, %137
  %147 = phi ptr [ %145, %141 ], [ %139, %137 ]
  %148 = call i32 %132(ptr noundef %147, i32 noundef 0, i32 noundef 1, i32 noundef 0) #13
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %294

150:                                              ; preds = %146, %130
  %151 = load ptr, ptr %35, align 4
  %152 = load ptr, ptr %37, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.i2c_adapter, ptr %152, i32 0, i32 11
  %156 = load i32, ptr %155, align 4
  br label %157

157:                                              ; preds = %154, %150
  %158 = phi i32 [ %156, %154 ], [ -1, %150 ]
  %159 = load i8, ptr %34, align 8
  %160 = zext i8 %159 to i32
  %161 = load i8, ptr %74, align 1
  %162 = and i8 %161, 127
  %163 = zext i8 %162 to i32
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %151, i32 noundef %158, i32 noundef %160, i32 noundef %163) #12
  br label %297

165:                                              ; preds = %128
  %166 = load ptr, ptr %35, align 4
  %167 = load ptr, ptr %37, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.i2c_adapter, ptr %167, i32 0, i32 11
  %171 = load i32, ptr %170, align 4
  br label %172

172:                                              ; preds = %169, %165
  %173 = phi i32 [ %171, %169 ], [ -1, %165 ]
  %174 = load i8, ptr %34, align 8
  %175 = zext i8 %174 to i32
  %176 = and i16 %89, 127
  %177 = zext i16 %176 to i32
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %166, i32 noundef %173, i32 noundef %175, i32 noundef %177) #12
  br label %297

179:                                              ; preds = %126
  %180 = and i32 %90, 32768
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = and i32 %90, 32767
  call void @msleep(i32 noundef %183) #13
  br label %294

184:                                              ; preds = %179
  %185 = getelementptr i8, ptr %74, i32 %90
  %186 = icmp ugt ptr %185, %62
  br i1 %186, label %187, label %203

187:                                              ; preds = %184
  %188 = zext i16 %89 to i32
  %189 = load ptr, ptr %35, align 4
  %190 = load ptr, ptr %37, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %195, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.i2c_adapter, ptr %190, i32 0, i32 11
  %194 = load i32, ptr %193, align 4
  br label %195

195:                                              ; preds = %192, %187
  %196 = phi i32 [ %194, %192 ], [ -1, %187 ]
  %197 = load i8, ptr %34, align 8
  %198 = zext i8 %197 to i32
  %199 = ptrtoint ptr %62 to i32
  %200 = ptrtoint ptr %74 to i32
  %201 = sub i32 %199, %200
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %189, i32 noundef %196, i32 noundef %198, i32 noundef %188, i32 noundef %201) #12
  br label %297

203:                                              ; preds = %184
  %204 = load i8, ptr %74, align 1
  store i8 %204, ptr %5, align 1
  %205 = getelementptr i8, ptr %73, i32 3
  %206 = add i16 %89, -1
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %259, label %208

208:                                              ; preds = %254, %203
  %209 = phi ptr [ %255, %254 ], [ %205, %203 ]
  %210 = phi i16 [ %257, %254 ], [ %206, %203 ]
  %211 = zext i16 %210 to i32
  %212 = load i32, ptr %8, align 4
  %213 = add i32 %212, -1
  %214 = call i32 @llvm.smin.i32(i32 %213, i32 %211)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %67, ptr align 1 %209, i32 %214, i1 false)
  %215 = add nsw i32 %214, 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  store i32 0, ptr %68, align 4, !annotation !8
  %216 = load i8, ptr %34, align 4
  %217 = zext i8 %216 to i16
  store i16 %217, ptr %4, align 4
  store i16 0, ptr %69, align 2
  %218 = trunc i32 %215 to i16
  store i16 %218, ptr %68, align 4
  store ptr %5, ptr %70, align 4
  %219 = load ptr, ptr %37, align 4
  %220 = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %4, i32 noundef 1) #13
  %221 = icmp eq i32 %220, 1
  %222 = select i1 %221, i32 %215, i32 %220
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %223 = icmp eq i32 %215, %222
  br i1 %223, label %236, label %224

224:                                              ; preds = %208
  %225 = load ptr, ptr %35, align 4
  %226 = load ptr, ptr %37, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.i2c_adapter, ptr %226, i32 0, i32 11
  %230 = load i32, ptr %229, align 4
  br label %231

231:                                              ; preds = %228, %224
  %232 = phi i32 [ %230, %228 ], [ -1, %224 ]
  %233 = load i8, ptr %34, align 8
  %234 = zext i8 %233 to i32
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %225, i32 noundef %232, i32 noundef %234, i32 noundef %222, i32 noundef %215) #12
  br label %236

236:                                              ; preds = %231, %208
  %237 = load i32, ptr %71, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %236
  call void @msleep(i32 noundef %237) #13
  br label %240

240:                                              ; preds = %239, %236
  %241 = icmp slt i32 %222, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %240
  %243 = load ptr, ptr %35, align 4
  %244 = load ptr, ptr %37, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.i2c_adapter, ptr %244, i32 0, i32 11
  %248 = load i32, ptr %247, align 4
  br label %249

249:                                              ; preds = %246, %242
  %250 = phi i32 [ %248, %246 ], [ -1, %242 ]
  %251 = load i8, ptr %34, align 8
  %252 = zext i8 %251 to i32
  %253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %243, i32 noundef %250, i32 noundef %252, i32 noundef %222) #12
  br label %297

254:                                              ; preds = %240
  %255 = getelementptr i8, ptr %209, i32 %214
  %256 = trunc i32 %214 to i16
  %257 = sub i16 %210, %256
  %258 = icmp eq i16 %257, 0
  br i1 %258, label %259, label %208

259:                                              ; preds = %254, %203
  %260 = phi ptr [ %205, %203 ], [ %255, %254 ]
  %261 = load ptr, ptr %6, align 4
  %262 = load ptr, ptr %65, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %294, label %264

264:                                              ; preds = %259
  %265 = load ptr, ptr %66, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %271, label %267

267:                                              ; preds = %264
  %268 = getelementptr inbounds %struct.dvb_adapter, ptr %265, i32 0, i32 5
  %269 = load ptr, ptr %268, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %276

271:                                              ; preds = %267, %264
  %272 = getelementptr inbounds %struct.xc2028_data, ptr %261, i32 0, i32 1, i32 1
  %273 = load ptr, ptr %272, align 4
  %274 = getelementptr inbounds %struct.i2c_adapter, ptr %273, i32 0, i32 3
  %275 = load ptr, ptr %274, align 4
  br label %276

276:                                              ; preds = %271, %267
  %277 = phi ptr [ %275, %271 ], [ %269, %267 ]
  %278 = call i32 %262(ptr noundef %277, i32 noundef 0, i32 noundef 2, i32 noundef 0) #13
  %279 = icmp slt i32 %278, 0
  %280 = icmp ne i32 %278, -22
  %281 = and i1 %279, %280
  br i1 %281, label %282, label %294

282:                                              ; preds = %276
  %283 = load ptr, ptr %35, align 4
  %284 = load ptr, ptr %37, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %289, label %286

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.i2c_adapter, ptr %284, i32 0, i32 11
  %288 = load i32, ptr %287, align 4
  br label %289

289:                                              ; preds = %286, %282
  %290 = phi i32 [ %288, %286 ], [ -1, %282 ]
  %291 = load i8, ptr %34, align 8
  %292 = zext i8 %291 to i32
  %293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %283, i32 noundef %290, i32 noundef %292, i32 noundef %278) #12
  br label %297

294:                                              ; preds = %276, %259, %182, %146, %107
  %295 = phi ptr [ %74, %182 ], [ %74, %107 ], [ %74, %146 ], [ %260, %276 ], [ %260, %259 ]
  %296 = icmp ult ptr %295, %62
  br i1 %296, label %72, label %297

297:                                              ; preds = %294, %289, %249, %195, %172, %157, %118, %88, %83, %43, %30
  %298 = phi i32 [ %31, %30 ], [ -22, %249 ], [ -22, %118 ], [ %278, %289 ], [ -22, %195 ], [ -22, %172 ], [ -22, %157 ], [ -22, %83 ], [ 0, %43 ], [ 0, %88 ], [ 0, %294 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #13
  ret i32 %298
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xc2028_get_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #13
  store i16 0, ptr %6, align 2, !annotation !8
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %9
  %20 = phi i32 [ %18, %16 ], [ -1, %9 ]
  %21 = load i8, ptr %10, align 8
  %22 = zext i8 %21 to i32
  %23 = zext i16 %1 to i32
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %12, i32 noundef %20, i32 noundef %22, ptr noundef nonnull @__func__.xc2028_get_reg, i32 noundef %23) #12
  br label %25

25:                                               ; preds = %19, %3
  %26 = trunc i16 %1 to i8
  %27 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %29 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %29, i8 0, i32 16, i1 false) #13, !annotation !8
  %30 = load i8, ptr %28, align 4
  %31 = zext i8 %30 to i16
  store i16 %31, ptr %4, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %32, align 2
  store i16 2, ptr %29, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %33, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %31, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %6, ptr %37, align 4
  %38 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %4, i32 noundef 2) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %55, label %42

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 1, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %38, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i32 [ %49, %47 ], [ -1, %42 ]
  %52 = load i8, ptr %28, align 8
  %53 = zext i8 %52 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %44, i32 noundef %51, i32 noundef %53, i32 noundef %40, i32 noundef 2) #12
  br label %55

55:                                               ; preds = %50, %25
  %56 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 10, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  call void @msleep(i32 noundef %57) #13
  br label %60

60:                                               ; preds = %59, %55
  br i1 %41, label %61, label %69

61:                                               ; preds = %60
  %62 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i16
  %65 = load i8, ptr %6, align 2
  %66 = zext i8 %65 to i16
  %67 = shl nuw i16 %66, 8
  %68 = or i16 %67, %64
  store i16 %68, ptr %2, align 2
  br label %69

69:                                               ; preds = %61, %60
  %70 = phi i32 [ 0, %61 ], [ -5, %60 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_firmware(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @debug, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 1, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i32 [ %13, %11 ], [ -1, %4 ]
  %16 = load i8, ptr %5, align 8
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %7, i32 noundef %15, i32 noundef %17, ptr noundef nonnull @__func__.free_firmware) #12
  br label %19

19:                                               ; preds = %14, %1
  %20 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, @firmware_name
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @kfree(ptr noundef %21) #13
  br label %24

24:                                               ; preds = %23, %19
  store ptr null, ptr %20, align 8
  %25 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 3
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(40) %26, i8 0, i32 40, i1 false)
  %27 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.xc2028_data, ptr %0, i32 0, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %34, %30
  %35 = phi ptr [ %42, %34 ], [ %28, %30 ]
  %36 = phi i32 [ %39, %34 ], [ 0, %30 ]
  %37 = getelementptr %struct.firmware_description, ptr %35, i32 %36, i32 3
  %38 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %38) #13
  %39 = add nuw nsw i32 %36, 1
  %40 = load i32, ptr %31, align 8
  %41 = icmp slt i32 %39, %40
  %42 = load ptr, ptr %27, align 4
  br i1 %41, label %34, label %43

43:                                               ; preds = %34, %30
  %44 = phi ptr [ %28, %30 ], [ %42, %34 ]
  tail call void @kfree(ptr noundef %44) #13
  store ptr null, ptr %27, align 4
  store i32 0, ptr %31, align 8
  br label %45

45:                                               ; preds = %43, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @seek_firmware(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi i32 [ %17, %15 ], [ -1, %8 ]
  %20 = load i8, ptr %9, align 8
  %21 = zext i8 %20 to i32
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %11, i32 noundef %19, i32 noundef %21, ptr noundef nonnull @__func__.seek_firmware) #12
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %1, i16 noundef zeroext 0)
  %26 = load i64, ptr %2, align 8
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %1, i64 noundef %26) #12
  br label %28

28:                                               ; preds = %25, %18, %3
  %29 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1
  %34 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %32
  %43 = phi i32 [ %41, %39 ], [ -1, %32 ]
  %44 = load i8, ptr %33, align 8
  %45 = zext i8 %44 to i32
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %35, i32 noundef %43, i32 noundef %45) #12
  br label %181

47:                                               ; preds = %28
  %48 = and i32 %1, -536870913
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, ptr %2, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i64 255, ptr %2, align 8
  br label %54

54:                                               ; preds = %53, %50, %47
  %55 = and i32 %1, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = and i32 %1, 536870912
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = and i32 %1, 536870916
  br label %69

62:                                               ; preds = %57
  %63 = and i32 %1, 66552
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = and i32 %1, 13316
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 0, i32 13316
  br label %69

69:                                               ; preds = %65, %62, %60, %54
  %70 = phi i32 [ 536870916, %60 ], [ 268454919, %54 ], [ 66552, %62 ], [ %68, %65 ]
  %71 = phi i32 [ %61, %60 ], [ %1, %54 ], [ %1, %62 ], [ %1, %65 ]
  %72 = and i32 %71, %70
  %73 = and i32 %72, 536870912
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 -1, i32 %70
  %76 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 6
  %77 = load i32, ptr %76, align 8
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %155

79:                                               ; preds = %69
  %80 = load ptr, ptr %29, align 4
  br label %82

81:                                               ; preds = %93
  br i1 %78, label %96, label %155

82:                                               ; preds = %93, %79
  %83 = phi i32 [ 0, %79 ], [ %94, %93 ]
  %84 = getelementptr %struct.firmware_description, ptr %80, i32 %83
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, %75
  %87 = icmp eq i32 %72, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i64, ptr %2, align 8
  %90 = getelementptr %struct.firmware_description, ptr %80, i32 %83, i32 1
  %91 = load i64, ptr %90, align 8
  %92 = icmp eq i64 %89, %91
  br i1 %92, label %152, label %93

93:                                               ; preds = %88, %82
  %94 = add nuw nsw i32 %83, 1
  %95 = icmp eq i32 %94, %77
  br i1 %95, label %81, label %82

96:                                               ; preds = %120, %81
  %97 = phi i32 [ %121, %120 ], [ %77, %81 ]
  %98 = phi i32 [ %124, %120 ], [ 0, %81 ]
  %99 = phi i32 [ %123, %120 ], [ -1, %81 ]
  %100 = phi i32 [ %122, %120 ], [ 0, %81 ]
  %101 = load ptr, ptr %29, align 4
  %102 = getelementptr %struct.firmware_description, ptr %101, i32 %98
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, %75
  %105 = icmp eq i32 %72, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %96
  %107 = load i64, ptr %2, align 8
  %108 = getelementptr %struct.firmware_description, ptr %101, i32 %98, i32 1
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, %107
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %106
  %113 = icmp eq i64 %110, %107
  br i1 %113, label %152, label %114

114:                                              ; preds = %112
  %115 = tail call i32 @__sw_hweight64(i64 noundef %110) #13
  %116 = icmp sgt i32 %115, %100
  %117 = tail call i32 @llvm.smax.i32(i32 %115, i32 %100)
  %118 = select i1 %116, i32 %98, i32 %99
  %119 = load i32, ptr %76, align 8
  br label %120

120:                                              ; preds = %114, %106, %96
  %121 = phi i32 [ %97, %106 ], [ %97, %96 ], [ %119, %114 ]
  %122 = phi i32 [ %100, %106 ], [ %100, %96 ], [ %117, %114 ]
  %123 = phi i32 [ %99, %106 ], [ %99, %96 ], [ %118, %114 ]
  %124 = add nuw nsw i32 %98, 1
  %125 = icmp slt i32 %124, %121
  br i1 %125, label %96, label %126

126:                                              ; preds = %120
  %127 = icmp sgt i32 %122, 0
  br i1 %127, label %128, label %155

128:                                              ; preds = %126
  %129 = load i32, ptr @debug, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %146, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1
  %133 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.i2c_adapter, ptr %136, i32 0, i32 11
  %140 = load i32, ptr %139, align 4
  br label %141

141:                                              ; preds = %138, %131
  %142 = phi i32 [ %140, %138 ], [ -1, %131 ]
  %143 = load i8, ptr %132, align 8
  %144 = zext i8 %143 to i32
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %134, i32 noundef %142, i32 noundef %144, i32 noundef %122) #12
  br label %146

146:                                              ; preds = %141, %128
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %72, i16 noundef zeroext 0)
  %147 = load i64, ptr %2, align 8
  %148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %72, i64 noundef %147) #12
  %149 = load ptr, ptr %29, align 4
  %150 = getelementptr %struct.firmware_description, ptr %149, i32 %123, i32 1
  %151 = load i64, ptr %150, align 8
  br label %152

152:                                              ; preds = %146, %112, %88
  %153 = phi i64 [ %151, %146 ], [ %109, %112 ], [ %89, %88 ]
  %154 = phi i32 [ %123, %146 ], [ %98, %112 ], [ %83, %88 ]
  store i64 %153, ptr %2, align 8
  br label %155

155:                                              ; preds = %152, %126, %81, %69
  %156 = phi i32 [ %154, %152 ], [ -2, %126 ], [ -2, %81 ], [ -2, %69 ]
  %157 = load i32, ptr @debug, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %181, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1
  %161 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 3
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.i2c_adapter, ptr %164, i32 0, i32 11
  %168 = load i32, ptr %167, align 4
  br label %169

169:                                              ; preds = %166, %159
  %170 = phi i32 [ %168, %166 ], [ -1, %159 ]
  %171 = load i8, ptr %160, align 8
  %172 = zext i8 %171 to i32
  %173 = icmp slt i32 %156, 0
  %174 = select i1 %173, ptr @.str.82, ptr @.str.83
  %175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %162, i32 noundef %170, i32 noundef %172, ptr noundef nonnull %174) #12
  %176 = load i32, ptr @debug, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %169
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %72, i16 noundef zeroext 0)
  %179 = load i64, ptr %2, align 8
  %180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %72, i64 noundef %179) #12
  br label %181

181:                                              ; preds = %178, %169, %155, %42
  %182 = phi i32 [ -22, %42 ], [ %156, %178 ], [ %156, %169 ], [ %156, %155 ]
  ret i32 %182
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @load_firmware_cb(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [33 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi i32 [ %17, %15 ], [ -1, %8 ]
  %20 = load i8, ptr %9, align 8
  %21 = zext i8 %20 to i32
  %22 = icmp eq ptr %0, null
  %23 = select i1 %22, ptr @.str.100, ptr @.str.99
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %11, i32 noundef %19, i32 noundef %21, ptr noundef nonnull %23) #12
  br label %25

25:                                               ; preds = %18, %2
  %26 = icmp eq ptr %0, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1
  %29 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = phi i32 [ %36, %34 ], [ -1, %27 ]
  %39 = load i8, ptr %28, align 8
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %30, i32 noundef %38, i32 noundef %40, ptr noundef %42) #12
  %44 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 3
  store i32 4, ptr %44, align 4
  br label %321

45:                                               ; preds = %25
  %46 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(33) %3, i8 0, i32 33, i1 false) #13, !annotation !8
  %47 = load i32, ptr @debug, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1
  %51 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.i2c_adapter, ptr %54, i32 0, i32 11
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %56, %49
  %60 = phi i32 [ %58, %56 ], [ -1, %49 ]
  %61 = load i8, ptr %50, align 8
  %62 = zext i8 %61 to i32
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %52, i32 noundef %60, i32 noundef %62, ptr noundef nonnull @__func__.load_all_firmwares) #12
  br label %64

64:                                               ; preds = %59, %45
  %65 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load i32, ptr %0, align 4
  %68 = getelementptr i8, ptr %66, i32 %67
  %69 = icmp ult i32 %67, 36
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1
  %72 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.i2c_adapter, ptr %75, i32 0, i32 11
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %70
  %81 = phi i32 [ %79, %77 ], [ -1, %70 ]
  %82 = load i8, ptr %71, align 8
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 4
  %85 = load ptr, ptr %84, align 8
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %73, i32 noundef %81, i32 noundef %83, ptr noundef %85) #12
  br label %273

87:                                               ; preds = %64
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, ptr noundef align 1 dereferenceable(32) %66, i32 32, i1 false) #13
  %88 = getelementptr inbounds [33 x i8], ptr %3, i32 0, i32 32
  store i8 0, ptr %88, align 1
  %89 = getelementptr i8, ptr %66, i32 32
  %90 = load i16, ptr %89, align 1
  %91 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 7
  store i16 %90, ptr %91, align 4
  %92 = getelementptr i8, ptr %66, i32 34
  %93 = load i16, ptr %92, align 1
  %94 = zext i16 %93 to i32
  %95 = getelementptr i8, ptr %66, i32 36
  %96 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1
  %97 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %87
  %103 = getelementptr inbounds %struct.i2c_adapter, ptr %100, i32 0, i32 11
  %104 = load i32, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %87
  %106 = phi i32 [ %104, %102 ], [ -1, %87 ]
  %107 = load i8, ptr %96, align 8
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 4
  %110 = load ptr, ptr %109, align 8
  %111 = zext i16 %90 to i32
  %112 = lshr i32 %111, 8
  %113 = and i32 %111, 255
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %98, i32 noundef %106, i32 noundef %108, i32 noundef %94, ptr noundef %110, ptr noundef nonnull %3, i32 noundef %112, i32 noundef %113) #12
  %115 = shl nuw nsw i32 %94, 5
  %116 = call noalias align 64 ptr @__kmalloc(i32 noundef %115, i32 noundef 3520) #15
  %117 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 5
  store ptr %116, ptr %117, align 4
  %118 = icmp eq ptr %116, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %105
  %120 = load ptr, ptr %97, align 4
  %121 = load ptr, ptr %99, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.i2c_adapter, ptr %121, i32 0, i32 11
  %125 = load i32, ptr %124, align 4
  br label %126

126:                                              ; preds = %123, %119
  %127 = phi i32 [ %125, %123 ], [ -1, %119 ]
  %128 = load i8, ptr %96, align 8
  %129 = zext i8 %128 to i32
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %120, i32 noundef %127, i32 noundef %129) #12
  br label %288

131:                                              ; preds = %105
  %132 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 6
  store i32 %94, ptr %132, align 8
  %133 = icmp ult ptr %95, %68
  br i1 %133, label %134, label %245

134:                                              ; preds = %131
  %135 = ptrtoint ptr %68 to i32
  br label %136

136:                                              ; preds = %231, %134
  %137 = phi ptr [ %95, %134 ], [ %240, %231 ]
  %138 = phi i32 [ 0, %134 ], [ %241, %231 ]
  %139 = icmp eq i32 %138, %94
  br i1 %139, label %140, label %152

140:                                              ; preds = %136
  %141 = load ptr, ptr %97, align 4
  %142 = load ptr, ptr %99, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.i2c_adapter, ptr %142, i32 0, i32 11
  %146 = load i32, ptr %145, align 4
  br label %147

147:                                              ; preds = %144, %140
  %148 = phi i32 [ %146, %144 ], [ -1, %140 ]
  %149 = load i8, ptr %96, align 8
  %150 = zext i8 %149 to i32
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %141, i32 noundef %148, i32 noundef %150) #12
  br label %273

152:                                              ; preds = %136
  %153 = ptrtoint ptr %137 to i32
  %154 = sub i32 %135, %153
  %155 = icmp ult i32 %154, 16
  br i1 %155, label %261, label %156

156:                                              ; preds = %152
  %157 = load i32, ptr %137, align 1
  %158 = getelementptr i8, ptr %137, i32 4
  %159 = load i64, ptr %158, align 1
  %160 = getelementptr i8, ptr %137, i32 12
  %161 = and i32 %157, 1073741824
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %156
  %164 = load i16, ptr %160, align 1
  %165 = getelementptr i8, ptr %137, i32 14
  %166 = ptrtoint ptr %165 to i32
  %167 = sub i32 %135, %166
  %168 = icmp ult i32 %167, 4
  br i1 %168, label %261, label %169

169:                                              ; preds = %163, %156
  %170 = phi i16 [ %164, %163 ], [ 0, %156 ]
  %171 = phi ptr [ %165, %163 ], [ %160, %156 ]
  %172 = load i32, ptr %171, align 1
  %173 = getelementptr i8, ptr %171, i32 4
  %174 = icmp eq i32 %172, 0
  %175 = ptrtoint ptr %173 to i32
  %176 = sub i32 %135, %175
  %177 = icmp ugt i32 %172, %176
  %178 = select i1 %174, i1 true, i1 %177
  br i1 %178, label %179, label %192

179:                                              ; preds = %169
  %180 = load ptr, ptr %97, align 4
  %181 = load ptr, ptr %99, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.i2c_adapter, ptr %181, i32 0, i32 11
  %185 = load i32, ptr %184, align 4
  br label %186

186:                                              ; preds = %183, %179
  %187 = phi i32 [ %185, %183 ], [ -1, %179 ]
  %188 = load i8, ptr %96, align 8
  %189 = zext i8 %188 to i32
  %190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %180, i32 noundef %187, i32 noundef %189) #12
  call fastcc void @dump_firm_type_and_int_freq(i32 noundef %157, i16 noundef zeroext 0) #13
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %157, i64 noundef %159, i32 noundef %176, i32 noundef %172) #12
  br label %273

192:                                              ; preds = %169
  %193 = call ptr @kmemdup(ptr noundef %173, i32 noundef %172, i32 noundef 3264) #13
  %194 = load ptr, ptr %117, align 4
  %195 = getelementptr %struct.firmware_description, ptr %194, i32 %138, i32 3
  store ptr %193, ptr %195, align 4
  %196 = load ptr, ptr %117, align 4
  %197 = getelementptr %struct.firmware_description, ptr %196, i32 %138, i32 3
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %212

200:                                              ; preds = %192
  %201 = load ptr, ptr %97, align 4
  %202 = load ptr, ptr %99, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.i2c_adapter, ptr %202, i32 0, i32 11
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %204, %200
  %208 = phi i32 [ %206, %204 ], [ -1, %200 ]
  %209 = load i8, ptr %96, align 8
  %210 = zext i8 %209 to i32
  %211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %201, i32 noundef %208, i32 noundef %210) #12
  br label %288

212:                                              ; preds = %192
  %213 = load i32, ptr @debug, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %231, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr %97, align 4
  %217 = load ptr, ptr %99, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.i2c_adapter, ptr %217, i32 0, i32 11
  %221 = load i32, ptr %220, align 4
  br label %222

222:                                              ; preds = %219, %215
  %223 = phi i32 [ %221, %219 ], [ -1, %215 ]
  %224 = load i8, ptr %96, align 8
  %225 = zext i8 %224 to i32
  %226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %216, i32 noundef %223, i32 noundef %225) #12
  %227 = load i32, ptr @debug, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %222
  call fastcc void @dump_firm_type_and_int_freq(i32 noundef %157, i16 noundef zeroext %170) #13
  %230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, i32 noundef %157, i64 noundef %159, i32 noundef %172) #12
  br label %231

231:                                              ; preds = %229, %222, %212
  %232 = load ptr, ptr %117, align 4
  %233 = getelementptr %struct.firmware_description, ptr %232, i32 %138
  store i32 %157, ptr %233, align 8
  %234 = load ptr, ptr %117, align 4
  %235 = getelementptr %struct.firmware_description, ptr %234, i32 %138, i32 1
  store i64 %159, ptr %235, align 8
  %236 = load ptr, ptr %117, align 4
  %237 = getelementptr %struct.firmware_description, ptr %236, i32 %138, i32 4
  store i32 %172, ptr %237, align 8
  %238 = load ptr, ptr %117, align 4
  %239 = getelementptr %struct.firmware_description, ptr %238, i32 %138, i32 2
  store i16 %170, ptr %239, align 8
  %240 = getelementptr i8, ptr %173, i32 %172
  %241 = add nuw nsw i32 %138, 1
  %242 = icmp ult ptr %240, %68
  br i1 %242, label %136, label %243

243:                                              ; preds = %231
  %244 = load i32, ptr %132, align 8
  br label %245

245:                                              ; preds = %243, %131
  %246 = phi i32 [ %94, %131 ], [ %244, %243 ]
  %247 = phi i32 [ 0, %131 ], [ %241, %243 ]
  %248 = icmp eq i32 %247, %246
  br i1 %248, label %298, label %249

249:                                              ; preds = %245
  %250 = load ptr, ptr %97, align 4
  %251 = load ptr, ptr %99, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %256, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.i2c_adapter, ptr %251, i32 0, i32 11
  %255 = load i32, ptr %254, align 4
  br label %256

256:                                              ; preds = %253, %249
  %257 = phi i32 [ %255, %253 ], [ -1, %249 ]
  %258 = load i8, ptr %96, align 8
  %259 = zext i8 %258 to i32
  %260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %250, i32 noundef %257, i32 noundef %259) #12
  br label %273

261:                                              ; preds = %163, %152
  %262 = load ptr, ptr %97, align 4
  %263 = load ptr, ptr %99, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %268, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.i2c_adapter, ptr %263, i32 0, i32 11
  %267 = load i32, ptr %266, align 4
  br label %268

268:                                              ; preds = %265, %261
  %269 = phi i32 [ %267, %265 ], [ -1, %261 ]
  %270 = load i8, ptr %96, align 8
  %271 = zext i8 %270 to i32
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %262, i32 noundef %269, i32 noundef %271) #12
  br label %273

273:                                              ; preds = %268, %256, %186, %147, %80
  %274 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1
  %275 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1, i32 3
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1, i32 1
  %278 = load ptr, ptr %277, align 4
  %279 = icmp eq ptr %278, null
  br i1 %279, label %283, label %280

280:                                              ; preds = %273
  %281 = getelementptr inbounds %struct.i2c_adapter, ptr %278, i32 0, i32 11
  %282 = load i32, ptr %281, align 4
  br label %283

283:                                              ; preds = %280, %273
  %284 = phi i32 [ %282, %280 ], [ -1, %273 ]
  %285 = load i8, ptr %274, align 8
  %286 = zext i8 %285 to i32
  %287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %276, i32 noundef %284, i32 noundef %286) #12
  br label %288

288:                                              ; preds = %283, %207, %126
  %289 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1
  %290 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1, i32 3
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 1, i32 1
  %293 = load ptr, ptr %292, align 4
  %294 = icmp eq ptr %293, null
  br i1 %294, label %313, label %295

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.i2c_adapter, ptr %293, i32 0, i32 11
  %297 = load i32, ptr %296, align 4
  br label %313

298:                                              ; preds = %245
  %299 = load i32, ptr @debug, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %319, label %301

301:                                              ; preds = %298
  %302 = load ptr, ptr %97, align 4
  %303 = load ptr, ptr %99, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %308, label %305

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.i2c_adapter, ptr %303, i32 0, i32 11
  %307 = load i32, ptr %306, align 4
  br label %308

308:                                              ; preds = %305, %301
  %309 = phi i32 [ %307, %305 ], [ -1, %301 ]
  %310 = load i8, ptr %96, align 8
  %311 = zext i8 %310 to i32
  %312 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %302, i32 noundef %309, i32 noundef %311) #12
  br label %319

313:                                              ; preds = %295, %288
  %314 = phi i32 [ %297, %295 ], [ -1, %288 ]
  %315 = load i8, ptr %289, align 8
  %316 = zext i8 %315 to i32
  %317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %291, i32 noundef %314, i32 noundef %316) #12
  call fastcc void @free_firmware(ptr noundef %46) #13
  %318 = getelementptr inbounds %struct.xc2028_data, ptr %46, i32 0, i32 3
  store i32 4, ptr %318, align 4
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %3) #13
  call void @release_firmware(ptr noundef nonnull %0) #13
  br label %321

319:                                              ; preds = %308, %298
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %3) #13
  call void @release_firmware(ptr noundef nonnull %0) #13
  %320 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 3
  store i32 2, ptr %320, align 4
  br label %321

321:                                              ; preds = %319, %313, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

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
