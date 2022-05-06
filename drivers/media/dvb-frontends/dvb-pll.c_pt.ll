; ModuleID = '/llk/IR/drivers/media/dvb-frontends/dvb-pll.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dvb-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_pll_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_pll_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_pll_attach:\09\09\09\09\09"
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
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.anon.73 = type { i32, i32, i8, i8 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.dvb_pll_priv = type { i32, i32, ptr, ptr, i32, i32 }
%struct.dvb_pll_desc = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [0 x %struct.anon.73] }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [41 x i8] c"parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_id = internal constant [3 x i8] c"id\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_id = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr @__this_module, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype251 = internal constant [25 x i8] c"parmtype=id:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_id252 = internal constant [41 x i8] c"parm=id:force pll id to use (DEBUG ONLY)\00", section ".modinfo", align 1
@pll_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@id = internal global [64 x i32] zeroinitializer, align 4
@pll_list = internal unnamed_addr constant [22 x ptr] [ptr null, ptr @dvb_pll_thomson_dtt7579, ptr @dvb_pll_thomson_dtt759x, ptr @dvb_pll_lg_z201, ptr @dvb_pll_unknown_1, ptr @dvb_pll_tua6010xs, ptr @dvb_pll_env57h1xd5, ptr @dvb_pll_tua6034, ptr @dvb_pll_tda665x, ptr @dvb_pll_tded4, ptr @dvb_pll_tdhu2, ptr @dvb_pll_samsung_tbmv, ptr @dvb_pll_philips_sd1878_tda8261, ptr @dvb_pll_opera1, ptr @dvb_pll_samsung_dtos403ih102a, ptr @dvb_pll_samsung_tdtc9251dh0, ptr @dvb_pll_samsung_tbdu18132, ptr @dvb_pll_samsung_tbmu24112, ptr @dvb_pll_alps_tdee4, ptr @dvb_pll_thomson_dtt7520x, ptr @dvb_pll_tua6034_friio, ptr @dvb_pll_tda665x_earth_pt1], align 4
@dvb_pll_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr @dvb_pll_release, ptr @dvb_pll_init, ptr @dvb_pll_sleep, ptr null, ptr null, ptr @dvb_pll_set_params, ptr null, ptr null, ptr @dvb_pll_get_frequency, ptr @dvb_pll_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr @dvb_pll_calc_regs, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [51 x i8] c"\017dvb_pll: %s: %s tuner, frequency range: %u...%u\0A\00", align 1
@__func__.dvb_pll_attach = private unnamed_addr constant [15 x i8] c"dvb_pll_attach\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\017dvb_pll: %s: dvb-pll[%d]\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\01c %d-%04x\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\01c: id# %d (%s) attached, %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"insmod option\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"autodetected\00", align 1
@__kstrtab_dvb_pll_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_pll_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_pll_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_pll_attach to i32), ptr @__kstrtab_dvb_pll_attach, ptr @__kstrtabns_dvb_pll_attach }, section "___ksymtab+dvb_pll_attach", align 4
@dvb_pll_id = internal constant [22 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"dtt7579\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"dtt759x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"z201\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"unknown_1\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"tua6010xs\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"env57h1xd5\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"tua6034\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"tda665x\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"tded4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"tdhu2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"tbmv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"sd1878_tda8261\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"opera1\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.i2c_device_id { [20 x i8] c"dtos403ih102a\00\00\00\00\00\00\00", i32 14 }, %struct.i2c_device_id { [20 x i8] c"tdtc9251dh0\00\00\00\00\00\00\00\00\00", i32 15 }, %struct.i2c_device_id { [20 x i8] c"tbdu18132\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.i2c_device_id { [20 x i8] c"tbmu24112\00\00\00\00\00\00\00\00\00\00\00", i32 17 }, %struct.i2c_device_id { [20 x i8] c"tdee4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 18 }, %struct.i2c_device_id { [20 x i8] c"dtt7520x\00\00\00\00\00\00\00\00\00\00\00\00", i32 19 }, %struct.i2c_device_id { [20 x i8] c"tua6034_friio\00\00\00\00\00\00\00", i32 20 }, %struct.i2c_device_id { [20 x i8] c"tda665x_earthpt1\00\00\00\00", i32 21 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description253 = internal constant [28 x i8] c"description=dvb pll library\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [18 x i8] c"author=Gerd Knorr\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Thomson dtt7579\00", align 1
@.compoundliteral = internal global [3 x i8] c"\02\B4\03", align 1
@dvb_pll_thomson_dtt7579 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.73] } { ptr @.str.6, i32 177000000, i32 858000000, i32 36166667, ptr null, ptr null, ptr null, ptr @.compoundliteral, i32 4, [4 x %struct.anon.73] [%struct.anon.73 { i32 443250000, i32 166667, i8 -76, i8 2 }, %struct.anon.73 { i32 542000000, i32 166667, i8 -76, i8 8 }, %struct.anon.73 { i32 771000000, i32 166667, i8 -68, i8 8 }, %struct.anon.73 { i32 999999999, i32 166667, i8 -12, i8 8 }] }, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"Thomson dtt759x\00", align 1
@.compoundliteral.9 = internal global [3 x i8] c"\02\84\03", align 1
@dvb_pll_thomson_dtt759x = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [5 x %struct.anon.73] } { ptr @.str.8, i32 177000000, i32 896000000, i32 36166667, ptr @thomson_dtt759x_bw, ptr null, ptr null, ptr @.compoundliteral.9, i32 5, [5 x %struct.anon.73] [%struct.anon.73 { i32 264000000, i32 166667, i8 -76, i8 2 }, %struct.anon.73 { i32 470000000, i32 166667, i8 -68, i8 2 }, %struct.anon.73 { i32 735000000, i32 166667, i8 -68, i8 8 }, %struct.anon.73 { i32 835000000, i32 166667, i8 -12, i8 8 }, %struct.anon.73 { i32 999999999, i32 166667, i8 -4, i8 8 }] }, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"LG z201\00", align 1
@.compoundliteral.12 = internal global [3 x i8] c"\02\BC\03", align 1
@dvb_pll_lg_z201 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [5 x %struct.anon.73] } { ptr @.str.11, i32 174000000, i32 862000000, i32 36166667, ptr null, ptr null, ptr null, ptr @.compoundliteral.12, i32 5, [5 x %struct.anon.73] [%struct.anon.73 { i32 157500000, i32 166667, i8 -68, i8 1 }, %struct.anon.73 { i32 443250000, i32 166667, i8 -68, i8 2 }, %struct.anon.73 { i32 542000000, i32 166667, i8 -68, i8 4 }, %struct.anon.73 { i32 830000000, i32 166667, i8 -12, i8 4 }, %struct.anon.73 { i32 999999999, i32 166667, i8 -4, i8 4 }] }, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"unknown 1\00", align 1
@dvb_pll_unknown_1 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [9 x %struct.anon.73] } { ptr @.str.14, i32 174000000, i32 862000000, i32 36166667, ptr null, ptr null, ptr null, ptr null, i32 9, [9 x %struct.anon.73] [%struct.anon.73 { i32 150000000, i32 166667, i8 -76, i8 1 }, %struct.anon.73 { i32 173000000, i32 166667, i8 -68, i8 1 }, %struct.anon.73 { i32 250000000, i32 166667, i8 -76, i8 2 }, %struct.anon.73 { i32 400000000, i32 166667, i8 -68, i8 2 }, %struct.anon.73 { i32 420000000, i32 166667, i8 -12, i8 2 }, %struct.anon.73 { i32 470000000, i32 166667, i8 -4, i8 2 }, %struct.anon.73 { i32 600000000, i32 166667, i8 -68, i8 8 }, %struct.anon.73 { i32 730000000, i32 166667, i8 -12, i8 8 }, %struct.anon.73 { i32 999999999, i32 166667, i8 -4, i8 8 }] }, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"Infineon TUA6010XS\00", align 1
@dvb_pll_tua6010xs = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [3 x %struct.anon.73] } { ptr @.str.16, i32 44250000, i32 858000000, i32 36125000, ptr null, ptr null, ptr null, ptr null, i32 3, [3 x %struct.anon.73] [%struct.anon.73 { i32 115750000, i32 62500, i8 -114, i8 3 }, %struct.anon.73 { i32 403250000, i32 62500, i8 -114, i8 6 }, %struct.anon.73 { i32 999999999, i32 62500, i8 -114, i8 -123 }] }, align 4
@.str.18 = private unnamed_addr constant [21 x i8] c"Panasonic ENV57H1XD5\00", align 1
@dvb_pll_env57h1xd5 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.73] } { ptr @.str.18, i32 44250000, i32 858000000, i32 36125000, ptr null, ptr null, ptr null, ptr null, i32 4, [4 x %struct.anon.73] [%struct.anon.73 { i32 153000000, i32 166667, i8 -62, i8 65 }, %struct.anon.73 { i32 470000000, i32 166667, i8 -62, i8 66 }, %struct.anon.73 { i32 526000000, i32 166667, i8 -62, i8 -124 }, %struct.anon.73 { i32 999999999, i32 166667, i8 -62, i8 -92 }] }, align 4
@.str.20 = private unnamed_addr constant [17 x i8] c"Infineon TUA6034\00", align 1
@dvb_pll_tua6034 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [3 x %struct.anon.73] } { ptr @.str.20, i32 44250000, i32 858000000, i32 36166667, ptr @tua6034_bw, ptr null, ptr null, ptr null, i32 3, [3 x %struct.anon.73] [%struct.anon.73 { i32 174500000, i32 62500, i8 -50, i8 1 }, %struct.anon.73 { i32 230000000, i32 62500, i8 -50, i8 2 }, %struct.anon.73 { i32 999999999, i32 62500, i8 -50, i8 4 }] }, align 4
@.str.22 = private unnamed_addr constant [24 x i8] c"Philips TDA6650/TDA6651\00", align 1
@.compoundliteral.23 = internal global [5 x i8] c"\04\0B\F5\85\AB", align 1
@dvb_pll_tda665x = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [12 x %struct.anon.73] } { ptr @.str.22, i32 44250000, i32 858000000, i32 36166667, ptr @tda665x_bw, ptr @.compoundliteral.23, ptr null, ptr null, i32 12, [12 x %struct.anon.73] [%struct.anon.73 { i32 93834000, i32 166667, i8 -54, i8 97 }, %struct.anon.73 { i32 123834000, i32 166667, i8 -54, i8 -95 }, %struct.anon.73 { i32 161000000, i32 166667, i8 -54, i8 -95 }, %struct.anon.73 { i32 163834000, i32 166667, i8 -54, i8 -62 }, %struct.anon.73 { i32 253834000, i32 166667, i8 -54, i8 98 }, %struct.anon.73 { i32 383834000, i32 166667, i8 -54, i8 -94 }, %struct.anon.73 { i32 443834000, i32 166667, i8 -54, i8 -62 }, %struct.anon.73 { i32 444000000, i32 166667, i8 -54, i8 -60 }, %struct.anon.73 { i32 583834000, i32 166667, i8 -54, i8 100 }, %struct.anon.73 { i32 793834000, i32 166667, i8 -54, i8 -92 }, %struct.anon.73 { i32 444834000, i32 166667, i8 -54, i8 -60 }, %struct.anon.73 { i32 861000000, i32 166667, i8 -54, i8 -28 }] }, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"ALPS TDED4\00", align 1
@dvb_pll_tded4 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.73] } { ptr @.str.25, i32 47000000, i32 863000000, i32 36166667, ptr @tded4_bw, ptr null, ptr null, ptr null, i32 4, [4 x %struct.anon.73] [%struct.anon.73 { i32 153000000, i32 166667, i8 -123, i8 1 }, %struct.anon.73 { i32 470000000, i32 166667, i8 -123, i8 2 }, %struct.anon.73 { i32 823000000, i32 166667, i8 -123, i8 8 }, %struct.anon.73 { i32 999999999, i32 166667, i8 -123, i8 -120 }] }, align 4
@.str.27 = private unnamed_addr constant [11 x i8] c"ALPS TDHU2\00", align 1
@dvb_pll_tdhu2 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.73] } { ptr @.str.27, i32 54000000, i32 864000000, i32 44000000, ptr null, ptr null, ptr null, ptr null, i32 4, [4 x %struct.anon.73] [%struct.anon.73 { i32 162000000, i32 62500, i8 -123, i8 1 }, %struct.anon.73 { i32 426000000, i32 62500, i8 -123, i8 2 }, %struct.anon.73 { i32 782000000, i32 62500, i8 -123, i8 8 }, %struct.anon.73 { i32 999999999, i32 62500, i8 -123, i8 -120 }] }, align 4
@.str.29 = private unnamed_addr constant [35 x i8] c"Samsung TBMV30111IN / TBMV30712IN1\00", align 1
@dvb_pll_samsung_tbmv = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [6 x %struct.anon.73] } { ptr @.str.29, i32 54000000, i32 860000000, i32 44000000, ptr null, ptr null, ptr null, ptr null, i32 6, [6 x %struct.anon.73] [%struct.anon.73 { i32 172000000, i32 166667, i8 -76, i8 1 }, %struct.anon.73 { i32 214000000, i32 166667, i8 -76, i8 2 }, %struct.anon.73 { i32 467000000, i32 166667, i8 -68, i8 2 }, %struct.anon.73 { i32 721000000, i32 166667, i8 -68, i8 8 }, %struct.anon.73 { i32 841000000, i32 166667, i8 -12, i8 8 }, %struct.anon.73 { i32 999999999, i32 166667, i8 -4, i8 2 }] }, align 4
@.str.31 = private unnamed_addr constant [15 x i8] c"Philips SD1878\00", align 1
@dvb_pll_philips_sd1878_tda8261 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.73] } { ptr @.str.31, i32 950000000, i32 -2144967296, i32 249, ptr null, ptr null, ptr null, ptr null, i32 4, [4 x %struct.anon.73] [%struct.anon.73 { i32 1250000, i32 500, i8 -60, i8 0 }, %struct.anon.73 { i32 1450000, i32 500, i8 -60, i8 64 }, %struct.anon.73 { i32 2050000, i32 500, i8 -60, i8 -128 }, %struct.anon.73 { i32 2150000, i32 500, i8 -60, i8 -64 }] }, align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"Opera Tuner\00", align 1
@.compoundliteral.34 = internal global [5 x i8] c"\04\08\E5\E1\00", align 1
@.compoundliteral.35 = internal global [5 x i8] c"\04\08\E5\E5\00", align 1
@dvb_pll_opera1 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [8 x %struct.anon.73] } { ptr @.str.33, i32 900000000, i32 -2044967296, i32 0, ptr @opera1_bw, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr null, i32 8, [8 x %struct.anon.73] [%struct.anon.73 { i32 1064000, i32 500, i8 -7, i8 -62 }, %struct.anon.73 { i32 1169000, i32 500, i8 -7, i8 -30 }, %struct.anon.73 { i32 1299000, i32 500, i8 -7, i8 32 }, %struct.anon.73 { i32 1444000, i32 500, i8 -7, i8 64 }, %struct.anon.73 { i32 1606000, i32 500, i8 -7, i8 96 }, %struct.anon.73 { i32 1777000, i32 500, i8 -7, i8 -128 }, %struct.anon.73 { i32 1941000, i32 500, i8 -7, i8 -96 }, %struct.anon.73 { i32 2250000, i32 500, i8 -7, i8 -64 }] }, align 4
@.str.37 = private unnamed_addr constant [38 x i8] c"\013dvb_pll: %s: i2c_transfer failed:%d\00", align 1
@__func__.opera1_bw = private unnamed_addr constant [10 x i8] c"opera1_bw\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"Samsung DTOS403IH102A\00", align 1
@dvb_pll_samsung_dtos403ih102a = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [8 x %struct.anon.73] } { ptr @.str.38, i32 44250000, i32 858000000, i32 36125000, ptr @samsung_dtos403ih102a_set, ptr null, ptr null, ptr null, i32 8, [8 x %struct.anon.73] [%struct.anon.73 { i32 135000000, i32 62500, i8 -66, i8 1 }, %struct.anon.73 { i32 177000000, i32 62500, i8 -10, i8 1 }, %struct.anon.73 { i32 370000000, i32 62500, i8 -66, i8 2 }, %struct.anon.73 { i32 450000000, i32 62500, i8 -10, i8 2 }, %struct.anon.73 { i32 466000000, i32 62500, i8 -2, i8 2 }, %struct.anon.73 { i32 538000000, i32 62500, i8 -66, i8 8 }, %struct.anon.73 { i32 826000000, i32 62500, i8 -10, i8 8 }, %struct.anon.73 { i32 999999999, i32 62500, i8 -2, i8 8 }] }, align 4
@__func__.samsung_dtos403ih102a_set = private unnamed_addr constant [26 x i8] c"samsung_dtos403ih102a_set\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"Samsung TDTC9251DH0\00", align 1
@dvb_pll_samsung_tdtc9251dh0 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [3 x %struct.anon.73] } { ptr @.str.40, i32 48000000, i32 863000000, i32 36166667, ptr null, ptr null, ptr null, ptr null, i32 3, [3 x %struct.anon.73] [%struct.anon.73 { i32 157500000, i32 166667, i8 -52, i8 9 }, %struct.anon.73 { i32 443000000, i32 166667, i8 -52, i8 10 }, %struct.anon.73 { i32 863000000, i32 166667, i8 -52, i8 8 }] }, align 4
@.str.42 = private unnamed_addr constant [18 x i8] c"Samsung TBDU18132\00", align 1
@dvb_pll_samsung_tbdu18132 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [2 x %struct.anon.73] } { ptr @.str.42, i32 950000000, i32 -2144967296, i32 0, ptr null, ptr null, ptr null, ptr null, i32 2, [2 x %struct.anon.73] [%struct.anon.73 { i32 1550000, i32 125, i8 -124, i8 -126 }, %struct.anon.73 { i32 4095937, i32 125, i8 -124, i8 -128 }] }, align 4
@.str.44 = private unnamed_addr constant [18 x i8] c"Samsung TBMU24112\00", align 1
@dvb_pll_samsung_tbmu24112 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [2 x %struct.anon.73] } { ptr @.str.44, i32 950000000, i32 -2144967296, i32 0, ptr null, ptr null, ptr null, ptr null, i32 2, [2 x %struct.anon.73] [%struct.anon.73 { i32 1500000, i32 125, i8 -124, i8 24 }, %struct.anon.73 { i32 9999999, i32 125, i8 -124, i8 8 }] }, align 4
@.str.46 = private unnamed_addr constant [11 x i8] c"ALPS TDEE4\00", align 1
@dvb_pll_alps_tdee4 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x %struct.anon.73] } { ptr @.str.46, i32 47000000, i32 862000000, i32 36125000, ptr null, ptr null, ptr null, ptr null, i32 4, [4 x %struct.anon.73] [%struct.anon.73 { i32 153000000, i32 62500, i8 -107, i8 1 }, %struct.anon.73 { i32 430000000, i32 62500, i8 -107, i8 2 }, %struct.anon.73 { i32 822000000, i32 62500, i8 -107, i8 8 }, %struct.anon.73 { i32 999999999, i32 62500, i8 -107, i8 -120 }] }, align 4
@.str.48 = private unnamed_addr constant [17 x i8] c"Thomson dtt7520x\00", align 1
@dvb_pll_thomson_dtt7520x = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [7 x %struct.anon.73] } { ptr @.str.48, i32 185000000, i32 900000000, i32 36166667, ptr @thomson_dtt7520x_bw, ptr null, ptr null, ptr null, i32 7, [7 x %struct.anon.73] [%struct.anon.73 { i32 305000000, i32 166667, i8 -76, i8 18 }, %struct.anon.73 { i32 405000000, i32 166667, i8 -68, i8 18 }, %struct.anon.73 { i32 445000000, i32 166667, i8 -68, i8 18 }, %struct.anon.73 { i32 465000000, i32 166667, i8 -12, i8 24 }, %struct.anon.73 { i32 735000000, i32 166667, i8 -4, i8 24 }, %struct.anon.73 { i32 835000000, i32 166667, i8 -68, i8 24 }, %struct.anon.73 { i32 999999999, i32 166667, i8 -4, i8 24 }] }, align 4
@.str.50 = private unnamed_addr constant [32 x i8] c"Infineon TUA6034 ISDB-T (Friio)\00", align 1
@.compoundliteral.51 = internal global [5 x i8] c"\04\9AP\B2\08", align 1
@.compoundliteral.52 = internal global [5 x i8] c"\04\9Ap\B3\0B", align 1
@dvb_pll_tua6034_friio = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [3 x %struct.anon.73] } { ptr @.str.50, i32 90000000, i32 770000000, i32 57000000, ptr null, ptr @.compoundliteral.51, ptr null, ptr @.compoundliteral.52, i32 3, [3 x %struct.anon.73] [%struct.anon.73 { i32 170000000, i32 142857, i8 -70, i8 9 }, %struct.anon.73 { i32 470000000, i32 142857, i8 -70, i8 10 }, %struct.anon.73 { i32 770000000, i32 142857, i8 -78, i8 8 }] }, align 4
@.str.54 = private unnamed_addr constant [39 x i8] c"Philips TDA6651 ISDB-T (EarthSoft PT1)\00", align 1
@.compoundliteral.55 = internal global [6 x i8] c"\05\0E\7F\C1\80\80", align 1
@dvb_pll_tda665x_earth_pt1 = internal constant { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [10 x %struct.anon.73] } { ptr @.str.54, i32 90000000, i32 770000000, i32 57000000, ptr null, ptr @.compoundliteral.55, ptr null, ptr null, i32 10, [10 x %struct.anon.73] [%struct.anon.73 { i32 140000000, i32 142857, i8 -63, i8 -127 }, %struct.anon.73 { i32 170000000, i32 142857, i8 -63, i8 -95 }, %struct.anon.73 { i32 220000000, i32 142857, i8 -63, i8 98 }, %struct.anon.73 { i32 330000000, i32 142857, i8 -63, i8 -94 }, %struct.anon.73 { i32 402000000, i32 142857, i8 -63, i8 -30 }, %struct.anon.73 { i32 450000000, i32 142857, i8 -63, i8 100 }, %struct.anon.73 { i32 550000000, i32 142857, i8 -63, i8 -124 }, %struct.anon.73 { i32 600000000, i32 142857, i8 -63, i8 -92 }, %struct.anon.73 { i32 700000000, i32 142857, i8 -63, i8 -60 }, %struct.anon.73 { i32 770000000, i32 142857, i8 -63, i8 -28 }] }, align 4
@.str.57 = private unnamed_addr constant [43 x i8] c"\017dvb_pll: %s: pll: %s: freq=%d | i=%d/%d\0A\00", align 1
@__func__.dvb_pll_configure = private unnamed_addr constant [18 x i8] c"dvb_pll_configure\00", align 1
@.str.58 = private unnamed_addr constant [66 x i8] c"\017dvb_pll: %s: pll: %s: div=%d | buf=0x%02x,0x%02x,0x%02x,0x%02x\0A\00", align 1
@dvb_pll_driver = internal global %struct.i2c_driver { i32 0, ptr @dvb_pll_probe, ptr @dvb_pll_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.59, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @dvb_pll_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.59 = private unnamed_addr constant [8 x i8] c"dvb_pll\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"DVB Simple Tuner attached.\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_id252, ptr @__UNIQUE_ID_idtype251, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_dvb_pll_attach, ptr @__param_debug, ptr @__param_id], section "llvm.metadata"

@__mod_i2c__dvb_pll_id_device_table = dso_local alias [22 x %struct.i2c_device_id], ptr @dvb_pll_id

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dvb_pll_attach(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = trunc i32 %1 to i16
  store i16 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 1, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 1, ptr %9, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 1) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %100, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store i8 0, ptr %11, align 8
  store ptr %11, ptr %14, align 4
  %15 = tail call i32 @ida_alloc_range(ptr noundef nonnull @pll_ida, i32 noundef 0, i32 noundef 63, i32 noundef 3264) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %11) #9
  br label %100

18:                                               ; preds = %13
  %19 = getelementptr [64 x i32], ptr @id, i32 0, i32 %15
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, 21
  %23 = select i1 %22, i32 %20, i32 %3
  %24 = add i32 %23, -22
  %25 = icmp ult i32 %24, -21
  br i1 %25, label %26, label %27, !prof !9

26:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/dvb-frontends/dvb-pll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 808, 0\0A.popsection", ""() #9, !srcloc !10
  unreachable

27:                                               ; preds = %18
  %28 = getelementptr [22 x ptr], ptr @pll_list, i32 0, i32 %23
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %2, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 %33(ptr noundef %0, i32 noundef 1) #9
  br label %37

37:                                               ; preds = %35, %31
  %38 = call i32 @i2c_transfer(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 1) #9
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %99

40:                                               ; preds = %37
  %41 = load ptr, ptr %32, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 %41(ptr noundef %0, i32 noundef 0) #9
  br label %45

45:                                               ; preds = %43, %40, %27
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %47 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 24) #10
  %48 = icmp eq ptr %47, null
  br i1 %48, label %99, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dvb_pll_priv, ptr %47, i32 0, i32 1
  store i32 %1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dvb_pll_priv, ptr %47, i32 0, i32 2
  store ptr %2, ptr %51, align 8
  %52 = getelementptr inbounds %struct.dvb_pll_priv, ptr %47, i32 0, i32 3
  store ptr %29, ptr %52, align 4
  store i32 %15, ptr %47, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %53, ptr noundef nonnull align 4 dereferenceable(220) @dvb_pll_tuner_ops, i32 220, i1 false)
  %54 = load ptr, ptr %29, align 4
  %55 = call i32 @strscpy(ptr noundef %53, ptr noundef %54, i32 noundef 128) #9
  %56 = getelementptr inbounds %struct.dvb_pll_desc, ptr %29, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 0, i32 1
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dvb_pll_desc, ptr %29, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 0, i32 2
  store i32 %60, ptr %61, align 4
  %62 = load ptr, ptr %29, align 4
  %63 = load i32, ptr %56, align 4
  %64 = load i32, ptr %59, align 4
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dvb_pll_attach, ptr noundef %62, i32 noundef %63, i32 noundef %64) #11
  %66 = getelementptr inbounds %struct.dvb_pll_desc, ptr %29, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %49
  %70 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 2
  store ptr null, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %49
  %72 = getelementptr inbounds %struct.dvb_pll_desc, ptr %29, i32 0, i32 7
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 3
  store ptr null, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %47, ptr %78, align 4
  %79 = load i32, ptr @debug, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, ptr %19, align 4
  %83 = icmp eq i32 %82, %23
  br i1 %83, label %84, label %98

84:                                               ; preds = %81, %77
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dvb_pll_attach, i32 noundef %15) #11
  br i1 %30, label %90, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 11
  %88 = load i32, ptr %87, align 4
  %89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %88, i32 noundef %1) #11
  br label %90

90:                                               ; preds = %86, %84
  %91 = load ptr, ptr %29, align 4
  %92 = load i32, ptr %47, align 8
  %93 = getelementptr [64 x i32], ptr @id, i32 0, i32 %92
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, %23
  %96 = select i1 %95, ptr @.str.4, ptr @.str.5
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %23, ptr noundef %91, ptr noundef nonnull %96) #11
  br label %98

98:                                               ; preds = %90, %81
  call void @kfree(ptr noundef nonnull %11) #9
  br label %100

99:                                               ; preds = %45, %37
  call void @kfree(ptr noundef nonnull %11) #9
  call void @ida_free(ptr noundef nonnull @pll_ida, i32 noundef %15) #9
  br label %100

100:                                              ; preds = %99, %98, %17, %4
  %101 = phi ptr [ null, %17 ], [ null, %99 ], [ %0, %98 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  ret ptr %101
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @dvb_pll_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @dvb_pll_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @thomson_dtt759x_bw(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 7000000
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = or i8 %8, 16
  store i8 %9, ptr %7, align 1
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @tua6034_bw(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 7000000
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = or i8 %8, 8
  store i8 %9, ptr %7, align 1
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @tda665x_bw(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 8000000
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = or i8 %8, 8
  store i8 %9, ptr %7, align 1
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @tded4_bw(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 8000000
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = or i8 %8, 4
  store i8 %9, ptr %7, align 1
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @opera1_bw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, 27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %9 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %9, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.dvb_pll_priv, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %3, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = tail call i32 %17(ptr noundef %0, i32 noundef 1) #9
  br label %21

21:                                               ; preds = %19, %2
  %22 = getelementptr inbounds %struct.dvb_pll_priv, ptr %5, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %3, i32 noundef 1) #9
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.opera1_bw, i32 noundef %24) #11
  br label %28

28:                                               ; preds = %26, %21
  %29 = icmp ult i32 %8, 320032000
  br i1 %29, label %49, label %30

30:                                               ; preds = %28
  %31 = icmp ult i32 %8, 384032000
  br i1 %31, label %49, label %32

32:                                               ; preds = %30
  %33 = icmp ult i32 %8, 448032000
  br i1 %33, label %49, label %34

34:                                               ; preds = %32
  %35 = icmp ult i32 %8, 512032000
  br i1 %35, label %49, label %36

36:                                               ; preds = %34
  %37 = icmp ult i32 %8, 576032000
  br i1 %37, label %49, label %38

38:                                               ; preds = %36
  %39 = icmp ult i32 %8, 640032000
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = icmp ult i32 %8, 704032000
  br i1 %41, label %49, label %42

42:                                               ; preds = %40
  %43 = icmp ult i32 %8, 768032000
  br i1 %43, label %49, label %44

44:                                               ; preds = %42
  %45 = icmp ult i32 %8, 832032000
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = icmp ult i32 %8, 896032000
  %48 = select i1 %47, i8 3, i8 11
  br label %49

49:                                               ; preds = %46, %44, %42, %40, %38, %36, %34, %32, %30, %28
  %50 = phi i8 [ 12, %28 ], [ 2, %30 ], [ 10, %32 ], [ 6, %34 ], [ 14, %36 ], [ 1, %38 ], [ 9, %40 ], [ 5, %42 ], [ 13, %44 ], [ %48, %46 ]
  %51 = getelementptr i8, ptr %1, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = xor i8 %52, 28
  %54 = shl nuw nsw i8 %50, 1
  %55 = and i8 %54, 24
  %56 = or i8 %55, %53
  store i8 %56, ptr %51, align 1
  %57 = getelementptr i8, ptr %1, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = shl nuw nsw i8 %50, 2
  %60 = and i8 %59, 12
  %61 = or i8 %58, %60
  store i8 %61, ptr %57, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_dtos403ih102a_set(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.dvb_pll_priv, ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = tail call i32 %14(ptr noundef %0, i32 noundef 1) #9
  br label %18

18:                                               ; preds = %16, %2
  %19 = getelementptr inbounds %struct.dvb_pll_priv, ptr %5, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %3, i32 noundef 1) #9
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.samsung_dtos403ih102a_set, i32 noundef %21) #11
  br label %25

25:                                               ; preds = %23, %18
  %26 = getelementptr i8, ptr %1, i32 2
  store i8 -98, ptr %26, align 1
  %27 = getelementptr i8, ptr %1, i32 3
  store i8 -112, ptr %27, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @thomson_dtt7520x_bw(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 8000000
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = xor i8 %8, 16
  store i8 %9, ptr %7, align 1
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dvb_pll_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_pll_init(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_pll_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dvb_pll_priv, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dvb_pll_desc, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  %15 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 0, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.dvb_pll_priv, ptr %4, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i16
  store i16 %18, ptr %2, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2
  %21 = load i8, ptr %12, align 1
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  %24 = getelementptr i8, ptr %12, i32 1
  store ptr %24, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %14
  %29 = tail call i32 %26(ptr noundef %0, i32 noundef 1) #9
  br label %30

30:                                               ; preds = %28, %14
  %31 = load ptr, ptr %5, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %2, i32 noundef 1) #9
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 4
  %36 = getelementptr inbounds %struct.dvb_pll_desc, ptr %35, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %37, i32 1
  store ptr %40, ptr %23, align 4
  %41 = load i8, ptr %37, align 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %20, align 4
  %43 = load ptr, ptr %25, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = call i32 %43(ptr noundef %0, i32 noundef 1) #9
  br label %47

47:                                               ; preds = %45, %39
  %48 = load ptr, ptr %5, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %2, i32 noundef 1) #9
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %34
  br label %52

52:                                               ; preds = %51, %47, %30
  %53 = phi i32 [ 0, %51 ], [ %32, %30 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  br label %54

54:                                               ; preds = %52, %8, %1
  %55 = phi i32 [ %53, %52 ], [ -22, %1 ], [ -22, %8 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_pll_sleep(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_pll_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dvb_pll_priv, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dvb_pll_desc, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  %15 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 0, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.dvb_pll_priv, ptr %4, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i16
  store i16 %18, ptr %2, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2
  %21 = load i8, ptr %12, align 1
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  %24 = getelementptr i8, ptr %12, i32 1
  store ptr %24, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %14
  %29 = tail call i32 %26(ptr noundef %0, i32 noundef 1) #9
  br label %30

30:                                               ; preds = %28, %14
  %31 = load ptr, ptr %5, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %2, i32 noundef 1) #9
  %33 = icmp eq i32 %32, 1
  %34 = select i1 %33, i32 0, i32 %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  br label %35

35:                                               ; preds = %30, %8, %1
  %36 = phi i32 [ %34, %30 ], [ -22, %1 ], [ -22, %8 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_pll_set_params(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.dvb_pll_priv, ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dvb_pll_priv, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = call fastcc i32 @dvb_pll_configure(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %18)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 %23(ptr noundef %0, i32 noundef 1) #9
  br label %27

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr %13, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 1) #9
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.dvb_pll_priv, ptr %5, i32 0, i32 4
  store i32 %19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dvb_pll_priv, ptr %5, i32 0, i32 5
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %31, %27, %16, %1
  %37 = phi i32 [ 0, %31 ], [ -22, %1 ], [ %19, %16 ], [ %29, %27 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dvb_pll_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_pll_priv, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dvb_pll_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_pll_priv, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_pll_calc_regs(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp slt i32 %2, 5
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %9 = getelementptr i8, ptr %1, i32 1
  %10 = load i32, ptr %8, align 4
  %11 = tail call fastcc i32 @dvb_pll_configure(ptr noundef %0, ptr noundef %9, i32 noundef %10)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.dvb_pll_priv, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr %1, align 1
  %17 = getelementptr inbounds %struct.dvb_pll_priv, ptr %5, i32 0, i32 4
  store i32 %11, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dvb_pll_priv, ptr %5, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %13, %7, %3
  %22 = phi i32 [ 5, %13 ], [ -22, %3 ], [ %11, %7 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_pll_configure(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_pll_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_pll_desc, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %16, %3
  %12 = phi i32 [ %17, %16 ], [ 0, %3 ]
  %13 = getelementptr %struct.dvb_pll_desc, ptr %7, i32 0, i32 9, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, %2
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = add nuw nsw i32 %12, 1
  %18 = icmp eq i32 %17, %9
  br i1 %18, label %19, label %11

19:                                               ; preds = %16, %11, %3
  %20 = phi i32 [ 0, %3 ], [ %12, %11 ], [ %9, %16 ]
  %21 = load i32, ptr @debug, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.dvb_pll_configure, ptr noundef %24, i32 noundef %2, i32 noundef %20, i32 noundef %9) #11
  %26 = load i32, ptr %8, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %26, %23 ], [ %9, %19 ]
  %29 = icmp eq i32 %20, %28
  br i1 %29, label %72, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.dvb_pll_desc, ptr %7, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %2
  %34 = getelementptr %struct.dvb_pll_desc, ptr %7, i32 0, i32 9, i32 %20, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 1
  %37 = add i32 %33, %36
  %38 = udiv i32 %37, %35
  %39 = lshr i32 %38, 8
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr %1, align 1
  %41 = trunc i32 %38 to i8
  %42 = getelementptr i8, ptr %1, i32 1
  store i8 %41, ptr %42, align 1
  %43 = getelementptr %struct.dvb_pll_desc, ptr %7, i32 0, i32 9, i32 %20, i32 2
  %44 = load i8, ptr %43, align 4
  %45 = getelementptr i8, ptr %1, i32 2
  store i8 %44, ptr %45, align 1
  %46 = getelementptr %struct.dvb_pll_desc, ptr %7, i32 0, i32 9, i32 %20, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr i8, ptr %1, i32 3
  store i8 %47, ptr %48, align 1
  %49 = getelementptr inbounds %struct.dvb_pll_desc, ptr %7, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %30
  tail call void %50(ptr noundef %0, ptr noundef %1) #9
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i32, ptr @debug, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %7, align 4
  %58 = load i8, ptr %1, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, ptr %42, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, ptr %45, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, ptr %48, align 1
  %65 = zext i8 %64 to i32
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.dvb_pll_configure, ptr noundef %57, i32 noundef %38, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65) #11
  br label %67

67:                                               ; preds = %56, %53
  %68 = load i32, ptr %34, align 4
  %69 = mul i32 %68, %38
  %70 = load i32, ptr %31, align 4
  %71 = sub i32 %69, %70
  br label %72

72:                                               ; preds = %67, %27
  %73 = phi i32 [ %71, %67 ], [ -22, %27 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_pll_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @dvb_pll_attach(ptr noundef %5, i32 noundef %11, ptr noundef %13, i32 noundef %8)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 32, i32 1
  store ptr null, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.60) #11
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i32 [ 0, %16 ], [ -12, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_pll_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  tail call void @ida_free(ptr noundef nonnull @pll_ida, i32 noundef %6) #9
  %7 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %7) #9
  store ptr null, ptr %4, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2154260112, i64 2154260614, i64 2154260149, i64 2154260205, i64 2154260239, i64 2154260263, i64 2154260304, i64 2154260325, i64 2154260353, i64 2154260387}
