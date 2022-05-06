; ModuleID = '/llk/IR/drivers/media/dvb-frontends/au8522_dig.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/au8522_dig.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_au8522_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22au8522_attach\22\09\09\09\09\09"
module asm "__kstrtabns_au8522_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { ptr }
%struct.anon.86 = type { i16, i16 }
%struct.anon.87 = type { i16, i16 }
%struct.anon.88 = type { i16, i16 }
%struct.anon.89 = type { i16, i16 }
%struct.mse2snr_tab = type { i16, i16 }
%struct.au8522_state = type { ptr, ptr, i8, %struct.tuner_i2c_props, %struct.list_head, %struct.au8522_config, %struct.dvb_frontend, i32, i32, i32, i32, %struct.v4l2_subdev, i64, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, [3 x %struct.media_pad] }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.au8522_config = type { i8, i8, ptr, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.76 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.au8522_led_config = type { i16, i16, i16, i16, i16, i16, i16, ptr, i32 }

@debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s state allocation failed\0A\00", align 1
@__func__.au8522_attach = private unnamed_addr constant [14 x i8] c"au8522_attach\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s using new instance\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s using existing instance\0A\00", align 1
@au8522_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Auvitek AU8522 QAM/8VSB Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @au8522_release, ptr null, ptr @au8522_init, ptr @au8522_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @au8522_set_frontend, ptr @au8522_get_tune_settings, ptr @au8522_get_frontend, ptr @au8522_read_status, ptr @au8522_read_ber, ptr @au8522_read_signal_strength, ptr @au8522_read_snr, ptr @au8522_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @au8522_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"\013%s: Failed to initialize correctly\0A\00", align 1
@__kstrtab_au8522_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_au8522_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_au8522_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @au8522_attach to i32), ptr @__kstrtab_au8522_attach, ptr @__kstrtabns_au8522_attach }, section "___ksymtab+au8522_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype251 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug252 = internal constant [41 x i8] c"parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_zv_mode = internal constant [8 x i8] c"zv_mode\00", align 1
@zv_mode = internal global i32 1, align 4
@__param_zv_mode = internal constant %struct.kernel_param { ptr @__param_str_zv_mode, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @zv_mode } }, section "__param", align 4
@__UNIQUE_ID_zv_modetype253 = internal constant [21 x i8] c"parmtype=zv_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_zv_mode254 = internal constant [186 x i8] c"parm=zv_mode:Turn on/off ZeeVee modulator compatibility mode (default:on).\0A\09\09on - modified AU8522 QAM256 initialization.\0A\09\09Provides faster lock when using ZeeVee modulator based sources\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [57 x i8] c"description=Auvitek AU8522 QAM-B/ATSC Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [19 x i8] c"author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s(frequency=%d)\0A\00", align 1
@__func__.au8522_set_frontend = private unnamed_addr constant [20 x i8] c"au8522_set_frontend\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"%s() increase tuner settling time for zv_mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s(0x%08x)\0A\00", align 1
@__func__.au8522_enable_modulation = private unnamed_addr constant [25 x i8] c"au8522_enable_modulation\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s() VSB_8\0A\00", align 1
@VSB_mod_tab = internal unnamed_addr constant [26 x %struct.anon.86] [%struct.anon.86 { i16 144, i16 132 }, %struct.anon.86 { i16 8197, i16 0 }, %struct.anon.86 { i16 145, i16 128 }, %struct.anon.86 { i16 163, i16 12 }, %struct.anon.86 { i16 164, i16 232 }, %struct.anon.86 { i16 129, i16 196 }, %struct.anon.86 { i16 165, i16 64 }, %struct.anon.86 { i16 167, i16 64 }, %struct.anon.86 { i16 166, i16 103 }, %struct.anon.86 { i16 610, i16 32 }, %struct.anon.86 { i16 540, i16 48 }, %struct.anon.86 { i16 216, i16 26 }, %struct.anon.86 { i16 551, i16 160 }, %struct.anon.86 { i16 289, i16 255 }, %struct.anon.86 { i16 168, i16 240 }, %struct.anon.86 { i16 169, i16 5 }, %struct.anon.86 { i16 170, i16 119 }, %struct.anon.86 { i16 171, i16 240 }, %struct.anon.86 { i16 172, i16 5 }, %struct.anon.86 { i16 173, i16 119 }, %struct.anon.86 { i16 174, i16 65 }, %struct.anon.86 { i16 175, i16 102 }, %struct.anon.86 { i16 539, i16 204 }, %struct.anon.86 { i16 541, i16 128 }, %struct.anon.86 { i16 164, i16 232 }, %struct.anon.86 { i16 561, i16 19 }], align 2
@.str.8 = private unnamed_addr constant [13 x i8] c"%s() QAM 64\0A\00", align 1
@QAM64_mod_tab = internal unnamed_addr constant [72 x %struct.anon.87] [%struct.anon.87 { i16 163, i16 9 }, %struct.anon.87 { i16 164, i16 0 }, %struct.anon.87 { i16 129, i16 196 }, %struct.anon.87 { i16 165, i16 64 }, %struct.anon.87 { i16 170, i16 119 }, %struct.anon.87 { i16 173, i16 119 }, %struct.anon.87 { i16 166, i16 103 }, %struct.anon.87 { i16 610, i16 32 }, %struct.anon.87 { i16 540, i16 48 }, %struct.anon.87 { i16 184, i16 62 }, %struct.anon.87 { i16 185, i16 240 }, %struct.anon.87 { i16 186, i16 1 }, %struct.anon.87 { i16 187, i16 24 }, %struct.anon.87 { i16 188, i16 80 }, %struct.anon.87 { i16 189, i16 0 }, %struct.anon.87 { i16 190, i16 234 }, %struct.anon.87 { i16 191, i16 239 }, %struct.anon.87 { i16 192, i16 252 }, %struct.anon.87 { i16 193, i16 189 }, %struct.anon.87 { i16 194, i16 31 }, %struct.anon.87 { i16 195, i16 252 }, %struct.anon.87 { i16 196, i16 221 }, %struct.anon.87 { i16 197, i16 175 }, %struct.anon.87 { i16 198, i16 0 }, %struct.anon.87 { i16 199, i16 56 }, %struct.anon.87 { i16 200, i16 48 }, %struct.anon.87 { i16 201, i16 5 }, %struct.anon.87 { i16 202, i16 74 }, %struct.anon.87 { i16 203, i16 208 }, %struct.anon.87 { i16 204, i16 1 }, %struct.anon.87 { i16 205, i16 217 }, %struct.anon.87 { i16 206, i16 111 }, %struct.anon.87 { i16 207, i16 249 }, %struct.anon.87 { i16 208, i16 112 }, %struct.anon.87 { i16 209, i16 223 }, %struct.anon.87 { i16 210, i16 247 }, %struct.anon.87 { i16 211, i16 194 }, %struct.anon.87 { i16 212, i16 223 }, %struct.anon.87 { i16 213, i16 2 }, %struct.anon.87 { i16 214, i16 154 }, %struct.anon.87 { i16 215, i16 208 }, %struct.anon.87 { i16 592, i16 13 }, %struct.anon.87 { i16 593, i16 205 }, %struct.anon.87 { i16 594, i16 224 }, %struct.anon.87 { i16 595, i16 5 }, %struct.anon.87 { i16 596, i16 167 }, %struct.anon.87 { i16 597, i16 255 }, %struct.anon.87 { i16 598, i16 237 }, %struct.anon.87 { i16 599, i16 91 }, %struct.anon.87 { i16 600, i16 174 }, %struct.anon.87 { i16 601, i16 230 }, %struct.anon.87 { i16 602, i16 61 }, %struct.anon.87 { i16 603, i16 15 }, %struct.anon.87 { i16 604, i16 13 }, %struct.anon.87 { i16 605, i16 234 }, %struct.anon.87 { i16 606, i16 242 }, %struct.anon.87 { i16 607, i16 81 }, %struct.anon.87 { i16 608, i16 245 }, %struct.anon.87 { i16 609, i16 6 }, %struct.anon.87 { i16 538, i16 0 }, %struct.anon.87 { i16 1350, i16 64 }, %struct.anon.87 { i16 528, i16 199 }, %struct.anon.87 { i16 529, i16 170 }, %struct.anon.87 { i16 530, i16 171 }, %struct.anon.87 { i16 531, i16 2 }, %struct.anon.87 { i16 1282, i16 0 }, %struct.anon.87 { i16 289, i16 4 }, %struct.anon.87 { i16 290, i16 4 }, %struct.anon.87 { i16 1326, i16 16 }, %struct.anon.87 { i16 164, i16 202 }, %struct.anon.87 { i16 167, i16 64 }, %struct.anon.87 { i16 1318, i16 1 }], align 2
@.str.9 = private unnamed_addr constant [24 x i8] c"%s() QAM 256 (zv_mode)\0A\00", align 1
@QAM256_mod_tab_zv_mode = internal unnamed_addr constant [75 x %struct.anon.88] [%struct.anon.88 { i16 -32605, i16 9 }, %struct.anon.88 { i16 -32604, i16 0 }, %struct.anon.88 { i16 -32639, i16 196 }, %struct.anon.88 { i16 -32603, i16 64 }, %struct.anon.88 { i16 -32587, i16 251 }, %struct.anon.88 { i16 -32586, i16 142 }, %struct.anon.88 { i16 -32585, i16 57 }, %struct.anon.88 { i16 -32598, i16 119 }, %struct.anon.88 { i16 -32595, i16 119 }, %struct.anon.88 { i16 -32602, i16 103 }, %struct.anon.88 { i16 -32158, i16 32 }, %struct.anon.88 { i16 -32228, i16 48 }, %struct.anon.88 { i16 -32584, i16 62 }, %struct.anon.88 { i16 -32583, i16 240 }, %struct.anon.88 { i16 -32582, i16 1 }, %struct.anon.88 { i16 -32581, i16 24 }, %struct.anon.88 { i16 -32580, i16 80 }, %struct.anon.88 { i16 -32579, i16 0 }, %struct.anon.88 { i16 -32578, i16 234 }, %struct.anon.88 { i16 -32577, i16 239 }, %struct.anon.88 { i16 -32576, i16 252 }, %struct.anon.88 { i16 -32575, i16 189 }, %struct.anon.88 { i16 -32574, i16 31 }, %struct.anon.88 { i16 -32573, i16 252 }, %struct.anon.88 { i16 -32572, i16 221 }, %struct.anon.88 { i16 -32571, i16 175 }, %struct.anon.88 { i16 -32570, i16 0 }, %struct.anon.88 { i16 -32569, i16 56 }, %struct.anon.88 { i16 -32568, i16 48 }, %struct.anon.88 { i16 -32567, i16 5 }, %struct.anon.88 { i16 -32566, i16 74 }, %struct.anon.88 { i16 -32565, i16 208 }, %struct.anon.88 { i16 -32564, i16 1 }, %struct.anon.88 { i16 -32563, i16 217 }, %struct.anon.88 { i16 -32562, i16 111 }, %struct.anon.88 { i16 -32561, i16 249 }, %struct.anon.88 { i16 -32560, i16 112 }, %struct.anon.88 { i16 -32559, i16 223 }, %struct.anon.88 { i16 -32558, i16 247 }, %struct.anon.88 { i16 -32557, i16 194 }, %struct.anon.88 { i16 -32556, i16 223 }, %struct.anon.88 { i16 -32555, i16 2 }, %struct.anon.88 { i16 -32554, i16 154 }, %struct.anon.88 { i16 -32553, i16 208 }, %struct.anon.88 { i16 -32176, i16 13 }, %struct.anon.88 { i16 -32175, i16 205 }, %struct.anon.88 { i16 -32174, i16 224 }, %struct.anon.88 { i16 -32173, i16 5 }, %struct.anon.88 { i16 -32172, i16 167 }, %struct.anon.88 { i16 -32171, i16 255 }, %struct.anon.88 { i16 -32170, i16 237 }, %struct.anon.88 { i16 -32169, i16 91 }, %struct.anon.88 { i16 -32168, i16 174 }, %struct.anon.88 { i16 -32167, i16 230 }, %struct.anon.88 { i16 -32166, i16 61 }, %struct.anon.88 { i16 -32165, i16 15 }, %struct.anon.88 { i16 -32164, i16 13 }, %struct.anon.88 { i16 -32163, i16 234 }, %struct.anon.88 { i16 -32162, i16 242 }, %struct.anon.88 { i16 -32161, i16 81 }, %struct.anon.88 { i16 -32160, i16 245 }, %struct.anon.88 { i16 -32159, i16 6 }, %struct.anon.88 { i16 -32230, i16 1 }, %struct.anon.88 { i16 -31418, i16 64 }, %struct.anon.88 { i16 -32240, i16 38 }, %struct.anon.88 { i16 -32239, i16 246 }, %struct.anon.88 { i16 -32238, i16 132 }, %struct.anon.88 { i16 -32237, i16 2 }, %struct.anon.88 { i16 -31486, i16 1 }, %struct.anon.88 { i16 -32479, i16 4 }, %struct.anon.88 { i16 -32478, i16 4 }, %struct.anon.88 { i16 -31442, i16 16 }, %struct.anon.88 { i16 -32604, i16 202 }, %struct.anon.88 { i16 -32601, i16 64 }, %struct.anon.88 { i16 -31450, i16 1 }], align 2
@.str.10 = private unnamed_addr constant [14 x i8] c"%s() QAM 256\0A\00", align 1
@QAM256_mod_tab = internal unnamed_addr constant [72 x %struct.anon.89] [%struct.anon.89 { i16 163, i16 9 }, %struct.anon.89 { i16 164, i16 0 }, %struct.anon.89 { i16 129, i16 196 }, %struct.anon.89 { i16 165, i16 64 }, %struct.anon.89 { i16 170, i16 119 }, %struct.anon.89 { i16 173, i16 119 }, %struct.anon.89 { i16 166, i16 103 }, %struct.anon.89 { i16 610, i16 32 }, %struct.anon.89 { i16 540, i16 48 }, %struct.anon.89 { i16 184, i16 62 }, %struct.anon.89 { i16 185, i16 240 }, %struct.anon.89 { i16 186, i16 1 }, %struct.anon.89 { i16 187, i16 24 }, %struct.anon.89 { i16 188, i16 80 }, %struct.anon.89 { i16 189, i16 0 }, %struct.anon.89 { i16 190, i16 234 }, %struct.anon.89 { i16 191, i16 239 }, %struct.anon.89 { i16 192, i16 252 }, %struct.anon.89 { i16 193, i16 189 }, %struct.anon.89 { i16 194, i16 31 }, %struct.anon.89 { i16 195, i16 252 }, %struct.anon.89 { i16 196, i16 221 }, %struct.anon.89 { i16 197, i16 175 }, %struct.anon.89 { i16 198, i16 0 }, %struct.anon.89 { i16 199, i16 56 }, %struct.anon.89 { i16 200, i16 48 }, %struct.anon.89 { i16 201, i16 5 }, %struct.anon.89 { i16 202, i16 74 }, %struct.anon.89 { i16 203, i16 208 }, %struct.anon.89 { i16 204, i16 1 }, %struct.anon.89 { i16 205, i16 217 }, %struct.anon.89 { i16 206, i16 111 }, %struct.anon.89 { i16 207, i16 249 }, %struct.anon.89 { i16 208, i16 112 }, %struct.anon.89 { i16 209, i16 223 }, %struct.anon.89 { i16 210, i16 247 }, %struct.anon.89 { i16 211, i16 194 }, %struct.anon.89 { i16 212, i16 223 }, %struct.anon.89 { i16 213, i16 2 }, %struct.anon.89 { i16 214, i16 154 }, %struct.anon.89 { i16 215, i16 208 }, %struct.anon.89 { i16 592, i16 13 }, %struct.anon.89 { i16 593, i16 205 }, %struct.anon.89 { i16 594, i16 224 }, %struct.anon.89 { i16 595, i16 5 }, %struct.anon.89 { i16 596, i16 167 }, %struct.anon.89 { i16 597, i16 255 }, %struct.anon.89 { i16 598, i16 237 }, %struct.anon.89 { i16 599, i16 91 }, %struct.anon.89 { i16 600, i16 174 }, %struct.anon.89 { i16 601, i16 230 }, %struct.anon.89 { i16 602, i16 61 }, %struct.anon.89 { i16 603, i16 15 }, %struct.anon.89 { i16 604, i16 13 }, %struct.anon.89 { i16 605, i16 234 }, %struct.anon.89 { i16 606, i16 242 }, %struct.anon.89 { i16 607, i16 81 }, %struct.anon.89 { i16 608, i16 245 }, %struct.anon.89 { i16 609, i16 6 }, %struct.anon.89 { i16 538, i16 0 }, %struct.anon.89 { i16 1350, i16 64 }, %struct.anon.89 { i16 528, i16 38 }, %struct.anon.89 { i16 529, i16 246 }, %struct.anon.89 { i16 530, i16 132 }, %struct.anon.89 { i16 531, i16 2 }, %struct.anon.89 { i16 1282, i16 1 }, %struct.anon.89 { i16 289, i16 4 }, %struct.anon.89 { i16 290, i16 4 }, %struct.anon.89 { i16 1326, i16 16 }, %struct.anon.89 { i16 164, i16 202 }, %struct.anon.89 { i16 167, i16 64 }, %struct.anon.89 { i16 1318, i16 1 }], align 2
@.str.11 = private unnamed_addr constant [25 x i8] c"%s() Invalid modulation\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"3.25\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"4.00\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"6.00\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"%s() IF Frequency not supported\0A\00", align 1
@__func__.au8522_set_if = private unnamed_addr constant [14 x i8] c"au8522_set_if\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"%s() %s MHz\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"%s() Checking VSB_8\0A\00", align 1
@__func__.au8522_read_status = private unnamed_addr constant [19 x i8] c"au8522_read_status\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"%s() Checking QAM\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"%s() DEMODLOCKING\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"%s() TUNERLOCKING\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"%s() status 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%s()\0A\00", align 1
@__func__.au8522_read_snr = private unnamed_addr constant [16 x i8] c"au8522_read_snr\00", align 1
@qam256_mse2snr_tab = internal unnamed_addr constant [64 x %struct.mse2snr_tab] [%struct.mse2snr_tab { i16 15, i16 0 }, %struct.mse2snr_tab { i16 16, i16 400 }, %struct.mse2snr_tab { i16 17, i16 398 }, %struct.mse2snr_tab { i16 18, i16 396 }, %struct.mse2snr_tab { i16 19, i16 394 }, %struct.mse2snr_tab { i16 20, i16 392 }, %struct.mse2snr_tab { i16 21, i16 390 }, %struct.mse2snr_tab { i16 22, i16 388 }, %struct.mse2snr_tab { i16 23, i16 386 }, %struct.mse2snr_tab { i16 24, i16 384 }, %struct.mse2snr_tab { i16 25, i16 382 }, %struct.mse2snr_tab { i16 26, i16 380 }, %struct.mse2snr_tab { i16 27, i16 379 }, %struct.mse2snr_tab { i16 28, i16 378 }, %struct.mse2snr_tab { i16 29, i16 377 }, %struct.mse2snr_tab { i16 30, i16 376 }, %struct.mse2snr_tab { i16 31, i16 375 }, %struct.mse2snr_tab { i16 32, i16 374 }, %struct.mse2snr_tab { i16 33, i16 373 }, %struct.mse2snr_tab { i16 34, i16 372 }, %struct.mse2snr_tab { i16 35, i16 371 }, %struct.mse2snr_tab { i16 36, i16 370 }, %struct.mse2snr_tab { i16 37, i16 362 }, %struct.mse2snr_tab { i16 38, i16 354 }, %struct.mse2snr_tab { i16 39, i16 346 }, %struct.mse2snr_tab { i16 40, i16 338 }, %struct.mse2snr_tab { i16 41, i16 330 }, %struct.mse2snr_tab { i16 42, i16 328 }, %struct.mse2snr_tab { i16 43, i16 326 }, %struct.mse2snr_tab { i16 44, i16 324 }, %struct.mse2snr_tab { i16 45, i16 322 }, %struct.mse2snr_tab { i16 46, i16 320 }, %struct.mse2snr_tab { i16 47, i16 319 }, %struct.mse2snr_tab { i16 48, i16 318 }, %struct.mse2snr_tab { i16 49, i16 317 }, %struct.mse2snr_tab { i16 50, i16 316 }, %struct.mse2snr_tab { i16 51, i16 315 }, %struct.mse2snr_tab { i16 52, i16 314 }, %struct.mse2snr_tab { i16 53, i16 313 }, %struct.mse2snr_tab { i16 54, i16 312 }, %struct.mse2snr_tab { i16 55, i16 311 }, %struct.mse2snr_tab { i16 56, i16 310 }, %struct.mse2snr_tab { i16 57, i16 308 }, %struct.mse2snr_tab { i16 58, i16 306 }, %struct.mse2snr_tab { i16 59, i16 304 }, %struct.mse2snr_tab { i16 60, i16 302 }, %struct.mse2snr_tab { i16 61, i16 300 }, %struct.mse2snr_tab { i16 62, i16 298 }, %struct.mse2snr_tab { i16 65, i16 295 }, %struct.mse2snr_tab { i16 68, i16 294 }, %struct.mse2snr_tab { i16 70, i16 293 }, %struct.mse2snr_tab { i16 73, i16 292 }, %struct.mse2snr_tab { i16 76, i16 291 }, %struct.mse2snr_tab { i16 78, i16 290 }, %struct.mse2snr_tab { i16 79, i16 289 }, %struct.mse2snr_tab { i16 81, i16 288 }, %struct.mse2snr_tab { i16 82, i16 287 }, %struct.mse2snr_tab { i16 83, i16 286 }, %struct.mse2snr_tab { i16 84, i16 285 }, %struct.mse2snr_tab { i16 85, i16 284 }, %struct.mse2snr_tab { i16 86, i16 283 }, %struct.mse2snr_tab { i16 88, i16 282 }, %struct.mse2snr_tab { i16 89, i16 281 }, %struct.mse2snr_tab { i16 256, i16 280 }], align 2
@qam64_mse2snr_tab = internal unnamed_addr constant [77 x %struct.mse2snr_tab] [%struct.mse2snr_tab { i16 15, i16 0 }, %struct.mse2snr_tab { i16 16, i16 290 }, %struct.mse2snr_tab { i16 17, i16 288 }, %struct.mse2snr_tab { i16 18, i16 286 }, %struct.mse2snr_tab { i16 19, i16 284 }, %struct.mse2snr_tab { i16 20, i16 282 }, %struct.mse2snr_tab { i16 21, i16 281 }, %struct.mse2snr_tab { i16 22, i16 279 }, %struct.mse2snr_tab { i16 23, i16 277 }, %struct.mse2snr_tab { i16 24, i16 275 }, %struct.mse2snr_tab { i16 25, i16 273 }, %struct.mse2snr_tab { i16 26, i16 271 }, %struct.mse2snr_tab { i16 27, i16 269 }, %struct.mse2snr_tab { i16 28, i16 268 }, %struct.mse2snr_tab { i16 29, i16 266 }, %struct.mse2snr_tab { i16 30, i16 264 }, %struct.mse2snr_tab { i16 31, i16 262 }, %struct.mse2snr_tab { i16 32, i16 260 }, %struct.mse2snr_tab { i16 33, i16 259 }, %struct.mse2snr_tab { i16 34, i16 258 }, %struct.mse2snr_tab { i16 35, i16 256 }, %struct.mse2snr_tab { i16 36, i16 255 }, %struct.mse2snr_tab { i16 37, i16 254 }, %struct.mse2snr_tab { i16 38, i16 252 }, %struct.mse2snr_tab { i16 39, i16 251 }, %struct.mse2snr_tab { i16 40, i16 250 }, %struct.mse2snr_tab { i16 41, i16 249 }, %struct.mse2snr_tab { i16 42, i16 248 }, %struct.mse2snr_tab { i16 43, i16 246 }, %struct.mse2snr_tab { i16 44, i16 245 }, %struct.mse2snr_tab { i16 45, i16 244 }, %struct.mse2snr_tab { i16 46, i16 242 }, %struct.mse2snr_tab { i16 47, i16 241 }, %struct.mse2snr_tab { i16 48, i16 240 }, %struct.mse2snr_tab { i16 50, i16 239 }, %struct.mse2snr_tab { i16 51, i16 238 }, %struct.mse2snr_tab { i16 53, i16 237 }, %struct.mse2snr_tab { i16 54, i16 236 }, %struct.mse2snr_tab { i16 56, i16 235 }, %struct.mse2snr_tab { i16 57, i16 234 }, %struct.mse2snr_tab { i16 59, i16 233 }, %struct.mse2snr_tab { i16 60, i16 232 }, %struct.mse2snr_tab { i16 62, i16 231 }, %struct.mse2snr_tab { i16 63, i16 230 }, %struct.mse2snr_tab { i16 65, i16 229 }, %struct.mse2snr_tab { i16 67, i16 228 }, %struct.mse2snr_tab { i16 68, i16 227 }, %struct.mse2snr_tab { i16 70, i16 226 }, %struct.mse2snr_tab { i16 71, i16 225 }, %struct.mse2snr_tab { i16 73, i16 224 }, %struct.mse2snr_tab { i16 74, i16 223 }, %struct.mse2snr_tab { i16 76, i16 222 }, %struct.mse2snr_tab { i16 78, i16 221 }, %struct.mse2snr_tab { i16 80, i16 220 }, %struct.mse2snr_tab { i16 82, i16 219 }, %struct.mse2snr_tab { i16 85, i16 218 }, %struct.mse2snr_tab { i16 88, i16 217 }, %struct.mse2snr_tab { i16 90, i16 216 }, %struct.mse2snr_tab { i16 92, i16 215 }, %struct.mse2snr_tab { i16 93, i16 214 }, %struct.mse2snr_tab { i16 94, i16 212 }, %struct.mse2snr_tab { i16 95, i16 211 }, %struct.mse2snr_tab { i16 97, i16 210 }, %struct.mse2snr_tab { i16 99, i16 209 }, %struct.mse2snr_tab { i16 101, i16 208 }, %struct.mse2snr_tab { i16 102, i16 207 }, %struct.mse2snr_tab { i16 104, i16 206 }, %struct.mse2snr_tab { i16 107, i16 205 }, %struct.mse2snr_tab { i16 111, i16 204 }, %struct.mse2snr_tab { i16 114, i16 203 }, %struct.mse2snr_tab { i16 118, i16 202 }, %struct.mse2snr_tab { i16 122, i16 201 }, %struct.mse2snr_tab { i16 125, i16 200 }, %struct.mse2snr_tab { i16 128, i16 199 }, %struct.mse2snr_tab { i16 130, i16 198 }, %struct.mse2snr_tab { i16 132, i16 197 }, %struct.mse2snr_tab { i16 256, i16 190 }], align 2
@vsb_mse2snr_tab = internal unnamed_addr constant [30 x %struct.mse2snr_tab] [%struct.mse2snr_tab { i16 0, i16 270 }, %struct.mse2snr_tab { i16 2, i16 250 }, %struct.mse2snr_tab { i16 3, i16 240 }, %struct.mse2snr_tab { i16 5, i16 230 }, %struct.mse2snr_tab { i16 7, i16 220 }, %struct.mse2snr_tab { i16 9, i16 210 }, %struct.mse2snr_tab { i16 12, i16 200 }, %struct.mse2snr_tab { i16 13, i16 195 }, %struct.mse2snr_tab { i16 15, i16 190 }, %struct.mse2snr_tab { i16 17, i16 185 }, %struct.mse2snr_tab { i16 19, i16 180 }, %struct.mse2snr_tab { i16 21, i16 175 }, %struct.mse2snr_tab { i16 24, i16 170 }, %struct.mse2snr_tab { i16 27, i16 165 }, %struct.mse2snr_tab { i16 31, i16 160 }, %struct.mse2snr_tab { i16 32, i16 158 }, %struct.mse2snr_tab { i16 33, i16 156 }, %struct.mse2snr_tab { i16 36, i16 152 }, %struct.mse2snr_tab { i16 37, i16 150 }, %struct.mse2snr_tab { i16 39, i16 148 }, %struct.mse2snr_tab { i16 40, i16 146 }, %struct.mse2snr_tab { i16 41, i16 144 }, %struct.mse2snr_tab { i16 43, i16 142 }, %struct.mse2snr_tab { i16 44, i16 140 }, %struct.mse2snr_tab { i16 48, i16 135 }, %struct.mse2snr_tab { i16 50, i16 130 }, %struct.mse2snr_tab { i16 43, i16 142 }, %struct.mse2snr_tab { i16 53, i16 125 }, %struct.mse2snr_tab { i16 56, i16 120 }, %struct.mse2snr_tab { i16 256, i16 115 }], align 2
@__func__.au8522_mse2snr_lookup = private unnamed_addr constant [22 x i8] c"au8522_mse2snr_lookup\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"%s() snr=%d\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_debug252, ptr @__UNIQUE_ID_debugtype251, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_license257, ptr @__UNIQUE_ID_zv_mode254, ptr @__UNIQUE_ID_zv_modetype253, ptr @__ksymtab_au8522_attach, ptr @__param_debug, ptr @__param_zv_mode], section "llvm.metadata"
@switch.table.au8522_set_if = private unnamed_addr constant [3 x ptr] [ptr @.str.14, ptr @.str.13, ptr @.str.12], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @au8522_attach(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4
  %4 = load i8, ptr %0, align 4
  %5 = call i32 @au8522_get_state(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext %4) #7
  switch i32 %5, label %12 [
    i32 0, label %6
    i32 1, label %9
  ]

6:                                                ; preds = %2
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %15

9:                                                ; preds = %2
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %15

12:                                               ; preds = %2
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %9, %6
  %16 = phi ptr [ @.str, %6 ], [ @.str.1, %9 ], [ @.str.2, %12 ]
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %16, ptr noundef nonnull @__func__.au8522_attach) #8
  br label %18

18:                                               ; preds = %15, %12, %9, %6
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.au8522_state, ptr %19, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %20, ptr noundef align 4 dereferenceable(16) %0, i32 16, i1 false)
  %21 = getelementptr inbounds %struct.au8522_state, ptr %19, i32 0, i32 1
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.au8522_state, ptr %19, i32 0, i32 2
  store i8 1, ptr %22, align 8
  %23 = getelementptr inbounds %struct.au8522_state, ptr %19, i32 0, i32 6, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %23, ptr noundef nonnull align 4 dereferenceable(544) @au8522_ops, i32 544, i1 false)
  %24 = getelementptr inbounds %struct.au8522_state, ptr %19, i32 0, i32 6, i32 3
  store ptr %19, ptr %24, align 4
  %25 = getelementptr inbounds %struct.au8522_state, ptr %19, i32 0, i32 6, i32 1, i32 33, i32 7
  store ptr @au8522_analog_i2c_gate_ctrl, ptr %25, align 4
  %26 = getelementptr inbounds %struct.au8522_state, ptr %19, i32 0, i32 6
  %27 = call i32 @au8522_init(ptr noundef %26) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.au8522_attach) #8
  %31 = load ptr, ptr %3, align 4
  call void @au8522_release_state(ptr noundef %31) #7
  br label %38

32:                                               ; preds = %18
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.au8522_state, ptr %33, i32 0, i32 6
  %35 = call i32 @au8522_i2c_gate_ctrl(ptr noundef %34, i32 noundef 1) #7
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.au8522_state, ptr %36, i32 0, i32 6
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi ptr [ null, %29 ], [ %37, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret ptr %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_get_state(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_analog_i2c_gate_ctrl(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_i2c_gate_ctrl(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @au8522_release_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @au8522_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @au8522_release_state(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_sleep(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_set_frontend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.au8522_set_frontend, i32 noundef %8) #8
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.au8522_state, ptr %4, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.au8522_state, ptr %4, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %146, label %21

21:                                               ; preds = %15, %10
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %146, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call i32 %27(ptr noundef %0, i32 noundef 1) #7
  %31 = load ptr, ptr %22, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %31, %29 ], [ %23, %25 ]
  %34 = tail call i32 %33(ptr noundef %0) #7
  %35 = load ptr, ptr %26, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call i32 %35(ptr noundef %0, i32 noundef 0) #7
  br label %39

39:                                               ; preds = %37, %32
  %40 = icmp slt i32 %34, 0
  br i1 %40, label %146, label %41

41:                                               ; preds = %39
  %42 = load i32, ptr @zv_mode, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr @debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.au8522_set_frontend) #8
  br label %49

49:                                               ; preds = %47, %44, %41
  %50 = phi i32 [ 250, %47 ], [ 250, %44 ], [ 100, %41 ]
  tail call void @msleep(i32 noundef %50) #7
  %51 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %3, align 4
  %54 = load i32, ptr @debug, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.au8522_enable_modulation, i32 noundef %52) #8
  br label %58

58:                                               ; preds = %56, %49
  switch i32 %52, label %137 [
    i32 7, label %59
    i32 3, label %78
    i32 5, label %97
  ]

59:                                               ; preds = %58
  %60 = load i32, ptr @debug, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.au8522_enable_modulation) #8
  br label %64

64:                                               ; preds = %62, %59
  br label %65

65:                                               ; preds = %65, %64
  %66 = phi i32 [ %73, %65 ], [ 0, %64 ]
  %67 = getelementptr [26 x %struct.anon.86], ptr @VSB_mod_tab, i32 0, i32 %66
  %68 = load i16, ptr %67, align 2
  %69 = getelementptr [26 x %struct.anon.86], ptr @VSB_mod_tab, i32 0, i32 %66, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = trunc i16 %70 to i8
  %72 = tail call i32 @au8522_writereg(ptr noundef %53, i16 noundef zeroext %68, i8 noundef zeroext %71) #7
  %73 = add nuw nsw i32 %66, 1
  %74 = icmp eq i32 %73, 26
  br i1 %74, label %75, label %65

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.au8522_state, ptr %53, i32 0, i32 5, i32 3
  %77 = load i32, ptr %76, align 4
  tail call fastcc void @au8522_set_if(ptr noundef %0, i32 noundef %77) #7
  br label %142

78:                                               ; preds = %58
  %79 = load i32, ptr @debug, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.au8522_enable_modulation) #8
  br label %83

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %84, %83
  %85 = phi i32 [ %92, %84 ], [ 0, %83 ]
  %86 = getelementptr [72 x %struct.anon.87], ptr @QAM64_mod_tab, i32 0, i32 %85
  %87 = load i16, ptr %86, align 2
  %88 = getelementptr [72 x %struct.anon.87], ptr @QAM64_mod_tab, i32 0, i32 %85, i32 1
  %89 = load i16, ptr %88, align 2
  %90 = trunc i16 %89 to i8
  %91 = tail call i32 @au8522_writereg(ptr noundef %53, i16 noundef zeroext %87, i8 noundef zeroext %90) #7
  %92 = add nuw nsw i32 %85, 1
  %93 = icmp eq i32 %92, 72
  br i1 %93, label %94, label %84

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.au8522_state, ptr %53, i32 0, i32 5, i32 4
  %96 = load i32, ptr %95, align 4
  tail call fastcc void @au8522_set_if(ptr noundef %0, i32 noundef %96) #7
  br label %142

97:                                               ; preds = %58
  %98 = load i32, ptr @zv_mode, align 4
  %99 = icmp eq i32 %98, 0
  %100 = load i32, ptr @debug, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %99, label %120, label %102

102:                                              ; preds = %97
  br i1 %101, label %105, label %103

103:                                              ; preds = %102
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.au8522_enable_modulation) #8
  br label %105

105:                                              ; preds = %103, %102
  br label %106

106:                                              ; preds = %106, %105
  %107 = phi i32 [ %114, %106 ], [ 0, %105 ]
  %108 = getelementptr [75 x %struct.anon.88], ptr @QAM256_mod_tab_zv_mode, i32 0, i32 %107
  %109 = load i16, ptr %108, align 2
  %110 = getelementptr [75 x %struct.anon.88], ptr @QAM256_mod_tab_zv_mode, i32 0, i32 %107, i32 1
  %111 = load i16, ptr %110, align 2
  %112 = trunc i16 %111 to i8
  %113 = tail call i32 @au8522_writereg(ptr noundef %53, i16 noundef zeroext %109, i8 noundef zeroext %112) #7
  %114 = add nuw nsw i32 %107, 1
  %115 = icmp eq i32 %114, 75
  br i1 %115, label %116, label %106

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.au8522_state, ptr %53, i32 0, i32 5, i32 4
  %118 = load i32, ptr %117, align 4
  tail call fastcc void @au8522_set_if(ptr noundef %0, i32 noundef %118) #7
  tail call void @msleep(i32 noundef 100) #7
  %119 = tail call i32 @au8522_writereg(ptr noundef %53, i16 noundef zeroext -32230, i8 noundef zeroext 0) #7
  br label %142

120:                                              ; preds = %97
  br i1 %101, label %123, label %121

121:                                              ; preds = %120
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.au8522_enable_modulation) #8
  br label %123

123:                                              ; preds = %121, %120
  br label %124

124:                                              ; preds = %124, %123
  %125 = phi i32 [ %132, %124 ], [ 0, %123 ]
  %126 = getelementptr [72 x %struct.anon.89], ptr @QAM256_mod_tab, i32 0, i32 %125
  %127 = load i16, ptr %126, align 2
  %128 = getelementptr [72 x %struct.anon.89], ptr @QAM256_mod_tab, i32 0, i32 %125, i32 1
  %129 = load i16, ptr %128, align 2
  %130 = trunc i16 %129 to i8
  %131 = tail call i32 @au8522_writereg(ptr noundef %53, i16 noundef zeroext %127, i8 noundef zeroext %130) #7
  %132 = add nuw nsw i32 %125, 1
  %133 = icmp eq i32 %132, 72
  br i1 %133, label %134, label %124

134:                                              ; preds = %124
  %135 = getelementptr inbounds %struct.au8522_state, ptr %53, i32 0, i32 5, i32 4
  %136 = load i32, ptr %135, align 4
  tail call fastcc void @au8522_set_if(ptr noundef %0, i32 noundef %136) #7
  br label %142

137:                                              ; preds = %58
  %138 = load i32, ptr @debug, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.au8522_enable_modulation) #8
  br label %144

142:                                              ; preds = %134, %116, %94, %75
  %143 = getelementptr inbounds %struct.au8522_state, ptr %53, i32 0, i32 8
  store i32 %52, ptr %143, align 8
  br label %144

144:                                              ; preds = %142, %140, %137
  %145 = load i32, ptr %2, align 4
  store i32 %145, ptr %11, align 4
  br label %146

146:                                              ; preds = %144, %39, %21, %15
  %147 = phi i32 [ 0, %144 ], [ 0, %15 ], [ %34, %39 ], [ -22, %21 ]
  ret i32 %147
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @au8522_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @au8522_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.au8522_state, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.au8522_state, ptr %4, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_read_status(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %6 = getelementptr inbounds %struct.au8522_state, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 7
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %8, label %11, label %18

11:                                               ; preds = %2
  br i1 %10, label %14, label %12

12:                                               ; preds = %11
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.au8522_read_status) #8
  br label %14

14:                                               ; preds = %12, %11
  %15 = tail call zeroext i8 @au8522_readreg(ptr noundef %5, i16 noundef zeroext 136) #7
  %16 = and i8 %15, 3
  %17 = icmp eq i8 %16, 3
  br i1 %17, label %32, label %36

18:                                               ; preds = %2
  br i1 %10, label %21, label %19

19:                                               ; preds = %18
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.au8522_read_status) #8
  br label %21

21:                                               ; preds = %19, %18
  %22 = tail call zeroext i8 @au8522_readreg(ptr noundef %5, i16 noundef zeroext 1345) #7
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %1, align 4
  %28 = or i32 %27, 4
  store i32 %28, ptr %1, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = and i32 %23, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29, %14
  %33 = phi i32 [ 28, %14 ], [ 24, %29 ]
  %34 = load i32, ptr %1, align 4
  %35 = or i32 %34, %33
  store i32 %35, ptr %1, align 4
  br label %36

36:                                               ; preds = %32, %29, %14
  %37 = getelementptr inbounds %struct.au8522_state, ptr %5, i32 0, i32 5, i32 1
  %38 = load i8, ptr %37, align 1
  switch i8 %38, label %79 [
    i8 1, label %39
    i8 0, label %48
  ]

39:                                               ; preds = %36
  %40 = load i32, ptr @debug, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.au8522_read_status) #8
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, ptr %1, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %79, label %76

48:                                               ; preds = %36
  %49 = load i32, ptr @debug, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.au8522_read_status) #8
  br label %53

53:                                               ; preds = %51, %48
  %54 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 12
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = tail call i32 %59(ptr noundef %0, i32 noundef 1) #7
  %63 = load ptr, ptr %54, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi ptr [ %63, %61 ], [ %55, %57 ]
  %66 = call i32 %65(ptr noundef %0, ptr noundef nonnull %3) #7
  %67 = load ptr, ptr %58, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = call i32 %67(ptr noundef %0, i32 noundef 0) #7
  br label %71

71:                                               ; preds = %69, %64, %53
  %72 = load i32, ptr %3, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %1, align 4
  br label %76

76:                                               ; preds = %74, %44
  %77 = phi i32 [ %75, %74 ], [ %45, %44 ]
  %78 = or i32 %77, 3
  store i32 %78, ptr %1, align 4
  br label %79

79:                                               ; preds = %76, %71, %44, %36
  %80 = load i32, ptr %1, align 4
  %81 = getelementptr inbounds %struct.au8522_state, ptr %5, i32 0, i32 9
  store i32 %80, ptr %81, align 4
  %82 = load i32, ptr %1, align 4
  %83 = shl i32 %82, 27
  %84 = ashr i32 %83, 31
  %85 = call i32 @au8522_led_ctrl(ptr noundef %5, i32 noundef %84) #7
  %86 = load i32, ptr @debug, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %79
  %89 = load i32, ptr %1, align 4
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.au8522_read_status, i32 noundef %89) #8
  br label %91

91:                                               ; preds = %88, %79
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.au8522_state, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 7
  %8 = select i1 %7, i16 135, i16 1347
  %9 = tail call zeroext i8 @au8522_readreg(ptr noundef %4, i16 noundef zeroext %8) #7
  %10 = zext i8 %9 to i32
  store i32 %10, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #7
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = call i32 @au8522_read_snr(ptr noundef %0, ptr noundef nonnull %3)
  store i16 0, ptr %1, align 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i16, ptr %3, align 2
  %8 = zext i16 %7 to i32
  %9 = mul i32 %8, 1677721
  %10 = icmp ugt i32 %9, 587202559
  %11 = udiv i32 %9, 8960
  %12 = trunc i32 %11 to i16
  %13 = select i1 %10, i16 -1, i16 %12
  store i16 %13, ptr %1, align 2
  br label %14

14:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #7
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.au8522_read_snr) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.au8522_state, ptr %4, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %58 [
    i32 5, label %12
    i32 3, label %35
  ]

12:                                               ; preds = %9
  %13 = tail call zeroext i8 @au8522_readreg(ptr noundef %4, i16 noundef zeroext 1314) #7
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.au8522_mse2snr_lookup) #8
  br label %18

18:                                               ; preds = %16, %12
  %19 = zext i8 %13 to i16
  br label %20

20:                                               ; preds = %28, %18
  %21 = phi i32 [ %29, %28 ], [ 0, %18 ]
  %22 = getelementptr %struct.mse2snr_tab, ptr @qam256_mse2snr_tab, i32 %21
  %23 = load i16, ptr %22, align 2
  %24 = icmp ugt i16 %23, %19
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr %struct.mse2snr_tab, ptr @qam256_mse2snr_tab, i32 %21, i32 1
  %27 = load i16, ptr %26, align 2
  store i16 %27, ptr %1, align 2
  br label %31

28:                                               ; preds = %20
  %29 = add nuw nsw i32 %21, 1
  %30 = icmp eq i32 %29, 64
  br i1 %30, label %31, label %20

31:                                               ; preds = %28, %25
  %32 = phi i32 [ 0, %25 ], [ -22, %28 ]
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %86, label %81

35:                                               ; preds = %9
  %36 = tail call zeroext i8 @au8522_readreg(ptr noundef %4, i16 noundef zeroext 1314) #7
  %37 = load i32, ptr @debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.au8522_mse2snr_lookup) #8
  br label %41

41:                                               ; preds = %39, %35
  %42 = zext i8 %36 to i16
  br label %43

43:                                               ; preds = %51, %41
  %44 = phi i32 [ %52, %51 ], [ 0, %41 ]
  %45 = getelementptr %struct.mse2snr_tab, ptr @qam64_mse2snr_tab, i32 %44
  %46 = load i16, ptr %45, align 2
  %47 = icmp ugt i16 %46, %42
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = getelementptr %struct.mse2snr_tab, ptr @qam64_mse2snr_tab, i32 %44, i32 1
  %50 = load i16, ptr %49, align 2
  store i16 %50, ptr %1, align 2
  br label %54

51:                                               ; preds = %43
  %52 = add nuw nsw i32 %44, 1
  %53 = icmp eq i32 %52, 77
  br i1 %53, label %54, label %43

54:                                               ; preds = %51, %48
  %55 = phi i32 [ 0, %48 ], [ -22, %51 ]
  %56 = load i32, ptr @debug, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %86, label %81

58:                                               ; preds = %9
  %59 = tail call zeroext i8 @au8522_readreg(ptr noundef %4, i16 noundef zeroext 785) #7
  %60 = load i32, ptr @debug, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.au8522_mse2snr_lookup) #8
  br label %64

64:                                               ; preds = %62, %58
  %65 = zext i8 %59 to i16
  br label %66

66:                                               ; preds = %74, %64
  %67 = phi i32 [ %75, %74 ], [ 0, %64 ]
  %68 = getelementptr %struct.mse2snr_tab, ptr @vsb_mse2snr_tab, i32 %67
  %69 = load i16, ptr %68, align 2
  %70 = icmp ugt i16 %69, %65
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = getelementptr %struct.mse2snr_tab, ptr @vsb_mse2snr_tab, i32 %67, i32 1
  %73 = load i16, ptr %72, align 2
  store i16 %73, ptr %1, align 2
  br label %77

74:                                               ; preds = %66
  %75 = add nuw nsw i32 %67, 1
  %76 = icmp eq i32 %75, 30
  br i1 %76, label %77, label %66

77:                                               ; preds = %74, %71
  %78 = phi i32 [ 0, %71 ], [ -22, %74 ]
  %79 = load i32, ptr @debug, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77, %54, %31
  %82 = phi i32 [ %32, %31 ], [ %55, %54 ], [ %78, %77 ]
  %83 = load i16, ptr %1, align 2
  %84 = zext i16 %83 to i32
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.au8522_mse2snr_lookup, i32 noundef %84) #8
  br label %86

86:                                               ; preds = %81, %77, %54, %31
  %87 = phi i32 [ %32, %31 ], [ %55, %54 ], [ %78, %77 ], [ %82, %81 ]
  %88 = getelementptr inbounds %struct.au8522_state, ptr %4, i32 0, i32 5, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %122, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.au8522_state, ptr %4, i32 0, i32 9
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 16
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %119, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %10, align 8
  switch i32 %97, label %102 [
    i32 5, label %98
    i32 3, label %100
  ]

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.au8522_led_config, ptr %89, i32 0, i32 2
  br label %102

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.au8522_led_config, ptr %89, i32 0, i32 1
  br label %102

102:                                              ; preds = %100, %98, %96
  %103 = phi ptr [ %99, %98 ], [ %101, %100 ], [ %89, %96 ]
  %104 = load i16, ptr %103, align 2
  %105 = load i16, ptr %1, align 2
  %106 = icmp ult i16 %105, %104
  %107 = select i1 %106, i32 1, i32 2
  %108 = getelementptr inbounds %struct.au8522_state, ptr %4, i32 0, i32 10
  %109 = load i32, ptr %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %102
  %112 = zext i16 %104 to i32
  %113 = zext i16 %105 to i32
  %114 = icmp ult i16 %104, %105
  %115 = sub nsw i32 %113, %112
  %116 = sub nsw i32 %112, %113
  %117 = select i1 %114, i32 %115, i32 %116
  %118 = icmp slt i32 %117, 11
  br i1 %118, label %122, label %119

119:                                              ; preds = %111, %102, %91
  %120 = phi i32 [ 0, %91 ], [ %107, %111 ], [ %107, %102 ]
  %121 = tail call i32 @au8522_led_ctrl(ptr noundef %4, i32 noundef %120) #7
  br label %122

122:                                              ; preds = %119, %111, %86
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.au8522_state, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 7
  %8 = select i1 %7, i16 135, i16 1347
  %9 = tail call zeroext i8 @au8522_readreg(ptr noundef %4, i16 noundef zeroext %8) #7
  %10 = zext i8 %9 to i32
  store i32 %10, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_writereg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @au8522_set_if(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ult i32 %1, 3
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.au8522_set_if) #8
  br label %34

11:                                               ; preds = %2
  %12 = trunc i32 %1 to i24
  %13 = shl i24 %12, 3
  %14 = lshr i24 251, %13
  %15 = trunc i24 %14 to i8
  %16 = trunc i32 %1 to i24
  %17 = shl i24 %16, 3
  %18 = lshr i24 4017038, %17
  %19 = trunc i24 %18 to i8
  %20 = trunc i32 %1 to i24
  %21 = shl i24 %20, 3
  %22 = lshr i24 -6235847, %21
  %23 = trunc i24 %22 to i8
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %11
  %27 = getelementptr inbounds [3 x ptr], ptr @switch.table.au8522_set_if, i32 0, i32 %1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.au8522_set_if, ptr noundef nonnull %28) #8
  br label %30

30:                                               ; preds = %26, %11
  %31 = tail call i32 @au8522_writereg(ptr noundef %4, i16 noundef zeroext 181, i8 noundef zeroext %15) #7
  %32 = tail call i32 @au8522_writereg(ptr noundef %4, i16 noundef zeroext 182, i8 noundef zeroext %19) #7
  %33 = tail call i32 @au8522_writereg(ptr noundef %4, i16 noundef zeroext 183, i8 noundef zeroext %23) #7
  br label %34

34:                                               ; preds = %30, %9, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @au8522_readreg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_led_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
