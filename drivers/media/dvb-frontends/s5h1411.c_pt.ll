; ModuleID = '/llk/IR/drivers/media/dvb-frontends/s5h1411.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/s5h1411.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s5h1411_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22s5h1411_attach\22\09\09\09\09\09"
module asm "__kstrtabns_s5h1411_attach:\09\09\09\09\09"
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
%struct.init_tab = type { i8, i8, i16 }
%struct.qam64_snr_tab = type { i16, i16 }
%struct.qam256_snr_tab = type { i16, i16 }
%struct.vsb_snr_tab = type { i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.s5h1411_state = type { ptr, ptr, %struct.dvb_frontend, i32, i8, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.s5h1411_config = type { i8, i8, i16, i16, i16, i8, i8 }

@s5h1411_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Samsung S5H1411 QAM/8VSB Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @s5h1411_release, ptr null, ptr @s5h1411_init, ptr @s5h1411_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5h1411_set_frontend, ptr @s5h1411_get_tune_settings, ptr @s5h1411_get_frontend, ptr @s5h1411_read_status, ptr @s5h1411_read_ber, ptr @s5h1411_read_signal_strength, ptr @s5h1411_read_snr, ptr @s5h1411_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5h1411_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_s5h1411_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_s5h1411_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_s5h1411_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s5h1411_attach to i32), ptr @__kstrtab_s5h1411_attach, ptr @__kstrtabns_s5h1411_attach }, section "___ksymtab+s5h1411_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [41 x i8] c"parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [58 x i8] c"description=Samsung S5H1411 QAM-B/ATSC Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [19 x i8] c"author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\013%s: readreg error (ret == %i)\0A\00", align 1
@__func__.s5h1411_readreg = private unnamed_addr constant [16 x i8] c"s5h1411_readreg\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s()\0A\00", align 1
@__func__.s5h1411_init = private unnamed_addr constant [13 x i8] c"s5h1411_init\00", align 1
@init_tab = internal unnamed_addr constant [80 x %struct.init_tab] [%struct.init_tab { i8 25, i8 0, i16 113 }, %struct.init_tab { i8 25, i8 8, i16 71 }, %struct.init_tab { i8 25, i8 28, i16 1024 }, %struct.init_tab { i8 25, i8 30, i16 880 }, %struct.init_tab { i8 25, i8 31, i16 13356 }, %struct.init_tab { i8 25, i8 36, i16 561 }, %struct.init_tab { i8 25, i8 37, i16 4113 }, %struct.init_tab { i8 25, i8 38, i16 3847 }, %struct.init_tab { i8 25, i8 39, i16 3844 }, %struct.init_tab { i8 25, i8 40, i16 1807 }, %struct.init_tab { i8 25, i8 41, i16 10272 }, %struct.init_tab { i8 25, i8 42, i16 4142 }, %struct.init_tab { i8 25, i8 43, i16 544 }, %struct.init_tab { i8 25, i8 46, i16 3342 }, %struct.init_tab { i8 25, i8 47, i16 4115 }, %struct.init_tab { i8 25, i8 49, i16 5915 }, %struct.init_tab { i8 25, i8 50, i16 3599 }, %struct.init_tab { i8 25, i8 51, i16 3856 }, %struct.init_tab { i8 25, i8 52, i16 5902 }, %struct.init_tab { i8 25, i8 53, i16 19216 }, %struct.init_tab { i8 25, i8 54, i16 3863 }, %struct.init_tab { i8 25, i8 60, i16 5495 }, %struct.init_tab { i8 25, i8 61, i16 2074 }, %struct.init_tab { i8 25, i8 62, i16 30702 }, %struct.init_tab { i8 25, i8 64, i16 7689 }, %struct.init_tab { i8 25, i8 65, i16 3852 }, %struct.init_tab { i8 25, i8 66, i16 7952 }, %struct.init_tab { i8 25, i8 77, i16 1289 }, %struct.init_tab { i8 25, i8 78, i16 2560 }, %struct.init_tab { i8 25, i8 80, i16 0 }, %struct.init_tab { i8 25, i8 91, i16 0 }, %struct.init_tab { i8 25, i8 92, i16 8 }, %struct.init_tab { i8 25, i8 87, i16 4353 }, %struct.init_tab { i8 25, i8 101, i16 124 }, %struct.init_tab { i8 25, i8 104, i16 1298 }, %struct.init_tab { i8 25, i8 105, i16 600 }, %struct.init_tab { i8 25, i8 112, i16 4 }, %struct.init_tab { i8 25, i8 113, i16 7 }, %struct.init_tab { i8 25, i8 118, i16 169 }, %struct.init_tab { i8 25, i8 120, i16 12609 }, %struct.init_tab { i8 25, i8 122, i16 12609 }, %struct.init_tab { i8 25, i8 -77, i16 -32765 }, %struct.init_tab { i8 25, i8 -75, i16 -22853 }, %struct.init_tab { i8 25, i8 -74, i16 1545 }, %struct.init_tab { i8 25, i8 -73, i16 12038 }, %struct.init_tab { i8 25, i8 -72, i16 63 }, %struct.init_tab { i8 25, i8 -71, i16 9984 }, %struct.init_tab { i8 25, i8 -70, i16 -1336 }, %struct.init_tab { i8 25, i8 -66, i16 4099 }, %struct.init_tab { i8 25, i8 -65, i16 4159 }, %struct.init_tab { i8 25, i8 -50, i16 8192 }, %struct.init_tab { i8 25, i8 -49, i16 2048 }, %struct.init_tab { i8 25, i8 -48, i16 2048 }, %struct.init_tab { i8 25, i8 -47, i16 1024 }, %struct.init_tab { i8 25, i8 -46, i16 2048 }, %struct.init_tab { i8 25, i8 -45, i16 8192 }, %struct.init_tab { i8 25, i8 -44, i16 12288 }, %struct.init_tab { i8 25, i8 -37, i16 19099 }, %struct.init_tab { i8 25, i8 -36, i16 4096 }, %struct.init_tab { i8 25, i8 -34, i16 1 }, %struct.init_tab { i8 25, i8 -33, i16 0 }, %struct.init_tab { i8 25, i8 -29, i16 769 }, %struct.init_tab { i8 26, i8 -13, i16 0 }, %struct.init_tab { i8 26, i8 -13, i16 1 }, %struct.init_tab { i8 26, i8 8, i16 1536 }, %struct.init_tab { i8 26, i8 24, i16 16897 }, %struct.init_tab { i8 26, i8 30, i16 25718 }, %struct.init_tab { i8 26, i8 33, i16 2096 }, %struct.init_tab { i8 26, i8 12, i16 22137 }, %struct.init_tab { i8 26, i8 13, i16 22427 }, %struct.init_tab { i8 26, i8 36, i16 258 }, %struct.init_tab { i8 26, i8 49, i16 29832 }, %struct.init_tab { i8 26, i8 50, i16 2568 }, %struct.init_tab { i8 26, i8 61, i16 -31095 }, %struct.init_tab { i8 26, i8 73, i16 72 }, %struct.init_tab { i8 26, i8 87, i16 8210 }, %struct.init_tab { i8 26, i8 93, i16 30326 }, %struct.init_tab { i8 26, i8 4, i16 1024 }, %struct.init_tab { i8 26, i8 88, i16 192 }, %struct.init_tab { i8 26, i8 91, i16 256 }], align 2
@__func__.s5h1411_register_reset = private unnamed_addr constant [23 x i8] c"s5h1411_register_reset\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s(%d)\0A\00", align 1
@__func__.s5h1411_set_serialmode = private unnamed_addr constant [23 x i8] c"s5h1411_set_serialmode\00", align 1
@__func__.s5h1411_set_spectralinversion = private unnamed_addr constant [30 x i8] c"s5h1411_set_spectralinversion\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s(%d KHz)\0A\00", align 1
@__func__.s5h1411_set_if_freq = private unnamed_addr constant [20 x i8] c"s5h1411_set_if_freq\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"%s(%d KHz) Invalid, defaulting to 5380\0A\00", align 1
@__func__.s5h1411_set_gpio = private unnamed_addr constant [17 x i8] c"s5h1411_set_gpio\00", align 1
@__func__.s5h1411_set_mpeg_timing = private unnamed_addr constant [24 x i8] c"s5h1411_set_mpeg_timing\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%s(%d) Mode1 or Defaulting\0A\00", align 1
@__func__.s5h1411_softreset = private unnamed_addr constant [18 x i8] c"s5h1411_softreset\00", align 1
@__func__.s5h1411_i2c_gate_ctrl = private unnamed_addr constant [22 x i8] c"s5h1411_i2c_gate_ctrl\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"\013%s: writereg error 0x%02x 0x%02x 0x%04x, ret == %i)\0A\00", align 1
@__func__.s5h1411_writereg = private unnamed_addr constant [17 x i8] c"s5h1411_writereg\00", align 1
@__func__.s5h1411_set_powerstate = private unnamed_addr constant [23 x i8] c"s5h1411_set_powerstate\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%s(frequency=%d)\0A\00", align 1
@__func__.s5h1411_set_frontend = private unnamed_addr constant [21 x i8] c"s5h1411_set_frontend\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%s(0x%08x)\0A\00", align 1
@__func__.s5h1411_enable_modulation = private unnamed_addr constant [26 x i8] c"s5h1411_enable_modulation\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"%s() Already at desired modulation.  Skipping...\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%s() VSB_8\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"%s() QAM_AUTO (64/256)\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"%s() Invalid modulation\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"%s() status 0x%08x\0A\00", align 1
@__func__.s5h1411_read_status = private unnamed_addr constant [20 x i8] c"s5h1411_read_status\00", align 1
@__func__.s5h1411_read_snr = private unnamed_addr constant [17 x i8] c"s5h1411_read_snr\00", align 1
@__func__.s5h1411_qam64_lookup_snr = private unnamed_addr constant [25 x i8] c"s5h1411_qam64_lookup_snr\00", align 1
@qam64_snr_tab = internal unnamed_addr constant [66 x %struct.qam64_snr_tab] [%struct.qam64_snr_tab { i16 1, i16 0 }, %struct.qam64_snr_tab { i16 2800, i16 300 }, %struct.qam64_snr_tab { i16 3456, i16 290 }, %struct.qam64_snr_tab { i16 4256, i16 280 }, %struct.qam64_snr_tab { i16 5301, i16 270 }, %struct.qam64_snr_tab { i16 5520, i16 268 }, %struct.qam64_snr_tab { i16 5760, i16 266 }, %struct.qam64_snr_tab { i16 6064, i16 264 }, %struct.qam64_snr_tab { i16 6336, i16 262 }, %struct.qam64_snr_tab { i16 6576, i16 260 }, %struct.qam64_snr_tab { i16 6864, i16 258 }, %struct.qam64_snr_tab { i16 7424, i16 256 }, %struct.qam64_snr_tab { i16 7584, i16 254 }, %struct.qam64_snr_tab { i16 7920, i16 252 }, %struct.qam64_snr_tab { i16 8272, i16 250 }, %struct.qam64_snr_tab { i16 8432, i16 249 }, %struct.qam64_snr_tab { i16 8656, i16 248 }, %struct.qam64_snr_tab { i16 8880, i16 247 }, %struct.qam64_snr_tab { i16 9120, i16 246 }, %struct.qam64_snr_tab { i16 9328, i16 245 }, %struct.qam64_snr_tab { i16 9456, i16 244 }, %struct.qam64_snr_tab { i16 9632, i16 243 }, %struct.qam64_snr_tab { i16 9920, i16 242 }, %struct.qam64_snr_tab { i16 10160, i16 241 }, %struct.qam64_snr_tab { i16 10448, i16 240 }, %struct.qam64_snr_tab { i16 10672, i16 239 }, %struct.qam64_snr_tab { i16 10960, i16 238 }, %struct.qam64_snr_tab { i16 11168, i16 237 }, %struct.qam64_snr_tab { i16 11392, i16 236 }, %struct.qam64_snr_tab { i16 11552, i16 235 }, %struct.qam64_snr_tab { i16 11776, i16 234 }, %struct.qam64_snr_tab { i16 12048, i16 233 }, %struct.qam64_snr_tab { i16 12368, i16 232 }, %struct.qam64_snr_tab { i16 12688, i16 231 }, %struct.qam64_snr_tab { i16 13056, i16 230 }, %struct.qam64_snr_tab { i16 13120, i16 229 }, %struct.qam64_snr_tab { i16 12800, i16 228 }, %struct.qam64_snr_tab { i16 13648, i16 227 }, %struct.qam64_snr_tab { i16 13840, i16 226 }, %struct.qam64_snr_tab { i16 13824, i16 225 }, %struct.qam64_snr_tab { i16 14080, i16 224 }, %struct.qam64_snr_tab { i16 14336, i16 223 }, %struct.qam64_snr_tab { i16 14624, i16 222 }, %struct.qam64_snr_tab { i16 14880, i16 221 }, %struct.qam64_snr_tab { i16 15152, i16 220 }, %struct.qam64_snr_tab { i16 15616, i16 219 }, %struct.qam64_snr_tab { i16 15872, i16 218 }, %struct.qam64_snr_tab { i16 16384, i16 217 }, %struct.qam64_snr_tab { i16 16640, i16 216 }, %struct.qam64_snr_tab { i16 17152, i16 215 }, %struct.qam64_snr_tab { i16 17408, i16 214 }, %struct.qam64_snr_tab { i16 17920, i16 213 }, %struct.qam64_snr_tab { i16 18176, i16 212 }, %struct.qam64_snr_tab { i16 18432, i16 211 }, %struct.qam64_snr_tab { i16 18944, i16 210 }, %struct.qam64_snr_tab { i16 19200, i16 209 }, %struct.qam64_snr_tab { i16 19712, i16 208 }, %struct.qam64_snr_tab { i16 20224, i16 207 }, %struct.qam64_snr_tab { i16 20560, i16 206 }, %struct.qam64_snr_tab { i16 20992, i16 205 }, %struct.qam64_snr_tab { i16 21440, i16 204 }, %struct.qam64_snr_tab { i16 21584, i16 203 }, %struct.qam64_snr_tab { i16 22096, i16 202 }, %struct.qam64_snr_tab { i16 22560, i16 201 }, %struct.qam64_snr_tab { i16 24576, i16 200 }, %struct.qam64_snr_tab { i16 -1, i16 0 }], align 2
@__func__.s5h1411_qam256_lookup_snr = private unnamed_addr constant [26 x i8] c"s5h1411_qam256_lookup_snr\00", align 1
@qam256_snr_tab = internal unnamed_addr constant [72 x %struct.qam256_snr_tab] [%struct.qam256_snr_tab { i16 1, i16 0 }, %struct.qam256_snr_tab { i16 2416, i16 400 }, %struct.qam256_snr_tab { i16 2704, i16 390 }, %struct.qam256_snr_tab { i16 2960, i16 380 }, %struct.qam256_snr_tab { i16 3472, i16 370 }, %struct.qam256_snr_tab { i16 4080, i16 360 }, %struct.qam256_snr_tab { i16 4672, i16 350 }, %struct.qam256_snr_tab { i16 4933, i16 348 }, %struct.qam256_snr_tab { i16 5056, i16 346 }, %struct.qam256_snr_tab { i16 5312, i16 344 }, %struct.qam256_snr_tab { i16 5376, i16 342 }, %struct.qam256_snr_tab { i16 5648, i16 340 }, %struct.qam256_snr_tab { i16 5888, i16 338 }, %struct.qam256_snr_tab { i16 6144, i16 336 }, %struct.qam256_snr_tab { i16 6320, i16 334 }, %struct.qam256_snr_tab { i16 6400, i16 332 }, %struct.qam256_snr_tab { i16 6832, i16 330 }, %struct.qam256_snr_tab { i16 7104, i16 328 }, %struct.qam256_snr_tab { i16 7344, i16 326 }, %struct.qam256_snr_tab { i16 7600, i16 324 }, %struct.qam256_snr_tab { i16 7856, i16 322 }, %struct.qam256_snr_tab { i16 8240, i16 320 }, %struct.qam256_snr_tab { i16 8704, i16 318 }, %struct.qam256_snr_tab { i16 8832, i16 316 }, %struct.qam256_snr_tab { i16 9232, i16 314 }, %struct.qam256_snr_tab { i16 9648, i16 312 }, %struct.qam256_snr_tab { i16 10144, i16 310 }, %struct.qam256_snr_tab { i16 10304, i16 308 }, %struct.qam256_snr_tab { i16 10704, i16 306 }, %struct.qam256_snr_tab { i16 11024, i16 304 }, %struct.qam256_snr_tab { i16 11568, i16 302 }, %struct.qam256_snr_tab { i16 12064, i16 300 }, %struct.qam256_snr_tab { i16 12480, i16 298 }, %struct.qam256_snr_tab { i16 12896, i16 297 }, %struct.qam256_snr_tab { i16 12992, i16 296 }, %struct.qam256_snr_tab { i16 13056, i16 295 }, %struct.qam256_snr_tab { i16 13232, i16 294 }, %struct.qam256_snr_tab { i16 13488, i16 293 }, %struct.qam256_snr_tab { i16 13728, i16 292 }, %struct.qam256_snr_tab { i16 13904, i16 291 }, %struct.qam256_snr_tab { i16 14336, i16 290 }, %struct.qam256_snr_tab { i16 14592, i16 289 }, %struct.qam256_snr_tab { i16 14928, i16 288 }, %struct.qam256_snr_tab { i16 15152, i16 287 }, %struct.qam256_snr_tab { i16 15536, i16 286 }, %struct.qam256_snr_tab { i16 15904, i16 285 }, %struct.qam256_snr_tab { i16 16288, i16 284 }, %struct.qam256_snr_tab { i16 16544, i16 283 }, %struct.qam256_snr_tab { i16 16832, i16 282 }, %struct.qam256_snr_tab { i16 17136, i16 281 }, %struct.qam256_snr_tab { i16 17568, i16 280 }, %struct.qam256_snr_tab { i16 17920, i16 279 }, %struct.qam256_snr_tab { i16 18352, i16 278 }, %struct.qam256_snr_tab { i16 18688, i16 277 }, %struct.qam256_snr_tab { i16 18944, i16 276 }, %struct.qam256_snr_tab { i16 19360, i16 275 }, %struct.qam256_snr_tab { i16 19712, i16 274 }, %struct.qam256_snr_tab { i16 20224, i16 273 }, %struct.qam256_snr_tab { i16 20480, i16 272 }, %struct.qam256_snr_tab { i16 20976, i16 272 }, %struct.qam256_snr_tab { i16 21408, i16 270 }, %struct.qam256_snr_tab { i16 21792, i16 269 }, %struct.qam256_snr_tab { i16 22272, i16 268 }, %struct.qam256_snr_tab { i16 22528, i16 267 }, %struct.qam256_snr_tab { i16 23040, i16 266 }, %struct.qam256_snr_tab { i16 23552, i16 265 }, %struct.qam256_snr_tab { i16 23808, i16 264 }, %struct.qam256_snr_tab { i16 24320, i16 263 }, %struct.qam256_snr_tab { i16 24576, i16 262 }, %struct.qam256_snr_tab { i16 25088, i16 261 }, %struct.qam256_snr_tab { i16 25600, i16 260 }, %struct.qam256_snr_tab { i16 -1, i16 0 }], align 2
@__func__.s5h1411_vsb_lookup_snr = private unnamed_addr constant [23 x i8] c"s5h1411_vsb_lookup_snr\00", align 1
@vsb_snr_tab = internal unnamed_addr constant [38 x %struct.vsb_snr_tab] [%struct.vsb_snr_tab { i16 927, i16 300 }, %struct.vsb_snr_tab { i16 923, i16 295 }, %struct.vsb_snr_tab { i16 919, i16 290 }, %struct.vsb_snr_tab { i16 916, i16 285 }, %struct.vsb_snr_tab { i16 911, i16 280 }, %struct.vsb_snr_tab { i16 907, i16 275 }, %struct.vsb_snr_tab { i16 903, i16 270 }, %struct.vsb_snr_tab { i16 898, i16 265 }, %struct.vsb_snr_tab { i16 893, i16 260 }, %struct.vsb_snr_tab { i16 887, i16 255 }, %struct.vsb_snr_tab { i16 880, i16 250 }, %struct.vsb_snr_tab { i16 874, i16 245 }, %struct.vsb_snr_tab { i16 868, i16 240 }, %struct.vsb_snr_tab { i16 859, i16 235 }, %struct.vsb_snr_tab { i16 851, i16 230 }, %struct.vsb_snr_tab { i16 841, i16 225 }, %struct.vsb_snr_tab { i16 832, i16 220 }, %struct.vsb_snr_tab { i16 823, i16 215 }, %struct.vsb_snr_tab { i16 807, i16 210 }, %struct.vsb_snr_tab { i16 795, i16 205 }, %struct.vsb_snr_tab { i16 784, i16 200 }, %struct.vsb_snr_tab { i16 770, i16 195 }, %struct.vsb_snr_tab { i16 755, i16 190 }, %struct.vsb_snr_tab { i16 740, i16 185 }, %struct.vsb_snr_tab { i16 727, i16 180 }, %struct.vsb_snr_tab { i16 717, i16 175 }, %struct.vsb_snr_tab { i16 699, i16 170 }, %struct.vsb_snr_tab { i16 681, i16 165 }, %struct.vsb_snr_tab { i16 670, i16 160 }, %struct.vsb_snr_tab { i16 644, i16 155 }, %struct.vsb_snr_tab { i16 634, i16 150 }, %struct.vsb_snr_tab { i16 608, i16 145 }, %struct.vsb_snr_tab { i16 570, i16 140 }, %struct.vsb_snr_tab { i16 548, i16 135 }, %struct.vsb_snr_tab { i16 531, i16 130 }, %struct.vsb_snr_tab { i16 516, i16 125 }, %struct.vsb_snr_tab { i16 510, i16 120 }, %struct.vsb_snr_tab zeroinitializer], align 2
@.str.15 = private unnamed_addr constant [13 x i8] c"%s() snr=%d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_s5h1411_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @s5h1411_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 1068) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %72, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.s5h1411_state, ptr %11, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  store ptr %1, ptr %11, align 8
  %15 = getelementptr inbounds %struct.s5h1411_state, ptr %11, i32 0, i32 3
  store i32 7, ptr %15, align 8
  %16 = getelementptr inbounds %struct.s5h1411_config, ptr %0, i32 0, i32 5
  %17 = load i8, ptr %16, align 2
  %18 = getelementptr inbounds %struct.s5h1411_state, ptr %11, i32 0, i32 7
  store i8 %17, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 5, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i16 0, ptr %8, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %19 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %9, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %20, align 2
  store i16 1, ptr %19, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  store i16 25, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %25, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %9, i32 noundef 2) #10
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %30, label %28

28:                                               ; preds = %13
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %26) #11
  br label %30

30:                                               ; preds = %28, %13
  %31 = load i8, ptr %8, align 2
  %32 = zext i8 %31 to i16
  %33 = shl nuw i16 %32, 8
  %34 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i16
  %37 = or i16 %33, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %38 = icmp eq i16 %37, 102
  br i1 %38, label %39, label %72

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.s5h1411_state, ptr %11, i32 0, i32 2
  %41 = getelementptr inbounds %struct.s5h1411_state, ptr %11, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %41, ptr noundef nonnull align 4 dereferenceable(544) @s5h1411_ops, i32 544, i1 false)
  %42 = getelementptr inbounds %struct.s5h1411_state, ptr %11, i32 0, i32 2, i32 3
  store ptr %11, ptr %42, align 8
  %43 = call i32 @s5h1411_init(ptr noundef %40)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  store i8 -11, ptr %5, align 1
  %44 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %44, align 1
  %45 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 1, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %46 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %46, align 4, !annotation !8
  store i16 25, ptr %6, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %48, align 4
  %49 = load ptr, ptr %11, align 8
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %6, i32 noundef 1) #10
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %54, label %52

52:                                               ; preds = %39
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 245, i32 noundef 1, i32 noundef %50) #11
  br label %54

54:                                               ; preds = %52, %39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  %55 = load ptr, ptr %42, align 8
  %56 = load i32, ptr @debug, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1411_set_powerstate, i32 noundef 1) #11
  br label %60

60:                                               ; preds = %58, %54
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  store i8 -12, ptr %3, align 1
  %61 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %61, align 1
  %62 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 1, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %63 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %63, align 4, !annotation !8
  store i16 25, ptr %4, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %65, align 4
  %66 = load ptr, ptr %55, align 4
  %67 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %4, i32 noundef 1) #10
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %71, label %69

69:                                               ; preds = %60
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 244, i32 noundef 1, i32 noundef %67) #11
  br label %71

71:                                               ; preds = %69, %60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  br label %73

72:                                               ; preds = %30, %2
  call void @kfree(ptr noundef %11) #10
  br label %73

73:                                               ; preds = %72, %71
  %74 = phi ptr [ null, %72 ], [ %40, %71 ]
  ret ptr %74
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1411_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [3 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [1 x i8], align 1
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x %struct.i2c_msg], align 4
  %21 = alloca [3 x i8], align 1
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [3 x i8], align 1
  %24 = alloca %struct.i2c_msg, align 4
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1411_init) #11
  br label %31

31:                                               ; preds = %29, %1
  tail call fastcc void @s5h1411_set_powerstate(ptr noundef %0, i32 noundef 0)
  %32 = load ptr, ptr %25, align 4
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1411_register_reset) #11
  br label %37

37:                                               ; preds = %35, %31
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %23) #10
  store i8 -13, ptr %23, align 1
  %38 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 0, ptr %38, align 1
  %39 = getelementptr inbounds i8, ptr %23, i32 2
  store i8 0, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  %40 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 3, ptr %40, align 4, !annotation !8
  store i16 25, ptr %24, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %42, align 4
  %43 = load ptr, ptr %32, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %24, i32 noundef 1) #10
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 243, i32 noundef 0, i32 noundef %44) #11
  br label %48

48:                                               ; preds = %46, %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %23) #10
  %49 = getelementptr inbounds i8, ptr %21, i32 1
  %50 = getelementptr inbounds i8, ptr %21, i32 2
  %51 = getelementptr inbounds i8, ptr %22, i32 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  br label %54

54:                                               ; preds = %74, %48
  %55 = phi i32 [ 0, %48 ], [ %75, %74 ]
  %56 = getelementptr [80 x %struct.init_tab], ptr @init_tab, i32 0, i32 %55
  %57 = load i8, ptr %56, align 2
  %58 = getelementptr [80 x %struct.init_tab], ptr @init_tab, i32 0, i32 %55, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr [80 x %struct.init_tab], ptr @init_tab, i32 0, i32 %55, i32 2
  %61 = load i16, ptr %60, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %21) #10
  store i8 %59, ptr %21, align 1
  %62 = lshr i16 %61, 8
  %63 = trunc i16 %62 to i8
  store i8 %63, ptr %49, align 1
  %64 = trunc i16 %61 to i8
  store i8 %64, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  store i32 3, ptr %51, align 4, !annotation !8
  %65 = zext i8 %57 to i16
  store i16 %65, ptr %22, align 4
  store i16 0, ptr %52, align 2
  store ptr %21, ptr %53, align 4
  %66 = load ptr, ptr %26, align 4
  %67 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %22, i32 noundef 1) #10
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %74, label %69

69:                                               ; preds = %54
  %70 = zext i16 %61 to i32
  %71 = zext i8 %57 to i32
  %72 = zext i8 %59 to i32
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef %71, i32 noundef %72, i32 noundef %70, i32 noundef %67) #11
  br label %74

74:                                               ; preds = %69, %54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %21) #10
  %75 = add nuw nsw i32 %55, 1
  %76 = icmp eq i32 %75, 80
  br i1 %76, label %77, label %54

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.s5h1411_state, ptr %26, i32 0, i32 3
  store i32 7, ptr %78, align 4
  %79 = getelementptr inbounds %struct.s5h1411_state, ptr %26, i32 0, i32 4
  %80 = load i8, ptr %79, align 4
  %81 = or i8 %80, 1
  store i8 %81, ptr %79, align 4
  %82 = getelementptr inbounds %struct.s5h1411_state, ptr %26, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load i8, ptr %83, align 2
  %85 = icmp eq i8 %84, 1
  %86 = zext i1 %85 to i32
  call fastcc void @s5h1411_set_serialmode(ptr noundef %0, i32 noundef %86)
  %87 = load ptr, ptr %82, align 4
  %88 = getelementptr inbounds %struct.s5h1411_config, ptr %87, i32 0, i32 5
  %89 = load i8, ptr %88, align 2
  %90 = load ptr, ptr %25, align 4
  %91 = load i32, ptr @debug, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %77
  %94 = zext i8 %89 to i32
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1411_set_spectralinversion, i32 noundef %94) #11
  br label %96

96:                                               ; preds = %93, %77
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  store i8 36, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #10
  store i16 0, ptr %19, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #10
  %97 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %97, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %20, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %98, align 2
  store i16 1, ptr %97, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %18, ptr %99, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  store i16 25, ptr %100, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %101, align 2
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 2, ptr %102, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %19, ptr %103, align 4
  %104 = load ptr, ptr %90, align 4
  %105 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %20, i32 noundef 2) #10
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %109, label %107

107:                                              ; preds = %96
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %105) #11
  br label %109

109:                                              ; preds = %107, %96
  %110 = load i8, ptr %19, align 2
  %111 = zext i8 %110 to i16
  %112 = shl nuw i16 %111, 8
  %113 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  %116 = and i16 %112, -4352
  %117 = icmp eq i8 %89, 1
  %118 = select i1 %117, i16 4096, i16 0
  %119 = or i16 %118, %115
  %120 = or i16 %119, %116
  %121 = getelementptr inbounds %struct.s5h1411_state, ptr %90, i32 0, i32 7
  store i8 %89, ptr %121, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #10
  store i8 36, ptr %16, align 1
  %122 = getelementptr inbounds i8, ptr %16, i32 1
  %123 = lshr i16 %120, 8
  %124 = trunc i16 %123 to i8
  store i8 %124, ptr %122, align 1
  %125 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 %114, ptr %125, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %126 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 3, ptr %126, align 4, !annotation !8
  store i16 25, ptr %17, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %127, align 2
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %128, align 4
  %129 = load ptr, ptr %90, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %17, i32 noundef 1) #10
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %135, label %132

132:                                              ; preds = %109
  %133 = zext i16 %120 to i32
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 36, i32 noundef %133, i32 noundef %130) #11
  br label %135

135:                                              ; preds = %132, %109
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #10
  %136 = load ptr, ptr %82, align 4
  %137 = getelementptr inbounds %struct.s5h1411_config, ptr %136, i32 0, i32 4
  %138 = load i16, ptr %137, align 2
  %139 = zext i16 %138 to i32
  call fastcc void @s5h1411_set_if_freq(ptr noundef %0, i32 noundef %139)
  %140 = load ptr, ptr %82, align 4
  %141 = getelementptr inbounds %struct.s5h1411_config, ptr %140, i32 0, i32 1
  %142 = load i8, ptr %141, align 1
  %143 = load ptr, ptr %25, align 4
  %144 = load i32, ptr @debug, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %135
  %147 = zext i8 %142 to i32
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1411_set_gpio, i32 noundef %147) #11
  br label %149

149:                                              ; preds = %146, %135
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 -32, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #10
  store i16 0, ptr %14, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #10
  %150 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %150, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %15, align 4
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %151, align 2
  store i16 1, ptr %150, align 4
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %13, ptr %152, align 4
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  store i16 25, ptr %153, align 4
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %154, align 2
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 2, ptr %155, align 4
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %14, ptr %156, align 4
  %157 = load ptr, ptr %143, align 4
  %158 = call i32 @i2c_transfer(ptr noundef %157, ptr noundef nonnull %15, i32 noundef 2) #10
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %162, label %160

160:                                              ; preds = %149
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %158) #11
  br label %162

162:                                              ; preds = %160, %149
  %163 = load i8, ptr %14, align 2
  %164 = zext i8 %163 to i16
  %165 = shl nuw i16 %164, 8
  %166 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i16
  %169 = or i16 %165, %168
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  %170 = icmp eq i8 %142, 0
  br i1 %170, label %186, label %171

171:                                              ; preds = %162
  %172 = or i16 %169, 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #10
  store i8 -32, ptr %11, align 1
  %173 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %163, ptr %173, align 1
  %174 = getelementptr inbounds i8, ptr %11, i32 2
  %175 = trunc i16 %172 to i8
  store i8 %175, ptr %174, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %176 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 3, ptr %176, align 4, !annotation !8
  store i16 25, ptr %12, align 4
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %177, align 2
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %178, align 4
  %179 = load ptr, ptr %143, align 4
  %180 = call i32 @i2c_transfer(ptr noundef %179, ptr noundef nonnull %12, i32 noundef 1) #10
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %185, label %182

182:                                              ; preds = %171
  %183 = zext i16 %172 to i32
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 224, i32 noundef %183, i32 noundef %180) #11
  br label %185

185:                                              ; preds = %182, %171
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #10
  br label %201

186:                                              ; preds = %162
  %187 = and i16 %169, -3
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #10
  store i8 -32, ptr %9, align 1
  %188 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %163, ptr %188, align 1
  %189 = getelementptr inbounds i8, ptr %9, i32 2
  %190 = trunc i16 %187 to i8
  store i8 %190, ptr %189, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %191 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 3, ptr %191, align 4, !annotation !8
  store i16 25, ptr %10, align 4
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %192, align 2
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %193, align 4
  %194 = load ptr, ptr %143, align 4
  %195 = call i32 @i2c_transfer(ptr noundef %194, ptr noundef nonnull %10, i32 noundef 1) #10
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %200, label %197

197:                                              ; preds = %186
  %198 = zext i16 %187 to i32
  %199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 224, i32 noundef %198, i32 noundef %195) #11
  br label %200

200:                                              ; preds = %197, %186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #10
  br label %201

201:                                              ; preds = %200, %185
  %202 = load ptr, ptr %82, align 4
  %203 = getelementptr inbounds %struct.s5h1411_config, ptr %202, i32 0, i32 2
  %204 = load i16, ptr %203, align 2
  %205 = load ptr, ptr %25, align 4
  %206 = load i32, ptr @debug, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %201
  %209 = zext i16 %204 to i32
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1411_set_mpeg_timing, i32 noundef %209) #11
  br label %211

211:                                              ; preds = %208, %201
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 -66, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 0, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %212 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %212, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %8, align 4
  %213 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %213, align 2
  store i16 1, ptr %212, align 4
  %214 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %214, align 4
  %215 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 25, ptr %215, align 4
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %216, align 2
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 2, ptr %217, align 4
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %218, align 4
  %219 = load ptr, ptr %205, align 4
  %220 = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %8, i32 noundef 2) #10
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %224, label %222

222:                                              ; preds = %211
  %223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %220) #11
  br label %224

224:                                              ; preds = %222, %211
  %225 = load i8, ptr %7, align 2
  %226 = zext i8 %225 to i16
  %227 = shl nuw i16 %226, 8
  %228 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %229 = load i8, ptr %228, align 1
  %230 = zext i8 %229 to i16
  %231 = or i16 %227, %230
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %232 = and i16 %231, -12289
  switch i16 %204, label %261 [
    i16 0, label %244
    i16 1, label %233
    i16 2, label %240
    i16 3, label %242
  ]

233:                                              ; preds = %224
  %234 = load i32, ptr @debug, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %233
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5h1411_set_mpeg_timing, i32 noundef 1) #11
  br label %238

238:                                              ; preds = %236, %233
  %239 = or i16 %232, 4096
  br label %244

240:                                              ; preds = %224
  %241 = or i16 %232, 8192
  br label %244

242:                                              ; preds = %224
  %243 = or i16 %231, 12288
  br label %244

244:                                              ; preds = %242, %240, %238, %224
  %245 = phi i16 [ %243, %242 ], [ %241, %240 ], [ %239, %238 ], [ %232, %224 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  store i8 -66, ptr %4, align 1
  %246 = getelementptr inbounds i8, ptr %4, i32 1
  %247 = lshr i16 %245, 8
  %248 = trunc i16 %247 to i8
  store i8 %248, ptr %246, align 1
  %249 = getelementptr inbounds i8, ptr %4, i32 2
  %250 = trunc i16 %245 to i8
  store i8 %250, ptr %249, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %251 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %251, align 4, !annotation !8
  store i16 25, ptr %5, align 4
  %252 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %252, align 2
  %253 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %253, align 4
  %254 = load ptr, ptr %205, align 4
  %255 = call i32 @i2c_transfer(ptr noundef %254, ptr noundef nonnull %5, i32 noundef 1) #10
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %260, label %257

257:                                              ; preds = %244
  %258 = zext i16 %245 to i32
  %259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 190, i32 noundef %258, i32 noundef %255) #11
  br label %260

260:                                              ; preds = %257, %244
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  br label %261

261:                                              ; preds = %260, %224
  call fastcc void @s5h1411_softreset(ptr noundef %0)
  %262 = load ptr, ptr %25, align 4
  %263 = load i32, ptr @debug, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %261
  %266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1411_i2c_gate_ctrl, i32 noundef 0) #11
  br label %267

267:                                              ; preds = %265, %261
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  store i8 -11, ptr %2, align 1
  %268 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %268, align 1
  %269 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %269, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %270 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %270, align 4, !annotation !8
  store i16 25, ptr %3, align 4
  %271 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %271, align 2
  %272 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %272, align 4
  %273 = load ptr, ptr %262, align 4
  %274 = call i32 @i2c_transfer(ptr noundef %273, ptr noundef nonnull %3, i32 noundef 1) #10
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %278, label %276

276:                                              ; preds = %267
  %277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 245, i32 noundef 0, i32 noundef %274) #11
  br label %278

278:                                              ; preds = %276, %267
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5h1411_set_powerstate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1411_set_powerstate, i32 noundef %1) #11
  br label %13

13:                                               ; preds = %11, %2
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  store i8 -12, ptr %5, align 1
  %16 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 1, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %18 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %18, align 4, !annotation !8
  store i16 25, ptr %6, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %20, align 4
  %21 = load ptr, ptr %8, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %6, i32 noundef 1) #10
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 244, i32 noundef 1, i32 noundef %22) #11
  br label %26

26:                                               ; preds = %24, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  br label %39

27:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  store i8 -12, ptr %3, align 1
  %28 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %30 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %30, align 4, !annotation !8
  store i16 25, ptr %4, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %32, align 4
  %33 = load ptr, ptr %8, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %4, i32 noundef 1) #10
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 244, i32 noundef 0, i32 noundef %34) #11
  br label %38

38:                                               ; preds = %36, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  call fastcc void @s5h1411_softreset(ptr noundef %0)
  br label %39

39:                                               ; preds = %38, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5h1411_set_serialmode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1411_set_serialmode, i32 noundef %1) #11
  br label %14

14:                                               ; preds = %12, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 -67, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 0, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %15 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %7, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 25, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %21, align 4
  %22 = load ptr, ptr %9, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %7, i32 noundef 2) #10
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %23) #11
  br label %27

27:                                               ; preds = %25, %14
  %28 = load i8, ptr %6, align 2
  %29 = zext i8 %28 to i16
  %30 = shl nuw i16 %29, 8
  %31 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %34 = and i16 %30, -512
  %35 = icmp eq i32 %1, 1
  %36 = select i1 %35, i16 256, i16 0
  %37 = or i16 %36, %33
  %38 = or i16 %37, %34
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  store i8 -67, ptr %3, align 1
  %39 = getelementptr inbounds i8, ptr %3, i32 1
  %40 = lshr i16 %38, 8
  %41 = trunc i16 %40 to i8
  store i8 %41, ptr %39, align 1
  %42 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %32, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %43 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %43, align 4, !annotation !8
  store i16 25, ptr %4, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %45, align 4
  %46 = load ptr, ptr %9, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %4, i32 noundef 1) #10
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %27
  %50 = zext i16 %38 to i32
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 189, i32 noundef %50, i32 noundef %47) #11
  br label %52

52:                                               ; preds = %49, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5h1411_set_if_freq(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [3 x i8], align 1
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [3 x i8], align 1
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [3 x i8], align 1
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [3 x i8], align 1
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [3 x i8], align 1
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [3 x i8], align 1
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [3 x i8], align 1
  %26 = alloca %struct.i2c_msg, align 4
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %2
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1411_set_if_freq, i32 noundef %1) #11
  br label %33

33:                                               ; preds = %31, %2
  switch i32 %1, label %136 [
    i32 3250, label %34
    i32 3500, label %68
    i32 4000, label %102
    i32 5380, label %141
    i32 44000, label %141
  ]

34:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %25) #10
  store i8 56, ptr %25, align 1
  %35 = getelementptr inbounds i8, ptr %25, i32 1
  store i8 16, ptr %35, align 1
  %36 = getelementptr inbounds i8, ptr %25, i32 2
  store i8 -43, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #10
  %37 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 3, ptr %37, align 4, !annotation !8
  store i16 25, ptr %26, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %39, align 4
  %40 = load ptr, ptr %28, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %26, i32 noundef 1) #10
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 56, i32 noundef 4309, i32 noundef %41) #11
  br label %45

45:                                               ; preds = %43, %34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %23) #10
  store i8 57, ptr %23, align 1
  %46 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 83, ptr %46, align 1
  %47 = getelementptr inbounds i8, ptr %23, i32 2
  store i8 66, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  %48 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 3, ptr %48, align 4, !annotation !8
  store i16 25, ptr %24, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %50, align 4
  %51 = load ptr, ptr %28, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %24, i32 noundef 1) #10
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 57, i32 noundef 21314, i32 noundef %52) #11
  br label %56

56:                                               ; preds = %54, %45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %23) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %21) #10
  store i8 44, ptr %21, align 1
  %57 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 16, ptr %57, align 1
  %58 = getelementptr inbounds i8, ptr %21, i32 2
  store i8 -39, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  %59 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 3, ptr %59, align 4, !annotation !8
  store i16 26, ptr %22, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %60, align 2
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %61, align 4
  %62 = load ptr, ptr %28, align 4
  %63 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %22, i32 noundef 1) #10
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %67, label %65

65:                                               ; preds = %56
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 26, i32 noundef 44, i32 noundef 4313, i32 noundef %63) #11
  br label %67

67:                                               ; preds = %65, %56
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %21) #10
  br label %175

68:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %19) #10
  store i8 56, ptr %19, align 1
  %69 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 18, ptr %69, align 1
  %70 = getelementptr inbounds i8, ptr %19, i32 2
  store i8 37, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %71 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 3, ptr %71, align 4, !annotation !8
  store i16 25, ptr %20, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %73, align 4
  %74 = load ptr, ptr %28, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %20, i32 noundef 1) #10
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %79, label %77

77:                                               ; preds = %68
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 56, i32 noundef 4645, i32 noundef %75) #11
  br label %79

79:                                               ; preds = %77, %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %17) #10
  store i8 57, ptr %17, align 1
  %80 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 30, ptr %80, align 1
  %81 = getelementptr inbounds i8, ptr %17, i32 2
  store i8 -106, ptr %81, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  %82 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 3, ptr %82, align 4, !annotation !8
  store i16 25, ptr %18, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %83, align 2
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %84, align 4
  %85 = load ptr, ptr %28, align 4
  %86 = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %18, i32 noundef 1) #10
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %90, label %88

88:                                               ; preds = %79
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 57, i32 noundef 7830, i32 noundef %86) #11
  br label %90

90:                                               ; preds = %88, %79
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %15) #10
  store i8 44, ptr %15, align 1
  %91 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 18, ptr %91, align 1
  %92 = getelementptr inbounds i8, ptr %15, i32 2
  store i8 37, ptr %92, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %93 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 3, ptr %93, align 4, !annotation !8
  store i16 26, ptr %16, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %94, align 2
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %95, align 4
  %96 = load ptr, ptr %28, align 4
  %97 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %16, i32 noundef 1) #10
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %101, label %99

99:                                               ; preds = %90
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 26, i32 noundef 44, i32 noundef 4645, i32 noundef %97) #11
  br label %101

101:                                              ; preds = %99, %90
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %15) #10
  br label %175

102:                                              ; preds = %33
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %13) #10
  store i8 56, ptr %13, align 1
  %103 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 20, ptr %103, align 1
  %104 = getelementptr inbounds i8, ptr %13, i32 2
  store i8 -68, ptr %104, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %105 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 3, ptr %105, align 4, !annotation !8
  store i16 25, ptr %14, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %106, align 2
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %107, align 4
  %108 = load ptr, ptr %28, align 4
  %109 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %14, i32 noundef 1) #10
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %113, label %111

111:                                              ; preds = %102
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 56, i32 noundef 5308, i32 noundef %109) #11
  br label %113

113:                                              ; preds = %111, %102
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #10
  store i8 57, ptr %11, align 1
  %114 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 -75, ptr %114, align 1
  %115 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 62, ptr %115, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %116 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 3, ptr %116, align 4, !annotation !8
  store i16 25, ptr %12, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %117, align 2
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %118, align 4
  %119 = load ptr, ptr %28, align 4
  %120 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %12, i32 noundef 1) #10
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %124, label %122

122:                                              ; preds = %113
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 57, i32 noundef 46398, i32 noundef %120) #11
  br label %124

124:                                              ; preds = %122, %113
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #10
  store i8 44, ptr %9, align 1
  %125 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 20, ptr %125, align 1
  %126 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 -67, ptr %126, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %127 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 3, ptr %127, align 4, !annotation !8
  store i16 26, ptr %10, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %128, align 2
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %129, align 4
  %130 = load ptr, ptr %28, align 4
  %131 = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %10, i32 noundef 1) #10
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %135, label %133

133:                                              ; preds = %124
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 26, i32 noundef 44, i32 noundef 5309, i32 noundef %131) #11
  br label %135

135:                                              ; preds = %133, %124
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #10
  br label %175

136:                                              ; preds = %33
  %137 = load i32, ptr @debug, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5h1411_set_if_freq, i32 noundef %1) #11
  br label %141

141:                                              ; preds = %139, %136, %33, %33
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #10
  store i8 56, ptr %7, align 1
  %142 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 27, ptr %142, align 1
  %143 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 -28, ptr %143, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %144 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 3, ptr %144, align 4, !annotation !8
  store i16 25, ptr %8, align 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %145, align 2
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %146, align 4
  %147 = load ptr, ptr %28, align 4
  %148 = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %8, i32 noundef 1) #10
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %152, label %150

150:                                              ; preds = %141
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 56, i32 noundef 7140, i32 noundef %148) #11
  br label %152

152:                                              ; preds = %150, %141
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  store i8 57, ptr %5, align 1
  %153 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 54, ptr %153, align 1
  %154 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 85, ptr %154, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %155 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %155, align 4, !annotation !8
  store i16 25, ptr %6, align 4
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %156, align 2
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %157, align 4
  %158 = load ptr, ptr %28, align 4
  %159 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %6, i32 noundef 1) #10
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %163, label %161

161:                                              ; preds = %152
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 57, i32 noundef 13909, i32 noundef %159) #11
  br label %163

163:                                              ; preds = %161, %152
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  store i8 44, ptr %3, align 1
  %164 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 27, ptr %164, align 1
  %165 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 -28, ptr %165, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %166 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %166, align 4, !annotation !8
  store i16 26, ptr %4, align 4
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %167, align 2
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %168, align 4
  %169 = load ptr, ptr %28, align 4
  %170 = call i32 @i2c_transfer(ptr noundef %169, ptr noundef nonnull %4, i32 noundef 1) #10
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %174, label %172

172:                                              ; preds = %163
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 26, i32 noundef 44, i32 noundef 7140, i32 noundef %170) #11
  br label %174

174:                                              ; preds = %172, %163
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  br label %175

175:                                              ; preds = %174, %135, %101, %67
  %176 = getelementptr inbounds %struct.s5h1411_state, ptr %28, i32 0, i32 6
  store i32 %1, ptr %176, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5h1411_softreset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1411_softreset) #11
  br label %12

12:                                               ; preds = %10, %1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  store i8 -9, ptr %4, align 1
  %13 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %15, align 4, !annotation !8
  store i16 25, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %17, align 4
  %18 = load ptr, ptr %7, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %5, i32 noundef 1) #10
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 247, i32 noundef 0, i32 noundef %19) #11
  br label %23

23:                                               ; preds = %21, %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  store i8 -9, ptr %2, align 1
  %24 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %24, align 1
  %25 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 1, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %26 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %26, align 4, !annotation !8
  store i16 25, ptr %3, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %28, align 4
  %29 = load ptr, ptr %7, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %3, i32 noundef 1) #10
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 247, i32 noundef 1, i32 noundef %30) #11
  br label %34

34:                                               ; preds = %32, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1411_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1411_i2c_gate_ctrl, i32 noundef %1) #11
  br label %13

13:                                               ; preds = %11, %2
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  store i8 -11, ptr %5, align 1
  %16 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 1, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %18 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %18, align 4, !annotation !8
  store i16 25, ptr %6, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %20, align 4
  %21 = load ptr, ptr %8, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %6, i32 noundef 1) #10
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 245, i32 noundef 1, i32 noundef %22) #11
  br label %26

26:                                               ; preds = %24, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  br label %39

27:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  store i8 -11, ptr %3, align 1
  %28 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %30 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %30, align 4, !annotation !8
  store i16 25, ptr %4, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %32, align 4
  %33 = load ptr, ptr %8, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %4, i32 noundef 1) #10
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 245, i32 noundef 0, i32 noundef %34) #11
  br label %38

38:                                               ; preds = %36, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  br label %39

39:                                               ; preds = %38, %26
  %40 = phi i1 [ %23, %26 ], [ %35, %38 ]
  %41 = xor i1 %40, true
  %42 = sext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5h1411_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1411_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1411_set_powerstate, i32 noundef 1) #11
  br label %10

10:                                               ; preds = %8, %1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  store i8 -12, ptr %2, align 1
  %11 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 1, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %13 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %13, align 4, !annotation !8
  store i16 25, ptr %3, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %15, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %3, i32 noundef 1) #10
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 244, i32 noundef 1, i32 noundef %17) #11
  br label %21

21:                                               ; preds = %19, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1411_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [3 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [3 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, ptr %16, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5h1411_set_frontend, i32 noundef %22) #11
  br label %24

24:                                               ; preds = %21, %1
  tail call fastcc void @s5h1411_softreset(ptr noundef %0)
  %25 = load i32, ptr %16, align 4
  %26 = getelementptr inbounds %struct.s5h1411_state, ptr %18, i32 0, i32 5
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %17, align 4
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.s5h1411_enable_modulation, i32 noundef %28) #11
  br label %34

34:                                               ; preds = %32, %24
  %35 = getelementptr inbounds %struct.s5h1411_state, ptr %29, i32 0, i32 4
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.s5h1411_state, ptr %29, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %28
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %157, label %46

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5h1411_enable_modulation) #11
  br label %157

48:                                               ; preds = %39, %34
  switch i32 %28, label %148 [
    i32 7, label %49
    i32 3, label %93
    i32 5, label %93
    i32 6, label %93
  ]

49:                                               ; preds = %48
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.s5h1411_enable_modulation) #11
  br label %54

54:                                               ; preds = %52, %49
  %55 = getelementptr inbounds %struct.s5h1411_state, ptr %29, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.s5h1411_config, ptr %56, i32 0, i32 4
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  tail call fastcc void @s5h1411_set_if_freq(ptr noundef %0, i32 noundef %59) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %14) #10
  store i8 0, ptr %14, align 1
  %60 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 0, ptr %60, align 1
  %61 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 113, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %62 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 3, ptr %62, align 4, !annotation !8
  store i16 25, ptr %15, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %63, align 2
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %64, align 4
  %65 = load ptr, ptr %29, align 4
  %66 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %15, i32 noundef 1) #10
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %70, label %68

68:                                               ; preds = %54
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 0, i32 noundef 113, i32 noundef %66) #11
  br label %70

70:                                               ; preds = %68, %54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #10
  store i8 -10, ptr %12, align 1
  %71 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 0, ptr %71, align 1
  %72 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 0, ptr %72, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %73 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 3, ptr %73, align 4, !annotation !8
  store i16 25, ptr %13, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %74, align 2
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %75, align 4
  %76 = load ptr, ptr %29, align 4
  %77 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %13, i32 noundef 1) #10
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %81, label %79

79:                                               ; preds = %70
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 246, i32 noundef 0, i32 noundef %77) #11
  br label %81

81:                                               ; preds = %79, %70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #10
  store i8 -51, ptr %10, align 1
  %82 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 0, ptr %82, align 1
  %83 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 -15, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %84 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %84, align 4, !annotation !8
  store i16 25, ptr %11, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %85, align 2
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %86, align 4
  %87 = load ptr, ptr %29, align 4
  %88 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %11, i32 noundef 1) #10
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %92, label %90

90:                                               ; preds = %81
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 205, i32 noundef 241, i32 noundef %88) #11
  br label %92

92:                                               ; preds = %90, %81
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #10
  br label %153

93:                                               ; preds = %48, %48, %48
  %94 = load i32, ptr @debug, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.s5h1411_enable_modulation) #11
  br label %98

98:                                               ; preds = %96, %93
  %99 = getelementptr inbounds %struct.s5h1411_state, ptr %29, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.s5h1411_config, ptr %100, i32 0, i32 3
  %102 = load i16, ptr %101, align 2
  %103 = zext i16 %102 to i32
  tail call fastcc void @s5h1411_set_if_freq(ptr noundef %0, i32 noundef %103) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  %104 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 1, ptr %104, align 1
  %105 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 113, ptr %105, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %106 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %106, align 4, !annotation !8
  store i16 25, ptr %9, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %107, align 2
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %108, align 4
  %109 = load ptr, ptr %29, align 4
  %110 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %9, i32 noundef 1) #10
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %114, label %112

112:                                              ; preds = %98
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 0, i32 noundef 369, i32 noundef %110) #11
  br label %114

114:                                              ; preds = %112, %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #10
  store i8 -10, ptr %6, align 1
  %115 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %115, align 1
  %116 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 1, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %117 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %117, align 4, !annotation !8
  store i16 25, ptr %7, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %118, align 2
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %119, align 4
  %120 = load ptr, ptr %29, align 4
  %121 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %7, i32 noundef 1) #10
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %125, label %123

123:                                              ; preds = %114
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 246, i32 noundef 1, i32 noundef %121) #11
  br label %125

125:                                              ; preds = %123, %114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  store i8 22, ptr %4, align 1
  %126 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 17, ptr %126, align 1
  %127 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 1, ptr %127, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %128 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %128, align 4, !annotation !8
  store i16 26, ptr %5, align 4
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %129, align 2
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %130, align 4
  %131 = load ptr, ptr %29, align 4
  %132 = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %5, i32 noundef 1) #10
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 26, i32 noundef 22, i32 noundef 4353, i32 noundef %132) #11
  br label %136

136:                                              ; preds = %134, %125
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  store i8 -51, ptr %2, align 1
  %137 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %137, align 1
  %138 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 -16, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %139 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %139, align 4, !annotation !8
  store i16 25, ptr %3, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %140, align 2
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %141, align 4
  %142 = load ptr, ptr %29, align 4
  %143 = call i32 @i2c_transfer(ptr noundef %142, ptr noundef nonnull %3, i32 noundef 1) #10
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %147, label %145

145:                                              ; preds = %136
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1411_writereg, i32 noundef 25, i32 noundef 205, i32 noundef 240, i32 noundef %143) #11
  br label %147

147:                                              ; preds = %145, %136
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  br label %153

148:                                              ; preds = %48
  %149 = load i32, ptr @debug, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.s5h1411_enable_modulation) #11
  br label %157

153:                                              ; preds = %147, %92
  %154 = getelementptr inbounds %struct.s5h1411_state, ptr %29, i32 0, i32 3
  store i32 %28, ptr %154, align 4
  %155 = load i8, ptr %35, align 4
  %156 = and i8 %155, -2
  store i8 %156, ptr %35, align 4
  call fastcc void @s5h1411_softreset(ptr noundef %0) #10
  br label %157

157:                                              ; preds = %153, %151, %148, %46, %43
  %158 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %175, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = call i32 %163(ptr noundef %0, i32 noundef 1) #10
  %167 = load ptr, ptr %158, align 4
  br label %168

168:                                              ; preds = %165, %161
  %169 = phi ptr [ %167, %165 ], [ %159, %161 ]
  %170 = call i32 %169(ptr noundef %0) #10
  %171 = load ptr, ptr %162, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %168
  %174 = call i32 %171(ptr noundef %0, i32 noundef 0) #10
  br label %175

175:                                              ; preds = %173, %168, %157
  call fastcc void @s5h1411_softreset(ptr noundef %0)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @s5h1411_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s5h1411_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5h1411_state, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.s5h1411_state, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1411_read_status(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store i32 0, ptr %12, align 4
  store i32 0, ptr %1, align 4
  %15 = getelementptr inbounds %struct.s5h1411_state, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %132 [
    i32 3, label %17
    i32 5, label %17
    i32 7, label %42
  ]

17:                                               ; preds = %2, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 -16, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i16 0, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %18 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %18, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %11, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 1, ptr %18, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 25, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %24, align 4
  %25 = load ptr, ptr %14, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %11, i32 noundef 2) #10
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %26) #11
  br label %30

30:                                               ; preds = %28, %17
  %31 = load i8, ptr %10, align 2
  %32 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %34 = and i8 %33, 16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %1, align 4
  %38 = or i32 %37, 24
  store i32 %38, ptr %1, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = and i8 %31, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %91, label %87

42:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 -14, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 0, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %43 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %43, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %8, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %44, align 2
  store i16 1, ptr %43, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 25, ptr %46, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %49, align 4
  %50 = load ptr, ptr %14, align 4
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %8, i32 noundef 2) #10
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %51) #11
  br label %55

55:                                               ; preds = %53, %42
  %56 = load i8, ptr %7, align 2
  %57 = zext i8 %56 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %58 = and i32 %57, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %1, align 4
  %62 = or i32 %61, 24
  store i32 %62, ptr %1, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = and i32 %57, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %1, align 4
  %68 = or i32 %67, 7
  store i32 %68, ptr %1, align 4
  br label %69

69:                                               ; preds = %66, %63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 83, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %70 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %70, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %5, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %71, align 2
  store i16 1, ptr %70, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %72, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 25, ptr %73, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %74, align 2
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %75, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %76, align 4
  %77 = load ptr, ptr %14, align 4
  %78 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %5, i32 noundef 2) #10
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %82, label %80

80:                                               ; preds = %69
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %78) #11
  br label %82

82:                                               ; preds = %80, %69
  %83 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %84 = load i8, ptr %83, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %82, %39
  %88 = phi i32 [ 7, %39 ], [ 1, %82 ]
  %89 = load i32, ptr %1, align 4
  %90 = or i32 %89, %88
  store i32 %90, ptr %1, align 4
  br label %91

91:                                               ; preds = %87, %82, %39
  %92 = getelementptr inbounds %struct.s5h1411_state, ptr %14, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.s5h1411_config, ptr %93, i32 0, i32 6
  %95 = load i8, ptr %94, align 1
  switch i8 %95, label %126 [
    i8 1, label %96
    i8 0, label %100
  ]

96:                                               ; preds = %91
  %97 = load i32, ptr %1, align 4
  %98 = and i32 %97, 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %126, label %123

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 12
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %118, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = call i32 %106(ptr noundef %0, i32 noundef 1) #10
  %110 = load ptr, ptr %101, align 4
  br label %111

111:                                              ; preds = %108, %104
  %112 = phi ptr [ %110, %108 ], [ %102, %104 ]
  %113 = call i32 %112(ptr noundef %0, ptr noundef nonnull %12) #10
  %114 = load ptr, ptr %105, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = call i32 %114(ptr noundef %0, i32 noundef 0) #10
  br label %118

118:                                              ; preds = %116, %111, %100
  %119 = load i32, ptr %12, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118
  %122 = load i32, ptr %1, align 4
  br label %123

123:                                              ; preds = %121, %96
  %124 = phi i32 [ %122, %121 ], [ %97, %96 ]
  %125 = or i32 %124, 3
  store i32 %125, ptr %1, align 4
  br label %126

126:                                              ; preds = %123, %118, %96, %91
  %127 = load i32, ptr @debug, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, ptr %1, align 4
  %131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.s5h1411_read_status, i32 noundef %130) #11
  br label %132

132:                                              ; preds = %129, %126, %2
  %133 = phi i32 [ -22, %2 ], [ 0, %129 ], [ 0, %126 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1411_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 -55, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %5, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %9, align 2
  store i16 1, ptr %8, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 25, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %14, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %5, i32 noundef 2) #10
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %16) #11
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i8, ptr %4, align 2
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %23, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  store i32 %27, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1411_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = call i32 @s5h1411_read_snr(ptr noundef %0, ptr noundef nonnull %3)
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
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1411_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1411_read_snr) #11
  br label %18

18:                                               ; preds = %16, %2
  %19 = getelementptr inbounds %struct.s5h1411_state, ptr %13, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %141 [
    i32 3, label %21
    i32 5, label %58
    i32 7, label %95
  ]

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 -15, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i16 0, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %22 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %22, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %11, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %23, align 2
  store i16 1, ptr %22, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %28, align 4
  %29 = load ptr, ptr %13, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %11, i32 noundef 2) #10
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %30) #11
  br label %34

34:                                               ; preds = %32, %21
  %35 = load i8, ptr %10, align 2
  %36 = zext i8 %35 to i16
  %37 = shl nuw i16 %36, 8
  %38 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i16
  %41 = or i16 %37, %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1411_qam64_lookup_snr) #11
  br label %46

46:                                               ; preds = %44, %34
  br label %47

47:                                               ; preds = %55, %46
  %48 = phi i32 [ %56, %55 ], [ 0, %46 ]
  %49 = getelementptr [66 x %struct.qam64_snr_tab], ptr @qam64_snr_tab, i32 0, i32 %48
  %50 = load i16, ptr %49, align 2
  %51 = icmp ugt i16 %50, %41
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = getelementptr [66 x %struct.qam64_snr_tab], ptr @qam64_snr_tab, i32 0, i32 %48, i32 1
  %54 = load i16, ptr %53, align 2
  store i16 %54, ptr %1, align 2
  br label %141

55:                                               ; preds = %47
  %56 = add nuw nsw i32 %48, 1
  %57 = icmp eq i32 %56, 66
  br i1 %57, label %141, label %47

58:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 -15, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 0, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %59 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %59, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %8, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %60, align 2
  store i16 1, ptr %59, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 25, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %63, align 2
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 2, ptr %64, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %65, align 4
  %66 = load ptr, ptr %13, align 4
  %67 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %8, i32 noundef 2) #10
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %71, label %69

69:                                               ; preds = %58
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %67) #11
  br label %71

71:                                               ; preds = %69, %58
  %72 = load i8, ptr %7, align 2
  %73 = zext i8 %72 to i16
  %74 = shl nuw i16 %73, 8
  %75 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i16
  %78 = or i16 %74, %77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %79 = load i32, ptr @debug, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %71
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1411_qam256_lookup_snr) #11
  br label %83

83:                                               ; preds = %81, %71
  br label %84

84:                                               ; preds = %92, %83
  %85 = phi i32 [ %93, %92 ], [ 0, %83 ]
  %86 = getelementptr [72 x %struct.qam256_snr_tab], ptr @qam256_snr_tab, i32 0, i32 %85
  %87 = load i16, ptr %86, align 2
  %88 = icmp ugt i16 %87, %78
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = getelementptr [72 x %struct.qam256_snr_tab], ptr @qam256_snr_tab, i32 0, i32 %85, i32 1
  %91 = load i16, ptr %90, align 2
  store i16 %91, ptr %1, align 2
  br label %141

92:                                               ; preds = %84
  %93 = add nuw nsw i32 %85, 1
  %94 = icmp eq i32 %93, 72
  br i1 %94, label %141, label %84

95:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 -14, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %96 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %96, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %5, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %97, align 2
  store i16 1, ptr %96, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %98, align 4
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 25, ptr %99, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %100, align 2
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %101, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %102, align 4
  %103 = load ptr, ptr %13, align 4
  %104 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %5, i32 noundef 2) #10
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %108, label %106

106:                                              ; preds = %95
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %104) #11
  br label %108

108:                                              ; preds = %106, %95
  %109 = load i8, ptr %4, align 2
  %110 = zext i8 %109 to i16
  %111 = shl nuw i16 %110, 8
  %112 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %115 = and i16 %111, 768
  %116 = or i16 %115, %114
  %117 = load i32, ptr @debug, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %108
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1411_vsb_lookup_snr) #11
  br label %121

121:                                              ; preds = %119, %108
  br label %122

122:                                              ; preds = %130, %121
  %123 = phi i32 [ %131, %130 ], [ 0, %121 ]
  %124 = getelementptr [38 x %struct.vsb_snr_tab], ptr @vsb_snr_tab, i32 0, i32 %123
  %125 = load i16, ptr %124, align 2
  %126 = icmp ult i16 %125, %116
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = getelementptr [38 x %struct.vsb_snr_tab], ptr @vsb_snr_tab, i32 0, i32 %123, i32 1
  %129 = load i16, ptr %128, align 2
  store i16 %129, ptr %1, align 2
  br label %133

130:                                              ; preds = %122
  %131 = add nuw nsw i32 %123, 1
  %132 = icmp eq i32 %131, 38
  br i1 %132, label %133, label %122

133:                                              ; preds = %130, %127
  %134 = phi i32 [ 0, %127 ], [ -22, %130 ]
  %135 = load i32, ptr @debug, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i16, ptr %1, align 2
  %139 = zext i16 %138 to i32
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.s5h1411_vsb_lookup_snr, i32 noundef %139) #11
  br label %141

141:                                              ; preds = %137, %133, %92, %89, %55, %52, %18
  %142 = phi i32 [ -22, %18 ], [ 0, %52 ], [ 0, %89 ], [ %134, %133 ], [ %134, %137 ], [ -22, %55 ], [ -22, %92 ]
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1411_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 -55, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  store i16 25, ptr %5, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %9, align 2
  store i16 1, ptr %8, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 25, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %14, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %5, i32 noundef 2) #10
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1411_readreg, i32 noundef %16) #11
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i8, ptr %4, align 2
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %23, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  store i32 %27, ptr %1, align 4
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
