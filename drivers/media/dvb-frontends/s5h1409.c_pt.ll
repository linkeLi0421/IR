; ModuleID = '/llk/IR/drivers/media/dvb-frontends/s5h1409.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/s5h1409.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s5h1409_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22s5h1409_attach\22\09\09\09\09\09"
module asm "__kstrtabns_s5h1409_attach:\09\09\09\09\09"
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
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.init_tab = type { i8, i16 }
%struct.qam64_snr_tab = type { i16, i16 }
%struct.qam256_snr_tab = type { i16, i16 }
%struct.vsb_snr_tab = type { i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.s5h1409_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.s5h1409_config = type { i8, i8, i8, i16, i8, i8, i16, i8 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [41 x i8] c"parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@s5h1409_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Samsung S5H1409 QAM/8VSB Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @s5h1409_release, ptr null, ptr @s5h1409_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5h1409_set_frontend, ptr @s5h1409_get_tune_settings, ptr @s5h1409_get_frontend, ptr @s5h1409_read_status, ptr @s5h1409_read_ber, ptr @s5h1409_read_signal_strength, ptr @s5h1409_read_snr, ptr @s5h1409_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5h1409_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_s5h1409_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_s5h1409_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_s5h1409_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s5h1409_attach to i32), ptr @__kstrtab_s5h1409_attach, ptr @__kstrtabns_s5h1409_attach }, section "___ksymtab+s5h1409_attach", align 4
@__UNIQUE_ID_description251 = internal constant [58 x i8] c"description=Samsung S5H1409 QAM-B/ATSC Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [19 x i8] c"author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: readreg error (ret == %i)\0A\00", align 1
@__func__.s5h1409_readreg = private unnamed_addr constant [16 x i8] c"s5h1409_readreg\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s()\0A\00", align 1
@__func__.s5h1409_init = private unnamed_addr constant [13 x i8] c"s5h1409_init\00", align 1
@init_tab = internal unnamed_addr constant [45 x %struct.init_tab] [%struct.init_tab { i8 0, i16 113 }, %struct.init_tab { i8 1, i16 12819 }, %struct.init_tab { i8 9, i16 37 }, %struct.init_tab { i8 28, i16 29 }, %struct.init_tab { i8 31, i16 45 }, %struct.init_tab { i8 32, i16 29 }, %struct.init_tab { i8 34, i16 34 }, %struct.init_tab { i8 35, i16 32 }, %struct.init_tab { i8 41, i16 4367 }, %struct.init_tab { i8 42, i16 4276 }, %struct.init_tab { i8 43, i16 4270 }, %struct.init_tab { i8 44, i16 49 }, %struct.init_tab { i8 49, i16 269 }, %struct.init_tab { i8 50, i16 256 }, %struct.init_tab { i8 68, i16 1296 }, %struct.init_tab { i8 84, i16 260 }, %struct.init_tab { i8 88, i16 8738 }, %struct.init_tab { i8 89, i16 4450 }, %struct.init_tab { i8 90, i16 12817 }, %struct.init_tab { i8 93, i16 880 }, %struct.init_tab { i8 94, i16 662 }, %struct.init_tab { i8 97, i16 16 }, %struct.init_tab { i8 99, i16 18944 }, %struct.init_tab { i8 101, i16 2048 }, %struct.init_tab { i8 113, i16 3 }, %struct.init_tab { i8 114, i16 1136 }, %struct.init_tab { i8 -127, i16 2 }, %struct.init_tab { i8 -126, i16 1536 }, %struct.init_tab { i8 -122, i16 2 }, %struct.init_tab { i8 -118, i16 11320 }, %struct.init_tab { i8 -117, i16 10807 }, %struct.init_tab { i8 -110, i16 12335 }, %struct.init_tab { i8 -109, i16 13106 }, %struct.init_tab { i8 -106, i16 12 }, %struct.init_tab { i8 -103, i16 257 }, %struct.init_tab { i8 -100, i16 11831 }, %struct.init_tab { i8 -99, i16 11319 }, %struct.init_tab { i8 -98, i16 11319 }, %struct.init_tab { i8 -85, i16 256 }, %struct.init_tab { i8 -84, i16 4099 }, %struct.init_tab { i8 -83, i16 4159 }, %struct.init_tab { i8 -30, i16 256 }, %struct.init_tab { i8 -29, i16 4096 }, %struct.init_tab { i8 40, i16 4112 }, %struct.init_tab { i8 -79, i16 14 }], align 2
@.str.3 = private unnamed_addr constant [8 x i8] c"%s(%d)\0A\00", align 1
@__func__.s5h1409_sleep = private unnamed_addr constant [14 x i8] c"s5h1409_sleep\00", align 1
@__func__.s5h1409_register_reset = private unnamed_addr constant [23 x i8] c"s5h1409_register_reset\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\013%s: error (reg == 0x%02x, val == 0x%04x, ret == %i)\0A\00", align 1
@__func__.s5h1409_writereg = private unnamed_addr constant [17 x i8] c"s5h1409_writereg\00", align 1
@__func__.s5h1409_set_spectralinversion = private unnamed_addr constant [30 x i8] c"s5h1409_set_spectralinversion\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s(%d KHz)\0A\00", align 1
@__func__.s5h1409_set_if_freq = private unnamed_addr constant [20 x i8] c"s5h1409_set_if_freq\00", align 1
@__func__.s5h1409_set_gpio = private unnamed_addr constant [17 x i8] c"s5h1409_set_gpio\00", align 1
@__func__.s5h1409_set_mpeg_timing = private unnamed_addr constant [24 x i8] c"s5h1409_set_mpeg_timing\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%s(%d) Mode1 or Defaulting\0A\00", align 1
@__func__.s5h1409_softreset = private unnamed_addr constant [18 x i8] c"s5h1409_softreset\00", align 1
@__func__.s5h1409_i2c_gate_ctrl = private unnamed_addr constant [22 x i8] c"s5h1409_i2c_gate_ctrl\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s(frequency=%d)\0A\00", align 1
@__func__.s5h1409_set_frontend = private unnamed_addr constant [21 x i8] c"s5h1409_set_frontend\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%s(0x%08x)\0A\00", align 1
@__func__.s5h1409_enable_modulation = private unnamed_addr constant [26 x i8] c"s5h1409_enable_modulation\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%s() VSB_8\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%s() QAM_AUTO (64/256)\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"%s() Invalid modulation\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"%s() setting QAM state to INTERLEAVE_SET\0A\00", align 1
@__func__.s5h1409_set_qam_interleave_mode = private unnamed_addr constant [32 x i8] c"s5h1409_set_qam_interleave_mode\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"%s() setting QAM state to TUNING_STARTED\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"%s() setting QAM state to OPT_L3\0A\00", align 1
@__func__.s5h1409_set_qam_amhum_mode = private unnamed_addr constant [27 x i8] c"s5h1409_set_qam_amhum_mode\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"%s() setting QAM state to OPT_L2\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"%s() setting QAM state to OPT_L1\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"%s() status 0x%08x\0A\00", align 1
@__func__.s5h1409_read_status = private unnamed_addr constant [20 x i8] c"s5h1409_read_status\00", align 1
@__func__.s5h1409_read_snr = private unnamed_addr constant [17 x i8] c"s5h1409_read_snr\00", align 1
@__func__.s5h1409_qam64_lookup_snr = private unnamed_addr constant [25 x i8] c"s5h1409_qam64_lookup_snr\00", align 1
@qam64_snr_tab = internal unnamed_addr constant [65 x %struct.qam64_snr_tab] [%struct.qam64_snr_tab { i16 1, i16 0 }, %struct.qam64_snr_tab { i16 12, i16 300 }, %struct.qam64_snr_tab { i16 15, i16 290 }, %struct.qam64_snr_tab { i16 18, i16 280 }, %struct.qam64_snr_tab { i16 22, i16 270 }, %struct.qam64_snr_tab { i16 23, i16 268 }, %struct.qam64_snr_tab { i16 24, i16 266 }, %struct.qam64_snr_tab { i16 25, i16 264 }, %struct.qam64_snr_tab { i16 27, i16 262 }, %struct.qam64_snr_tab { i16 28, i16 260 }, %struct.qam64_snr_tab { i16 29, i16 258 }, %struct.qam64_snr_tab { i16 30, i16 256 }, %struct.qam64_snr_tab { i16 32, i16 254 }, %struct.qam64_snr_tab { i16 33, i16 252 }, %struct.qam64_snr_tab { i16 34, i16 250 }, %struct.qam64_snr_tab { i16 35, i16 249 }, %struct.qam64_snr_tab { i16 36, i16 248 }, %struct.qam64_snr_tab { i16 37, i16 247 }, %struct.qam64_snr_tab { i16 38, i16 246 }, %struct.qam64_snr_tab { i16 39, i16 245 }, %struct.qam64_snr_tab { i16 40, i16 244 }, %struct.qam64_snr_tab { i16 41, i16 243 }, %struct.qam64_snr_tab { i16 42, i16 241 }, %struct.qam64_snr_tab { i16 43, i16 240 }, %struct.qam64_snr_tab { i16 44, i16 239 }, %struct.qam64_snr_tab { i16 45, i16 238 }, %struct.qam64_snr_tab { i16 46, i16 237 }, %struct.qam64_snr_tab { i16 47, i16 236 }, %struct.qam64_snr_tab { i16 48, i16 235 }, %struct.qam64_snr_tab { i16 49, i16 234 }, %struct.qam64_snr_tab { i16 50, i16 233 }, %struct.qam64_snr_tab { i16 51, i16 232 }, %struct.qam64_snr_tab { i16 52, i16 231 }, %struct.qam64_snr_tab { i16 53, i16 230 }, %struct.qam64_snr_tab { i16 55, i16 229 }, %struct.qam64_snr_tab { i16 56, i16 228 }, %struct.qam64_snr_tab { i16 57, i16 227 }, %struct.qam64_snr_tab { i16 58, i16 226 }, %struct.qam64_snr_tab { i16 59, i16 225 }, %struct.qam64_snr_tab { i16 60, i16 224 }, %struct.qam64_snr_tab { i16 62, i16 223 }, %struct.qam64_snr_tab { i16 63, i16 222 }, %struct.qam64_snr_tab { i16 65, i16 221 }, %struct.qam64_snr_tab { i16 66, i16 220 }, %struct.qam64_snr_tab { i16 68, i16 219 }, %struct.qam64_snr_tab { i16 69, i16 218 }, %struct.qam64_snr_tab { i16 70, i16 217 }, %struct.qam64_snr_tab { i16 72, i16 216 }, %struct.qam64_snr_tab { i16 73, i16 215 }, %struct.qam64_snr_tab { i16 75, i16 214 }, %struct.qam64_snr_tab { i16 76, i16 213 }, %struct.qam64_snr_tab { i16 78, i16 212 }, %struct.qam64_snr_tab { i16 80, i16 211 }, %struct.qam64_snr_tab { i16 81, i16 210 }, %struct.qam64_snr_tab { i16 83, i16 209 }, %struct.qam64_snr_tab { i16 84, i16 208 }, %struct.qam64_snr_tab { i16 85, i16 207 }, %struct.qam64_snr_tab { i16 87, i16 206 }, %struct.qam64_snr_tab { i16 89, i16 205 }, %struct.qam64_snr_tab { i16 91, i16 204 }, %struct.qam64_snr_tab { i16 93, i16 203 }, %struct.qam64_snr_tab { i16 95, i16 202 }, %struct.qam64_snr_tab { i16 96, i16 201 }, %struct.qam64_snr_tab { i16 104, i16 200 }, %struct.qam64_snr_tab { i16 255, i16 0 }], align 2
@__func__.s5h1409_qam256_lookup_snr = private unnamed_addr constant [26 x i8] c"s5h1409_qam256_lookup_snr\00", align 1
@qam256_snr_tab = internal unnamed_addr constant [70 x %struct.qam256_snr_tab] [%struct.qam256_snr_tab { i16 1, i16 0 }, %struct.qam256_snr_tab { i16 12, i16 400 }, %struct.qam256_snr_tab { i16 13, i16 390 }, %struct.qam256_snr_tab { i16 15, i16 380 }, %struct.qam256_snr_tab { i16 17, i16 360 }, %struct.qam256_snr_tab { i16 19, i16 350 }, %struct.qam256_snr_tab { i16 22, i16 348 }, %struct.qam256_snr_tab { i16 23, i16 346 }, %struct.qam256_snr_tab { i16 24, i16 344 }, %struct.qam256_snr_tab { i16 25, i16 342 }, %struct.qam256_snr_tab { i16 26, i16 340 }, %struct.qam256_snr_tab { i16 27, i16 336 }, %struct.qam256_snr_tab { i16 28, i16 334 }, %struct.qam256_snr_tab { i16 29, i16 332 }, %struct.qam256_snr_tab { i16 30, i16 330 }, %struct.qam256_snr_tab { i16 31, i16 328 }, %struct.qam256_snr_tab { i16 32, i16 326 }, %struct.qam256_snr_tab { i16 33, i16 325 }, %struct.qam256_snr_tab { i16 34, i16 322 }, %struct.qam256_snr_tab { i16 35, i16 320 }, %struct.qam256_snr_tab { i16 37, i16 318 }, %struct.qam256_snr_tab { i16 39, i16 316 }, %struct.qam256_snr_tab { i16 40, i16 314 }, %struct.qam256_snr_tab { i16 41, i16 312 }, %struct.qam256_snr_tab { i16 42, i16 310 }, %struct.qam256_snr_tab { i16 43, i16 308 }, %struct.qam256_snr_tab { i16 46, i16 306 }, %struct.qam256_snr_tab { i16 47, i16 304 }, %struct.qam256_snr_tab { i16 49, i16 302 }, %struct.qam256_snr_tab { i16 51, i16 300 }, %struct.qam256_snr_tab { i16 53, i16 298 }, %struct.qam256_snr_tab { i16 54, i16 297 }, %struct.qam256_snr_tab { i16 55, i16 296 }, %struct.qam256_snr_tab { i16 56, i16 295 }, %struct.qam256_snr_tab { i16 57, i16 294 }, %struct.qam256_snr_tab { i16 59, i16 293 }, %struct.qam256_snr_tab { i16 60, i16 292 }, %struct.qam256_snr_tab { i16 61, i16 291 }, %struct.qam256_snr_tab { i16 63, i16 290 }, %struct.qam256_snr_tab { i16 64, i16 289 }, %struct.qam256_snr_tab { i16 65, i16 288 }, %struct.qam256_snr_tab { i16 66, i16 287 }, %struct.qam256_snr_tab { i16 68, i16 286 }, %struct.qam256_snr_tab { i16 69, i16 285 }, %struct.qam256_snr_tab { i16 71, i16 284 }, %struct.qam256_snr_tab { i16 72, i16 283 }, %struct.qam256_snr_tab { i16 74, i16 282 }, %struct.qam256_snr_tab { i16 75, i16 281 }, %struct.qam256_snr_tab { i16 76, i16 280 }, %struct.qam256_snr_tab { i16 77, i16 279 }, %struct.qam256_snr_tab { i16 78, i16 278 }, %struct.qam256_snr_tab { i16 81, i16 277 }, %struct.qam256_snr_tab { i16 83, i16 276 }, %struct.qam256_snr_tab { i16 84, i16 275 }, %struct.qam256_snr_tab { i16 86, i16 274 }, %struct.qam256_snr_tab { i16 87, i16 273 }, %struct.qam256_snr_tab { i16 89, i16 272 }, %struct.qam256_snr_tab { i16 90, i16 271 }, %struct.qam256_snr_tab { i16 92, i16 270 }, %struct.qam256_snr_tab { i16 93, i16 269 }, %struct.qam256_snr_tab { i16 95, i16 268 }, %struct.qam256_snr_tab { i16 96, i16 267 }, %struct.qam256_snr_tab { i16 98, i16 266 }, %struct.qam256_snr_tab { i16 100, i16 265 }, %struct.qam256_snr_tab { i16 102, i16 264 }, %struct.qam256_snr_tab { i16 104, i16 263 }, %struct.qam256_snr_tab { i16 105, i16 262 }, %struct.qam256_snr_tab { i16 106, i16 261 }, %struct.qam256_snr_tab { i16 110, i16 260 }, %struct.qam256_snr_tab { i16 255, i16 0 }], align 2
@__func__.s5h1409_vsb_lookup_snr = private unnamed_addr constant [23 x i8] c"s5h1409_vsb_lookup_snr\00", align 1
@vsb_snr_tab = internal unnamed_addr constant [40 x %struct.vsb_snr_tab] [%struct.vsb_snr_tab { i16 924, i16 300 }, %struct.vsb_snr_tab { i16 923, i16 300 }, %struct.vsb_snr_tab { i16 918, i16 295 }, %struct.vsb_snr_tab { i16 915, i16 290 }, %struct.vsb_snr_tab { i16 911, i16 285 }, %struct.vsb_snr_tab { i16 906, i16 280 }, %struct.vsb_snr_tab { i16 901, i16 275 }, %struct.vsb_snr_tab { i16 896, i16 270 }, %struct.vsb_snr_tab { i16 891, i16 265 }, %struct.vsb_snr_tab { i16 885, i16 260 }, %struct.vsb_snr_tab { i16 879, i16 255 }, %struct.vsb_snr_tab { i16 873, i16 250 }, %struct.vsb_snr_tab { i16 864, i16 245 }, %struct.vsb_snr_tab { i16 858, i16 240 }, %struct.vsb_snr_tab { i16 850, i16 235 }, %struct.vsb_snr_tab { i16 841, i16 230 }, %struct.vsb_snr_tab { i16 832, i16 225 }, %struct.vsb_snr_tab { i16 823, i16 220 }, %struct.vsb_snr_tab { i16 812, i16 215 }, %struct.vsb_snr_tab { i16 802, i16 210 }, %struct.vsb_snr_tab { i16 788, i16 205 }, %struct.vsb_snr_tab { i16 778, i16 200 }, %struct.vsb_snr_tab { i16 767, i16 195 }, %struct.vsb_snr_tab { i16 753, i16 190 }, %struct.vsb_snr_tab { i16 740, i16 185 }, %struct.vsb_snr_tab { i16 725, i16 180 }, %struct.vsb_snr_tab { i16 707, i16 175 }, %struct.vsb_snr_tab { i16 689, i16 170 }, %struct.vsb_snr_tab { i16 671, i16 165 }, %struct.vsb_snr_tab { i16 656, i16 160 }, %struct.vsb_snr_tab { i16 637, i16 155 }, %struct.vsb_snr_tab { i16 616, i16 150 }, %struct.vsb_snr_tab { i16 542, i16 145 }, %struct.vsb_snr_tab { i16 519, i16 140 }, %struct.vsb_snr_tab { i16 507, i16 135 }, %struct.vsb_snr_tab { i16 497, i16 130 }, %struct.vsb_snr_tab { i16 492, i16 125 }, %struct.vsb_snr_tab { i16 474, i16 120 }, %struct.vsb_snr_tab { i16 300, i16 111 }, %struct.vsb_snr_tab zeroinitializer], align 2
@.str.18 = private unnamed_addr constant [13 x i8] c"%s() snr=%d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_s5h1409_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @s5h1409_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1068) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %62, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.s5h1409_state, ptr %9, i32 0, i32 1
  store ptr %0, ptr %12, align 4
  store ptr %1, ptr %9, align 8
  %13 = getelementptr inbounds %struct.s5h1409_state, ptr %9, i32 0, i32 3
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.s5h1409_state, ptr %9, i32 0, i32 5
  store i32 5380, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 4, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i16 0, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %15 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #10, !annotation !8
  %16 = load i8, ptr %0, align 2
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %7, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %18, align 2
  store i16 1, ptr %15, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %17, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %23, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 2) #10
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %28, label %26

26:                                               ; preds = %11
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %24) #11
  br label %28

28:                                               ; preds = %26, %11
  %29 = load i8, ptr %6, align 2
  %30 = zext i8 %29 to i16
  %31 = shl nuw i16 %30, 8
  %32 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i16
  %35 = or i16 %31, %34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  switch i16 %35, label %62 [
    i16 127, label %36
    i16 102, label %36
  ]

36:                                               ; preds = %28, %28
  %37 = getelementptr inbounds %struct.s5h1409_state, ptr %9, i32 0, i32 2
  %38 = getelementptr inbounds %struct.s5h1409_state, ptr %9, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %38, ptr noundef nonnull align 4 dereferenceable(544) @s5h1409_ops, i32 544, i1 false)
  %39 = getelementptr inbounds %struct.s5h1409_state, ptr %9, i32 0, i32 2, i32 3
  store ptr %9, ptr %39, align 8
  %40 = call i32 @s5h1409_init(ptr noundef %37)
  %41 = load ptr, ptr %39, align 8
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1409_i2c_gate_ctrl, i32 noundef 1) #11
  br label %46

46:                                               ; preds = %44, %36
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  store i8 -13, ptr %3, align 1
  %47 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %47, align 1
  %48 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 1, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %49 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %49, align 4, !annotation !8
  %50 = getelementptr inbounds %struct.s5h1409_state, ptr %41, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load i8, ptr %51, align 2
  %53 = zext i8 %52 to i16
  store i16 %53, ptr %4, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %54, align 2
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %55, align 4
  %56 = load ptr, ptr %41, align 4
  %57 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %4, i32 noundef 1) #10
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %61, label %59

59:                                               ; preds = %46
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 243, i32 noundef 1, i32 noundef %57) #11
  br label %61

61:                                               ; preds = %59, %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  br label %63

62:                                               ; preds = %28, %2
  call void @kfree(ptr noundef %9) #10
  br label %63

63:                                               ; preds = %62, %61
  %64 = phi ptr [ null, %62 ], [ %37, %61 ]
  ret ptr %64
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1409_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [1 x i8], align 1
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [3 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [1 x i8], align 1
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x %struct.i2c_msg], align 4
  %19 = alloca [3 x i8], align 1
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [3 x i8], align 1
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [3 x i8], align 1
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [1 x i8], align 1
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x %struct.i2c_msg], align 4
  %28 = alloca [3 x i8], align 1
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [1 x i8], align 1
  %31 = alloca [2 x i8], align 2
  %32 = alloca [2 x %struct.i2c_msg], align 4
  %33 = alloca [3 x i8], align 1
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca [3 x i8], align 1
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca [3 x i8], align 1
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca [3 x i8], align 1
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca [3 x i8], align 1
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca [3 x i8], align 1
  %44 = alloca %struct.i2c_msg, align 4
  %45 = alloca [3 x i8], align 1
  %46 = alloca %struct.i2c_msg, align 4
  %47 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = load i32, ptr @debug, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %1
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1409_init) #11
  %53 = load i32, ptr @debug, align 4
  %54 = load ptr, ptr %47, align 4
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1409_sleep, i32 noundef 0) #11
  br label %58

58:                                               ; preds = %56, %51, %1
  %59 = phi ptr [ %54, %56 ], [ %54, %51 ], [ %48, %1 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %45) #10
  store i8 -14, ptr %45, align 1
  %60 = getelementptr inbounds i8, ptr %45, i32 1
  store i8 0, ptr %60, align 1
  %61 = getelementptr inbounds i8, ptr %45, i32 2
  store i8 0, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #10
  %62 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 3, ptr %62, align 4, !annotation !8
  %63 = getelementptr inbounds %struct.s5h1409_state, ptr %59, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load i8, ptr %64, align 2
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %46, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %67, align 2
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %45, ptr %68, align 4
  %69 = load ptr, ptr %59, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %46, i32 noundef 1) #10
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %74, label %72

72:                                               ; preds = %58
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 242, i32 noundef 0, i32 noundef %70) #11
  br label %74

74:                                               ; preds = %72, %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %45) #10
  %75 = load ptr, ptr %47, align 4
  %76 = load i32, ptr @debug, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1409_register_reset) #11
  br label %80

80:                                               ; preds = %78, %74
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %43) #10
  store i8 -6, ptr %43, align 1
  %81 = getelementptr inbounds i8, ptr %43, i32 1
  store i8 0, ptr %81, align 1
  %82 = getelementptr inbounds i8, ptr %43, i32 2
  store i8 0, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #10
  %83 = getelementptr inbounds i8, ptr %44, i32 4
  store i32 3, ptr %83, align 4, !annotation !8
  %84 = getelementptr inbounds %struct.s5h1409_state, ptr %75, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = load i8, ptr %85, align 2
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %44, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %88, align 2
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %43, ptr %89, align 4
  %90 = load ptr, ptr %75, align 4
  %91 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %44, i32 noundef 1) #10
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %95, label %93

93:                                               ; preds = %80
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 250, i32 noundef 0, i32 noundef %91) #11
  br label %95

95:                                               ; preds = %93, %80
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %43) #10
  %96 = getelementptr inbounds i8, ptr %41, i32 1
  %97 = getelementptr inbounds i8, ptr %41, i32 2
  %98 = getelementptr inbounds i8, ptr %42, i32 4
  %99 = getelementptr inbounds %struct.s5h1409_state, ptr %48, i32 0, i32 1
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  br label %102

102:                                              ; preds = %121, %95
  %103 = phi i32 [ 0, %95 ], [ %122, %121 ]
  %104 = getelementptr [45 x %struct.init_tab], ptr @init_tab, i32 0, i32 %103
  %105 = load i8, ptr %104, align 2
  %106 = getelementptr [45 x %struct.init_tab], ptr @init_tab, i32 0, i32 %103, i32 1
  %107 = load i16, ptr %106, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %41) #10
  store i8 %105, ptr %41, align 1
  %108 = lshr i16 %107, 8
  %109 = trunc i16 %108 to i8
  store i8 %109, ptr %96, align 1
  %110 = trunc i16 %107 to i8
  store i8 %110, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #10
  store i32 0, ptr %98, align 4, !annotation !8
  %111 = load ptr, ptr %99, align 4
  %112 = load i8, ptr %111, align 2
  %113 = zext i8 %112 to i16
  store i16 %113, ptr %42, align 4
  store i16 0, ptr %100, align 2
  store i16 3, ptr %98, align 4
  store ptr %41, ptr %101, align 4
  %114 = load ptr, ptr %48, align 4
  %115 = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %42, i32 noundef 1) #10
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %121, label %117

117:                                              ; preds = %102
  %118 = zext i16 %107 to i32
  %119 = zext i8 %105 to i32
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef %119, i32 noundef %118, i32 noundef %115) #11
  br label %121

121:                                              ; preds = %117, %102
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %41) #10
  %122 = add nuw nsw i32 %103, 1
  %123 = icmp eq i32 %122, 45
  br i1 %123, label %124, label %102

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.s5h1409_state, ptr %48, i32 0, i32 3
  store i32 7, ptr %125, align 4
  %126 = load ptr, ptr %99, align 4
  %127 = getelementptr inbounds %struct.s5h1409_config, ptr %126, i32 0, i32 7
  %128 = load i8, ptr %127, align 2
  %129 = icmp eq i8 %128, 1
  br i1 %129, label %130, label %188

130:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %39) #10
  store i8 9, ptr %39, align 1
  %131 = getelementptr inbounds i8, ptr %39, i32 1
  store i8 0, ptr %131, align 1
  %132 = getelementptr inbounds i8, ptr %39, i32 2
  store i8 80, ptr %132, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #10
  %133 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 0, ptr %133, align 4, !annotation !8
  %134 = load ptr, ptr %99, align 4
  %135 = load i8, ptr %134, align 2
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %40, align 4
  %137 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %137, align 2
  store i16 3, ptr %133, align 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %39, ptr %138, align 4
  %139 = load ptr, ptr %48, align 4
  %140 = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %40, i32 noundef 1) #10
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %144, label %142

142:                                              ; preds = %130
  %143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 9, i32 noundef 80, i32 noundef %140) #11
  br label %144

144:                                              ; preds = %142, %130
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %39) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %37) #10
  store i8 33, ptr %37, align 1
  %145 = getelementptr inbounds i8, ptr %37, i32 1
  store i8 0, ptr %145, align 1
  %146 = getelementptr inbounds i8, ptr %37, i32 2
  store i8 1, ptr %146, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #10
  %147 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 0, ptr %147, align 4, !annotation !8
  %148 = load ptr, ptr %99, align 4
  %149 = load i8, ptr %148, align 2
  %150 = zext i8 %149 to i16
  store i16 %150, ptr %38, align 4
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %151, align 2
  store i16 3, ptr %147, align 4
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %37, ptr %152, align 4
  %153 = load ptr, ptr %48, align 4
  %154 = call i32 @i2c_transfer(ptr noundef %153, ptr noundef nonnull %38, i32 noundef 1) #10
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %158, label %156

156:                                              ; preds = %144
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 33, i32 noundef 1, i32 noundef %154) #11
  br label %158

158:                                              ; preds = %156, %144
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %37) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %35) #10
  store i8 80, ptr %35, align 1
  %159 = getelementptr inbounds i8, ptr %35, i32 1
  store i8 3, ptr %159, align 1
  %160 = getelementptr inbounds i8, ptr %35, i32 2
  store i8 14, ptr %160, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #10
  %161 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 0, ptr %161, align 4, !annotation !8
  %162 = load ptr, ptr %99, align 4
  %163 = load i8, ptr %162, align 2
  %164 = zext i8 %163 to i16
  store i16 %164, ptr %36, align 4
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %165, align 2
  store i16 3, ptr %161, align 4
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %35, ptr %166, align 4
  %167 = load ptr, ptr %48, align 4
  %168 = call i32 @i2c_transfer(ptr noundef %167, ptr noundef nonnull %36, i32 noundef 1) #10
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %172, label %170

170:                                              ; preds = %158
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 80, i32 noundef 782, i32 noundef %168) #11
  br label %172

172:                                              ; preds = %170, %158
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %35) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %33) #10
  store i8 -126, ptr %33, align 1
  %173 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 8, ptr %173, align 1
  %174 = getelementptr inbounds i8, ptr %33, i32 2
  store i8 0, ptr %174, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #10
  %175 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 0, ptr %175, align 4, !annotation !8
  %176 = load ptr, ptr %99, align 4
  %177 = load i8, ptr %176, align 2
  %178 = zext i8 %177 to i16
  store i16 %178, ptr %34, align 4
  %179 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %179, align 2
  store i16 3, ptr %175, align 4
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %33, ptr %180, align 4
  %181 = load ptr, ptr %48, align 4
  %182 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %34, i32 noundef 1) #10
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %186, label %184

184:                                              ; preds = %172
  %185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 130, i32 noundef 2048, i32 noundef %182) #11
  br label %186

186:                                              ; preds = %184, %172
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %33) #10
  %187 = load ptr, ptr %99, align 4
  br label %188

188:                                              ; preds = %186, %124
  %189 = phi ptr [ %187, %186 ], [ %126, %124 ]
  %190 = getelementptr inbounds %struct.s5h1409_config, ptr %189, i32 0, i32 1
  %191 = load i8, ptr %190, align 1
  %192 = icmp eq i8 %191, 1
  br i1 %192, label %193, label %237

193:                                              ; preds = %188
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %30) #10
  store i8 -85, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #10
  store i16 0, ptr %31, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %32) #10
  %194 = getelementptr inbounds i8, ptr %32, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %194, i8 0, i32 16, i1 false) #10, !annotation !8
  %195 = load ptr, ptr %99, align 4
  %196 = load i8, ptr %195, align 2
  %197 = zext i8 %196 to i16
  store i16 %197, ptr %32, align 4
  %198 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %198, align 2
  store i16 1, ptr %194, align 4
  %199 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %30, ptr %199, align 4
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1
  %201 = load i8, ptr %195, align 2
  %202 = zext i8 %201 to i16
  store i16 %202, ptr %200, align 4
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 1
  store i16 1, ptr %203, align 2
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 2
  store i16 2, ptr %204, align 4
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 1, i32 3
  store ptr %31, ptr %205, align 4
  %206 = load ptr, ptr %48, align 4
  %207 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %32, i32 noundef 2) #10
  %208 = icmp eq i32 %207, 2
  br i1 %208, label %211, label %209

209:                                              ; preds = %193
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %207) #11
  br label %211

211:                                              ; preds = %209, %193
  %212 = load i8, ptr %31, align 2
  %213 = zext i8 %212 to i16
  %214 = shl nuw i16 %213, 8
  %215 = getelementptr inbounds [2 x i8], ptr %31, i32 0, i32 1
  %216 = load i8, ptr %215, align 1
  %217 = zext i8 %216 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %30) #10
  %218 = or i16 %214, %217
  %219 = or i16 %218, 256
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %28) #10
  store i8 -85, ptr %28, align 1
  %220 = getelementptr inbounds i8, ptr %28, i32 1
  %221 = lshr i16 %219, 8
  %222 = trunc i16 %221 to i8
  store i8 %222, ptr %220, align 1
  %223 = getelementptr inbounds i8, ptr %28, i32 2
  store i8 %216, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  %224 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 0, ptr %224, align 4, !annotation !8
  %225 = load ptr, ptr %99, align 4
  %226 = load i8, ptr %225, align 2
  %227 = zext i8 %226 to i16
  store i16 %227, ptr %29, align 4
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %228, align 2
  store i16 3, ptr %224, align 4
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %229, align 4
  %230 = load ptr, ptr %48, align 4
  %231 = call i32 @i2c_transfer(ptr noundef %230, ptr noundef nonnull %29, i32 noundef 1) #10
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %236, label %233

233:                                              ; preds = %211
  %234 = zext i16 %219 to i32
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 171, i32 noundef %234, i32 noundef %231) #11
  br label %236

236:                                              ; preds = %233, %211
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %28) #10
  br label %281

237:                                              ; preds = %188
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #10
  store i8 -85, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #10
  store i16 0, ptr %26, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #10
  %238 = getelementptr inbounds i8, ptr %27, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %238, i8 0, i32 16, i1 false) #10, !annotation !8
  %239 = load ptr, ptr %99, align 4
  %240 = load i8, ptr %239, align 2
  %241 = zext i8 %240 to i16
  store i16 %241, ptr %27, align 4
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %242, align 2
  store i16 1, ptr %238, align 4
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %25, ptr %243, align 4
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1
  %245 = load i8, ptr %239, align 2
  %246 = zext i8 %245 to i16
  store i16 %246, ptr %244, align 4
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 1
  store i16 1, ptr %247, align 2
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 2
  store i16 2, ptr %248, align 4
  %249 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 3
  store ptr %26, ptr %249, align 4
  %250 = load ptr, ptr %48, align 4
  %251 = call i32 @i2c_transfer(ptr noundef %250, ptr noundef nonnull %27, i32 noundef 2) #10
  %252 = icmp eq i32 %251, 2
  br i1 %252, label %255, label %253

253:                                              ; preds = %237
  %254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %251) #11
  br label %255

255:                                              ; preds = %253, %237
  %256 = load i8, ptr %26, align 2
  %257 = zext i8 %256 to i16
  %258 = shl nuw i16 %257, 8
  %259 = getelementptr inbounds [2 x i8], ptr %26, i32 0, i32 1
  %260 = load i8, ptr %259, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #10
  %261 = and i16 %258, -512
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %23) #10
  store i8 -85, ptr %23, align 1
  %262 = getelementptr inbounds i8, ptr %23, i32 1
  %263 = lshr exact i16 %261, 8
  %264 = trunc i16 %263 to i8
  store i8 %264, ptr %262, align 1
  %265 = getelementptr inbounds i8, ptr %23, i32 2
  store i8 %260, ptr %265, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  %266 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 0, ptr %266, align 4, !annotation !8
  %267 = load ptr, ptr %99, align 4
  %268 = load i8, ptr %267, align 2
  %269 = zext i8 %268 to i16
  store i16 %269, ptr %24, align 4
  %270 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %270, align 2
  store i16 3, ptr %266, align 4
  %271 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %271, align 4
  %272 = load ptr, ptr %48, align 4
  %273 = call i32 @i2c_transfer(ptr noundef %272, ptr noundef nonnull %24, i32 noundef 1) #10
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %280, label %275

275:                                              ; preds = %255
  %276 = zext i8 %260 to i16
  %277 = or i16 %261, %276
  %278 = zext i16 %277 to i32
  %279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 171, i32 noundef %278, i32 noundef %273) #11
  br label %280

280:                                              ; preds = %275, %255
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %23) #10
  br label %281

281:                                              ; preds = %280, %236
  %282 = load ptr, ptr %99, align 4
  %283 = getelementptr inbounds %struct.s5h1409_config, ptr %282, i32 0, i32 4
  %284 = load i8, ptr %283, align 2
  %285 = load ptr, ptr %47, align 4
  %286 = load i32, ptr @debug, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %281
  %289 = zext i8 %284 to i32
  %290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1409_set_spectralinversion, i32 noundef %289) #11
  br label %291

291:                                              ; preds = %288, %281
  %292 = icmp eq i8 %284, 1
  br i1 %292, label %293, label %309

293:                                              ; preds = %291
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %21) #10
  store i8 27, ptr %21, align 1
  %294 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 17, ptr %294, align 1
  %295 = getelementptr inbounds i8, ptr %21, i32 2
  store i8 1, ptr %295, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  %296 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 3, ptr %296, align 4, !annotation !8
  %297 = getelementptr inbounds %struct.s5h1409_state, ptr %285, i32 0, i32 1
  %298 = load ptr, ptr %297, align 4
  %299 = load i8, ptr %298, align 2
  %300 = zext i8 %299 to i16
  store i16 %300, ptr %22, align 4
  %301 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %301, align 2
  %302 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %302, align 4
  %303 = load ptr, ptr %285, align 4
  %304 = call i32 @i2c_transfer(ptr noundef %303, ptr noundef nonnull %22, i32 noundef 1) #10
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %308, label %306

306:                                              ; preds = %293
  %307 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 27, i32 noundef 4353, i32 noundef %304) #11
  br label %308

308:                                              ; preds = %306, %293
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %21) #10
  br label %325

309:                                              ; preds = %291
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %19) #10
  store i8 27, ptr %19, align 1
  %310 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 1, ptr %310, align 1
  %311 = getelementptr inbounds i8, ptr %19, i32 2
  store i8 16, ptr %311, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %312 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 3, ptr %312, align 4, !annotation !8
  %313 = getelementptr inbounds %struct.s5h1409_state, ptr %285, i32 0, i32 1
  %314 = load ptr, ptr %313, align 4
  %315 = load i8, ptr %314, align 2
  %316 = zext i8 %315 to i16
  store i16 %316, ptr %20, align 4
  %317 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %317, align 2
  %318 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %318, align 4
  %319 = load ptr, ptr %285, align 4
  %320 = call i32 @i2c_transfer(ptr noundef %319, ptr noundef nonnull %20, i32 noundef 1) #10
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %324, label %322

322:                                              ; preds = %309
  %323 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 27, i32 noundef 272, i32 noundef %320) #11
  br label %324

324:                                              ; preds = %322, %309
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %19) #10
  br label %325

325:                                              ; preds = %324, %308
  %326 = getelementptr inbounds %struct.s5h1409_state, ptr %48, i32 0, i32 5
  %327 = load i32, ptr %326, align 4
  call fastcc void @s5h1409_set_if_freq(ptr noundef %0, i32 noundef %327)
  %328 = load ptr, ptr %99, align 4
  %329 = getelementptr inbounds %struct.s5h1409_config, ptr %328, i32 0, i32 2
  %330 = load i8, ptr %329, align 2
  %331 = load ptr, ptr %47, align 4
  %332 = load i32, ptr @debug, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %325
  %335 = zext i8 %330 to i32
  %336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1409_set_gpio, i32 noundef %335) #11
  br label %337

337:                                              ; preds = %334, %325
  %338 = icmp eq i8 %330, 0
  br i1 %338, label %384, label %339

339:                                              ; preds = %337
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #10
  store i8 -29, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #10
  store i16 0, ptr %17, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #10
  %340 = getelementptr inbounds i8, ptr %18, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %340, i8 0, i32 16, i1 false) #10, !annotation !8
  %341 = getelementptr inbounds %struct.s5h1409_state, ptr %331, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = load i8, ptr %342, align 2
  %344 = zext i8 %343 to i16
  store i16 %344, ptr %18, align 4
  %345 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %345, align 2
  store i16 1, ptr %340, align 4
  %346 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %16, ptr %346, align 4
  %347 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1
  %348 = load i8, ptr %342, align 2
  %349 = zext i8 %348 to i16
  store i16 %349, ptr %347, align 4
  %350 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 1
  store i16 1, ptr %350, align 2
  %351 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 2
  store i16 2, ptr %351, align 4
  %352 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 3
  store ptr %17, ptr %352, align 4
  %353 = load ptr, ptr %331, align 4
  %354 = call i32 @i2c_transfer(ptr noundef %353, ptr noundef nonnull %18, i32 noundef 2) #10
  %355 = icmp eq i32 %354, 2
  br i1 %355, label %358, label %356

356:                                              ; preds = %339
  %357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %354) #11
  br label %358

358:                                              ; preds = %356, %339
  %359 = load i8, ptr %17, align 2
  %360 = zext i8 %359 to i16
  %361 = shl nuw i16 %360, 8
  %362 = getelementptr inbounds [2 x i8], ptr %17, i32 0, i32 1
  %363 = load i8, ptr %362, align 1
  %364 = zext i8 %363 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #10
  %365 = or i16 %361, %364
  %366 = or i16 %365, 4352
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %14) #10
  store i8 -29, ptr %14, align 1
  %367 = getelementptr inbounds i8, ptr %14, i32 1
  %368 = lshr i16 %366, 8
  %369 = trunc i16 %368 to i8
  store i8 %369, ptr %367, align 1
  %370 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 %363, ptr %370, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %371 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 3, ptr %371, align 4, !annotation !8
  %372 = load ptr, ptr %341, align 4
  %373 = load i8, ptr %372, align 2
  %374 = zext i8 %373 to i16
  store i16 %374, ptr %15, align 4
  %375 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %375, align 2
  %376 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %376, align 4
  %377 = load ptr, ptr %331, align 4
  %378 = call i32 @i2c_transfer(ptr noundef %377, ptr noundef nonnull %15, i32 noundef 1) #10
  %379 = icmp eq i32 %378, 1
  br i1 %379, label %383, label %380

380:                                              ; preds = %358
  %381 = zext i16 %366 to i32
  %382 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 227, i32 noundef %381, i32 noundef %378) #11
  br label %383

383:                                              ; preds = %380, %358
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %14) #10
  br label %429

384:                                              ; preds = %337
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 -29, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i16 0, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #10
  %385 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %385, i8 0, i32 16, i1 false) #10, !annotation !8
  %386 = getelementptr inbounds %struct.s5h1409_state, ptr %331, i32 0, i32 1
  %387 = load ptr, ptr %386, align 4
  %388 = load i8, ptr %387, align 2
  %389 = zext i8 %388 to i16
  store i16 %389, ptr %13, align 4
  %390 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %390, align 2
  store i16 1, ptr %385, align 4
  %391 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %391, align 4
  %392 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %393 = load i8, ptr %387, align 2
  %394 = zext i8 %393 to i16
  store i16 %394, ptr %392, align 4
  %395 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %395, align 2
  %396 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 2, ptr %396, align 4
  %397 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %397, align 4
  %398 = load ptr, ptr %331, align 4
  %399 = call i32 @i2c_transfer(ptr noundef %398, ptr noundef nonnull %13, i32 noundef 2) #10
  %400 = icmp eq i32 %399, 2
  br i1 %400, label %403, label %401

401:                                              ; preds = %384
  %402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %399) #11
  br label %403

403:                                              ; preds = %401, %384
  %404 = load i8, ptr %12, align 2
  %405 = zext i8 %404 to i16
  %406 = shl nuw i16 %405, 8
  %407 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  %408 = load i8, ptr %407, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  %409 = and i16 %406, -512
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #10
  store i8 -29, ptr %9, align 1
  %410 = getelementptr inbounds i8, ptr %9, i32 1
  %411 = lshr exact i16 %409, 8
  %412 = trunc i16 %411 to i8
  store i8 %412, ptr %410, align 1
  %413 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 %408, ptr %413, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %414 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 3, ptr %414, align 4, !annotation !8
  %415 = load ptr, ptr %386, align 4
  %416 = load i8, ptr %415, align 2
  %417 = zext i8 %416 to i16
  store i16 %417, ptr %10, align 4
  %418 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %418, align 2
  %419 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %419, align 4
  %420 = load ptr, ptr %331, align 4
  %421 = call i32 @i2c_transfer(ptr noundef %420, ptr noundef nonnull %10, i32 noundef 1) #10
  %422 = icmp eq i32 %421, 1
  br i1 %422, label %428, label %423

423:                                              ; preds = %403
  %424 = zext i8 %408 to i16
  %425 = or i16 %409, %424
  %426 = zext i16 %425 to i32
  %427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 227, i32 noundef %426, i32 noundef %421) #11
  br label %428

428:                                              ; preds = %423, %403
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #10
  br label %429

429:                                              ; preds = %428, %383
  %430 = load ptr, ptr %99, align 4
  %431 = getelementptr inbounds %struct.s5h1409_config, ptr %430, i32 0, i32 6
  %432 = load i16, ptr %431, align 2
  %433 = load ptr, ptr %47, align 4
  %434 = load i32, ptr @debug, align 4
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %439, label %436

436:                                              ; preds = %429
  %437 = zext i16 %432 to i32
  %438 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1409_set_mpeg_timing, i32 noundef %437) #11
  br label %439

439:                                              ; preds = %436, %429
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 -84, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 0, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %440 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %440, i8 0, i32 16, i1 false) #10, !annotation !8
  %441 = getelementptr inbounds %struct.s5h1409_state, ptr %433, i32 0, i32 1
  %442 = load ptr, ptr %441, align 4
  %443 = load i8, ptr %442, align 2
  %444 = zext i8 %443 to i16
  store i16 %444, ptr %8, align 4
  %445 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %445, align 2
  store i16 1, ptr %440, align 4
  %446 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %446, align 4
  %447 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %448 = load i8, ptr %442, align 2
  %449 = zext i8 %448 to i16
  store i16 %449, ptr %447, align 4
  %450 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %450, align 2
  %451 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 2, ptr %451, align 4
  %452 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %452, align 4
  %453 = load ptr, ptr %433, align 4
  %454 = call i32 @i2c_transfer(ptr noundef %453, ptr noundef nonnull %8, i32 noundef 2) #10
  %455 = icmp eq i32 %454, 2
  br i1 %455, label %458, label %456

456:                                              ; preds = %439
  %457 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %454) #11
  br label %458

458:                                              ; preds = %456, %439
  %459 = load i8, ptr %7, align 2
  %460 = zext i8 %459 to i16
  %461 = shl nuw i16 %460, 8
  %462 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %463 = load i8, ptr %462, align 1
  %464 = zext i8 %463 to i16
  %465 = or i16 %461, %464
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %466 = and i16 %465, -12289
  switch i16 %432, label %498 [
    i16 0, label %478
    i16 1, label %467
    i16 2, label %474
    i16 3, label %476
  ]

467:                                              ; preds = %458
  %468 = load i32, ptr @debug, align 4
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %472, label %470

470:                                              ; preds = %467
  %471 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s5h1409_set_mpeg_timing, i32 noundef 1) #11
  br label %472

472:                                              ; preds = %470, %467
  %473 = or i16 %466, 4096
  br label %478

474:                                              ; preds = %458
  %475 = or i16 %466, 8192
  br label %478

476:                                              ; preds = %458
  %477 = or i16 %465, 12288
  br label %478

478:                                              ; preds = %476, %474, %472, %458
  %479 = phi i16 [ %477, %476 ], [ %475, %474 ], [ %473, %472 ], [ %466, %458 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  store i8 -84, ptr %4, align 1
  %480 = getelementptr inbounds i8, ptr %4, i32 1
  %481 = lshr i16 %479, 8
  %482 = trunc i16 %481 to i8
  store i8 %482, ptr %480, align 1
  %483 = getelementptr inbounds i8, ptr %4, i32 2
  %484 = trunc i16 %479 to i8
  store i8 %484, ptr %483, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %485 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %485, align 4, !annotation !8
  %486 = load ptr, ptr %441, align 4
  %487 = load i8, ptr %486, align 2
  %488 = zext i8 %487 to i16
  store i16 %488, ptr %5, align 4
  %489 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %489, align 2
  %490 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %490, align 4
  %491 = load ptr, ptr %433, align 4
  %492 = call i32 @i2c_transfer(ptr noundef %491, ptr noundef nonnull %5, i32 noundef 1) #10
  %493 = icmp eq i32 %492, 1
  br i1 %493, label %497, label %494

494:                                              ; preds = %478
  %495 = zext i16 %479 to i32
  %496 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 172, i32 noundef %495, i32 noundef %492) #11
  br label %497

497:                                              ; preds = %494, %478
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  br label %498

498:                                              ; preds = %497, %458
  call fastcc void @s5h1409_softreset(ptr noundef %0)
  %499 = load ptr, ptr %47, align 4
  %500 = load i32, ptr @debug, align 4
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %504, label %502

502:                                              ; preds = %498
  %503 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1409_i2c_gate_ctrl, i32 noundef 0) #11
  br label %504

504:                                              ; preds = %502, %498
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  store i8 -13, ptr %2, align 1
  %505 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %505, align 1
  %506 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 0, ptr %506, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %507 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %507, align 4, !annotation !8
  %508 = getelementptr inbounds %struct.s5h1409_state, ptr %499, i32 0, i32 1
  %509 = load ptr, ptr %508, align 4
  %510 = load i8, ptr %509, align 2
  %511 = zext i8 %510 to i16
  store i16 %511, ptr %3, align 4
  %512 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %512, align 2
  %513 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %513, align 4
  %514 = load ptr, ptr %499, align 4
  %515 = call i32 @i2c_transfer(ptr noundef %514, ptr noundef nonnull %3, i32 noundef 1) #10
  %516 = icmp eq i32 %515, 1
  br i1 %516, label %519, label %517

517:                                              ; preds = %504
  %518 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 243, i32 noundef 0, i32 noundef %515) #11
  br label %519

519:                                              ; preds = %517, %504
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1409_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
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
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5h1409_i2c_gate_ctrl, i32 noundef %1) #11
  br label %13

13:                                               ; preds = %11, %2
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  store i8 -13, ptr %5, align 1
  %16 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 1, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %18 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %18, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.s5h1409_state, ptr %8, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %6, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %23, align 2
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %24, align 4
  %25 = load ptr, ptr %8, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %6, i32 noundef 1) #10
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %30, label %28

28:                                               ; preds = %15
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 243, i32 noundef 1, i32 noundef %26) #11
  br label %30

30:                                               ; preds = %28, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  br label %47

31:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  store i8 -13, ptr %3, align 1
  %32 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %32, align 1
  %33 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %34 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %34, align 4, !annotation !8
  %35 = getelementptr inbounds %struct.s5h1409_state, ptr %8, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr %36, align 2
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %4, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %39, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %40, align 4
  %41 = load ptr, ptr %8, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %4, i32 noundef 1) #10
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %46, label %44

44:                                               ; preds = %31
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 243, i32 noundef 0, i32 noundef %42) #11
  br label %46

46:                                               ; preds = %44, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  br label %47

47:                                               ; preds = %46, %30
  %48 = phi i1 [ %27, %30 ], [ %43, %46 ]
  %49 = xor i1 %48, true
  %50 = sext i1 %49 to i32
  ret i32 %50
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
define internal fastcc void @s5h1409_set_if_freq(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
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
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5h1409_set_if_freq, i32 noundef %1) #11
  br label %21

21:                                               ; preds = %19, %2
  %22 = icmp eq i32 %1, 4000
  br i1 %22, label %23, label %67

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %13) #10
  store i8 -121, ptr %13, align 1
  %24 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 1, ptr %24, align 1
  %25 = getelementptr inbounds i8, ptr %13, i32 2
  store i8 75, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %26 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 3, ptr %26, align 4, !annotation !8
  %27 = getelementptr inbounds %struct.s5h1409_state, ptr %16, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %14, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %32, align 4
  %33 = load ptr, ptr %16, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %14, i32 noundef 1) #10
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %38, label %36

36:                                               ; preds = %23
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 135, i32 noundef 331, i32 noundef %34) #11
  br label %38

38:                                               ; preds = %36, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #10
  store i8 -120, ptr %11, align 1
  %39 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 12, ptr %39, align 1
  %40 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 -75, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %41 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 3, ptr %41, align 4, !annotation !8
  %42 = load ptr, ptr %27, align 4
  %43 = load i8, ptr %42, align 2
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %12, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %46, align 4
  %47 = load ptr, ptr %16, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %12, i32 noundef 1) #10
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %52, label %50

50:                                               ; preds = %38
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 136, i32 noundef 3253, i32 noundef %48) #11
  br label %52

52:                                               ; preds = %50, %38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #10
  store i8 -119, ptr %9, align 1
  %53 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 3, ptr %53, align 1
  %54 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 -30, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %55 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 3, ptr %55, align 4, !annotation !8
  %56 = load ptr, ptr %27, align 4
  %57 = load i8, ptr %56, align 2
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %10, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %59, align 2
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %60, align 4
  %61 = load ptr, ptr %16, align 4
  %62 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %10, i32 noundef 1) #10
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %66, label %64

64:                                               ; preds = %52
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 137, i32 noundef 994, i32 noundef %62) #11
  br label %66

66:                                               ; preds = %64, %52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #10
  br label %111

67:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #10
  store i8 -121, ptr %7, align 1
  %68 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 1, ptr %68, align 1
  %69 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 -66, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %70 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 3, ptr %70, align 4, !annotation !8
  %71 = getelementptr inbounds %struct.s5h1409_state, ptr %16, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = load i8, ptr %72, align 2
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %8, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %75, align 2
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %76, align 4
  %77 = load ptr, ptr %16, align 4
  %78 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %8, i32 noundef 1) #10
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %82, label %80

80:                                               ; preds = %67
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 135, i32 noundef 446, i32 noundef %78) #11
  br label %82

82:                                               ; preds = %80, %67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  store i8 -120, ptr %5, align 1
  %83 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 4, ptr %83, align 1
  %84 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 54, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %85 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %85, align 4, !annotation !8
  %86 = load ptr, ptr %71, align 4
  %87 = load i8, ptr %86, align 2
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %6, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %89, align 2
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %90, align 4
  %91 = load ptr, ptr %16, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %6, i32 noundef 1) #10
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %96, label %94

94:                                               ; preds = %82
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 136, i32 noundef 1078, i32 noundef %92) #11
  br label %96

96:                                               ; preds = %94, %82
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  store i8 -119, ptr %3, align 1
  %97 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 5, ptr %97, align 1
  %98 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 77, ptr %98, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %99 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %99, align 4, !annotation !8
  %100 = load ptr, ptr %71, align 4
  %101 = load i8, ptr %100, align 2
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %4, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %103, align 2
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %104, align 4
  %105 = load ptr, ptr %16, align 4
  %106 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %4, i32 noundef 1) #10
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %110, label %108

108:                                              ; preds = %96
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 137, i32 noundef 1357, i32 noundef %106) #11
  br label %110

110:                                              ; preds = %108, %96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  br label %111

111:                                              ; preds = %110, %66
  %112 = getelementptr inbounds %struct.s5h1409_state, ptr %16, i32 0, i32 5
  store i32 %1, ptr %112, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5h1409_softreset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
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
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1409_softreset) #11
  br label %12

12:                                               ; preds = %10, %1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  store i8 -11, ptr %4, align 1
  %13 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.s5h1409_state, ptr %7, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %5, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %21, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 1) #10
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %27, label %25

25:                                               ; preds = %12
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 245, i32 noundef 0, i32 noundef %23) #11
  br label %27

27:                                               ; preds = %25, %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  store i8 -11, ptr %2, align 1
  %28 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 1, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %30 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %30, align 4, !annotation !8
  %31 = load ptr, ptr %16, align 4
  %32 = load i8, ptr %31, align 2
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %3, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %35, align 4
  %36 = load ptr, ptr %7, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %3, i32 noundef 1) #10
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %27
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 245, i32 noundef 1, i32 noundef %37) #11
  br label %41

41:                                               ; preds = %39, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  %42 = getelementptr inbounds %struct.s5h1409_state, ptr %7, i32 0, i32 6
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.s5h1409_state, ptr %7, i32 0, i32 7
  store i8 0, ptr %43, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s5h1409_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1409_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [1 x i8], align 1
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [3 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [3 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [1 x i8], align 1
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x %struct.i2c_msg], align 4
  %21 = alloca [1 x i8], align 1
  %22 = alloca [2 x i8], align 2
  %23 = alloca [2 x %struct.i2c_msg], align 4
  %24 = alloca [1 x i8], align 1
  %25 = alloca [2 x i8], align 2
  %26 = alloca [2 x %struct.i2c_msg], align 4
  %27 = alloca [3 x i8], align 1
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca [3 x i8], align 1
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [3 x i8], align 1
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [3 x i8], align 1
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca [3 x i8], align 1
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca [3 x i8], align 1
  %38 = alloca %struct.i2c_msg, align 4
  %39 = alloca [3 x i8], align 1
  %40 = alloca %struct.i2c_msg, align 4
  %41 = alloca [3 x i8], align 1
  %42 = alloca %struct.i2c_msg, align 4
  %43 = alloca [1 x i8], align 1
  %44 = alloca [2 x i8], align 2
  %45 = alloca [2 x %struct.i2c_msg], align 4
  %46 = alloca [3 x i8], align 1
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [3 x i8], align 1
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca [3 x i8], align 1
  %51 = alloca %struct.i2c_msg, align 4
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %53 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr @debug, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %1
  %58 = load i32, ptr %52, align 4
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.s5h1409_set_frontend, i32 noundef %58) #11
  br label %60

60:                                               ; preds = %57, %1
  tail call fastcc void @s5h1409_softreset(ptr noundef %0)
  %61 = load i32, ptr %52, align 4
  %62 = getelementptr inbounds %struct.s5h1409_state, ptr %54, i32 0, i32 4
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %53, align 4
  %66 = load i32, ptr @debug, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %60
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s5h1409_enable_modulation, i32 noundef %64) #11
  br label %70

70:                                               ; preds = %68, %60
  switch i32 %64, label %141 [
    i32 7, label %71
    i32 3, label %97
    i32 5, label %97
    i32 6, label %97
  ]

71:                                               ; preds = %70
  %72 = load i32, ptr @debug, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.s5h1409_enable_modulation) #11
  br label %76

76:                                               ; preds = %74, %71
  %77 = getelementptr inbounds %struct.s5h1409_state, ptr %65, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 5380
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call fastcc void @s5h1409_set_if_freq(ptr noundef %0, i32 noundef 5380) #10
  br label %81

81:                                               ; preds = %80, %76
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %50) #10
  store i8 -12, ptr %50, align 1
  %82 = getelementptr inbounds i8, ptr %50, i32 1
  store i8 0, ptr %82, align 1
  %83 = getelementptr inbounds i8, ptr %50, i32 2
  store i8 0, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #10
  %84 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 3, ptr %84, align 4, !annotation !8
  %85 = getelementptr inbounds %struct.s5h1409_state, ptr %65, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = load i8, ptr %86, align 2
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %51, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %89, align 2
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %90, align 4
  %91 = load ptr, ptr %65, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %51, i32 noundef 1) #10
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %96, label %94

94:                                               ; preds = %81
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 244, i32 noundef 0, i32 noundef %92) #11
  br label %96

96:                                               ; preds = %94, %81
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %50) #10
  br label %146

97:                                               ; preds = %70, %70, %70
  %98 = load i32, ptr @debug, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.s5h1409_enable_modulation) #11
  br label %102

102:                                              ; preds = %100, %97
  %103 = getelementptr inbounds %struct.s5h1409_state, ptr %65, i32 0, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.s5h1409_state, ptr %65, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.s5h1409_config, ptr %106, i32 0, i32 3
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = icmp eq i32 %104, %109
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  tail call fastcc void @s5h1409_set_if_freq(ptr noundef %0, i32 noundef %109) #10
  br label %112

112:                                              ; preds = %111, %102
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %48) #10
  store i8 -12, ptr %48, align 1
  %113 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 0, ptr %113, align 1
  %114 = getelementptr inbounds i8, ptr %48, i32 2
  store i8 1, ptr %114, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #10
  %115 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 3, ptr %115, align 4, !annotation !8
  %116 = load ptr, ptr %105, align 4
  %117 = load i8, ptr %116, align 2
  %118 = zext i8 %117 to i16
  store i16 %118, ptr %49, align 4
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %119, align 2
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %120, align 4
  %121 = load ptr, ptr %65, align 4
  %122 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %49, i32 noundef 1) #10
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %126, label %124

124:                                              ; preds = %112
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 244, i32 noundef 1, i32 noundef %122) #11
  br label %126

126:                                              ; preds = %124, %112
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %48) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %46) #10
  store i8 -123, ptr %46, align 1
  %127 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 1, ptr %127, align 1
  %128 = getelementptr inbounds i8, ptr %46, i32 2
  store i8 16, ptr %128, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #10
  %129 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 3, ptr %129, align 4, !annotation !8
  %130 = load ptr, ptr %105, align 4
  %131 = load i8, ptr %130, align 2
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %47, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %133, align 2
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %134, align 4
  %135 = load ptr, ptr %65, align 4
  %136 = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %47, i32 noundef 1) #10
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %140, label %138

138:                                              ; preds = %126
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 133, i32 noundef 272, i32 noundef %136) #11
  br label %140

140:                                              ; preds = %138, %126
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %46) #10
  br label %146

141:                                              ; preds = %70
  %142 = load i32, ptr @debug, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.s5h1409_enable_modulation) #11
  br label %148

146:                                              ; preds = %140, %96
  %147 = getelementptr inbounds %struct.s5h1409_state, ptr %65, i32 0, i32 3
  store i32 %64, ptr %147, align 4
  call fastcc void @s5h1409_softreset(ptr noundef %0) #10
  br label %148

148:                                              ; preds = %146, %144, %141
  %149 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %166, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = call i32 %154(ptr noundef %0, i32 noundef 1) #10
  %158 = load ptr, ptr %149, align 4
  br label %159

159:                                              ; preds = %156, %152
  %160 = phi ptr [ %158, %156 ], [ %150, %152 ]
  %161 = call i32 %160(ptr noundef %0) #10
  %162 = load ptr, ptr %153, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %159
  %165 = call i32 %162(ptr noundef %0, i32 noundef 0) #10
  br label %166

166:                                              ; preds = %164, %159, %148
  call fastcc void @s5h1409_softreset(ptr noundef %0)
  %167 = getelementptr inbounds %struct.s5h1409_state, ptr %54, i32 0, i32 3
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 7
  br i1 %169, label %539, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.s5h1409_state, ptr %54, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.s5h1409_config, ptr %172, i32 0, i32 7
  %174 = load i8, ptr %173, align 2
  %175 = icmp eq i8 %174, 1
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  call fastcc void @s5h1409_set_qam_interleave_mode(ptr noundef %0)
  call fastcc void @s5h1409_set_qam_amhum_mode(ptr noundef %0)
  br label %539

177:                                              ; preds = %170
  %178 = load ptr, ptr %53, align 4
  %179 = getelementptr inbounds %struct.s5h1409_state, ptr %178, i32 0, i32 6
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %326

182:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %43) #10
  store i8 -16, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #10
  store i16 0, ptr %44, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %45) #10
  %183 = getelementptr inbounds i8, ptr %45, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %183, i8 0, i32 16, i1 false) #10, !annotation !8
  %184 = getelementptr inbounds %struct.s5h1409_state, ptr %178, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = load i8, ptr %185, align 2
  %187 = zext i8 %186 to i16
  store i16 %187, ptr %45, align 4
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %188, align 2
  store i16 1, ptr %183, align 4
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %43, ptr %189, align 4
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1
  %191 = load i8, ptr %185, align 2
  %192 = zext i8 %191 to i16
  store i16 %192, ptr %190, align 4
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1, i32 1
  store i16 1, ptr %193, align 2
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1, i32 2
  store i16 2, ptr %194, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 1, i32 3
  store ptr %44, ptr %195, align 4
  %196 = load ptr, ptr %178, align 4
  %197 = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %45, i32 noundef 2) #10
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %201, label %199

199:                                              ; preds = %182
  %200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %197) #11
  br label %201

201:                                              ; preds = %199, %182
  %202 = load i8, ptr %44, align 2
  %203 = getelementptr inbounds [2 x i8], ptr %44, i32 0, i32 1
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %45) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %43) #10
  %206 = and i8 %202, 32
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %283, label %208

208:                                              ; preds = %201
  store i32 1, ptr %179, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %41) #10
  store i8 -106, ptr %41, align 1
  %209 = getelementptr inbounds i8, ptr %41, i32 1
  store i8 0, ptr %209, align 1
  %210 = getelementptr inbounds i8, ptr %41, i32 2
  store i8 12, ptr %210, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #10
  %211 = getelementptr inbounds i8, ptr %42, i32 4
  store i32 3, ptr %211, align 4, !annotation !8
  %212 = load ptr, ptr %184, align 4
  %213 = load i8, ptr %212, align 2
  %214 = zext i8 %213 to i16
  store i16 %214, ptr %42, align 4
  %215 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 1
  store i16 0, ptr %215, align 2
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %42, i32 0, i32 3
  store ptr %41, ptr %216, align 4
  %217 = load ptr, ptr %178, align 4
  %218 = call i32 @i2c_transfer(ptr noundef %217, ptr noundef nonnull %42, i32 noundef 1) #10
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %222, label %220

220:                                              ; preds = %208
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 150, i32 noundef 12, i32 noundef %218) #11
  br label %222

222:                                              ; preds = %220, %208
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %41) #10
  %223 = add nsw i16 %205, -105
  %224 = icmp ult i16 %223, -49
  br i1 %224, label %225, label %254

225:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %39) #10
  store i8 -109, ptr %39, align 1
  %226 = getelementptr inbounds i8, ptr %39, i32 1
  store i8 51, ptr %226, align 1
  %227 = getelementptr inbounds i8, ptr %39, i32 2
  store i8 50, ptr %227, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #10
  %228 = getelementptr inbounds i8, ptr %40, i32 4
  store i32 3, ptr %228, align 4, !annotation !8
  %229 = load ptr, ptr %184, align 4
  %230 = load i8, ptr %229, align 2
  %231 = zext i8 %230 to i16
  store i16 %231, ptr %40, align 4
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 1
  store i16 0, ptr %232, align 2
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %40, i32 0, i32 3
  store ptr %39, ptr %233, align 4
  %234 = load ptr, ptr %178, align 4
  %235 = call i32 @i2c_transfer(ptr noundef %234, ptr noundef nonnull %40, i32 noundef 1) #10
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %239, label %237

237:                                              ; preds = %225
  %238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 147, i32 noundef 13106, i32 noundef %235) #11
  br label %239

239:                                              ; preds = %237, %225
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %39) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %37) #10
  store i8 -98, ptr %37, align 1
  %240 = getelementptr inbounds i8, ptr %37, i32 1
  store i8 44, ptr %240, align 1
  %241 = getelementptr inbounds i8, ptr %37, i32 2
  store i8 55, ptr %241, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %38) #10
  %242 = getelementptr inbounds i8, ptr %38, i32 4
  store i32 3, ptr %242, align 4, !annotation !8
  %243 = load ptr, ptr %184, align 4
  %244 = load i8, ptr %243, align 2
  %245 = zext i8 %244 to i16
  store i16 %245, ptr %38, align 4
  %246 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 1
  store i16 0, ptr %246, align 2
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %38, i32 0, i32 3
  store ptr %37, ptr %247, align 4
  %248 = load ptr, ptr %178, align 4
  %249 = call i32 @i2c_transfer(ptr noundef %248, ptr noundef nonnull %38, i32 noundef 1) #10
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %253, label %251

251:                                              ; preds = %239
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 158, i32 noundef 11319, i32 noundef %249) #11
  br label %253

253:                                              ; preds = %251, %239
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %38) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %37) #10
  br label %326

254:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %35) #10
  store i8 -109, ptr %35, align 1
  %255 = getelementptr inbounds i8, ptr %35, i32 1
  store i8 49, ptr %255, align 1
  %256 = getelementptr inbounds i8, ptr %35, i32 2
  store i8 48, ptr %256, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #10
  %257 = getelementptr inbounds i8, ptr %36, i32 4
  store i32 3, ptr %257, align 4, !annotation !8
  %258 = load ptr, ptr %184, align 4
  %259 = load i8, ptr %258, align 2
  %260 = zext i8 %259 to i16
  store i16 %260, ptr %36, align 4
  %261 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  store i16 0, ptr %261, align 2
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  store ptr %35, ptr %262, align 4
  %263 = load ptr, ptr %178, align 4
  %264 = call i32 @i2c_transfer(ptr noundef %263, ptr noundef nonnull %36, i32 noundef 1) #10
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %268, label %266

266:                                              ; preds = %254
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 147, i32 noundef 12592, i32 noundef %264) #11
  br label %268

268:                                              ; preds = %266, %254
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %35) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %33) #10
  store i8 -98, ptr %33, align 1
  %269 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 40, ptr %269, align 1
  %270 = getelementptr inbounds i8, ptr %33, i32 2
  store i8 54, ptr %270, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #10
  %271 = getelementptr inbounds i8, ptr %34, i32 4
  store i32 3, ptr %271, align 4, !annotation !8
  %272 = load ptr, ptr %184, align 4
  %273 = load i8, ptr %272, align 2
  %274 = zext i8 %273 to i16
  store i16 %274, ptr %34, align 4
  %275 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %275, align 2
  %276 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %33, ptr %276, align 4
  %277 = load ptr, ptr %178, align 4
  %278 = call i32 @i2c_transfer(ptr noundef %277, ptr noundef nonnull %34, i32 noundef 1) #10
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %282, label %280

280:                                              ; preds = %268
  %281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 158, i32 noundef 10294, i32 noundef %278) #11
  br label %282

282:                                              ; preds = %280, %268
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %33) #10
  br label %326

283:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %31) #10
  store i8 -106, ptr %31, align 1
  %284 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 0, ptr %284, align 1
  %285 = getelementptr inbounds i8, ptr %31, i32 2
  store i8 8, ptr %285, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #10
  %286 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 3, ptr %286, align 4, !annotation !8
  %287 = load ptr, ptr %184, align 4
  %288 = load i8, ptr %287, align 2
  %289 = zext i8 %288 to i16
  store i16 %289, ptr %32, align 4
  %290 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %290, align 2
  %291 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %291, align 4
  %292 = load ptr, ptr %178, align 4
  %293 = call i32 @i2c_transfer(ptr noundef %292, ptr noundef nonnull %32, i32 noundef 1) #10
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %297, label %295

295:                                              ; preds = %283
  %296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 150, i32 noundef 8, i32 noundef %293) #11
  br label %297

297:                                              ; preds = %295, %283
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %31) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %29) #10
  store i8 -109, ptr %29, align 1
  %298 = getelementptr inbounds i8, ptr %29, i32 1
  store i8 51, ptr %298, align 1
  %299 = getelementptr inbounds i8, ptr %29, i32 2
  store i8 50, ptr %299, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #10
  %300 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 3, ptr %300, align 4, !annotation !8
  %301 = load ptr, ptr %184, align 4
  %302 = load i8, ptr %301, align 2
  %303 = zext i8 %302 to i16
  store i16 %303, ptr %30, align 4
  %304 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %304, align 2
  %305 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %29, ptr %305, align 4
  %306 = load ptr, ptr %178, align 4
  %307 = call i32 @i2c_transfer(ptr noundef %306, ptr noundef nonnull %30, i32 noundef 1) #10
  %308 = icmp eq i32 %307, 1
  br i1 %308, label %311, label %309

309:                                              ; preds = %297
  %310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 147, i32 noundef 13106, i32 noundef %307) #11
  br label %311

311:                                              ; preds = %309, %297
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %29) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %27) #10
  store i8 -98, ptr %27, align 1
  %312 = getelementptr inbounds i8, ptr %27, i32 1
  store i8 44, ptr %312, align 1
  %313 = getelementptr inbounds i8, ptr %27, i32 2
  store i8 55, ptr %313, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #10
  %314 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 3, ptr %314, align 4, !annotation !8
  %315 = load ptr, ptr %184, align 4
  %316 = load i8, ptr %315, align 2
  %317 = zext i8 %316 to i16
  store i16 %317, ptr %28, align 4
  %318 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %318, align 2
  %319 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %27, ptr %319, align 4
  %320 = load ptr, ptr %178, align 4
  %321 = call i32 @i2c_transfer(ptr noundef %320, ptr noundef nonnull %28, i32 noundef 1) #10
  %322 = icmp eq i32 %321, 1
  br i1 %322, label %325, label %323

323:                                              ; preds = %311
  %324 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 158, i32 noundef 11319, i32 noundef %321) #11
  br label %325

325:                                              ; preds = %323, %311
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %27) #10
  br label %326

326:                                              ; preds = %325, %282, %253, %177
  %327 = load ptr, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #10
  store i8 -15, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #10
  store i16 0, ptr %25, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #10
  %328 = getelementptr inbounds i8, ptr %26, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %328, i8 0, i32 16, i1 false) #10, !annotation !8
  %329 = getelementptr inbounds %struct.s5h1409_state, ptr %327, i32 0, i32 1
  %330 = load ptr, ptr %329, align 4
  %331 = load i8, ptr %330, align 2
  %332 = zext i8 %331 to i16
  store i16 %332, ptr %26, align 4
  %333 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %333, align 2
  store i16 1, ptr %328, align 4
  %334 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %24, ptr %334, align 4
  %335 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1
  %336 = load i8, ptr %330, align 2
  %337 = zext i8 %336 to i16
  store i16 %337, ptr %335, align 4
  %338 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 1
  store i16 1, ptr %338, align 2
  %339 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 2
  store i16 2, ptr %339, align 4
  %340 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 1, i32 3
  store ptr %25, ptr %340, align 4
  %341 = load ptr, ptr %327, align 4
  %342 = call i32 @i2c_transfer(ptr noundef %341, ptr noundef nonnull %26, i32 noundef 2) #10
  %343 = icmp eq i32 %342, 2
  br i1 %343, label %346, label %344

344:                                              ; preds = %326
  %345 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %342) #11
  br label %346

346:                                              ; preds = %344, %326
  %347 = load i8, ptr %25, align 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #10
  %348 = icmp sgt i8 %347, -1
  %349 = getelementptr inbounds %struct.s5h1409_state, ptr %327, i32 0, i32 7
  %350 = load i8, ptr %349, align 4
  br i1 %348, label %478, label %351

351:                                              ; preds = %346
  %352 = icmp eq i8 %350, 2
  br i1 %352, label %539, label %353

353:                                              ; preds = %351
  store i8 2, ptr %349, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #10
  store i8 -78, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #10
  store i16 0, ptr %22, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #10
  %354 = getelementptr inbounds i8, ptr %23, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %354, i8 0, i32 16, i1 false) #10, !annotation !8
  %355 = load ptr, ptr %329, align 4
  %356 = load i8, ptr %355, align 2
  %357 = zext i8 %356 to i16
  store i16 %357, ptr %23, align 4
  %358 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %358, align 2
  store i16 1, ptr %354, align 4
  %359 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %21, ptr %359, align 4
  %360 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1
  %361 = load i8, ptr %355, align 2
  %362 = zext i8 %361 to i16
  store i16 %362, ptr %360, align 4
  %363 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 1
  store i16 1, ptr %363, align 2
  %364 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 2
  store i16 2, ptr %364, align 4
  %365 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 3
  store ptr %22, ptr %365, align 4
  %366 = load ptr, ptr %327, align 4
  %367 = call i32 @i2c_transfer(ptr noundef %366, ptr noundef nonnull %23, i32 noundef 2) #10
  %368 = icmp eq i32 %367, 2
  br i1 %368, label %371, label %369

369:                                              ; preds = %353
  %370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %367) #11
  br label %371

371:                                              ; preds = %369, %353
  %372 = load i8, ptr %22, align 2
  %373 = zext i8 %372 to i16
  %374 = shl nuw nsw i16 %373, 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  store i8 -83, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #10
  store i16 0, ptr %19, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #10
  %375 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %375, i8 0, i32 16, i1 false) #10, !annotation !8
  %376 = load ptr, ptr %329, align 4
  %377 = load i8, ptr %376, align 2
  %378 = zext i8 %377 to i16
  store i16 %378, ptr %20, align 4
  %379 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %379, align 2
  store i16 1, ptr %375, align 4
  %380 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %18, ptr %380, align 4
  %381 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  %382 = load i8, ptr %376, align 2
  %383 = zext i8 %382 to i16
  store i16 %383, ptr %381, align 4
  %384 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %384, align 2
  %385 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 2, ptr %385, align 4
  %386 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %19, ptr %386, align 4
  %387 = load ptr, ptr %327, align 4
  %388 = call i32 @i2c_transfer(ptr noundef %387, ptr noundef nonnull %20, i32 noundef 2) #10
  %389 = icmp eq i32 %388, 2
  br i1 %389, label %392, label %390

390:                                              ; preds = %371
  %391 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %388) #11
  br label %392

392:                                              ; preds = %390, %371
  %393 = load i8, ptr %19, align 2
  %394 = zext i8 %393 to i16
  %395 = shl nuw i16 %394, 8
  %396 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  %397 = load i8, ptr %396, align 1
  %398 = zext i8 %397 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #10
  store i8 -106, ptr %16, align 1
  %399 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 0, ptr %399, align 1
  %400 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 32, ptr %400, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %401 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 3, ptr %401, align 4, !annotation !8
  %402 = load ptr, ptr %329, align 4
  %403 = load i8, ptr %402, align 2
  %404 = zext i8 %403 to i16
  store i16 %404, ptr %17, align 4
  %405 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %405, align 2
  %406 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %406, align 4
  %407 = load ptr, ptr %327, align 4
  %408 = call i32 @i2c_transfer(ptr noundef %407, ptr noundef nonnull %17, i32 noundef 1) #10
  %409 = icmp eq i32 %408, 1
  br i1 %409, label %412, label %410

410:                                              ; preds = %392
  %411 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 150, i32 noundef 32, i32 noundef %408) #11
  br label %412

412:                                              ; preds = %410, %392
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #10
  %413 = and i16 %374, 3840
  %414 = and i16 %395, -4096
  %415 = or i16 %413, %398
  %416 = or i16 %415, %414
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %14) #10
  store i8 -83, ptr %14, align 1
  %417 = getelementptr inbounds i8, ptr %14, i32 1
  %418 = lshr i16 %416, 8
  %419 = trunc i16 %418 to i8
  store i8 %419, ptr %417, align 1
  %420 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 %397, ptr %420, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %421 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 3, ptr %421, align 4, !annotation !8
  %422 = load ptr, ptr %329, align 4
  %423 = load i8, ptr %422, align 2
  %424 = zext i8 %423 to i16
  store i16 %424, ptr %15, align 4
  %425 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %425, align 2
  %426 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %426, align 4
  %427 = load ptr, ptr %327, align 4
  %428 = call i32 @i2c_transfer(ptr noundef %427, ptr noundef nonnull %15, i32 noundef 1) #10
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %433, label %430

430:                                              ; preds = %412
  %431 = zext i16 %416 to i32
  %432 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 173, i32 noundef %431, i32 noundef %428) #11
  br label %433

433:                                              ; preds = %430, %412
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 -85, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i16 0, ptr %12, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #10
  %434 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %434, i8 0, i32 16, i1 false) #10, !annotation !8
  %435 = load ptr, ptr %329, align 4
  %436 = load i8, ptr %435, align 2
  %437 = zext i8 %436 to i16
  store i16 %437, ptr %13, align 4
  %438 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %438, align 2
  store i16 1, ptr %434, align 4
  %439 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %439, align 4
  %440 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %441 = load i8, ptr %435, align 2
  %442 = zext i8 %441 to i16
  store i16 %442, ptr %440, align 4
  %443 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %443, align 2
  %444 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 2, ptr %444, align 4
  %445 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %445, align 4
  %446 = load ptr, ptr %327, align 4
  %447 = call i32 @i2c_transfer(ptr noundef %446, ptr noundef nonnull %13, i32 noundef 2) #10
  %448 = icmp eq i32 %447, 2
  br i1 %448, label %451, label %449

449:                                              ; preds = %433
  %450 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %447) #11
  br label %451

451:                                              ; preds = %449, %433
  %452 = load i8, ptr %12, align 2
  %453 = zext i8 %452 to i16
  %454 = shl nuw i16 %453, 8
  %455 = getelementptr inbounds [2 x i8], ptr %12, i32 0, i32 1
  %456 = load i8, ptr %455, align 1
  %457 = zext i8 %456 to i16
  %458 = or i16 %454, %457
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  %459 = and i16 %458, -4098
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #10
  store i8 -85, ptr %9, align 1
  %460 = getelementptr inbounds i8, ptr %9, i32 1
  %461 = lshr i16 %459, 8
  %462 = trunc i16 %461 to i8
  store i8 %462, ptr %460, align 1
  %463 = getelementptr inbounds i8, ptr %9, i32 2
  %464 = trunc i16 %459 to i8
  store i8 %464, ptr %463, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %465 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 3, ptr %465, align 4, !annotation !8
  %466 = load ptr, ptr %329, align 4
  %467 = load i8, ptr %466, align 2
  %468 = zext i8 %467 to i16
  store i16 %468, ptr %10, align 4
  %469 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %469, align 2
  %470 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %470, align 4
  %471 = load ptr, ptr %327, align 4
  %472 = call i32 @i2c_transfer(ptr noundef %471, ptr noundef nonnull %10, i32 noundef 1) #10
  %473 = icmp eq i32 %472, 1
  br i1 %473, label %477, label %474

474:                                              ; preds = %451
  %475 = zext i16 %459 to i32
  %476 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 171, i32 noundef %475, i32 noundef %472) #11
  br label %477

477:                                              ; preds = %474, %451
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #10
  br label %539

478:                                              ; preds = %346
  %479 = icmp eq i8 %350, 1
  br i1 %479, label %539, label %480

480:                                              ; preds = %478
  store i8 1, ptr %349, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #10
  store i8 -106, ptr %7, align 1
  %481 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 0, ptr %481, align 1
  %482 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 8, ptr %482, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %483 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 3, ptr %483, align 4, !annotation !8
  %484 = load ptr, ptr %329, align 4
  %485 = load i8, ptr %484, align 2
  %486 = zext i8 %485 to i16
  store i16 %486, ptr %8, align 4
  %487 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %487, align 2
  %488 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %488, align 4
  %489 = load ptr, ptr %327, align 4
  %490 = call i32 @i2c_transfer(ptr noundef %489, ptr noundef nonnull %8, i32 noundef 1) #10
  %491 = icmp eq i32 %490, 1
  br i1 %491, label %494, label %492

492:                                              ; preds = %480
  %493 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 150, i32 noundef 8, i32 noundef %490) #11
  br label %494

494:                                              ; preds = %492, %480
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 -85, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %495 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %495, i8 0, i32 16, i1 false) #10, !annotation !8
  %496 = load ptr, ptr %329, align 4
  %497 = load i8, ptr %496, align 2
  %498 = zext i8 %497 to i16
  store i16 %498, ptr %6, align 4
  %499 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %499, align 2
  store i16 1, ptr %495, align 4
  %500 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %500, align 4
  %501 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %502 = load i8, ptr %496, align 2
  %503 = zext i8 %502 to i16
  store i16 %503, ptr %501, align 4
  %504 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %504, align 2
  %505 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 2, ptr %505, align 4
  %506 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %506, align 4
  %507 = load ptr, ptr %327, align 4
  %508 = call i32 @i2c_transfer(ptr noundef %507, ptr noundef nonnull %6, i32 noundef 2) #10
  %509 = icmp eq i32 %508, 2
  br i1 %509, label %512, label %510

510:                                              ; preds = %494
  %511 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %508) #11
  br label %512

512:                                              ; preds = %510, %494
  %513 = load i8, ptr %5, align 2
  %514 = zext i8 %513 to i16
  %515 = shl nuw i16 %514, 8
  %516 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %517 = load i8, ptr %516, align 1
  %518 = zext i8 %517 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %519 = or i16 %515, %518
  %520 = or i16 %519, 4097
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  store i8 -85, ptr %2, align 1
  %521 = getelementptr inbounds i8, ptr %2, i32 1
  %522 = lshr i16 %520, 8
  %523 = trunc i16 %522 to i8
  store i8 %523, ptr %521, align 1
  %524 = getelementptr inbounds i8, ptr %2, i32 2
  %525 = trunc i16 %520 to i8
  store i8 %525, ptr %524, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %526 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %526, align 4, !annotation !8
  %527 = load ptr, ptr %329, align 4
  %528 = load i8, ptr %527, align 2
  %529 = zext i8 %528 to i16
  store i16 %529, ptr %3, align 4
  %530 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %530, align 2
  %531 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %531, align 4
  %532 = load ptr, ptr %327, align 4
  %533 = call i32 @i2c_transfer(ptr noundef %532, ptr noundef nonnull %3, i32 noundef 1) #10
  %534 = icmp eq i32 %533, 1
  br i1 %534, label %538, label %535

535:                                              ; preds = %512
  %536 = zext i16 %520 to i32
  %537 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 171, i32 noundef %536, i32 noundef %533) #11
  br label %538

538:                                              ; preds = %535, %512
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  br label %539

539:                                              ; preds = %538, %478, %477, %351, %176, %166
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @s5h1409_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 1000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s5h1409_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5h1409_state, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  %7 = getelementptr inbounds %struct.s5h1409_state, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1409_read_status(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4
  store i32 0, ptr %1, align 4
  %9 = getelementptr inbounds %struct.s5h1409_state, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.s5h1409_state, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.s5h1409_config, ptr %14, i32 0, i32 7
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call fastcc void @s5h1409_set_qam_interleave_mode(ptr noundef %0)
  tail call fastcc void @s5h1409_set_qam_amhum_mode(ptr noundef %0)
  br label %19

19:                                               ; preds = %18, %12, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 -15, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %20 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #10, !annotation !8
  %21 = getelementptr inbounds %struct.s5h1409_state, ptr %8, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %5, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %20, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %28 = load i8, ptr %22, align 2
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %32, align 4
  %33 = load ptr, ptr %8, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %5, i32 noundef 2) #10
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %38, label %36

36:                                               ; preds = %19
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %34) #11
  br label %38

38:                                               ; preds = %36, %19
  %39 = load i8, ptr %4, align 2
  %40 = zext i8 %39 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, ptr %1, align 4
  %45 = or i32 %44, 4
  store i32 %45, ptr %1, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = and i32 %40, 128
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %1, align 4
  %51 = or i32 %50, 24
  store i32 %51, ptr %1, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load ptr, ptr %21, align 4
  %54 = getelementptr inbounds %struct.s5h1409_config, ptr %53, i32 0, i32 5
  %55 = load i8, ptr %54, align 1
  switch i8 %55, label %86 [
    i8 1, label %56
    i8 0, label %60
  ]

56:                                               ; preds = %52
  %57 = load i32, ptr %1, align 4
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %86, label %83

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 12
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = call i32 %66(ptr noundef %0, i32 noundef 1) #10
  %70 = load ptr, ptr %61, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi ptr [ %70, %68 ], [ %62, %64 ]
  %73 = call i32 %72(ptr noundef %0, ptr noundef nonnull %6) #10
  %74 = load ptr, ptr %65, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = call i32 %74(ptr noundef %0, i32 noundef 0) #10
  br label %78

78:                                               ; preds = %76, %71, %60
  %79 = load i32, ptr %6, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %1, align 4
  br label %83

83:                                               ; preds = %81, %56
  %84 = phi i32 [ %82, %81 ], [ %57, %56 ]
  %85 = or i32 %84, 3
  store i32 %85, ptr %1, align 4
  br label %86

86:                                               ; preds = %83, %78, %56, %52
  %87 = load i32, ptr @debug, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr %1, align 4
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.s5h1409_read_status, i32 noundef %90) #11
  br label %92

92:                                               ; preds = %89, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1409_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 -75, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.s5h1409_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 2
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #10
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %22) #11
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i8, ptr %4, align 2
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %29, %32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  store i32 %33, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1409_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = call i32 @s5h1409_read_snr(ptr noundef %0, ptr noundef nonnull %3)
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
define internal i32 @s5h1409_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
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
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1409_read_snr) #11
  br label %18

18:                                               ; preds = %16, %2
  %19 = getelementptr inbounds %struct.s5h1409_state, ptr %13, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  switch i32 %20, label %151 [
    i32 3, label %21
    i32 5, label %60
    i32 7, label %99
  ]

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 -16, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i16 0, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %22 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %22, i8 0, i32 16, i1 false) #10, !annotation !8
  %23 = getelementptr inbounds %struct.s5h1409_state, ptr %13, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %11, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %27, align 2
  store i16 1, ptr %22, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %30 = load i8, ptr %24, align 2
  %31 = zext i8 %30 to i16
  store i16 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %34, align 4
  %35 = load ptr, ptr %13, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %11, i32 noundef 2) #10
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %40, label %38

38:                                               ; preds = %21
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %36) #11
  br label %40

40:                                               ; preds = %38, %21
  %41 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %44 = load i32, ptr @debug, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1409_qam64_lookup_snr) #11
  br label %48

48:                                               ; preds = %46, %40
  br label %49

49:                                               ; preds = %57, %48
  %50 = phi i32 [ %58, %57 ], [ 0, %48 ]
  %51 = getelementptr [65 x %struct.qam64_snr_tab], ptr @qam64_snr_tab, i32 0, i32 %50
  %52 = load i16, ptr %51, align 2
  %53 = icmp ugt i16 %52, %43
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr [65 x %struct.qam64_snr_tab], ptr @qam64_snr_tab, i32 0, i32 %50, i32 1
  %56 = load i16, ptr %55, align 2
  store i16 %56, ptr %1, align 2
  br label %151

57:                                               ; preds = %49
  %58 = add nuw nsw i32 %50, 1
  %59 = icmp eq i32 %58, 65
  br i1 %59, label %151, label %49

60:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 -16, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 0, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %61 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %61, i8 0, i32 16, i1 false) #10, !annotation !8
  %62 = getelementptr inbounds %struct.s5h1409_state, ptr %13, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load i8, ptr %63, align 2
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %8, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %66, align 2
  store i16 1, ptr %61, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %67, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %69 = load i8, ptr %63, align 2
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %68, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %71, align 2
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 2, ptr %72, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %73, align 4
  %74 = load ptr, ptr %13, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %8, i32 noundef 2) #10
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %79, label %77

77:                                               ; preds = %60
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %75) #11
  br label %79

79:                                               ; preds = %77, %60
  %80 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %83 = load i32, ptr @debug, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1409_qam256_lookup_snr) #11
  br label %87

87:                                               ; preds = %85, %79
  br label %88

88:                                               ; preds = %96, %87
  %89 = phi i32 [ %97, %96 ], [ 0, %87 ]
  %90 = getelementptr [70 x %struct.qam256_snr_tab], ptr @qam256_snr_tab, i32 0, i32 %89
  %91 = load i16, ptr %90, align 2
  %92 = icmp ugt i16 %91, %82
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = getelementptr [70 x %struct.qam256_snr_tab], ptr @qam256_snr_tab, i32 0, i32 %89, i32 1
  %95 = load i16, ptr %94, align 2
  store i16 %95, ptr %1, align 2
  br label %151

96:                                               ; preds = %88
  %97 = add nuw nsw i32 %89, 1
  %98 = icmp eq i32 %97, 70
  br i1 %98, label %151, label %88

99:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 -15, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %100 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %100, i8 0, i32 16, i1 false) #10, !annotation !8
  %101 = getelementptr inbounds %struct.s5h1409_state, ptr %13, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = load i8, ptr %102, align 2
  %104 = zext i8 %103 to i16
  store i16 %104, ptr %5, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %105, align 2
  store i16 1, ptr %100, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %106, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %108 = load i8, ptr %102, align 2
  %109 = zext i8 %108 to i16
  store i16 %109, ptr %107, align 4
  %110 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %110, align 2
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %111, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %112, align 4
  %113 = load ptr, ptr %13, align 4
  %114 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %5, i32 noundef 2) #10
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %118, label %116

116:                                              ; preds = %99
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %114) #11
  br label %118

118:                                              ; preds = %116, %99
  %119 = load i8, ptr %4, align 2
  %120 = zext i8 %119 to i16
  %121 = shl nuw i16 %120, 8
  %122 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %125 = and i16 %121, 768
  %126 = or i16 %125, %124
  %127 = load i32, ptr @debug, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %118
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5h1409_vsb_lookup_snr) #11
  br label %131

131:                                              ; preds = %129, %118
  br label %132

132:                                              ; preds = %140, %131
  %133 = phi i32 [ %141, %140 ], [ 0, %131 ]
  %134 = getelementptr [40 x %struct.vsb_snr_tab], ptr @vsb_snr_tab, i32 0, i32 %133
  %135 = load i16, ptr %134, align 2
  %136 = icmp ult i16 %135, %126
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = getelementptr [40 x %struct.vsb_snr_tab], ptr @vsb_snr_tab, i32 0, i32 %133, i32 1
  %139 = load i16, ptr %138, align 2
  store i16 %139, ptr %1, align 2
  br label %143

140:                                              ; preds = %132
  %141 = add nuw nsw i32 %133, 1
  %142 = icmp eq i32 %141, 40
  br i1 %142, label %143, label %132

143:                                              ; preds = %140, %137
  %144 = phi i32 [ 0, %137 ], [ -22, %140 ]
  %145 = load i32, ptr @debug, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i16, ptr %1, align 2
  %149 = zext i16 %148 to i32
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.s5h1409_vsb_lookup_snr, i32 noundef %149) #11
  br label %151

151:                                              ; preds = %147, %143, %96, %93, %57, %54, %18
  %152 = phi i32 [ -22, %18 ], [ 0, %54 ], [ 0, %93 ], [ %144, %143 ], [ %144, %147 ], [ -22, %57 ], [ -22, %96 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5h1409_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 -75, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.s5h1409_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 2
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #10
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %22) #11
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i8, ptr %4, align 2
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %29, %32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  store i32 %33, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5h1409_set_qam_interleave_mode(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [1 x i8], align 1
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x %struct.i2c_msg], align 4
  %19 = alloca [1 x i8], align 1
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x %struct.i2c_msg], align 4
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.s5h1409_state, ptr %23, i32 0, i32 7
  %25 = load i8, ptr %24, align 4
  %26 = icmp ugt i8 %25, 1
  br i1 %26, label %206, label %27

27:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #10
  store i8 -15, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #10
  store i16 0, ptr %20, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #10
  %28 = getelementptr inbounds i8, ptr %21, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %28, i8 0, i32 16, i1 false) #10, !annotation !8
  %29 = getelementptr inbounds %struct.s5h1409_state, ptr %23, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load i8, ptr %30, align 2
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %21, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %33, align 2
  store i16 1, ptr %28, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1
  %36 = load i8, ptr %30, align 2
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 1
  store i16 1, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 2
  store i16 2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 1, i32 3
  store ptr %20, ptr %40, align 4
  %41 = load ptr, ptr %23, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %21, i32 noundef 2) #10
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %46, label %44

44:                                               ; preds = %27
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %42) #11
  br label %46

46:                                               ; preds = %44, %27
  %47 = load i8, ptr %20, align 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #10
  %48 = icmp sgt i8 %47, -1
  %49 = load i8, ptr %24, align 4
  br i1 %48, label %138, label %50

50:                                               ; preds = %46
  %51 = icmp ult i8 %49, 2
  br i1 %51, label %52, label %206

52:                                               ; preds = %50
  %53 = load i32, ptr @debug, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.s5h1409_set_qam_interleave_mode) #11
  br label %57

57:                                               ; preds = %55, %52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #10
  store i8 -78, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #10
  store i16 0, ptr %17, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #10
  %58 = getelementptr inbounds i8, ptr %18, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %58, i8 0, i32 16, i1 false) #10, !annotation !8
  %59 = load ptr, ptr %29, align 4
  %60 = load i8, ptr %59, align 2
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %18, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %62, align 2
  store i16 1, ptr %58, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %16, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1
  %65 = load i8, ptr %59, align 2
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %64, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 1
  store i16 1, ptr %67, align 2
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 2
  store i16 2, ptr %68, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 3
  store ptr %17, ptr %69, align 4
  %70 = load ptr, ptr %23, align 4
  %71 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %18, i32 noundef 2) #10
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %75, label %73

73:                                               ; preds = %57
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %71) #11
  br label %75

75:                                               ; preds = %73, %57
  %76 = load i8, ptr %17, align 2
  %77 = zext i8 %76 to i16
  %78 = shl nuw nsw i16 %77, 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 -83, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #10
  store i16 0, ptr %14, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #10
  %79 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %79, i8 0, i32 16, i1 false) #10, !annotation !8
  %80 = load ptr, ptr %29, align 4
  %81 = load i8, ptr %80, align 2
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %15, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %83, align 2
  store i16 1, ptr %79, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %13, ptr %84, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  %86 = load i8, ptr %80, align 2
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %85, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %88, align 2
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 2, ptr %89, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %14, ptr %90, align 4
  %91 = load ptr, ptr %23, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %15, i32 noundef 2) #10
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %96, label %94

94:                                               ; preds = %75
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %92) #11
  br label %96

96:                                               ; preds = %94, %75
  %97 = load i8, ptr %14, align 2
  %98 = zext i8 %97 to i16
  %99 = shl nuw i16 %98, 8
  %100 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #10
  store i8 -106, ptr %11, align 1
  %103 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 0, ptr %103, align 1
  %104 = getelementptr inbounds i8, ptr %11, i32 2
  store i8 32, ptr %104, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %105 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 3, ptr %105, align 4, !annotation !8
  %106 = load ptr, ptr %29, align 4
  %107 = load i8, ptr %106, align 2
  %108 = zext i8 %107 to i16
  store i16 %108, ptr %12, align 4
  %109 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %109, align 2
  %110 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %110, align 4
  %111 = load ptr, ptr %23, align 4
  %112 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %12, i32 noundef 1) #10
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %116, label %114

114:                                              ; preds = %96
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 150, i32 noundef 32, i32 noundef %112) #11
  br label %116

116:                                              ; preds = %114, %96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #10
  %117 = and i16 %78, 3840
  %118 = and i16 %99, -4096
  %119 = or i16 %117, %102
  %120 = or i16 %119, %118
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #10
  store i8 -83, ptr %9, align 1
  %121 = getelementptr inbounds i8, ptr %9, i32 1
  %122 = lshr i16 %120, 8
  %123 = trunc i16 %122 to i8
  store i8 %123, ptr %121, align 1
  %124 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 %101, ptr %124, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %125 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 3, ptr %125, align 4, !annotation !8
  %126 = load ptr, ptr %29, align 4
  %127 = load i8, ptr %126, align 2
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %10, align 4
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %129, align 2
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %130, align 4
  %131 = load ptr, ptr %23, align 4
  %132 = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %10, i32 noundef 1) #10
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %137, label %134

134:                                              ; preds = %116
  %135 = zext i16 %120 to i32
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 173, i32 noundef %135, i32 noundef %132) #11
  br label %137

137:                                              ; preds = %134, %116
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #10
  br label %204

138:                                              ; preds = %46
  %139 = icmp eq i8 %49, 0
  br i1 %139, label %140, label %206

140:                                              ; preds = %138
  %141 = load i32, ptr @debug, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.s5h1409_set_qam_interleave_mode) #11
  br label %145

145:                                              ; preds = %143, %140
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #10
  store i8 -106, ptr %7, align 1
  %146 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 0, ptr %146, align 1
  %147 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 8, ptr %147, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %148 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 3, ptr %148, align 4, !annotation !8
  %149 = load ptr, ptr %29, align 4
  %150 = load i8, ptr %149, align 2
  %151 = zext i8 %150 to i16
  store i16 %151, ptr %8, align 4
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %152, align 2
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %153, align 4
  %154 = load ptr, ptr %23, align 4
  %155 = call i32 @i2c_transfer(ptr noundef %154, ptr noundef nonnull %8, i32 noundef 1) #10
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %159, label %157

157:                                              ; preds = %145
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 150, i32 noundef 8, i32 noundef %155) #11
  br label %159

159:                                              ; preds = %157, %145
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 -85, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %160 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %160, i8 0, i32 16, i1 false) #10, !annotation !8
  %161 = load ptr, ptr %29, align 4
  %162 = load i8, ptr %161, align 2
  %163 = zext i8 %162 to i16
  store i16 %163, ptr %6, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %164, align 2
  store i16 1, ptr %160, align 4
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %165, align 4
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %167 = load i8, ptr %161, align 2
  %168 = zext i8 %167 to i16
  store i16 %168, ptr %166, align 4
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %169, align 2
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 2, ptr %170, align 4
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %171, align 4
  %172 = load ptr, ptr %23, align 4
  %173 = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %6, i32 noundef 2) #10
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %177, label %175

175:                                              ; preds = %159
  %176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %173) #11
  br label %177

177:                                              ; preds = %175, %159
  %178 = load i8, ptr %5, align 2
  %179 = zext i8 %178 to i16
  %180 = shl nuw i16 %179, 8
  %181 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %184 = or i16 %180, %183
  %185 = or i16 %184, 4097
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  store i8 -85, ptr %2, align 1
  %186 = getelementptr inbounds i8, ptr %2, i32 1
  %187 = lshr i16 %185, 8
  %188 = trunc i16 %187 to i8
  store i8 %188, ptr %186, align 1
  %189 = getelementptr inbounds i8, ptr %2, i32 2
  %190 = trunc i16 %185 to i8
  store i8 %190, ptr %189, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %191 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %191, align 4, !annotation !8
  %192 = load ptr, ptr %29, align 4
  %193 = load i8, ptr %192, align 2
  %194 = zext i8 %193 to i16
  store i16 %194, ptr %3, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %195, align 2
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %196, align 4
  %197 = load ptr, ptr %23, align 4
  %198 = call i32 @i2c_transfer(ptr noundef %197, ptr noundef nonnull %3, i32 noundef 1) #10
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %203, label %200

200:                                              ; preds = %177
  %201 = zext i16 %185 to i32
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 171, i32 noundef %201, i32 noundef %198) #11
  br label %203

203:                                              ; preds = %200, %177
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  br label %204

204:                                              ; preds = %203, %137
  %205 = phi i8 [ 2, %137 ], [ 1, %203 ]
  store i8 %205, ptr %24, align 4
  br label %206

206:                                              ; preds = %204, %138, %50, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5h1409_set_qam_amhum_mode(ptr nocapture noundef readonly %0) unnamed_addr #0 {
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
  %16 = alloca [3 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [1 x i8], align 1
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x %struct.i2c_msg], align 4
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.s5h1409_state, ptr %22, i32 0, i32 7
  %24 = load i8, ptr %23, align 4
  switch i8 %24, label %25 [
    i8 5, label %192
    i8 1, label %192
    i8 0, label %192
  ]

25:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  store i8 -16, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #10
  store i16 0, ptr %19, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #10
  %26 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %26, i8 0, i32 16, i1 false) #10, !annotation !8
  %27 = getelementptr inbounds %struct.s5h1409_state, ptr %22, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %20, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %31, align 2
  store i16 1, ptr %26, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %18, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  %34 = load i8, ptr %28, align 2
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %19, ptr %38, align 4
  %39 = load ptr, ptr %22, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %20, i32 noundef 2) #10
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %44, label %42

42:                                               ; preds = %25
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5h1409_readreg, i32 noundef %40) #11
  br label %44

44:                                               ; preds = %42, %25
  %45 = load i8, ptr %19, align 2
  %46 = getelementptr inbounds [2 x i8], ptr %19, i32 0, i32 1
  %47 = load i8, ptr %46, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  %48 = and i8 %45, 32
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %139, label %50

50:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #10
  store i8 -106, ptr %16, align 1
  %51 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 12, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %53 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 3, ptr %53, align 4, !annotation !8
  %54 = load ptr, ptr %27, align 4
  %55 = load i8, ptr %54, align 2
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %17, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %58, align 4
  %59 = load ptr, ptr %22, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %17, i32 noundef 1) #10
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %64, label %62

62:                                               ; preds = %50
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 150, i32 noundef 12, i32 noundef %60) #11
  br label %64

64:                                               ; preds = %62, %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #10
  %65 = icmp ult i8 %47, 104
  %66 = load i8, ptr %23, align 4
  br i1 %65, label %67, label %103

67:                                               ; preds = %64
  %68 = icmp ult i8 %66, 5
  br i1 %68, label %69, label %192

69:                                               ; preds = %67
  %70 = load i32, ptr @debug, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.s5h1409_set_qam_amhum_mode) #11
  br label %74

74:                                               ; preds = %72, %69
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %14) #10
  store i8 -109, ptr %14, align 1
  %75 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 49, ptr %75, align 1
  %76 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 48, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %77 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 3, ptr %77, align 4, !annotation !8
  %78 = load ptr, ptr %27, align 4
  %79 = load i8, ptr %78, align 2
  %80 = zext i8 %79 to i16
  store i16 %80, ptr %15, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %81, align 2
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %82, align 4
  %83 = load ptr, ptr %22, align 4
  %84 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %15, i32 noundef 1) #10
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %88, label %86

86:                                               ; preds = %74
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 147, i32 noundef 12592, i32 noundef %84) #11
  br label %88

88:                                               ; preds = %86, %74
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #10
  store i8 -98, ptr %12, align 1
  %89 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 40, ptr %89, align 1
  %90 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 54, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %91 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 3, ptr %91, align 4, !annotation !8
  %92 = load ptr, ptr %27, align 4
  %93 = load i8, ptr %92, align 2
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %13, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %95, align 2
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %96, align 4
  %97 = load ptr, ptr %22, align 4
  %98 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %13, i32 noundef 1) #10
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %102, label %100

100:                                              ; preds = %88
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 158, i32 noundef 10294, i32 noundef %98) #11
  br label %102

102:                                              ; preds = %100, %88
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #10
  br label %190

103:                                              ; preds = %64
  %104 = icmp ult i8 %66, 4
  br i1 %104, label %105, label %192

105:                                              ; preds = %103
  %106 = load i32, ptr @debug, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.s5h1409_set_qam_amhum_mode) #11
  br label %110

110:                                              ; preds = %108, %105
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #10
  store i8 -109, ptr %10, align 1
  %111 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 51, ptr %111, align 1
  %112 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 50, ptr %112, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %113 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %113, align 4, !annotation !8
  %114 = load ptr, ptr %27, align 4
  %115 = load i8, ptr %114, align 2
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %11, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %117, align 2
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %118, align 4
  %119 = load ptr, ptr %22, align 4
  %120 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %11, i32 noundef 1) #10
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %124, label %122

122:                                              ; preds = %110
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 147, i32 noundef 13106, i32 noundef %120) #11
  br label %124

124:                                              ; preds = %122, %110
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #10
  store i8 -98, ptr %8, align 1
  %125 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 44, ptr %125, align 1
  %126 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 55, ptr %126, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %127 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %127, align 4, !annotation !8
  %128 = load ptr, ptr %27, align 4
  %129 = load i8, ptr %128, align 2
  %130 = zext i8 %129 to i16
  store i16 %130, ptr %9, align 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %131, align 2
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %132, align 4
  %133 = load ptr, ptr %22, align 4
  %134 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %9, i32 noundef 1) #10
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %138, label %136

136:                                              ; preds = %124
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 158, i32 noundef 11319, i32 noundef %134) #11
  br label %138

138:                                              ; preds = %136, %124
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #10
  br label %190

139:                                              ; preds = %44
  %140 = load i8, ptr %23, align 4
  %141 = icmp ult i8 %140, 3
  br i1 %141, label %142, label %192

142:                                              ; preds = %139
  %143 = load i32, ptr @debug, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.s5h1409_set_qam_amhum_mode) #11
  br label %147

147:                                              ; preds = %145, %142
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #10
  store i8 -106, ptr %6, align 1
  %148 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %148, align 1
  %149 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 8, ptr %149, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %150 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %150, align 4, !annotation !8
  %151 = load ptr, ptr %27, align 4
  %152 = load i8, ptr %151, align 2
  %153 = zext i8 %152 to i16
  store i16 %153, ptr %7, align 4
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %154, align 2
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %155, align 4
  %156 = load ptr, ptr %22, align 4
  %157 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %7, i32 noundef 1) #10
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %161, label %159

159:                                              ; preds = %147
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 150, i32 noundef 8, i32 noundef %157) #11
  br label %161

161:                                              ; preds = %159, %147
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  store i8 -109, ptr %4, align 1
  %162 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 51, ptr %162, align 1
  %163 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 50, ptr %163, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %164 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %164, align 4, !annotation !8
  %165 = load ptr, ptr %27, align 4
  %166 = load i8, ptr %165, align 2
  %167 = zext i8 %166 to i16
  store i16 %167, ptr %5, align 4
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %168, align 2
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %169, align 4
  %170 = load ptr, ptr %22, align 4
  %171 = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %5, i32 noundef 1) #10
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %175, label %173

173:                                              ; preds = %161
  %174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 147, i32 noundef 13106, i32 noundef %171) #11
  br label %175

175:                                              ; preds = %173, %161
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #10
  store i8 -98, ptr %2, align 1
  %176 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 44, ptr %176, align 1
  %177 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 55, ptr %177, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %178 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %178, align 4, !annotation !8
  %179 = load ptr, ptr %27, align 4
  %180 = load i8, ptr %179, align 2
  %181 = zext i8 %180 to i16
  store i16 %181, ptr %3, align 4
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %182, align 2
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %183, align 4
  %184 = load ptr, ptr %22, align 4
  %185 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %3, i32 noundef 1) #10
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %189, label %187

187:                                              ; preds = %175
  %188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5h1409_writereg, i32 noundef 158, i32 noundef 11319, i32 noundef %185) #11
  br label %189

189:                                              ; preds = %187, %175
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #10
  br label %190

190:                                              ; preds = %189, %138, %102
  %191 = phi i8 [ 4, %138 ], [ 5, %102 ], [ 3, %189 ]
  store i8 %191, ptr %23, align 4
  br label %192

192:                                              ; preds = %190, %139, %103, %67, %1, %1, %1
  ret void
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
