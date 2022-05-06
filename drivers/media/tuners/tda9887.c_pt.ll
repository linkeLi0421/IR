; ModuleID = '/llk/IR/drivers/media/tuners/tda9887.c_pt.bc'
source_filename = "../drivers/media/tuners/tda9887.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda9887_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda9887_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda9887_attach:\09\09\09\09\09"
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
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tvnorm = type { i64, ptr, i8, i8, i8 }
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
%struct.tda9887_priv = type { %struct.tuner_i2c_props, %struct.list_head, [4 x i8], i32, i32, i32, i64, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype251 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug252 = internal constant [41 x i8] c"parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_port1 = internal constant [6 x i8] c"port1\00", align 1
@port1 = internal global i32 -1, align 4
@__param_port1 = internal constant %struct.kernel_param { ptr @__param_str_port1, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @port1 } }, section "__param", align 4
@__UNIQUE_ID_port1type253 = internal constant [19 x i8] c"parmtype=port1:int\00", section ".modinfo", align 1
@__param_str_port2 = internal constant [6 x i8] c"port2\00", align 1
@port2 = internal global i32 -1, align 4
@__param_port2 = internal constant %struct.kernel_param { ptr @__param_str_port2, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @port2 } }, section "__param", align 4
@__UNIQUE_ID_port2type254 = internal constant [19 x i8] c"parmtype=port2:int\00", section ".modinfo", align 1
@__param_str_qss = internal constant [4 x i8] c"qss\00", align 1
@qss = internal global i32 -1, align 4
@__param_qss = internal constant %struct.kernel_param { ptr @__param_str_qss, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @qss } }, section "__param", align 4
@__UNIQUE_ID_qsstype255 = internal constant [17 x i8] c"parmtype=qss:int\00", section ".modinfo", align 1
@__param_str_adjust = internal constant [7 x i8] c"adjust\00", align 1
@adjust = internal global i32 -1, align 4
@__param_adjust = internal constant %struct.kernel_param { ptr @__param_str_adjust, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @adjust } }, section "__param", align 4
@__UNIQUE_ID_adjusttype256 = internal constant [20 x i8] c"parmtype=adjust:int\00", section ".modinfo", align 1
@tda9887_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tda9887_list_mutex, i64 12), ptr getelementptr (i8, ptr @tda9887_list_mutex, i64 12) } }, align 4
@hybrid_tuner_instance_list = internal global %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, align 4
@.str = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"tda9887\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: tda988[5/6/7] found\0A\00", align 1
@tda9887_ops = internal unnamed_addr constant %struct.analog_demod_ops { %struct.analog_demod_info { ptr @.str.1 }, ptr @tda9887_set_params, ptr null, ptr @tda9887_get_afc, ptr @tda9887_tuner_status, ptr @tda9887_standby, ptr @tda9887_release, ptr null, ptr @tda9887_set_config }, align 4
@__kstrtab_tda9887_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda9887_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda9887_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda9887_attach to i32), ptr @__kstrtab_tda9887_attach, ptr @__kstrtabns_tda9887_attach }, section "___ksymtab_gpl+tda9887_attach", align 4
@__UNIQUE_ID_license257 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"\017%s %d-%04x: writing: b=0x%02x c=0x%02x e=0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"\016%s %d-%04x: i2c i/o error: rc == %d (should be 4)\0A\00", align 1
@radio_mono = internal unnamed_addr constant %struct.tvnorm { i64 0, ptr @.str.8, i8 12, i8 48, i8 61 }, align 8
@radio_stereo = internal unnamed_addr constant %struct.tvnorm { i64 0, ptr @.str.9, i8 12, i8 -112, i8 61 }, align 8
@tvnorms = internal constant [10 x %struct.tvnorm] [%struct.tvnorm { i64 527, ptr @.str.10, i8 20, i8 112, i8 73 }, %struct.tvnorm { i64 16, ptr @.str.11, i8 20, i8 112, i8 74 }, %struct.tvnorm { i64 224, ptr @.str.12, i8 20, i8 112, i8 75 }, %struct.tvnorm { i64 1280, ptr @.str.13, i8 20, i8 48, i8 68 }, %struct.tvnorm { i64 851968, ptr @.str.14, i8 20, i8 16, i8 9 }, %struct.tvnorm { i64 4194304, ptr @.str.15, i8 4, i8 16, i8 75 }, %struct.tvnorm { i64 8388608, ptr @.str.16, i8 -124, i8 16, i8 83 }, %struct.tvnorm { i64 3276800, ptr @.str.17, i8 20, i8 112, i8 75 }, %struct.tvnorm { i64 36864, ptr @.str.18, i8 20, i8 48, i8 68 }, %struct.tvnorm { i64 8192, ptr @.str.19, i8 20, i8 112, i8 64 }], align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"\017%s %d-%04x: Unsupported tvnorm entry - audio muted\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\017%s %d-%04x: configure for: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Radio Mono\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Radio Stereo\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"PAL-BGHN\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"PAL-I\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"PAL-DK\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"PAL-M/Nc\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"SECAM-BGH\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"SECAM-L\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"SECAM-L'\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"SECAM-DK\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"NTSC-M\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"NTSC-M-JP\00", align 1
@dump_write_message.sound = internal unnamed_addr constant [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.21], align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"AM/TV\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"FM/radio\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"FM/TV\00", align 1
@dump_write_message.adjust = internal unnamed_addr constant [32 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"-16\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"-15\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"-14\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"-13\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"-12\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"-11\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"-10\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"-9\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"-8\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"-7\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"-6\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"-5\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"-4\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-3\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-2\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"+1\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"+2\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"+3\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"+4\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"+5\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"+6\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"+7\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"+8\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"+9\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"+10\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"+11\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"+12\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"+13\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"+14\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"+15\00", align 1
@dump_write_message.deemph = internal unnamed_addr constant [4 x ptr] [ptr @.str.55, ptr @.str.55, ptr @.str.56, ptr @.str.57], align 4
@.str.55 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"75\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@dump_write_message.carrier = internal unnamed_addr constant [4 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], align 4
@.str.58 = private unnamed_addr constant [8 x i8] c"4.5 MHz\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"5.5 MHz\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"6.0 MHz\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"6.5 MHz / AM\00", align 1
@dump_write_message.vif = internal unnamed_addr constant [8 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], align 4
@.str.62 = private unnamed_addr constant [10 x i8] c"58.75 MHz\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"45.75 MHz\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"38.9 MHz\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"38.0 MHz\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"33.9 MHz\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"33.4 MHz\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"45.75 MHz + pin13\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"38.9 MHz + pin13\00", align 1
@dump_write_message.rif = internal unnamed_addr constant [4 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.71, ptr @.str.70], align 4
@.str.70 = private unnamed_addr constant [7 x i8] c"44 MHz\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"52 MHz\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"\016%s %d-%04x: write: byte B 0x%02x\0A\00", align 1
@.str.73 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B0   video mode      : %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"video trap\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"sound trap\00", align 1
@.str.76 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B1   auto mute fm    : %s\0A\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.78 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B2   carrier mode    : %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"QSS\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"Intercarrier\00", align 1
@.str.81 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B3-4 tv sound/radio  : %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B5   force mute audio: %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B6   output port 1   : %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"high (inactive)\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"low (active)\00", align 1
@.str.86 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B7   output port 2   : %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"\016%s %d-%04x: write: byte C 0x%02x\0A\00", align 1
@.str.88 = private unnamed_addr constant [46 x i8] c"\016%s %d-%04x:   C0-4 top adjustment  : %s dB\0A\00", align 1
@.str.89 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   C5-6 de-emphasis     : %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   C7   audio gain      : %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [36 x i8] c"\016%s %d-%04x: write: byte E 0x%02x\0A\00", align 1
@.str.92 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   E0-1 sound carrier   : %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [42 x i8] c"\016%s %d-%04x:   E6   l pll gating   : %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"36\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@.str.96 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   E2-4 video if        : %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   E7   vif agc output  : %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"fm-agc radio\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"sif-agc radio\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"fm radio carrier afc\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   E5   tuner gain      : %s\0A\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"pin3 port, pin22 vif agc out\00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"pin22 port, pin3 vif acg ext in\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"pin3+pin22 port\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"\016%s %d-%04x: --\0A\00", align 1
@.str.109 = private unnamed_addr constant [53 x i8] c"\016%s %d-%04x: i2c i/o error: rc == %d (should be 1)\0A\00", align 1
@dump_read_message.afc = internal unnamed_addr constant [16 x ptr] [ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125], align 4
@.str.110 = private unnamed_addr constant [11 x i8] c"- 12.5 kHz\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"- 37.5 kHz\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"- 62.5 kHz\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"- 87.5 kHz\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"-112.5 kHz\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"-137.5 kHz\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"-162.5 kHz\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"-187.5 kHz [min]\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"+187.5 kHz [max]\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"+162.5 kHz\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"+137.5 kHz\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"+112.5 kHz\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"+ 87.5 kHz\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"+ 62.5 kHz\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"+ 37.5 kHz\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"+ 12.5 kHz\00", align 1
@.str.126 = private unnamed_addr constant [27 x i8] c"\016%s %d-%04x: read: 0x%2x\0A\00", align 1
@.str.127 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x:   after power on : %s\0A\00", align 1
@.str.128 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x:   afc            : %s\0A\00", align 1
@.str.129 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x:   fmif level     : %s\0A\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.132 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x:   afc window     : %s\0A\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.135 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x:   vfi level      : %s\0A\00", align 1
@tda9887_get_afc.AFC_BITS_2_kHz = internal unnamed_addr constant [16 x i32] [i32 -12500, i32 -37500, i32 -62500, i32 -97500, i32 -112500, i32 -137500, i32 -162500, i32 -187500, i32 187500, i32 162500, i32 137500, i32 112500, i32 97500, i32 62500, i32 37500, i32 12500], align 4
@.str.136 = private unnamed_addr constant [54 x i8] c"\016%s %d-%04x: Data bytes: b=0x%02x c=0x%02x e=0x%02x\0A\00", align 1
@.str.137 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_adjusttype256, ptr @__UNIQUE_ID_debug252, ptr @__UNIQUE_ID_debugtype251, ptr @__UNIQUE_ID_license257, ptr @__UNIQUE_ID_port1type253, ptr @__UNIQUE_ID_port2type254, ptr @__UNIQUE_ID_qsstype255, ptr @__ksymtab_tda9887_attach, ptr @__param_adjust, ptr @__param_debug, ptr @__param_port1, ptr @__param_port2, ptr @__param_qss], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda9887_attach(ptr noundef writeonly %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @tda9887_list_mutex) #6
  %4 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %5 = icmp eq ptr %4, @hybrid_tuner_instance_list
  br i1 %5, label %36, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  %8 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  br label %9

9:                                                ; preds = %24, %6
  %10 = phi ptr [ %4, %6 ], [ %25, %24 ]
  %11 = getelementptr i8, ptr %10, i32 -16
  br i1 %7, label %24, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %10, i32 -12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %8, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8, ptr %11, align 8
  %23 = icmp eq i8 %22, %2
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %16, %12, %9
  %25 = load ptr, ptr %10, align 4
  %26 = icmp eq ptr %25, @hybrid_tuner_instance_list
  br i1 %26, label %36, label %9

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %10, i32 -4
  %29 = load ptr, ptr %28, align 4
  %30 = zext i8 %2 to i32
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %29, i32 noundef %18, i32 noundef %30) #7
  %32 = getelementptr i8, ptr %10, i32 -8
  %33 = load i32, ptr %32, align 8
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %27, %24, %3
  %37 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 56) #8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %77, label %40

40:                                               ; preds = %36
  store i8 %2, ptr %38, align 8
  %41 = getelementptr inbounds %struct.tuner_i2c_props, ptr %38, i32 0, i32 1
  store ptr %1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.tuner_i2c_props, ptr %38, i32 0, i32 3
  store ptr @.str.1, ptr %42, align 4
  %43 = icmp eq ptr %1, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i32 [ %46, %44 ], [ -1, %40 ]
  %49 = zext i8 %2 to i32
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %48, i32 noundef %49) #7
  %51 = getelementptr inbounds %struct.tda9887_priv, ptr %38, i32 0, i32 1
  %52 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr %51, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr @hybrid_tuner_instance_list, ptr %51, align 8
  %53 = getelementptr inbounds %struct.tda9887_priv, ptr %38, i32 0, i32 1, i32 1
  store ptr %52, ptr %53, align 4
  store volatile ptr %51, ptr %52, align 4
  %54 = getelementptr inbounds %struct.tuner_i2c_props, ptr %38, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 8
  br label %57

57:                                               ; preds = %47, %27
  %58 = phi i32 [ %56, %47 ], [ %34, %27 ]
  %59 = phi ptr [ %38, %47 ], [ %11, %27 ]
  switch i32 %58, label %77 [
    i32 0, label %60
    i32 1, label %61
  ]

60:                                               ; preds = %57
  tail call void @mutex_unlock(ptr noundef nonnull @tda9887_list_mutex) #6
  br label %82

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  store ptr %59, ptr %62, align 4
  %63 = getelementptr inbounds %struct.tda9887_priv, ptr %59, i32 0, i32 7
  store i8 1, ptr %63, align 8
  %64 = getelementptr inbounds %struct.tuner_i2c_props, ptr %59, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.tuner_i2c_props, ptr %59, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.i2c_adapter, ptr %67, i32 0, i32 11
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %61
  %73 = phi i32 [ %71, %69 ], [ -1, %61 ]
  %74 = load i8, ptr %59, align 8
  %75 = zext i8 %74 to i32
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %65, i32 noundef %73, i32 noundef %75) #7
  br label %80

77:                                               ; preds = %57, %36
  %78 = phi ptr [ %59, %57 ], [ null, %36 ]
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  store ptr %78, ptr %79, align 4
  br label %80

80:                                               ; preds = %77, %72
  tail call void @mutex_unlock(ptr noundef nonnull @tda9887_list_mutex) #6
  %81 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %81, ptr noundef nonnull align 4 dereferenceable(36) @tda9887_ops, i32 36, i1 false)
  br label %82

82:                                               ; preds = %80, %60
  %83 = phi ptr [ %0, %80 ], [ null, %60 ]
  ret ptr %83
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda9887_set_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda9887_priv, ptr %4, i32 0, i32 7
  store i8 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tda9887_priv, ptr %4, i32 0, i32 4
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.tda9887_priv, ptr %4, i32 0, i32 5
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.tda9887_priv, ptr %4, i32 0, i32 6
  store i64 %13, ptr %14, align 8
  tail call fastcc void @tda9887_configure(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda9887_get_afc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1
  %7 = getelementptr inbounds %struct.tda9887_priv, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %11 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 1, ptr %11, align 4, !annotation !8
  %12 = load i8, ptr %6, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %3, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %3, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %10
  %21 = load i8, ptr %4, align 1
  %22 = lshr i8 %21, 1
  %23 = and i8 %22, 15
  %24 = zext i8 %23 to i32
  %25 = getelementptr [16 x i32], ptr @tda9887_get_afc.AFC_BITS_2_kHz, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %1, align 4
  br label %27

27:                                               ; preds = %20, %10, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda9887_tuner_status(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i32 [ %11, %9 ], [ -1, %1 ]
  %14 = load i8, ptr %3, align 8
  %15 = zext i8 %14 to i32
  %16 = getelementptr %struct.tda9887_priv, ptr %3, i32 0, i32 2, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr %struct.tda9887_priv, ptr %3, i32 0, i32 2, i32 2
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = getelementptr %struct.tda9887_priv, ptr %3, i32 0, i32 2, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %5, i32 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %24) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda9887_standby(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tda9887_priv, ptr %3, i32 0, i32 7
  store i8 1, ptr %4, align 8
  tail call fastcc void @tda9887_configure(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda9887_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @tda9887_list_mutex) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tuner_i2c_props, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ %18, %16 ], [ -1, %10 ]
  %21 = load i8, ptr %3, align 8
  %22 = zext i8 %21 to i32
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %12, i32 noundef %20, i32 noundef %22) #7
  %24 = getelementptr inbounds %struct.tda9887_priv, ptr %3, i32 0, i32 1
  %25 = getelementptr inbounds %struct.tda9887_priv, ptr %3, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  tail call void @kfree(ptr noundef nonnull %3) #6
  br label %29

29:                                               ; preds = %19, %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @tda9887_list_mutex) #6
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda9887_set_config(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.tda9887_priv, ptr %4, i32 0, i32 3
  store i32 %5, ptr %6, align 4
  tail call fastcc void @tda9887_configure(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda9887_configure(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [1 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tda9887_priv, ptr %6, i32 0, i32 2
  store i32 0, ptr %7, align 8
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.tda9887_priv, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tda9887_priv, ptr %8, i32 0, i32 6
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 527
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %22, label %49

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.tda9887_priv, ptr %8, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @radio_mono, ptr @radio_stereo
  br label %70

22:                                               ; preds = %12
  %23 = and i64 %14, 16
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  %26 = and i64 %14, 224
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = and i64 %14, 1280
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = and i64 %14, 851968
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = and i64 %14, 4194304
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = and i64 %14, 8388608
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = and i64 %14, 3276800
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = and i64 %14, 36864
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = and i64 %14, 8192
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46, %43, %40, %37, %34, %31, %28, %25, %22, %12
  %50 = phi i32 [ 0, %12 ], [ 1, %22 ], [ 2, %25 ], [ 3, %28 ], [ 4, %31 ], [ 5, %34 ], [ 6, %37 ], [ 7, %40 ], [ 8, %43 ], [ 9, %46 ]
  %51 = getelementptr %struct.tvnorm, ptr @tvnorms, i32 %50
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %49, %46
  %54 = load i32, ptr @debug, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %100, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.i2c_adapter, ptr %60, i32 0, i32 11
  %64 = load i32, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %56
  %66 = phi i32 [ %64, %62 ], [ -1, %56 ]
  %67 = load i8, ptr %8, align 8
  %68 = zext i8 %67 to i32
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %58, i32 noundef %66, i32 noundef %68) #7
  br label %100

70:                                               ; preds = %49, %17
  %71 = phi ptr [ %21, %17 ], [ %51, %49 ]
  %72 = load i32, ptr @debug, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.i2c_adapter, ptr %78, i32 0, i32 11
  %82 = load i32, ptr %81, align 4
  br label %83

83:                                               ; preds = %80, %74
  %84 = phi i32 [ %82, %80 ], [ -1, %74 ]
  %85 = load i8, ptr %8, align 8
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds %struct.tvnorm, ptr %71, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %76, i32 noundef %84, i32 noundef %86, ptr noundef %88) #7
  br label %90

90:                                               ; preds = %83, %70
  %91 = getelementptr inbounds %struct.tvnorm, ptr %71, i32 0, i32 2
  %92 = load i8, ptr %91, align 4
  %93 = getelementptr %struct.tda9887_priv, ptr %8, i32 0, i32 2, i32 1
  store i8 %92, ptr %93, align 1
  %94 = getelementptr inbounds %struct.tvnorm, ptr %71, i32 0, i32 3
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr %struct.tda9887_priv, ptr %8, i32 0, i32 2, i32 2
  store i8 %95, ptr %96, align 1
  %97 = getelementptr inbounds %struct.tvnorm, ptr %71, i32 0, i32 4
  %98 = load i8, ptr %97, align 2
  %99 = getelementptr %struct.tda9887_priv, ptr %8, i32 0, i32 2, i32 3
  store i8 %98, ptr %99, align 1
  br label %100

100:                                              ; preds = %90, %65, %53
  %101 = getelementptr %struct.tda9887_priv, ptr %6, i32 0, i32 2, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = or i8 %102, -64
  store i8 %103, ptr %101, align 1
  %104 = load ptr, ptr %5, align 4
  %105 = getelementptr inbounds %struct.tda9887_priv, ptr %104, i32 0, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %100
  %110 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 1
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, -65
  store i8 %112, ptr %110, align 1
  br label %113

113:                                              ; preds = %109, %100
  %114 = and i32 %106, 2
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 1
  %118 = load i8, ptr %117, align 1
  %119 = or i8 %118, 64
  store i8 %119, ptr %117, align 1
  br label %120

120:                                              ; preds = %116, %113
  %121 = and i32 %106, 64
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 1
  %125 = load i8, ptr %124, align 1
  %126 = and i8 %125, 127
  store i8 %126, ptr %124, align 1
  br label %127

127:                                              ; preds = %123, %120
  %128 = and i32 %106, 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 1
  %132 = load i8, ptr %131, align 1
  %133 = or i8 %132, -128
  store i8 %133, ptr %131, align 1
  br label %134

134:                                              ; preds = %130, %127
  %135 = and i32 %106, 8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 1
  %139 = load i8, ptr %138, align 1
  %140 = or i8 %139, 4
  store i8 %140, ptr %138, align 1
  br label %141

141:                                              ; preds = %137, %134
  %142 = and i32 %106, 16
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 1
  %146 = load i8, ptr %145, align 1
  %147 = and i8 %146, -5
  store i8 %147, ptr %145, align 1
  br label %148

148:                                              ; preds = %144, %141
  %149 = and i32 %106, 262144
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 1
  %153 = load i8, ptr %152, align 1
  %154 = or i8 %153, 2
  store i8 %154, ptr %152, align 1
  br label %155

155:                                              ; preds = %151, %148
  %156 = and i32 %106, 196608
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %155
  %159 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 2
  %160 = load i8, ptr %159, align 1
  %161 = and i8 %160, -97
  store i8 %161, ptr %159, align 1
  switch i32 %156, label %168 [
    i32 196608, label %164
    i32 131072, label %162
  ]

162:                                              ; preds = %158
  %163 = or i8 %160, 96
  br label %166

164:                                              ; preds = %158
  %165 = or i8 %161, 32
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i8 [ %163, %162 ], [ %165, %164 ]
  store i8 %167, ptr %159, align 1
  br label %168

168:                                              ; preds = %166, %158, %155
  %169 = and i32 %106, 8192
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %168
  %172 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 2
  %173 = load i8, ptr %172, align 1
  %174 = and i8 %173, -32
  %175 = lshr i32 %106, 8
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 31
  %178 = or i8 %174, %177
  store i8 %178, ptr %172, align 1
  br label %179

179:                                              ; preds = %171, %168
  %180 = and i32 %106, 128
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %191, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.tda9887_priv, ptr %104, i32 0, i32 6
  %184 = load i64, ptr %183, align 8
  %185 = and i64 %184, 45056
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %182
  %188 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 1
  %189 = load i8, ptr %188, align 1
  %190 = and i8 %189, -5
  store i8 %190, ptr %188, align 1
  br label %191

191:                                              ; preds = %187, %182, %179
  %192 = and i32 %106, 524288
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 3
  %196 = load i8, ptr %195, align 1
  %197 = and i8 %196, -65
  store i8 %197, ptr %195, align 1
  br label %198

198:                                              ; preds = %194, %191
  %199 = getelementptr inbounds %struct.tda9887_priv, ptr %104, i32 0, i32 4
  %200 = load i32, ptr %199, align 8
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %217

202:                                              ; preds = %198
  %203 = and i32 %106, 2097152
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  %206 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 3
  %207 = load i8, ptr %206, align 1
  %208 = and i8 %207, -29
  %209 = or i8 %208, 4
  store i8 %209, ptr %206, align 1
  br label %210

210:                                              ; preds = %205, %202
  %211 = and i32 %106, 1048576
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %210
  %214 = getelementptr %struct.tda9887_priv, ptr %104, i32 0, i32 2, i32 3
  %215 = load i8, ptr %214, align 1
  %216 = and i8 %215, -33
  store i8 %216, ptr %214, align 1
  br label %217

217:                                              ; preds = %213, %210, %198
  %218 = load ptr, ptr %5, align 4
  %219 = load i32, ptr @port1, align 4
  switch i32 %219, label %220 [
    i32 -1, label %228
    i32 0, label %224
  ]

220:                                              ; preds = %217
  %221 = getelementptr %struct.tda9887_priv, ptr %218, i32 0, i32 2, i32 1
  %222 = load i8, ptr %221, align 1
  %223 = or i8 %222, 64
  store i8 %223, ptr %221, align 1
  br label %228

224:                                              ; preds = %217
  %225 = getelementptr %struct.tda9887_priv, ptr %218, i32 0, i32 2, i32 1
  %226 = load i8, ptr %225, align 1
  %227 = and i8 %226, -65
  store i8 %227, ptr %225, align 1
  br label %228

228:                                              ; preds = %224, %220, %217
  %229 = load i32, ptr @port2, align 4
  switch i32 %229, label %230 [
    i32 -1, label %238
    i32 0, label %234
  ]

230:                                              ; preds = %228
  %231 = getelementptr %struct.tda9887_priv, ptr %218, i32 0, i32 2, i32 1
  %232 = load i8, ptr %231, align 1
  %233 = or i8 %232, -128
  store i8 %233, ptr %231, align 1
  br label %238

234:                                              ; preds = %228
  %235 = getelementptr %struct.tda9887_priv, ptr %218, i32 0, i32 2, i32 1
  %236 = load i8, ptr %235, align 1
  %237 = and i8 %236, 127
  store i8 %237, ptr %235, align 1
  br label %238

238:                                              ; preds = %234, %230, %228
  %239 = load i32, ptr @qss, align 4
  switch i32 %239, label %240 [
    i32 -1, label %248
    i32 0, label %244
  ]

240:                                              ; preds = %238
  %241 = getelementptr %struct.tda9887_priv, ptr %218, i32 0, i32 2, i32 1
  %242 = load i8, ptr %241, align 1
  %243 = or i8 %242, 4
  store i8 %243, ptr %241, align 1
  br label %248

244:                                              ; preds = %238
  %245 = getelementptr %struct.tda9887_priv, ptr %218, i32 0, i32 2, i32 1
  %246 = load i8, ptr %245, align 1
  %247 = and i8 %246, -5
  store i8 %247, ptr %245, align 1
  br label %248

248:                                              ; preds = %244, %240, %238
  %249 = load i32, ptr @adjust, align 4
  %250 = icmp ult i32 %249, 32
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = getelementptr %struct.tda9887_priv, ptr %218, i32 0, i32 2, i32 2
  %253 = load i8, ptr %252, align 1
  %254 = and i8 %253, -32
  store i8 %254, ptr %252, align 1
  %255 = load i32, ptr @adjust, align 4
  %256 = trunc i32 %255 to i8
  %257 = or i8 %254, %256
  store i8 %257, ptr %252, align 1
  br label %258

258:                                              ; preds = %251, %248
  %259 = getelementptr inbounds %struct.tda9887_priv, ptr %6, i32 0, i32 7
  %260 = load i8, ptr %259, align 8, !range !9
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %258
  %263 = load i8, ptr %101, align 1
  %264 = or i8 %263, 32
  store i8 %264, ptr %101, align 1
  br label %265

265:                                              ; preds = %262, %258
  %266 = load i32, ptr @debug, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %624, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 3
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 1
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %268
  %275 = getelementptr inbounds %struct.i2c_adapter, ptr %272, i32 0, i32 11
  %276 = load i32, ptr %275, align 4
  br label %277

277:                                              ; preds = %274, %268
  %278 = phi i32 [ %276, %274 ], [ -1, %268 ]
  %279 = load i8, ptr %6, align 8
  %280 = zext i8 %279 to i32
  %281 = load i8, ptr %101, align 1
  %282 = zext i8 %281 to i32
  %283 = getelementptr %struct.tda9887_priv, ptr %6, i32 0, i32 2, i32 2
  %284 = load i8, ptr %283, align 2
  %285 = zext i8 %284 to i32
  %286 = getelementptr %struct.tda9887_priv, ptr %6, i32 0, i32 2, i32 3
  %287 = load i8, ptr %286, align 1
  %288 = zext i8 %287 to i32
  %289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %270, i32 noundef %278, i32 noundef %280, i32 noundef %282, i32 noundef %285, i32 noundef %288) #7
  %290 = load i32, ptr @debug, align 4
  %291 = icmp sgt i32 %290, 1
  br i1 %291, label %292, label %624

292:                                              ; preds = %277
  %293 = load ptr, ptr %5, align 4
  %294 = getelementptr inbounds %struct.tuner_i2c_props, ptr %293, i32 0, i32 3
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr inbounds %struct.tuner_i2c_props, ptr %293, i32 0, i32 1
  %297 = load ptr, ptr %296, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %302, label %299

299:                                              ; preds = %292
  %300 = getelementptr inbounds %struct.i2c_adapter, ptr %297, i32 0, i32 11
  %301 = load i32, ptr %300, align 4
  br label %302

302:                                              ; preds = %299, %292
  %303 = phi i32 [ %301, %299 ], [ -1, %292 ]
  %304 = load i8, ptr %293, align 8
  %305 = zext i8 %304 to i32
  %306 = load i8, ptr %101, align 1
  %307 = zext i8 %306 to i32
  %308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %295, i32 noundef %303, i32 noundef %305, i32 noundef %307) #7
  %309 = load ptr, ptr %294, align 4
  %310 = load ptr, ptr %296, align 4
  %311 = icmp eq ptr %310, null
  br i1 %311, label %315, label %312

312:                                              ; preds = %302
  %313 = getelementptr inbounds %struct.i2c_adapter, ptr %310, i32 0, i32 11
  %314 = load i32, ptr %313, align 4
  br label %315

315:                                              ; preds = %312, %302
  %316 = phi i32 [ %314, %312 ], [ -1, %302 ]
  %317 = load i8, ptr %293, align 8
  %318 = zext i8 %317 to i32
  %319 = load i8, ptr %101, align 1
  %320 = and i8 %319, 1
  %321 = icmp eq i8 %320, 0
  %322 = select i1 %321, ptr @.str.75, ptr @.str.74
  %323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %309, i32 noundef %316, i32 noundef %318, ptr noundef nonnull %322) #7
  %324 = load ptr, ptr %294, align 4
  %325 = load ptr, ptr %296, align 4
  %326 = icmp eq ptr %325, null
  br i1 %326, label %330, label %327

327:                                              ; preds = %315
  %328 = getelementptr inbounds %struct.i2c_adapter, ptr %325, i32 0, i32 11
  %329 = load i32, ptr %328, align 4
  br label %330

330:                                              ; preds = %327, %315
  %331 = phi i32 [ %329, %327 ], [ -1, %315 ]
  %332 = load i8, ptr %293, align 8
  %333 = zext i8 %332 to i32
  %334 = load i8, ptr %101, align 1
  %335 = and i8 %334, 2
  %336 = icmp eq i8 %335, 0
  %337 = select i1 %336, ptr @.str.55, ptr @.str.77
  %338 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %324, i32 noundef %331, i32 noundef %333, ptr noundef nonnull %337) #7
  %339 = load ptr, ptr %294, align 4
  %340 = load ptr, ptr %296, align 4
  %341 = icmp eq ptr %340, null
  br i1 %341, label %345, label %342

342:                                              ; preds = %330
  %343 = getelementptr inbounds %struct.i2c_adapter, ptr %340, i32 0, i32 11
  %344 = load i32, ptr %343, align 4
  br label %345

345:                                              ; preds = %342, %330
  %346 = phi i32 [ %344, %342 ], [ -1, %330 ]
  %347 = load i8, ptr %293, align 8
  %348 = zext i8 %347 to i32
  %349 = load i8, ptr %101, align 1
  %350 = and i8 %349, 4
  %351 = icmp eq i8 %350, 0
  %352 = select i1 %351, ptr @.str.80, ptr @.str.79
  %353 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %339, i32 noundef %346, i32 noundef %348, ptr noundef nonnull %352) #7
  %354 = load ptr, ptr %294, align 4
  %355 = load ptr, ptr %296, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %360, label %357

357:                                              ; preds = %345
  %358 = getelementptr inbounds %struct.i2c_adapter, ptr %355, i32 0, i32 11
  %359 = load i32, ptr %358, align 4
  br label %360

360:                                              ; preds = %357, %345
  %361 = phi i32 [ %359, %357 ], [ -1, %345 ]
  %362 = load i8, ptr %293, align 8
  %363 = zext i8 %362 to i32
  %364 = load i8, ptr %101, align 1
  %365 = lshr i8 %364, 3
  %366 = and i8 %365, 3
  %367 = zext i8 %366 to i32
  %368 = getelementptr [4 x ptr], ptr @dump_write_message.sound, i32 0, i32 %367
  %369 = load ptr, ptr %368, align 4
  %370 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %354, i32 noundef %361, i32 noundef %363, ptr noundef %369) #7
  %371 = load ptr, ptr %294, align 4
  %372 = load ptr, ptr %296, align 4
  %373 = icmp eq ptr %372, null
  br i1 %373, label %377, label %374

374:                                              ; preds = %360
  %375 = getelementptr inbounds %struct.i2c_adapter, ptr %372, i32 0, i32 11
  %376 = load i32, ptr %375, align 4
  br label %377

377:                                              ; preds = %374, %360
  %378 = phi i32 [ %376, %374 ], [ -1, %360 ]
  %379 = load i8, ptr %293, align 8
  %380 = zext i8 %379 to i32
  %381 = load i8, ptr %101, align 1
  %382 = and i8 %381, 32
  %383 = icmp eq i8 %382, 0
  %384 = select i1 %383, ptr @.str.55, ptr @.str.77
  %385 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %371, i32 noundef %378, i32 noundef %380, ptr noundef nonnull %384) #7
  %386 = load ptr, ptr %294, align 4
  %387 = load ptr, ptr %296, align 4
  %388 = icmp eq ptr %387, null
  br i1 %388, label %392, label %389

389:                                              ; preds = %377
  %390 = getelementptr inbounds %struct.i2c_adapter, ptr %387, i32 0, i32 11
  %391 = load i32, ptr %390, align 4
  br label %392

392:                                              ; preds = %389, %377
  %393 = phi i32 [ %391, %389 ], [ -1, %377 ]
  %394 = load i8, ptr %293, align 8
  %395 = zext i8 %394 to i32
  %396 = load i8, ptr %101, align 1
  %397 = and i8 %396, 64
  %398 = icmp eq i8 %397, 0
  %399 = select i1 %398, ptr @.str.85, ptr @.str.84
  %400 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %386, i32 noundef %393, i32 noundef %395, ptr noundef nonnull %399) #7
  %401 = load ptr, ptr %294, align 4
  %402 = load ptr, ptr %296, align 4
  %403 = icmp eq ptr %402, null
  br i1 %403, label %407, label %404

404:                                              ; preds = %392
  %405 = getelementptr inbounds %struct.i2c_adapter, ptr %402, i32 0, i32 11
  %406 = load i32, ptr %405, align 4
  br label %407

407:                                              ; preds = %404, %392
  %408 = phi i32 [ %406, %404 ], [ -1, %392 ]
  %409 = load i8, ptr %293, align 8
  %410 = zext i8 %409 to i32
  %411 = load i8, ptr %101, align 1
  %412 = icmp sgt i8 %411, -1
  %413 = select i1 %412, ptr @.str.85, ptr @.str.84
  %414 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %401, i32 noundef %408, i32 noundef %410, ptr noundef nonnull %413) #7
  %415 = load ptr, ptr %294, align 4
  %416 = load ptr, ptr %296, align 4
  %417 = icmp eq ptr %416, null
  br i1 %417, label %421, label %418

418:                                              ; preds = %407
  %419 = getelementptr inbounds %struct.i2c_adapter, ptr %416, i32 0, i32 11
  %420 = load i32, ptr %419, align 4
  br label %421

421:                                              ; preds = %418, %407
  %422 = phi i32 [ %420, %418 ], [ -1, %407 ]
  %423 = load i8, ptr %293, align 8
  %424 = zext i8 %423 to i32
  %425 = load i8, ptr %283, align 1
  %426 = zext i8 %425 to i32
  %427 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %415, i32 noundef %422, i32 noundef %424, i32 noundef %426) #7
  %428 = load ptr, ptr %294, align 4
  %429 = load ptr, ptr %296, align 4
  %430 = icmp eq ptr %429, null
  br i1 %430, label %434, label %431

431:                                              ; preds = %421
  %432 = getelementptr inbounds %struct.i2c_adapter, ptr %429, i32 0, i32 11
  %433 = load i32, ptr %432, align 4
  br label %434

434:                                              ; preds = %431, %421
  %435 = phi i32 [ %433, %431 ], [ -1, %421 ]
  %436 = load i8, ptr %293, align 8
  %437 = zext i8 %436 to i32
  %438 = load i8, ptr %283, align 1
  %439 = and i8 %438, 31
  %440 = zext i8 %439 to i32
  %441 = getelementptr [32 x ptr], ptr @dump_write_message.adjust, i32 0, i32 %440
  %442 = load ptr, ptr %441, align 4
  %443 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %428, i32 noundef %435, i32 noundef %437, ptr noundef %442) #7
  %444 = load ptr, ptr %294, align 4
  %445 = load ptr, ptr %296, align 4
  %446 = icmp eq ptr %445, null
  br i1 %446, label %450, label %447

447:                                              ; preds = %434
  %448 = getelementptr inbounds %struct.i2c_adapter, ptr %445, i32 0, i32 11
  %449 = load i32, ptr %448, align 4
  br label %450

450:                                              ; preds = %447, %434
  %451 = phi i32 [ %449, %447 ], [ -1, %434 ]
  %452 = load i8, ptr %293, align 8
  %453 = zext i8 %452 to i32
  %454 = load i8, ptr %283, align 1
  %455 = lshr i8 %454, 5
  %456 = and i8 %455, 3
  %457 = zext i8 %456 to i32
  %458 = getelementptr [4 x ptr], ptr @dump_write_message.deemph, i32 0, i32 %457
  %459 = load ptr, ptr %458, align 4
  %460 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %444, i32 noundef %451, i32 noundef %453, ptr noundef %459) #7
  %461 = load ptr, ptr %294, align 4
  %462 = load ptr, ptr %296, align 4
  %463 = icmp eq ptr %462, null
  br i1 %463, label %467, label %464

464:                                              ; preds = %450
  %465 = getelementptr inbounds %struct.i2c_adapter, ptr %462, i32 0, i32 11
  %466 = load i32, ptr %465, align 4
  br label %467

467:                                              ; preds = %464, %450
  %468 = phi i32 [ %466, %464 ], [ -1, %450 ]
  %469 = load i8, ptr %293, align 8
  %470 = zext i8 %469 to i32
  %471 = load i8, ptr %283, align 1
  %472 = icmp sgt i8 %471, -1
  %473 = select i1 %472, ptr @.str.39, ptr @.str.33
  %474 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %461, i32 noundef %468, i32 noundef %470, ptr noundef nonnull %473) #7
  %475 = load ptr, ptr %294, align 4
  %476 = load ptr, ptr %296, align 4
  %477 = icmp eq ptr %476, null
  br i1 %477, label %481, label %478

478:                                              ; preds = %467
  %479 = getelementptr inbounds %struct.i2c_adapter, ptr %476, i32 0, i32 11
  %480 = load i32, ptr %479, align 4
  br label %481

481:                                              ; preds = %478, %467
  %482 = phi i32 [ %480, %478 ], [ -1, %467 ]
  %483 = load i8, ptr %293, align 8
  %484 = zext i8 %483 to i32
  %485 = load i8, ptr %286, align 1
  %486 = zext i8 %485 to i32
  %487 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %475, i32 noundef %482, i32 noundef %484, i32 noundef %486) #7
  %488 = load ptr, ptr %294, align 4
  %489 = load ptr, ptr %296, align 4
  %490 = icmp eq ptr %489, null
  br i1 %490, label %494, label %491

491:                                              ; preds = %481
  %492 = getelementptr inbounds %struct.i2c_adapter, ptr %489, i32 0, i32 11
  %493 = load i32, ptr %492, align 4
  br label %494

494:                                              ; preds = %491, %481
  %495 = phi i32 [ %493, %491 ], [ -1, %481 ]
  %496 = load i8, ptr %293, align 8
  %497 = zext i8 %496 to i32
  %498 = load i8, ptr %286, align 1
  %499 = and i8 %498, 3
  %500 = zext i8 %499 to i32
  %501 = getelementptr [4 x ptr], ptr @dump_write_message.carrier, i32 0, i32 %500
  %502 = load ptr, ptr %501, align 4
  %503 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %488, i32 noundef %495, i32 noundef %497, ptr noundef %502) #7
  %504 = load ptr, ptr %294, align 4
  %505 = load ptr, ptr %296, align 4
  %506 = icmp eq ptr %505, null
  br i1 %506, label %510, label %507

507:                                              ; preds = %494
  %508 = getelementptr inbounds %struct.i2c_adapter, ptr %505, i32 0, i32 11
  %509 = load i32, ptr %508, align 4
  br label %510

510:                                              ; preds = %507, %494
  %511 = phi i32 [ %509, %507 ], [ -1, %494 ]
  %512 = load i8, ptr %293, align 8
  %513 = zext i8 %512 to i32
  %514 = load i8, ptr %286, align 1
  %515 = and i8 %514, 64
  %516 = icmp eq i8 %515, 0
  %517 = select i1 %516, ptr @.str.95, ptr @.str.94
  %518 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %504, i32 noundef %511, i32 noundef %513, ptr noundef nonnull %517) #7
  %519 = load i8, ptr %101, align 1
  %520 = and i8 %519, 8
  %521 = icmp eq i8 %520, 0
  %522 = load ptr, ptr %294, align 4
  %523 = load ptr, ptr %296, align 4
  %524 = icmp eq ptr %523, null
  br i1 %521, label %559, label %525

525:                                              ; preds = %510
  br i1 %524, label %529, label %526

526:                                              ; preds = %525
  %527 = getelementptr inbounds %struct.i2c_adapter, ptr %523, i32 0, i32 11
  %528 = load i32, ptr %527, align 4
  br label %529

529:                                              ; preds = %526, %525
  %530 = phi i32 [ %528, %526 ], [ -1, %525 ]
  %531 = load i8, ptr %293, align 8
  %532 = zext i8 %531 to i32
  %533 = load i8, ptr %286, align 1
  %534 = lshr i8 %533, 2
  %535 = and i8 %534, 3
  %536 = zext i8 %535 to i32
  %537 = getelementptr [4 x ptr], ptr @dump_write_message.rif, i32 0, i32 %536
  %538 = load ptr, ptr %537, align 4
  %539 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %522, i32 noundef %530, i32 noundef %532, ptr noundef %538) #7
  %540 = load ptr, ptr %294, align 4
  %541 = load ptr, ptr %296, align 4
  %542 = icmp eq ptr %541, null
  br i1 %542, label %546, label %543

543:                                              ; preds = %529
  %544 = getelementptr inbounds %struct.i2c_adapter, ptr %541, i32 0, i32 11
  %545 = load i32, ptr %544, align 4
  br label %546

546:                                              ; preds = %543, %529
  %547 = phi i32 [ %545, %543 ], [ -1, %529 ]
  %548 = load i8, ptr %293, align 8
  %549 = zext i8 %548 to i32
  %550 = load i8, ptr %286, align 1
  %551 = zext i8 %550 to i32
  %552 = and i32 %551, 128
  %553 = icmp eq i32 %552, 0
  %554 = and i32 %551, 16
  %555 = icmp eq i32 %554, 0
  %556 = select i1 %555, ptr @.str.99, ptr @.str.98
  %557 = select i1 %553, ptr @.str.100, ptr %556
  %558 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %540, i32 noundef %547, i32 noundef %549, ptr noundef nonnull %557) #7
  br label %612

559:                                              ; preds = %510
  br i1 %524, label %563, label %560

560:                                              ; preds = %559
  %561 = getelementptr inbounds %struct.i2c_adapter, ptr %523, i32 0, i32 11
  %562 = load i32, ptr %561, align 4
  br label %563

563:                                              ; preds = %560, %559
  %564 = phi i32 [ %562, %560 ], [ -1, %559 ]
  %565 = load i8, ptr %293, align 8
  %566 = zext i8 %565 to i32
  %567 = load i8, ptr %286, align 1
  %568 = lshr i8 %567, 2
  %569 = and i8 %568, 7
  %570 = zext i8 %569 to i32
  %571 = getelementptr [8 x ptr], ptr @dump_write_message.vif, i32 0, i32 %570
  %572 = load ptr, ptr %571, align 4
  %573 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %522, i32 noundef %564, i32 noundef %566, ptr noundef %572) #7
  %574 = load ptr, ptr %294, align 4
  %575 = load ptr, ptr %296, align 4
  %576 = icmp eq ptr %575, null
  br i1 %576, label %580, label %577

577:                                              ; preds = %563
  %578 = getelementptr inbounds %struct.i2c_adapter, ptr %575, i32 0, i32 11
  %579 = load i32, ptr %578, align 4
  br label %580

580:                                              ; preds = %577, %563
  %581 = phi i32 [ %579, %577 ], [ -1, %563 ]
  %582 = load i8, ptr %293, align 8
  %583 = zext i8 %582 to i32
  %584 = load i8, ptr %286, align 1
  %585 = zext i8 %584 to i32
  %586 = and i32 %585, 128
  %587 = icmp eq i32 %586, 0
  %588 = and i32 %585, 32
  %589 = icmp eq i32 %588, 0
  %590 = select i1 %587, ptr @.str.104, ptr @.str.102
  %591 = select i1 %589, ptr @.str.103, ptr %590
  %592 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %574, i32 noundef %581, i32 noundef %583, ptr noundef nonnull %591) #7
  %593 = load ptr, ptr %294, align 4
  %594 = load ptr, ptr %296, align 4
  %595 = icmp eq ptr %594, null
  br i1 %595, label %599, label %596

596:                                              ; preds = %580
  %597 = getelementptr inbounds %struct.i2c_adapter, ptr %594, i32 0, i32 11
  %598 = load i32, ptr %597, align 4
  br label %599

599:                                              ; preds = %596, %580
  %600 = phi i32 [ %598, %596 ], [ -1, %580 ]
  %601 = load i8, ptr %293, align 8
  %602 = zext i8 %601 to i32
  %603 = load i8, ptr %286, align 1
  %604 = zext i8 %603 to i32
  %605 = and i32 %604, 128
  %606 = icmp eq i32 %605, 0
  %607 = and i32 %604, 32
  %608 = icmp eq i32 %607, 0
  %609 = select i1 %608, ptr @.str.106, ptr @.str.105
  %610 = select i1 %606, ptr @.str.107, ptr %609
  %611 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %593, i32 noundef %600, i32 noundef %602, ptr noundef nonnull %610) #7
  br label %612

612:                                              ; preds = %599, %546
  %613 = load ptr, ptr %294, align 4
  %614 = load ptr, ptr %296, align 4
  %615 = icmp eq ptr %614, null
  br i1 %615, label %619, label %616

616:                                              ; preds = %612
  %617 = getelementptr inbounds %struct.i2c_adapter, ptr %614, i32 0, i32 11
  %618 = load i32, ptr %617, align 4
  br label %619

619:                                              ; preds = %616, %612
  %620 = phi i32 [ %618, %616 ], [ -1, %612 ]
  %621 = load i8, ptr %293, align 8
  %622 = zext i8 %621 to i32
  %623 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %613, i32 noundef %620, i32 noundef %622) #7
  br label %624

624:                                              ; preds = %619, %277, %265
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  %625 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %625, align 4, !annotation !8
  %626 = load i8, ptr %6, align 4
  %627 = zext i8 %626 to i16
  store i16 %627, ptr %4, align 4
  %628 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %628, align 2
  %629 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %7, ptr %629, align 4
  %630 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 1
  %631 = load ptr, ptr %630, align 4
  %632 = call i32 @i2c_transfer(ptr noundef %631, ptr noundef nonnull %4, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  switch i32 %632, label %633 [
    i32 4, label %646
    i32 1, label %646
  ]

633:                                              ; preds = %624
  %634 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 3
  %635 = load ptr, ptr %634, align 4
  %636 = load ptr, ptr %630, align 4
  %637 = icmp eq ptr %636, null
  br i1 %637, label %641, label %638

638:                                              ; preds = %633
  %639 = getelementptr inbounds %struct.i2c_adapter, ptr %636, i32 0, i32 11
  %640 = load i32, ptr %639, align 4
  br label %641

641:                                              ; preds = %638, %633
  %642 = phi i32 [ %640, %638 ], [ -1, %633 ]
  %643 = load i8, ptr %6, align 8
  %644 = zext i8 %643 to i32
  %645 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %635, i32 noundef %642, i32 noundef %644, i32 noundef %632) #7
  br label %646

646:                                              ; preds = %641, %624, %624
  %647 = load i32, ptr @debug, align 4
  %648 = icmp sgt i32 %647, 2
  br i1 %648, label %649, label %767

649:                                              ; preds = %646
  %650 = call i32 @msleep_interruptible(i32 noundef 1000) #6
  %651 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #6
  %652 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 1, ptr %652, align 4, !annotation !8
  %653 = load i8, ptr %651, align 4
  %654 = zext i8 %653 to i16
  store i16 %654, ptr %2, align 4
  %655 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 1, ptr %655, align 2
  %656 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %3, ptr %656, align 4
  %657 = getelementptr inbounds %struct.tuner_i2c_props, ptr %651, i32 0, i32 1
  %658 = load ptr, ptr %657, align 4
  %659 = call i32 @i2c_transfer(ptr noundef %658, ptr noundef nonnull %2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #6
  %660 = icmp eq i32 %659, 1
  br i1 %660, label %674, label %661

661:                                              ; preds = %649
  %662 = getelementptr inbounds %struct.tuner_i2c_props, ptr %651, i32 0, i32 3
  %663 = load ptr, ptr %662, align 4
  %664 = load ptr, ptr %657, align 4
  %665 = icmp eq ptr %664, null
  br i1 %665, label %669, label %666

666:                                              ; preds = %661
  %667 = getelementptr inbounds %struct.i2c_adapter, ptr %664, i32 0, i32 11
  %668 = load i32, ptr %667, align 4
  br label %669

669:                                              ; preds = %666, %661
  %670 = phi i32 [ %668, %666 ], [ -1, %661 ]
  %671 = load i8, ptr %651, align 8
  %672 = zext i8 %671 to i32
  %673 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %663, i32 noundef %670, i32 noundef %672, i32 noundef %659) #7
  br label %674

674:                                              ; preds = %669, %649
  %675 = load ptr, ptr %5, align 4
  %676 = getelementptr inbounds %struct.tuner_i2c_props, ptr %675, i32 0, i32 3
  %677 = load ptr, ptr %676, align 4
  %678 = getelementptr inbounds %struct.tuner_i2c_props, ptr %675, i32 0, i32 1
  %679 = load ptr, ptr %678, align 4
  %680 = icmp eq ptr %679, null
  br i1 %680, label %684, label %681

681:                                              ; preds = %674
  %682 = getelementptr inbounds %struct.i2c_adapter, ptr %679, i32 0, i32 11
  %683 = load i32, ptr %682, align 4
  br label %684

684:                                              ; preds = %681, %674
  %685 = phi i32 [ %683, %681 ], [ -1, %674 ]
  %686 = load i8, ptr %675, align 8
  %687 = zext i8 %686 to i32
  %688 = load i8, ptr %3, align 1
  %689 = zext i8 %688 to i32
  %690 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %677, i32 noundef %685, i32 noundef %687, i32 noundef %689) #7
  %691 = load ptr, ptr %676, align 4
  %692 = load ptr, ptr %678, align 4
  %693 = icmp eq ptr %692, null
  br i1 %693, label %697, label %694

694:                                              ; preds = %684
  %695 = getelementptr inbounds %struct.i2c_adapter, ptr %692, i32 0, i32 11
  %696 = load i32, ptr %695, align 4
  br label %697

697:                                              ; preds = %694, %684
  %698 = phi i32 [ %696, %694 ], [ -1, %684 ]
  %699 = load i8, ptr %675, align 8
  %700 = zext i8 %699 to i32
  %701 = load i8, ptr %3, align 1
  %702 = and i8 %701, 1
  %703 = icmp eq i8 %702, 0
  %704 = select i1 %703, ptr @.str.55, ptr @.str.77
  %705 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %691, i32 noundef %698, i32 noundef %700, ptr noundef nonnull %704) #7
  %706 = load ptr, ptr %676, align 4
  %707 = load ptr, ptr %678, align 4
  %708 = icmp eq ptr %707, null
  br i1 %708, label %712, label %709

709:                                              ; preds = %697
  %710 = getelementptr inbounds %struct.i2c_adapter, ptr %707, i32 0, i32 11
  %711 = load i32, ptr %710, align 4
  br label %712

712:                                              ; preds = %709, %697
  %713 = phi i32 [ %711, %709 ], [ -1, %697 ]
  %714 = load i8, ptr %675, align 8
  %715 = zext i8 %714 to i32
  %716 = load i8, ptr %3, align 1
  %717 = lshr i8 %716, 1
  %718 = and i8 %717, 15
  %719 = zext i8 %718 to i32
  %720 = getelementptr [16 x ptr], ptr @dump_read_message.afc, i32 0, i32 %719
  %721 = load ptr, ptr %720, align 4
  %722 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %706, i32 noundef %713, i32 noundef %715, ptr noundef %721) #7
  %723 = load ptr, ptr %676, align 4
  %724 = load ptr, ptr %678, align 4
  %725 = icmp eq ptr %724, null
  br i1 %725, label %729, label %726

726:                                              ; preds = %712
  %727 = getelementptr inbounds %struct.i2c_adapter, ptr %724, i32 0, i32 11
  %728 = load i32, ptr %727, align 4
  br label %729

729:                                              ; preds = %726, %712
  %730 = phi i32 [ %728, %726 ], [ -1, %712 ]
  %731 = load i8, ptr %675, align 8
  %732 = zext i8 %731 to i32
  %733 = load i8, ptr %3, align 1
  %734 = and i8 %733, 32
  %735 = icmp eq i8 %734, 0
  %736 = select i1 %735, ptr @.str.131, ptr @.str.130
  %737 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %723, i32 noundef %730, i32 noundef %732, ptr noundef nonnull %736) #7
  %738 = load ptr, ptr %676, align 4
  %739 = load ptr, ptr %678, align 4
  %740 = icmp eq ptr %739, null
  br i1 %740, label %744, label %741

741:                                              ; preds = %729
  %742 = getelementptr inbounds %struct.i2c_adapter, ptr %739, i32 0, i32 11
  %743 = load i32, ptr %742, align 4
  br label %744

744:                                              ; preds = %741, %729
  %745 = phi i32 [ %743, %741 ], [ -1, %729 ]
  %746 = load i8, ptr %675, align 8
  %747 = zext i8 %746 to i32
  %748 = load i8, ptr %3, align 1
  %749 = and i8 %748, 64
  %750 = icmp eq i8 %749, 0
  %751 = select i1 %750, ptr @.str.134, ptr @.str.133
  %752 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %738, i32 noundef %745, i32 noundef %747, ptr noundef nonnull %751) #7
  %753 = load ptr, ptr %676, align 4
  %754 = load ptr, ptr %678, align 4
  %755 = icmp eq ptr %754, null
  br i1 %755, label %759, label %756

756:                                              ; preds = %744
  %757 = getelementptr inbounds %struct.i2c_adapter, ptr %754, i32 0, i32 11
  %758 = load i32, ptr %757, align 4
  br label %759

759:                                              ; preds = %756, %744
  %760 = phi i32 [ %758, %756 ], [ -1, %744 ]
  %761 = load i8, ptr %675, align 8
  %762 = zext i8 %761 to i32
  %763 = load i8, ptr %3, align 1
  %764 = icmp sgt i8 %763, -1
  %765 = select i1 %764, ptr @.str.131, ptr @.str.130
  %766 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %753, i32 noundef %760, i32 noundef %762, ptr noundef nonnull %765) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  br label %767

767:                                              ; preds = %759, %646
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
