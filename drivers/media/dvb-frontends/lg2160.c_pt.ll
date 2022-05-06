; ModuleID = '/llk/IR/drivers/media/dvb-frontends/lg2160.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lg2160.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lg2160_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lg2160_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lg2160_attach:\09\09\09\09\09"
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
%struct.lg216x_state = type { ptr, ptr, %struct.dvb_frontend, i32, i8, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.lg2160_config = type { i8, i16, i8, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [53 x i8] c"parm=debug:set debug level (info=1, reg=2 (or-able))\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"\017%s: (%d-%04x)\0A\00", align 1
@__func__.lg2160_attach = private unnamed_addr constant [14 x i8] c"lg2160_attach\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\014%s: invalid chip requested, defaulting to LG2160\00", align 1
@lg2160_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LG2160 ATSC/MH Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 0 }, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr null, ptr @lg216x_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lg2160_set_frontend, ptr @lg216x_get_tune_settings, ptr @lg216x_get_frontend, ptr @lg216x_read_status, ptr null, ptr @lg216x_read_signal_strength, ptr @lg2160_read_snr, ptr @lg216x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lg216x_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@lg2161_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LG2161 ATSC/MH Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 0 }, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr null, ptr @lg216x_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lg2160_set_frontend, ptr @lg216x_get_tune_settings, ptr @lg216x_get_frontend, ptr @lg216x_read_status, ptr null, ptr @lg216x_read_signal_strength, ptr @lg2161_read_snr, ptr @lg216x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lg216x_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_lg2160_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lg2160_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lg2160_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lg2160_attach to i32), ptr @__kstrtab_lg2160_attach, ptr @__kstrtabns_lg2160_attach }, section "___ksymtab+lg2160_attach", align 4
@__UNIQUE_ID_description251 = internal constant [61 x i8] c"description=LG Electronics LG216x ATSC/MH Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [44 x i8] c"author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version254 = internal constant [12 x i8] c"version=0.3\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"\017%s: \0A\00", align 1
@__func__.lg216x_release = private unnamed_addr constant [15 x i8] c"lg216x_release\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\017%s: (%d)\0A\00", align 1
@__func__.lg2160_set_frontend = private unnamed_addr constant [20 x i8] c"lg2160_set_frontend\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\013%s: error %d on line %d\0A\00", align 1
@__func__.lg2160_agc_fix = private unnamed_addr constant [15 x i8] c"lg2160_agc_fix\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\017%s: reg: 0x%04x\0A\00", align 1
@__func__.lg216x_read_reg = private unnamed_addr constant [16 x i8] c"lg216x_read_reg\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"\013%s: error (addr %02x reg %04x error (ret == %i)\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\017%s: reg: 0x%04x, val: 0x%02x\0A\00", align 1
@__func__.lg216x_write_reg = private unnamed_addr constant [17 x i8] c"lg216x_write_reg\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"\013%s: error (addr %02x %02x <- %02x, err = %i)\0A\00", align 1
@__func__.lg2160_agc_polarity = private unnamed_addr constant [20 x i8] c"lg2160_agc_polarity\00", align 1
@__func__.lg2160_tuner_pwr_save_polarity = private unnamed_addr constant [31 x i8] c"lg2160_tuner_pwr_save_polarity\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"\017%s: %d KHz\0A\00", align 1
@__func__.lg216x_set_if = private unnamed_addr constant [14 x i8] c"lg216x_set_if\00", align 1
@__func__.lg2160_spectrum_polarity = private unnamed_addr constant [25 x i8] c"lg2160_spectrum_polarity\00", align 1
@__func__.lg216x_soft_reset = private unnamed_addr constant [18 x i8] c"lg216x_soft_reset\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__func__.lg2160_tuner_pwr_save = private unnamed_addr constant [22 x i8] c"lg2160_tuner_pwr_save\00", align 1
@__func__.lg2160_set_spi_clock = private unnamed_addr constant [21 x i8] c"lg2160_set_spi_clock\00", align 1
@__func__.lg2161_set_output_interface = private unnamed_addr constant [28 x i8] c"lg2161_set_output_interface\00", align 1
@__func__.lg216x_set_parade = private unnamed_addr constant [18 x i8] c"lg216x_set_parade\00", align 1
@__func__.lg216x_set_ensemble = private unnamed_addr constant [20 x i8] c"lg216x_set_ensemble\00", align 1
@__func__.lg216x_initialize = private unnamed_addr constant [18 x i8] c"lg216x_initialize\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"\017%s: writing %d registers...\0A\00", align 1
@__func__.lg216x_write_regs = private unnamed_addr constant [18 x i8] c"lg216x_write_regs\00", align 1
@__func__.lg216x_enable_fic = private unnamed_addr constant [18 x i8] c"lg216x_enable_fic\00", align 1
@__func__.lg216x_get_tune_settings = private unnamed_addr constant [25 x i8] c"lg216x_get_tune_settings\00", align 1
@__func__.lg216x_get_frontend = private unnamed_addr constant [20 x i8] c"lg216x_get_frontend\00", align 1
@__func__.lg216x_get_fic_version = private unnamed_addr constant [23 x i8] c"lg216x_get_fic_version\00", align 1
@__func__.lg216x_get_nog = private unnamed_addr constant [15 x i8] c"lg216x_get_nog\00", align 1
@__func__.lg216x_get_tnog = private unnamed_addr constant [16 x i8] c"lg216x_get_tnog\00", align 1
@__func__.lg216x_get_sgn = private unnamed_addr constant [15 x i8] c"lg216x_get_sgn\00", align 1
@__func__.lg216x_get_prc = private unnamed_addr constant [15 x i8] c"lg216x_get_prc\00", align 1
@__func__.lg216x_get_rs_frame_mode = private unnamed_addr constant [25 x i8] c"lg216x_get_rs_frame_mode\00", align 1
@__func__.lg216x_get_rs_frame_ensemble = private unnamed_addr constant [29 x i8] c"lg216x_get_rs_frame_ensemble\00", align 1
@__func__.lg216x_get_rs_code_mode = private unnamed_addr constant [24 x i8] c"lg216x_get_rs_code_mode\00", align 1
@__func__.lg216x_get_sccc_block_mode = private unnamed_addr constant [27 x i8] c"lg216x_get_sccc_block_mode\00", align 1
@__func__.lg216x_get_sccc_code_mode = private unnamed_addr constant [26 x i8] c"lg216x_get_sccc_code_mode\00", align 1
@__func__.lg216x_read_status = private unnamed_addr constant [19 x i8] c"lg216x_read_status\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"\017%s: %s%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"SIGNALEXIST \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"SYNCLOCK\00", align 1
@__func__.lg2160_read_lock_status = private unnamed_addr constant [24 x i8] c"lg2160_read_lock_status\00", align 1
@__func__.lg2160_read_snr = private unnamed_addr constant [16 x i8] c"lg2160_read_snr\00", align 1
@__func__.lg216x_i2c_gate_ctrl = private unnamed_addr constant [21 x i8] c"lg216x_i2c_gate_ctrl\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"\017%s: reg: 0x%04x, bit: %d, level: %d\0A\00", align 1
@__func__.lg216x_set_reg_bit = private unnamed_addr constant [19 x i8] c"lg216x_set_reg_bit\00", align 1
@__func__.lg2161_read_snr = private unnamed_addr constant [16 x i8] c"lg2161_read_snr\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_version254, ptr @__ksymtab_lg2160_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lg2160_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @debug, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %10, %8 ], [ 0, %6 ]
  %13 = icmp eq ptr %0, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr %0, align 4
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %16, %14 ], [ 0, %11 ]
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lg2160_attach, i32 noundef %12, i32 noundef %18) #8
  br label %20

20:                                               ; preds = %17, %2
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 1060) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.lg216x_state, ptr %22, i32 0, i32 1
  store ptr %0, ptr %25, align 4
  store ptr %1, ptr %22, align 8
  %26 = getelementptr inbounds %struct.lg216x_state, ptr %22, i32 0, i32 5
  store i8 -1, ptr %26, align 1
  %27 = getelementptr inbounds %struct.lg216x_state, ptr %22, i32 0, i32 4
  store i8 -1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.lg2160_config, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %30 [
    i32 0, label %32
    i32 1, label %34
  ]

30:                                               ; preds = %24
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lg2160_attach) #8
  br label %32

32:                                               ; preds = %30, %24
  %33 = getelementptr inbounds %struct.lg216x_state, ptr %22, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %33, ptr noundef nonnull align 4 dereferenceable(544) @lg2160_ops, i32 544, i1 false)
  br label %36

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.lg216x_state, ptr %22, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %35, ptr noundef nonnull align 4 dereferenceable(544) @lg2161_ops, i32 544, i1 false)
  br label %36

36:                                               ; preds = %34, %32
  %37 = getelementptr inbounds %struct.lg216x_state, ptr %22, i32 0, i32 2
  %38 = getelementptr inbounds %struct.lg216x_state, ptr %22, i32 0, i32 2, i32 3
  store ptr %22, ptr %38, align 8
  %39 = getelementptr inbounds %struct.lg216x_state, ptr %22, i32 0, i32 3
  store i32 -1, ptr %39, align 8
  %40 = getelementptr inbounds %struct.lg216x_state, ptr %22, i32 0, i32 2, i32 8, i32 27
  store i8 1, ptr %40, align 1
  br label %41

41:                                               ; preds = %36, %20
  %42 = phi ptr [ %37, %36 ], [ null, %20 ]
  ret ptr %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lg216x_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.lg216x_release) #8
  br label %9

9:                                                ; preds = %7, %1
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lg2160_set_frontend(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %14 = load i32, ptr @debug, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, ptr %13, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %18) #8
  br label %20

20:                                               ; preds = %17, %1
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef %0) #10
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = tail call i32 %27(ptr noundef %0, i32 noundef 0) #10
  br label %31

31:                                               ; preds = %29, %24
  %32 = icmp slt i32 %25, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %25, i32 noundef 1053) #8
  br label %282

35:                                               ; preds = %31
  %36 = load i32, ptr %13, align 4
  %37 = getelementptr inbounds %struct.lg216x_state, ptr %12, i32 0, i32 3
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1, !annotation !8
  %39 = call fastcc i32 @lg216x_read_reg(ptr noundef %12, i16 noundef zeroext 256, ptr noundef nonnull %10) #10
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_agc_fix, i32 noundef %39, i32 noundef 267) #8
  br label %50

43:                                               ; preds = %38
  %44 = load i8, ptr %10, align 1
  %45 = and i8 %44, -13
  store i8 %45, ptr %10, align 1
  %46 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 256, i8 noundef zeroext %45) #10
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_agc_fix, i32 noundef %46, i32 noundef 275) #8
  br label %50

50:                                               ; preds = %48, %41
  %51 = phi i32 [ %46, %48 ], [ %39, %41 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %51, i32 noundef 1059) #8
  br label %282

53:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 0, ptr %9, align 1, !annotation !8
  %54 = call fastcc i32 @lg216x_read_reg(ptr noundef %12, i16 noundef zeroext 256, ptr noundef nonnull %9) #10
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_agc_polarity, i32 noundef %54, i32 noundef 309) #8
  br label %65

58:                                               ; preds = %53
  %59 = load i8, ptr %9, align 1
  %60 = and i8 %59, -4
  store i8 %60, ptr %9, align 1
  %61 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 256, i8 noundef zeroext %60) #10
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_agc_polarity, i32 noundef %61, i32 noundef 317) #8
  br label %65

65:                                               ; preds = %63, %56
  %66 = phi i32 [ %61, %63 ], [ %54, %56 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %66, i32 noundef 1062) #8
  br label %282

68:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1, !annotation !8
  %69 = call fastcc i32 @lg216x_read_reg(ptr noundef %12, i16 noundef zeroext 8, ptr noundef nonnull %8) #10
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_tuner_pwr_save_polarity, i32 noundef %69, i32 noundef 329) #8
  br label %80

73:                                               ; preds = %68
  %74 = load i8, ptr %8, align 1
  %75 = or i8 %74, 1
  store i8 %75, ptr %8, align 1
  %76 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 8, i8 noundef zeroext %75) #10
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_tuner_pwr_save_polarity, i32 noundef %76, i32 noundef 336) #8
  br label %80

80:                                               ; preds = %78, %71
  %81 = phi i32 [ %76, %78 ], [ %69, %71 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %81, i32 noundef 1065) #8
  br label %282

83:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1, !annotation !8
  %84 = load i32, ptr @debug, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.lg216x_state, ptr %12, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.lg2160_config, ptr %89, i32 0, i32 1
  %91 = load i16, ptr %90, align 2
  %92 = zext i16 %91 to i32
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.lg216x_set_if, i32 noundef %92) #8
  br label %94

94:                                               ; preds = %87, %83
  %95 = call fastcc i32 @lg216x_read_reg(ptr noundef %12, i16 noundef zeroext 306, ptr noundef nonnull %7) #10
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_set_if, i32 noundef %95, i32 noundef 244) #8
  br label %113

99:                                               ; preds = %94
  %100 = load i8, ptr %7, align 1
  %101 = and i8 %100, -5
  %102 = getelementptr inbounds %struct.lg216x_state, ptr %12, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.lg2160_config, ptr %103, i32 0, i32 1
  %105 = load i16, ptr %104, align 2
  %106 = icmp eq i16 %105, 0
  %107 = select i1 %106, i8 4, i8 0
  %108 = or i8 %107, %101
  store i8 %108, ptr %7, align 1
  %109 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 306, i8 noundef zeroext %108) #10
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %99
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_set_if, i32 noundef %109, i32 noundef 251) #8
  br label %113

113:                                              ; preds = %111, %97
  %114 = phi i32 [ %109, %111 ], [ %95, %97 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %114, i32 noundef 1068) #8
  br label %282

116:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %117 = load ptr, ptr %102, align 4
  %118 = getelementptr inbounds %struct.lg2160_config, ptr %117, i32 0, i32 2
  %119 = load i8, ptr %118, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !annotation !8
  %120 = call fastcc i32 @lg216x_read_reg(ptr noundef %12, i16 noundef zeroext 306, ptr noundef nonnull %6) #10
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_spectrum_polarity, i32 noundef %120, i32 noundef 348) #8
  br label %133

124:                                              ; preds = %116
  %125 = load i8, ptr %6, align 1
  %126 = and i8 %125, -3
  %127 = and i8 %119, 2
  %128 = or i8 %126, %127
  store i8 %128, ptr %6, align 1
  %129 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 306, i8 noundef zeroext %128) #10
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_spectrum_polarity, i32 noundef %129, i32 noundef 355) #8
  br label %133

133:                                              ; preds = %131, %124, %122
  %134 = call fastcc i32 @lg216x_soft_reset(ptr noundef %12) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %134, i32 noundef 1071) #8
  br label %282

138:                                              ; preds = %133
  %139 = call fastcc i32 @lg216x_soft_reset(ptr noundef %12)
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %139, i32 noundef 1076) #8
  br label %282

143:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %144 = call fastcc i32 @lg216x_read_reg(ptr noundef %12, i16 noundef zeroext 7, ptr noundef nonnull %5) #10
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_tuner_pwr_save, i32 noundef %144, i32 noundef 366) #8
  br label %155

148:                                              ; preds = %143
  %149 = load i8, ptr %5, align 1
  %150 = and i8 %149, -65
  store i8 %150, ptr %5, align 1
  %151 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 7, i8 noundef zeroext %150) #10
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_tuner_pwr_save, i32 noundef %151, i32 noundef 373) #8
  br label %155

155:                                              ; preds = %153, %146
  %156 = phi i32 [ %151, %153 ], [ %144, %146 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %156, i32 noundef 1080) #8
  br label %282

158:                                              ; preds = %148
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %159 = load ptr, ptr %102, align 4
  %160 = getelementptr inbounds %struct.lg2160_config, ptr %159, i32 0, i32 5
  %161 = load i32, ptr %160, align 4
  switch i32 %161, label %205 [
    i32 0, label %162
    i32 1, label %184
  ]

162:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %163 = call fastcc i32 @lg216x_read_reg(ptr noundef %12, i16 noundef zeroext 20, ptr noundef nonnull %4) #10
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_spi_clock, i32 noundef %163, i32 noundef 426) #8
  br label %181

167:                                              ; preds = %162
  %168 = load i8, ptr %4, align 1
  %169 = and i8 %168, -13
  %170 = load ptr, ptr %102, align 4
  %171 = getelementptr inbounds %struct.lg2160_config, ptr %170, i32 0, i32 4
  %172 = load i32, ptr %171, align 4
  %173 = trunc i32 %172 to i8
  %174 = shl i8 %173, 2
  %175 = or i8 %174, %169
  store i8 %175, ptr %4, align 1
  %176 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 20, i8 noundef zeroext %175) #10
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %167
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_spi_clock, i32 noundef %176, i32 noundef 433) #8
  br label %181

180:                                              ; preds = %167
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  br label %205

181:                                              ; preds = %178, %165
  %182 = phi i32 [ %176, %178 ], [ %163, %165 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %182, i32 noundef 1086) #8
  br label %282

184:                                              ; preds = %158
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %185 = call fastcc i32 @lg216x_read_reg(ptr noundef %12, i16 noundef zeroext 20, ptr noundef nonnull %3) #10
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2161_set_output_interface, i32 noundef %185, i32 noundef 444) #8
  br label %202

189:                                              ; preds = %184
  %190 = load i8, ptr %3, align 1
  %191 = and i8 %190, -8
  %192 = load ptr, ptr %102, align 4
  %193 = getelementptr inbounds %struct.lg2160_config, ptr %192, i32 0, i32 3
  %194 = load i32, ptr %193, align 4
  %195 = trunc i32 %194 to i8
  %196 = or i8 %191, %195
  store i8 %196, ptr %3, align 1
  %197 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 20, i8 noundef zeroext %196) #10
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %189
  %200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2161_set_output_interface, i32 noundef %197, i32 noundef 451) #8
  br label %202

201:                                              ; preds = %189
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %205

202:                                              ; preds = %199, %187
  %203 = phi i32 [ %197, %199 ], [ %185, %187 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %203, i32 noundef 1091) #8
  br label %282

205:                                              ; preds = %201, %180, %158
  %206 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 27
  %207 = load i8, ptr %206, align 1
  %208 = and i8 %207, 127
  %209 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 318, i8 noundef zeroext %208) #10
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_set_parade, i32 noundef %209, i32 noundef 383) #8
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %209, i32 noundef 1097) #8
  br label %282

214:                                              ; preds = %205
  %215 = getelementptr inbounds %struct.lg216x_state, ptr %12, i32 0, i32 4
  store i8 %208, ptr %215, align 4
  %216 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 33
  %217 = load i8, ptr %216, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 0, ptr %2, align 1, !annotation !8
  %218 = load ptr, ptr %102, align 4
  %219 = getelementptr inbounds %struct.lg2160_config, ptr %218, i32 0, i32 5
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, 0
  %222 = select i1 %221, i16 1024, i16 1280
  %223 = call fastcc i32 @lg216x_read_reg(ptr noundef %12, i16 noundef zeroext %222, ptr noundef nonnull %2) #10
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %214
  %226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_set_ensemble, i32 noundef %223, i32 noundef 408) #8
  br label %237

227:                                              ; preds = %214
  %228 = load i8, ptr %2, align 1
  %229 = and i8 %228, -2
  %230 = icmp ne i8 %217, 0
  %231 = zext i1 %230 to i8
  %232 = or i8 %229, %231
  store i8 %232, ptr %2, align 1
  %233 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext %222, i8 noundef zeroext %232) #10
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %227
  %236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_set_ensemble, i32 noundef %233, i32 noundef 415) #8
  br label %237

237:                                              ; preds = %235, %225
  %238 = phi i32 [ %233, %235 ], [ %223, %225 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %238, i32 noundef 1102) #8
  br label %282

240:                                              ; preds = %227
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %241 = call fastcc i32 @lg216x_initialize(ptr noundef %12)
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %241, i32 noundef 1106) #8
  br label %282

245:                                              ; preds = %240
  %246 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 23, i8 noundef zeroext 35) #10
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_enable_fic, i32 noundef %246, i32 noundef 461) #8
  br label %276

250:                                              ; preds = %245
  %251 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 22, i8 noundef zeroext -4) #10
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %250
  %254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_enable_fic, i32 noundef %251, i32 noundef 465) #8
  br label %276

255:                                              ; preds = %250
  %256 = load ptr, ptr %102, align 4
  %257 = getelementptr inbounds %struct.lg2160_config, ptr %256, i32 0, i32 5
  %258 = load i32, ptr %257, align 4
  switch i32 %258, label %266 [
    i32 0, label %260
    i32 1, label %259
  ]

259:                                              ; preds = %255
  br label %260

260:                                              ; preds = %259, %255
  %261 = phi i8 [ 16, %259 ], [ -2, %255 ]
  %262 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 22, i8 noundef zeroext %261) #10
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %260
  %265 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_enable_fic, i32 noundef %262, i32 noundef 477) #8
  br label %276

266:                                              ; preds = %260, %255
  %267 = call fastcc i32 @lg216x_initialize(ptr noundef %12) #10
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %266
  %270 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_enable_fic, i32 noundef %267, i32 noundef 481) #8
  br label %276

271:                                              ; preds = %266
  %272 = call fastcc i32 @lg216x_write_reg(ptr noundef %12, i16 noundef zeroext 23, i8 noundef zeroext 3) #10
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_enable_fic, i32 noundef %272, i32 noundef 486) #8
  br label %276

276:                                              ; preds = %274, %269, %264, %253, %248
  %277 = phi i32 [ %272, %274 ], [ %262, %264 ], [ %251, %253 ], [ %246, %248 ], [ %267, %269 ]
  %278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_set_frontend, i32 noundef %277, i32 noundef 1110) #8
  br label %279

279:                                              ; preds = %276, %271
  %280 = phi i32 [ %277, %276 ], [ %272, %271 ]
  %281 = call i32 @lg216x_get_frontend(ptr noundef %0, ptr noundef %13)
  br label %282

282:                                              ; preds = %279, %243, %237, %211, %202, %181, %155, %141, %136, %113, %80, %65, %50, %33
  %283 = phi i32 [ %280, %279 ], [ %25, %33 ], [ %51, %50 ], [ %66, %65 ], [ %81, %80 ], [ %114, %113 ], [ %134, %136 ], [ %139, %141 ], [ %156, %155 ], [ %182, %181 ], [ %203, %202 ], [ %209, %211 ], [ %238, %237 ], [ %241, %243 ]
  ret i32 %283
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lg216x_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  store i32 500, ptr %1, align 4
  %3 = load i32, ptr @debug, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.lg216x_get_tune_settings) #8
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lg216x_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr @debug, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.lg216x_get_frontend) #8
  br label %20

20:                                               ; preds = %18, %2
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 7, ptr %21, align 4
  %22 = getelementptr inbounds %struct.lg216x_state, ptr %14, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 15
  store i32 12, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 0, ptr %12, align 1, !annotation !8
  store i8 -1, ptr %25, align 1
  %26 = call fastcc i32 @lg216x_read_reg(ptr noundef %14, i16 noundef zeroext 296, ptr noundef nonnull %12) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_fic_version, i32 noundef %26, i32 noundef 502) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_frontend, i32 noundef %26, i32 noundef 945) #8
  br label %194

31:                                               ; preds = %20
  %32 = load i8, ptr %12, align 1
  %33 = lshr i8 %32, 3
  store i8 %33, ptr %25, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %34 = getelementptr inbounds %struct.lg216x_state, ptr %14, i32 0, i32 5
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, %33
  br i1 %36, label %194, label %37

37:                                               ; preds = %31
  store i8 %33, ptr %34, align 1
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 0, ptr %11, align 1, !annotation !8
  store i8 -1, ptr %38, align 1
  %39 = call fastcc i32 @lg216x_read_reg(ptr noundef %14, i16 noundef zeroext 292, ptr noundef nonnull %11) #10
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_nog, i32 noundef %39, i32 noundef 536) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_frontend, i32 noundef %39, i32 noundef 960) #8
  br label %194

44:                                               ; preds = %37
  %45 = load i8, ptr %11, align 1
  %46 = lshr i8 %45, 4
  %47 = and i8 %46, 7
  %48 = add nuw nsw i8 %47, 1
  store i8 %48, ptr %38, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1, !annotation !8
  store i8 -1, ptr %49, align 1
  %50 = call fastcc i32 @lg216x_read_reg(ptr noundef %14, i16 noundef zeroext 293, ptr noundef nonnull %10) #10
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_tnog, i32 noundef %50, i32 noundef 552) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_frontend, i32 noundef %50, i32 noundef 964) #8
  br label %194

55:                                               ; preds = %44
  %56 = load i8, ptr %10, align 1
  %57 = and i8 %56, 31
  store i8 %57, ptr %49, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 0, ptr %9, align 1, !annotation !8
  store i8 -1, ptr %58, align 1
  %59 = call fastcc i32 @lg216x_read_reg(ptr noundef %14, i16 noundef zeroext 292, ptr noundef nonnull %9) #10
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_sgn, i32 noundef %59, i32 noundef 568) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_frontend, i32 noundef %59, i32 noundef 968) #8
  br label %194

64:                                               ; preds = %55
  %65 = load i8, ptr %9, align 1
  %66 = and i8 %65, 15
  store i8 %66, ptr %58, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1, !annotation !8
  store i8 -1, ptr %67, align 1
  %68 = call fastcc i32 @lg216x_read_reg(ptr noundef %14, i16 noundef zeroext 293, ptr noundef nonnull %8) #10
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_prc, i32 noundef %68, i32 noundef 584) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_frontend, i32 noundef %68, i32 noundef 972) #8
  br label %194

73:                                               ; preds = %64
  %74 = load i8, ptr %8, align 1
  %75 = lshr i8 %74, 5
  %76 = add nuw nsw i8 %75, 1
  store i8 %76, ptr %67, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1, !annotation !8
  %78 = getelementptr inbounds %struct.lg216x_state, ptr %14, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.lg2160_config, ptr %79, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  switch i32 %81, label %96 [
    i32 0, label %83
    i32 1, label %82
  ]

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %73
  %84 = phi i16 [ 1299, %82 ], [ 1040, %73 ]
  %85 = call fastcc i32 @lg216x_read_reg(ptr noundef %14, i16 noundef zeroext %84, ptr noundef nonnull %7) #10
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load i8, ptr %7, align 1
  %89 = and i8 %88, 48
  %90 = icmp eq i8 %89, 16
  %91 = zext i1 %90 to i32
  store i32 %91, ptr %77, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %92 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !annotation !8
  %93 = load ptr, ptr %78, align 4
  %94 = getelementptr inbounds %struct.lg2160_config, ptr %93, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  switch i32 %95, label %105 [
    i32 0, label %101
    i32 1, label %100
  ]

96:                                               ; preds = %83, %73
  %97 = phi i32 [ %85, %83 ], [ -22, %73 ]
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_rs_frame_mode, i32 noundef %97, i32 noundef 610) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_frontend, i32 noundef %97, i32 noundef 978) #8
  br label %194

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %87
  %102 = phi i16 [ 1280, %100 ], [ 1024, %87 ]
  %103 = call fastcc i32 @lg216x_read_reg(ptr noundef %14, i16 noundef zeroext %102, ptr noundef nonnull %6) #10
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101, %87
  %106 = phi i32 [ %103, %101 ], [ -22, %87 ]
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_rs_frame_ensemble, i32 noundef %106, i32 noundef 650) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_frontend, i32 noundef %106, i32 noundef 983) #8
  br label %194

109:                                              ; preds = %101
  %110 = load i8, ptr %6, align 1
  %111 = and i8 %110, 1
  %112 = zext i8 %111 to i32
  store i32 %112, ptr %92, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %113 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 34
  %114 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %115 = load ptr, ptr %78, align 4
  %116 = getelementptr inbounds %struct.lg2160_config, ptr %115, i32 0, i32 5
  %117 = load i32, ptr %116, align 4
  switch i32 %117, label %123 [
    i32 0, label %119
    i32 1, label %118
  ]

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %109
  %120 = phi i16 [ 1299, %118 ], [ 1040, %109 ]
  %121 = call fastcc i32 @lg216x_read_reg(ptr noundef %14, i16 noundef zeroext %120, ptr noundef nonnull %5) #10
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119, %109
  %124 = phi i32 [ %121, %119 ], [ -22, %109 ]
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_rs_code_mode, i32 noundef %124, i32 noundef 676) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_frontend, i32 noundef %124, i32 noundef 990) #8
  br label %194

127:                                              ; preds = %119
  %128 = load i8, ptr %5, align 1
  %129 = lshr i8 %128, 2
  %130 = and i8 %129, 3
  %131 = zext i8 %130 to i32
  store i32 %131, ptr %113, align 4
  %132 = and i8 %128, 3
  %133 = zext i8 %132 to i32
  store i32 %133, ptr %114, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %134 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %135 = load ptr, ptr %78, align 4
  %136 = getelementptr inbounds %struct.lg2160_config, ptr %135, i32 0, i32 5
  %137 = load i32, ptr %136, align 4
  switch i32 %137, label %157 [
    i32 0, label %139
    i32 1, label %138
  ]

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138, %127
  %140 = phi i16 [ 1297, %138 ], [ 789, %127 ]
  %141 = call fastcc i32 @lg216x_read_reg(ptr noundef %14, i16 noundef zeroext %140, ptr noundef nonnull %4) #10
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %157, label %143

143:                                              ; preds = %139
  %144 = load i8, ptr %4, align 1
  %145 = and i8 %144, 3
  %146 = icmp eq i8 %145, 1
  %147 = select i1 %146, i32 1, i32 2
  %148 = icmp eq i8 %145, 0
  %149 = select i1 %148, i32 0, i32 %147
  store i32 %149, ptr %134, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %150 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 37
  %151 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 38
  %152 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 39
  %153 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %154 = load ptr, ptr %78, align 4
  %155 = getelementptr inbounds %struct.lg2160_config, ptr %154, i32 0, i32 5
  %156 = load i32, ptr %155, align 4
  switch i32 %156, label %190 [
    i32 0, label %162
    i32 1, label %161
  ]

157:                                              ; preds = %139, %127
  %158 = phi i32 [ %141, %139 ], [ -22, %127 ]
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_sccc_block_mode, i32 noundef %158, i32 noundef 701) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_frontend, i32 noundef %158, i32 noundef 995) #8
  br label %194

161:                                              ; preds = %143
  br label %162

162:                                              ; preds = %161, %143
  %163 = phi i16 [ 1298, %161 ], [ 790, %143 ]
  %164 = call fastcc i32 @lg216x_read_reg(ptr noundef %14, i16 noundef zeroext %163, ptr noundef nonnull %3) #10
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %190, label %166

166:                                              ; preds = %162
  %167 = load i8, ptr %3, align 1
  %168 = and i8 %167, -64
  %169 = icmp eq i8 %168, 64
  %170 = select i1 %169, i32 1, i32 2
  %171 = icmp ult i8 %167, 64
  %172 = select i1 %171, i32 0, i32 %170
  store i32 %172, ptr %150, align 4
  %173 = lshr i8 %167, 4
  %174 = and i8 %173, 3
  %175 = icmp eq i8 %174, 1
  %176 = select i1 %175, i32 1, i32 2
  %177 = icmp eq i8 %174, 0
  %178 = select i1 %177, i32 0, i32 %176
  store i32 %178, ptr %151, align 4
  %179 = lshr i8 %167, 2
  %180 = and i8 %179, 3
  %181 = icmp eq i8 %180, 1
  %182 = select i1 %181, i32 1, i32 2
  %183 = icmp eq i8 %180, 0
  %184 = select i1 %183, i32 0, i32 %182
  store i32 %184, ptr %152, align 4
  %185 = and i8 %167, 3
  %186 = icmp eq i8 %185, 1
  %187 = select i1 %186, i32 1, i32 2
  %188 = icmp eq i8 %185, 0
  %189 = select i1 %188, i32 0, i32 %187
  store i32 %189, ptr %153, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %194

190:                                              ; preds = %162, %143
  %191 = phi i32 [ %164, %162 ], [ -22, %143 ]
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_sccc_code_mode, i32 noundef %191, i32 noundef 738) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_get_frontend, i32 noundef %191, i32 noundef 1006) #8
  br label %194

194:                                              ; preds = %190, %166, %157, %123, %105, %96, %70, %61, %52, %41, %31, %28
  %195 = phi i32 [ 0, %31 ], [ %26, %28 ], [ %39, %41 ], [ %50, %52 ], [ %59, %61 ], [ %68, %70 ], [ %97, %96 ], [ %106, %105 ], [ %124, %123 ], [ %158, %157 ], [ %191, %190 ], [ %164, %166 ]
  ret i32 %195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lg216x_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = call fastcc i32 @lg216x_read_reg(ptr noundef %5, i16 noundef zeroext 283, ptr noundef nonnull %3) #10
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_read_lock_status, i32 noundef %6, i32 noundef 1129) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_read_status, i32 noundef %6, i32 noundef 1194) #8
  br label %43

11:                                               ; preds = %2
  %12 = load i8, ptr %3, align 1
  %13 = lshr i8 %12, 5
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = lshr i8 %12, 6
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %19 = load i32, ptr @debug, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %11
  %23 = icmp eq i8 %18, 0
  %24 = select i1 %23, ptr @.str.13, ptr @.str.12
  %25 = icmp eq i8 %15, 0
  %26 = select i1 %25, ptr @.str.13, ptr @.str.14
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.lg216x_read_status, ptr noundef nonnull %24, ptr noundef nonnull %26) #8
  br label %28

28:                                               ; preds = %22, %11
  %29 = icmp eq i8 %18, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %1, align 4
  %32 = or i32 %31, 1
  store i32 %32, ptr %1, align 4
  br label %33

33:                                               ; preds = %30, %28
  %34 = icmp eq i8 %15, 0
  %35 = load i32, ptr %1, align 4
  br i1 %34, label %38, label %36

36:                                               ; preds = %33
  %37 = or i32 %35, 8
  br label %40

38:                                               ; preds = %33
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %35, %38 ]
  %42 = or i32 %41, 22
  store i32 %42, ptr %1, align 4
  br label %43

43:                                               ; preds = %40, %38, %8
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lg216x_read_signal_strength(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  store i16 0, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lg2160_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  store i16 0, ptr %1, align 2
  %7 = call fastcc i32 @lg216x_read_reg(ptr noundef %6, i16 noundef zeroext 514, ptr noundef nonnull %3)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_read_snr, i32 noundef %7, i32 noundef 1224) #8
  br label %34

11:                                               ; preds = %2
  %12 = call fastcc i32 @lg216x_read_reg(ptr noundef %6, i16 noundef zeroext 515, ptr noundef nonnull %4)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2160_read_snr, i32 noundef %12, i32 noundef 1228) #8
  br label %34

16:                                               ; preds = %11
  %17 = load i8, ptr %3, align 1
  %18 = icmp eq i8 %17, -70
  %19 = load i8, ptr %4, align 1
  %20 = icmp eq i8 %19, -33
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i16 0, ptr %1, align 2
  br label %34

23:                                               ; preds = %16
  %24 = zext i8 %17 to i32
  %25 = lshr i32 %24, 4
  %26 = mul nuw nsw i32 %25, 100
  %27 = and i32 %24, 15
  %28 = mul nuw nsw i32 %27, 10
  %29 = add nuw nsw i32 %26, %28
  %30 = lshr i8 %19, 4
  %31 = zext i8 %30 to i32
  %32 = add nuw nsw i32 %29, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, ptr %1, align 2
  br label %34

34:                                               ; preds = %23, %22, %14, %9
  %35 = phi i32 [ 0, %22 ], [ 0, %23 ], [ %7, %9 ], [ %12, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret i32 %35
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lg216x_read_ucblocks(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #5 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lg216x_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.lg216x_state, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.lg2160_config, ptr %7, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load i32, ptr @debug, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.lg216x_i2c_gate_ctrl, i32 noundef %1) #8
  %18 = load i32, ptr @debug, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i32 [ %18, %16 ], [ %13, %12 ]
  %21 = icmp eq i32 %1, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %22 = and i32 %20, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = zext i1 %21 to i32
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.lg216x_set_reg_bit, i32 noundef 0, i32 noundef 0, i32 noundef %25) #8
  br label %27

27:                                               ; preds = %24, %19
  %28 = call fastcc i32 @lg216x_read_reg(ptr noundef %5, i16 noundef zeroext 0, ptr noundef nonnull %3) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_set_reg_bit, i32 noundef %28, i32 noundef 132) #8
  br label %41

32:                                               ; preds = %27
  %33 = load i8, ptr %3, align 1
  %34 = and i8 %33, -2
  %35 = zext i1 %21 to i8
  %36 = or i8 %34, %35
  store i8 %36, ptr %3, align 1
  %37 = call fastcc i32 @lg216x_write_reg(ptr noundef %5, i16 noundef zeroext 0, i8 noundef zeroext %36) #10
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_set_reg_bit, i32 noundef %37, i32 noundef 139) #8
  br label %41

41:                                               ; preds = %39, %32, %30
  %42 = phi i32 [ %28, %30 ], [ %37, %39 ], [ %37, %32 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @msleep(i32 noundef 1) #10
  br label %43

43:                                               ; preds = %41, %2
  %44 = phi i32 [ %42, %41 ], [ 0, %2 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lg216x_soft_reset(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @debug, align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.lg216x_soft_reset) #8
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 2, i8 noundef zeroext 0)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_soft_reset, i32 noundef %8, i32 noundef 170) #8
  br label %21

12:                                               ; preds = %7
  tail call void @msleep(i32 noundef 20) #10
  %13 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 2, i8 noundef zeroext 1)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_soft_reset, i32 noundef %13, i32 noundef 175) #8
  br label %21

17:                                               ; preds = %12
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = tail call i32 @jiffies_to_msecs(i32 noundef %18) #10
  %20 = getelementptr inbounds %struct.lg216x_state, ptr %0, i32 0, i32 6
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %15, %10
  %22 = phi i32 [ 0, %17 ], [ %8, %10 ], [ %13, %15 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lg216x_initialize(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lg216x_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.lg2160_config, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %66 [
    i32 0, label %6
    i32 1, label %39
  ]

6:                                                ; preds = %1
  %7 = load i32, ptr @debug, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.lg216x_write_regs, i32 noundef 9) #8
  br label %12

12:                                               ; preds = %10, %6
  %13 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 21, i8 noundef zeroext -9) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 27, i8 noundef zeroext 82) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %63, label %18

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 520, i8 noundef zeroext 0) #10
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 521, i8 noundef zeroext -126) #10
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %63, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 528, i8 noundef zeroext -7) #10
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %63, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 522, i8 noundef zeroext 0) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 523, i8 noundef zeroext -126) #10
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %63, label %33

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 525, i8 noundef zeroext 40) #10
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 527, i8 noundef zeroext 20) #10
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %63, label %69

39:                                               ; preds = %1
  %40 = load i32, ptr @debug, align 4
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.lg216x_write_regs, i32 noundef 6) #8
  br label %45

45:                                               ; preds = %43, %39
  %46 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 0, i8 noundef zeroext 65) #10
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 1, i8 noundef zeroext -5) #10
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %48
  %52 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 534, i8 noundef zeroext 0) #10
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 537, i8 noundef zeroext 0) #10
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 539, i8 noundef zeroext 85) #10
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = tail call fastcc i32 @lg216x_write_reg(ptr noundef %0, i16 noundef zeroext 1542, i8 noundef zeroext 10) #10
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60, %57, %54, %51, %48, %45, %36, %33, %30, %27, %24, %21, %18, %15, %12
  %64 = phi i32 [ %13, %12 ], [ %16, %15 ], [ %19, %18 ], [ %22, %21 ], [ %25, %24 ], [ %28, %27 ], [ %31, %30 ], [ %34, %33 ], [ %37, %36 ], [ %46, %45 ], [ %49, %48 ], [ %52, %51 ], [ %55, %54 ], [ %58, %57 ], [ %61, %60 ]
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_write_regs, i32 noundef %64, i32 noundef 117) #8
  br label %66

66:                                               ; preds = %63, %1
  %67 = phi i32 [ -22, %1 ], [ %64, %63 ]
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_initialize, i32 noundef %67, i32 noundef 225) #8
  br label %74

69:                                               ; preds = %60, %36
  %70 = tail call fastcc i32 @lg216x_soft_reset(ptr noundef %0)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg216x_initialize, i32 noundef %70, i32 noundef 229) #8
  br label %74

74:                                               ; preds = %72, %69, %66
  %75 = phi i32 [ %67, %66 ], [ %70, %72 ], [ %70, %69 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lg216x_read_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  %6 = zext i16 %1 to i32
  %7 = lshr i16 %1, 8
  %8 = trunc i16 %7 to i8
  store i8 %8, ptr %4, align 2
  %9 = getelementptr inbounds i8, ptr %4, i32 1
  %10 = trunc i16 %1 to i8
  store i8 %10, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.lg216x_state, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %20 = load i8, ptr %13, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %2, ptr %24, align 4
  %25 = load i32, ptr @debug, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.lg216x_read_reg, i32 noundef %6) #8
  br label %30

30:                                               ; preds = %28, %3
  %31 = load ptr, ptr %0, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %5, i32 noundef 2) #10
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %12, align 4
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.lg216x_read_reg, i32 noundef %37, i32 noundef %6, i32 noundef %32) #8
  %39 = icmp slt i32 %32, 0
  %40 = select i1 %39, i32 %32, i32 -121
  br label %41

41:                                               ; preds = %34, %30
  %42 = phi i32 [ %40, %34 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lg216x_write_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  %6 = lshr i16 %1, 8
  %7 = trunc i16 %6 to i8
  store i8 %7, ptr %4, align 1
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  %9 = trunc i16 %1 to i8
  store i8 %9, ptr %8, align 1
  %10 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %2, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.lg216x_state, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %18, align 4
  %19 = load i32, ptr @debug, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = zext i16 %1 to i32
  %24 = zext i8 %2 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lg216x_write_reg, i32 noundef %23, i32 noundef %24) #8
  br label %26

26:                                               ; preds = %22, %3
  %27 = load ptr, ptr %0, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %5, i32 noundef 1) #10
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %18, align 4
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr i8, ptr %31, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr i8, ptr %31, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.lg216x_write_reg, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %28) #8
  %41 = icmp slt i32 %28, 0
  %42 = select i1 %41, i32 %28, i32 -121
  br label %43

43:                                               ; preds = %30, %26
  %44 = phi i32 [ %42, %30 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lg2161_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  store i16 0, ptr %1, align 2
  %7 = call fastcc i32 @lg216x_read_reg(ptr noundef %6, i16 noundef zeroext 770, ptr noundef nonnull %3)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2161_read_snr, i32 noundef %7, i32 noundef 1252) #8
  br label %34

11:                                               ; preds = %2
  %12 = call fastcc i32 @lg216x_read_reg(ptr noundef %6, i16 noundef zeroext 771, ptr noundef nonnull %4)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lg2161_read_snr, i32 noundef %12, i32 noundef 1256) #8
  br label %34

16:                                               ; preds = %11
  %17 = load i8, ptr %3, align 1
  %18 = icmp eq i8 %17, -70
  %19 = load i8, ptr %4, align 1
  %20 = icmp eq i8 %19, -3
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i16 0, ptr %1, align 2
  br label %34

23:                                               ; preds = %16
  %24 = zext i8 %17 to i32
  %25 = lshr i32 %24, 4
  %26 = mul nuw nsw i32 %25, 100
  %27 = and i32 %24, 15
  %28 = mul nuw nsw i32 %27, 10
  %29 = add nuw nsw i32 %26, %28
  %30 = and i8 %19, 15
  %31 = zext i8 %30 to i32
  %32 = add nuw nsw i32 %29, %31
  %33 = trunc i32 %32 to i16
  store i16 %33, ptr %1, align 2
  br label %34

34:                                               ; preds = %23, %22, %14, %9
  %35 = phi i32 [ 0, %22 ], [ 0, %23 ], [ %7, %9 ], [ %12, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret i32 %35
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }

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
