; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tda1004x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda1004x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda10045_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda10045_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda10045_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda10046_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda10046_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda10046_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tda1004x_state = type { ptr, ptr, %struct.dvb_frontend, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tda1004x_config = type { i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [44 x i8] c"\013Can't allocate memory for tda10045 state\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"\013tda10045: chip is not answering. Giving up.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\013Invalid tda1004x ID = 0x%02x. Can't proceed\0A\00", align 1
@tda10045_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10045H DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 51000000, i32 858000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 732846 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @tda1004x_release, ptr null, ptr @tda10045_init, ptr @tda1004x_sleep, ptr null, ptr null, ptr @tda1004x_write, ptr null, ptr null, ptr @tda1004x_set_fe, ptr @tda1004x_get_tune_settings, ptr @tda1004x_get_fe, ptr @tda1004x_read_status, ptr @tda1004x_read_ber, ptr @tda1004x_read_signal_strength, ptr @tda1004x_read_snr, ptr @tda1004x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda1004x_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"\013Can't allocate memory for tda10046 state\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\013tda10046: chip is not answering. Giving up.\0A\00", align 1
@tda10046_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10046H DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 51000000, i32 858000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 732846 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @tda1004x_release, ptr null, ptr @tda10046_init, ptr @tda1004x_sleep, ptr null, ptr null, ptr @tda1004x_write, ptr null, ptr null, ptr @tda1004x_set_fe, ptr @tda1004x_get_tune_settings, ptr @tda1004x_get_fe, ptr @tda1004x_read_status, ptr @tda1004x_read_ber, ptr @tda1004x_read_signal_strength, ptr @tda1004x_read_snr, ptr @tda1004x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda1004x_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [60 x i8] c"description=Philips TDA10045H & TDA10046H DVB-T Demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [45 x i8] c"author=Andrew de Quincey & Robert Schlabbach\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_tda10045_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda10045_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda10045_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda10045_attach to i32), ptr @__kstrtab_tda10045_attach, ptr @__kstrtabns_tda10045_attach }, section "___ksymtab+tda10045_attach", align 4
@__kstrtab_tda10046_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda10046_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda10046_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda10046_attach to i32), ptr @__kstrtab_tda10046_attach, ptr @__kstrtabns_tda10046_attach }, section "___ksymtab+tda10046_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"\017tda1004x: %s: reg=0x%x\0A\00", align 1
@__func__.tda1004x_read_byte = private unnamed_addr constant [19 x i8] c"tda1004x_read_byte\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\017tda1004x: %s: error reg=0x%x, ret=%i\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"\017tda1004x: %s: success reg=0x%x, data=0x%x, ret=%i\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"\017tda1004x: %s\0A\00", align 1
@__func__.tda10045_init = private unnamed_addr constant [14 x i8] c"tda10045_init\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"tda1004x: firmware upload failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"\016tda1004x: waiting for firmware upload (%s)...\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"dvb-fe-tda10045.fw\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"\013tda1004x: no firmware upload (timeout or file not found?)\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"\016tda1004x: firmware upload complete\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.14 = private unnamed_addr constant [43 x i8] c"\013tda1004x: timeout waiting for DSP ready\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"\016tda1004x: found firmware revision %x -- invalid\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"\016tda1004x: found firmware revision %x -- ok\0A\00", align 1
@tda10045h_set_bandwidth.bandwidth_6mhz = internal unnamed_addr constant [9 x i8] c"\02\00=\00`\1E\A7EO", align 1
@tda10045h_set_bandwidth.bandwidth_7mhz = internal unnamed_addr constant [9 x i8] c"\02\007\00J/mv\DB", align 1
@tda10045h_set_bandwidth.bandwidth_8mhz = internal unnamed_addr constant [9 x i8] c"\02\00=\00H\17\89\C7\14", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"\017tda1004x: %s: reg=0x%x, len=0x%x\0A\00", align 1
@__func__.tda1004x_write_buf = private unnamed_addr constant [19 x i8] c"tda1004x_write_buf\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"\013tda1004x: Error during firmware upload\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"\017tda1004x: %s: fw_pos=0x%x\0A\00", align 1
@__func__.tda1004x_do_upload = private unnamed_addr constant [19 x i8] c"tda1004x_do_upload\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"\017tda1004x: %s: reg=0x%x, mask=0x%x, data=0x%x\0A\00", align 1
@__func__.tda1004x_write_mask = private unnamed_addr constant [20 x i8] c"tda1004x_write_mask\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"\017tda1004x: %s: reg=0x%x, data=0x%x\0A\00", align 1
@__func__.tda1004x_write_byteI = private unnamed_addr constant [21 x i8] c"tda1004x_write_byteI\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"\017tda1004x: %s: error reg=0x%x, data=0x%x, ret=%i\0A\00", align 1
@__func__.tda1004x_set_fe = private unnamed_addr constant [16 x i8] c"tda1004x_set_fe\00", align 1
@__func__.tda1004x_get_fe = private unnamed_addr constant [16 x i8] c"tda1004x_get_fe\00", align 1
@__func__.tda1004x_read_status = private unnamed_addr constant [21 x i8] c"tda1004x_read_status\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"\017tda1004x: %s: fe_status=0x%x\0A\00", align 1
@__func__.tda1004x_read_ber = private unnamed_addr constant [18 x i8] c"tda1004x_read_ber\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"\017tda1004x: %s: ber=0x%x\0A\00", align 1
@__func__.tda1004x_read_signal_strength = private unnamed_addr constant [30 x i8] c"tda1004x_read_signal_strength\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"\017tda1004x: %s: signal=0x%x\0A\00", align 1
@__func__.tda1004x_read_snr = private unnamed_addr constant [18 x i8] c"tda1004x_read_snr\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"\017tda1004x: %s: snr=0x%x\0A\00", align 1
@__func__.tda1004x_read_ucblocks = private unnamed_addr constant [23 x i8] c"tda1004x_read_ucblocks\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"\017tda1004x: %s: ucblocks=0x%x\0A\00", align 1
@__func__.tda1004x_enable_tuner_i2c = private unnamed_addr constant [26 x i8] c"tda1004x_enable_tuner_i2c\00", align 1
@__func__.tda1004x_disable_tuner_i2c = private unnamed_addr constant [27 x i8] c"tda1004x_disable_tuner_i2c\00", align 1
@__func__.tda10046_init = private unnamed_addr constant [14 x i8] c"tda10046_init\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"\017tda1004x: %s: 16MHz Xtal, reducing I2C speed\0A\00", align 1
@__func__.tda10046_fwupload = private unnamed_addr constant [18 x i8] c"tda10046_fwupload\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"\016tda1004x: trying to boot from eeprom\0A\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"\016tda1004x: waiting for firmware upload...\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"dvb-fe-tda10046.fw\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"\016tda1004x: please rename the firmware file to %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [65 x i8] c"\013tda1004x: no request function defined, can't upload from file\0A\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"\016tda1004x: setting up plls for 53MHz sampling clock\0A\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"\016tda1004x: setting up plls for 48MHz sampling clock\0A\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"\017tda1004x: %s: setting up PLLs for a 4 MHz Xtal\0A\00", align 1
@__func__.tda10046_init_plls = private unnamed_addr constant [19 x i8] c"tda10046_init_plls\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"\017tda1004x: %s: setting up PLLs for a 16 MHz Xtal\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_tda10045_attach, ptr @__ksymtab_tda10046_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.tda1004x_set_fe = private unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 0, i32 4], align 4
@switch.table.tda1004x_set_fe.38 = private unnamed_addr constant [7 x i32] [i32 0, i32 8, i32 16, i32 0, i32 24, i32 0, i32 32], align 4
@switch.table.tda1004x_get_fe.39 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], align 4
@switch.table.tda1004x_get_fe.40 = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 3], align 4
@switch.table.tda10046_init = private unnamed_addr constant [4 x i32] [i32 215, i32 215, i32 12, i32 13], align 4
@switch.table.tda10046_init.41 = private unnamed_addr constant [4 x i32] [i32 89, i32 63, i32 0, i32 199], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda10045_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1052) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 1
  store ptr %0, ptr %9, align 4
  store ptr %1, ptr %4, align 8
  %10 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 3
  store i32 0, ptr %10, align 8
  %11 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef nonnull %4, i32 noundef 0)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %23

15:                                               ; preds = %8
  %16 = icmp eq i32 %11, 37
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %11) #10
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 2
  %21 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %21, ptr noundef nonnull align 4 dereferenceable(544) @tda10045_ops, i32 544, i1 false)
  %22 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 2, i32 3
  store ptr %4, ptr %22, align 8
  br label %23

23:                                               ; preds = %19, %17, %13, %6
  %24 = phi ptr [ null, %13 ], [ null, %17 ], [ %20, %19 ], [ null, %6 ]
  ret ptr %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda1004x_read_byte(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  %6 = trunc i32 %1 to i8
  store i8 %6, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  store i16 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %12, align 4
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.tda1004x_read_byte, i32 noundef %1) #10
  br label %17

17:                                               ; preds = %15, %2
  %18 = getelementptr inbounds %struct.tda1004x_state, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %5, align 4
  %22 = load i8, ptr %19, align 4
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %9, align 4
  %24 = load ptr, ptr %0, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 2) #11
  %26 = icmp eq i32 %25, 2
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %26, label %32, label %29

29:                                               ; preds = %17
  br i1 %28, label %40, label %30

30:                                               ; preds = %29
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tda1004x_read_byte, i32 noundef %1, i32 noundef %25) #10
  br label %40

32:                                               ; preds = %17
  br i1 %28, label %37, label %33

33:                                               ; preds = %32
  %34 = load i8, ptr %4, align 1
  %35 = zext i8 %34 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tda1004x_read_byte, i32 noundef %1, i32 noundef %35, i32 noundef 2) #10
  br label %37

37:                                               ; preds = %33, %32
  %38 = load i8, ptr %4, align 1
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %37, %30, %29
  %41 = phi i32 [ %39, %37 ], [ -22, %30 ], [ -22, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda10046_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1052) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 1
  store ptr %0, ptr %9, align 4
  store ptr %1, ptr %4, align 8
  %10 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 3
  store i32 1, ptr %10, align 8
  %11 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef nonnull %4, i32 noundef 0)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %23

15:                                               ; preds = %8
  %16 = icmp eq i32 %11, 70
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %11) #10
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 2
  %21 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %21, ptr noundef nonnull align 4 dereferenceable(544) @tda10046_ops, i32 544, i1 false)
  %22 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 2, i32 3
  store ptr %4, ptr %22, align 8
  br label %23

23:                                               ; preds = %19, %17, %13, %6
  %24 = phi ptr [ null, %13 ], [ null, %17 ], [ %20, %19 ], [ null, %6 ]
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda1004x_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10045_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda10045_init) #10
  %9 = load ptr, ptr %3, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ %4, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store ptr null, ptr %2, align 4, !annotation !8
  %12 = tail call fastcc i32 @tda1004x_check_upload_ok(ptr noundef %11) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %91

15:                                               ; preds = %10
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  %17 = getelementptr inbounds %struct.tda1004x_state, ptr %11, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tda1004x_config, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 %20(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.11) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %84

25:                                               ; preds = %15
  %26 = load i32, ptr @debug, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 7, i32 noundef 16, i32 noundef 0) #10
  br label %30

30:                                               ; preds = %28, %25
  %31 = call fastcc i32 @tda1004x_read_byte(ptr noundef %11, i32 noundef 7) #11
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = and i32 %31, -17
  %35 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %11, i32 noundef 7, i32 noundef %34) #11
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, ptr @debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 7, i32 noundef 8, i32 noundef 8) #10
  br label %41

41:                                               ; preds = %39, %36
  %42 = call fastcc i32 @tda1004x_read_byte(ptr noundef %11, i32 noundef 7) #11
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = or i32 %42, 8
  %46 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %11, i32 noundef 7, i32 noundef %45) #11
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, ptr @debug, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 7, i32 noundef 8, i32 noundef 0) #10
  br label %52

52:                                               ; preds = %50, %47
  %53 = call fastcc i32 @tda1004x_read_byte(ptr noundef %11, i32 noundef 7) #11
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = and i32 %53, -9
  %57 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %11, i32 noundef 7, i32 noundef %56) #11
  br label %58

58:                                               ; preds = %55, %52
  call void @msleep(i32 noundef 10) #11
  %59 = load i32, ptr @debug, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda1004x_write_buf, i32 noundef 45, i32 noundef 9) #10
  br label %63

63:                                               ; preds = %61, %58
  br label %64

64:                                               ; preds = %64, %63
  %65 = phi i32 [ %72, %64 ], [ 0, %63 ]
  %66 = add nuw nsw i32 %65, 45
  %67 = getelementptr i8, ptr @tda10045h_set_bandwidth.bandwidth_8mhz, i32 %65
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %11, i32 noundef %66, i32 noundef %69) #11
  %71 = icmp ne i32 %70, 0
  %72 = add nuw nsw i32 %65, 1
  %73 = icmp eq i32 %72, 9
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %75, label %64

75:                                               ; preds = %64
  %76 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %11, i32 noundef 56, i32 noundef 0) #11
  %77 = load ptr, ptr %2, align 4
  %78 = getelementptr inbounds %struct.firmware, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load i32, ptr %77, align 4
  %81 = call fastcc i32 @tda1004x_do_upload(ptr noundef %11, ptr noundef %79, i32 noundef %80, i8 noundef zeroext 14, i8 noundef zeroext 13) #11
  %82 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %82) #11
  %83 = icmp eq i32 %81, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %75, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %89

85:                                               ; preds = %75
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  call void @msleep(i32 noundef 100) #11
  %87 = call fastcc i32 @tda1004x_check_upload_ok(ptr noundef %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85, %84
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %211

91:                                               ; preds = %85, %14
  %92 = load i32, ptr @debug, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 21, i32 noundef 16, i32 noundef 0) #10
  br label %96

96:                                               ; preds = %94, %91
  %97 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 21) #11
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = and i32 %97, -17
  %101 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 21, i32 noundef %100) #11
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, ptr @debug, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 7, i32 noundef 32, i32 noundef 0) #10
  br label %107

107:                                              ; preds = %105, %102
  %108 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 7) #11
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = and i32 %108, -33
  %112 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 7, i32 noundef %111) #11
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32, ptr @debug, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 8, i32 noundef 0) #10
  br label %118

118:                                              ; preds = %116, %113
  %119 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 1) #11
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = and i32 %119, -9
  %123 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 1, i32 noundef %122) #11
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32, ptr @debug, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 22, i32 noundef 64, i32 noundef 0) #10
  br label %129

129:                                              ; preds = %127, %124
  %130 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 22) #11
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = and i32 %130, -65
  %134 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 22, i32 noundef %133) #11
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, ptr @debug, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 22, i32 noundef 128, i32 noundef 128) #10
  br label %140

140:                                              ; preds = %138, %135
  %141 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 22) #11
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = or i32 %141, 128
  %145 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 22, i32 noundef %144) #11
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32, ptr @debug, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 16, i32 noundef 16) #10
  br label %151

151:                                              ; preds = %149, %146
  %152 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 1) #11
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = or i32 %152, 16
  %156 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 1, i32 noundef %155) #11
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32, ptr @debug, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %157
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 3, i32 noundef 192, i32 noundef 0) #10
  br label %162

162:                                              ; preds = %160, %157
  %163 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 3) #11
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = and i32 %163, -193
  %167 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 3, i32 noundef %166) #11
  br label %168

168:                                              ; preds = %165, %162
  %169 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 30, i32 noundef 0)
  %170 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 31, i32 noundef 0)
  %171 = load i32, ptr @debug, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %168
  %174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 36, i32 noundef 224, i32 noundef 160) #10
  br label %175

175:                                              ; preds = %173, %168
  %176 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 36) #11
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = and i32 %176, -225
  %180 = or i32 %179, 160
  %181 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 36, i32 noundef %180) #11
  br label %182

182:                                              ; preds = %178, %175
  %183 = load i32, ptr @debug, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %182
  %186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 22, i32 noundef 16, i32 noundef 0) #10
  br label %187

187:                                              ; preds = %185, %182
  %188 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 22) #11
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = and i32 %188, -17
  %192 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 22, i32 noundef %191) #11
  br label %193

193:                                              ; preds = %190, %187
  %194 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 21, i32 noundef 46)
  %195 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.tda1004x_config, ptr %196, i32 0, i32 2
  %198 = load i8, ptr %197, align 2
  %199 = zext i8 %198 to i32
  %200 = load i32, ptr @debug, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %193
  %203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 31, i32 noundef 1, i32 noundef %199) #10
  br label %204

204:                                              ; preds = %202, %193
  %205 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 31) #11
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = and i32 %205, -2
  %209 = or i32 %208, %199
  %210 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 31, i32 noundef %209) #11
  br label %211

211:                                              ; preds = %207, %204, %89
  %212 = phi i32 [ -5, %89 ], [ 0, %204 ], [ 0, %207 ]
  ret i32 %212
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda1004x_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tda1004x_state, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %60 [
    i32 0, label %6
    i32 1, label %17
  ]

6:                                                ; preds = %1
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 21, i32 noundef 16, i32 noundef 16) #10
  br label %11

11:                                               ; preds = %9, %6
  %12 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 21) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %60, label %14

14:                                               ; preds = %11
  %15 = or i32 %12, 16
  %16 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 21, i32 noundef %15) #11
  br label %60

17:                                               ; preds = %1
  %18 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 59, i32 noundef 255)
  %19 = getelementptr inbounds %struct.tda1004x_state, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tda1004x_config, ptr %20, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, 127
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = and i32 %22, 15
  %26 = xor i32 %25, 10
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 61, i32 noundef 15, i32 noundef %26) #10
  br label %31

31:                                               ; preds = %29, %24
  %32 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 61) #11
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = and i32 %32, -16
  %36 = or i32 %35, %26
  %37 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 61, i32 noundef %36) #11
  br label %38

38:                                               ; preds = %34, %31, %17
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 55, i32 noundef 192, i32 noundef 192) #10
  br label %43

43:                                               ; preds = %41, %38
  %44 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 55) #11
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = or i32 %44, 192
  %48 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 55, i32 noundef %47) #11
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 7, i32 noundef 1, i32 noundef 1) #10
  br label %54

54:                                               ; preds = %52, %49
  %55 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 7) #11
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = or i32 %55, 1
  %59 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 7, i32 noundef %58) #11
  br label %60

60:                                               ; preds = %57, %54, %14, %11, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda1004x_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %1, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %1, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %7, i32 noundef %9, i32 noundef %12)
  br label %14

14:                                               ; preds = %5, %3
  %15 = phi i32 [ %13, %5 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda1004x_set_fe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda1004x_set_fe) #10
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.tda1004x_state, ptr %3, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 16, i32 noundef 16) #10
  br label %17

17:                                               ; preds = %15, %12
  %18 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 1) #11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = or i32 %18, 16
  %22 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 1, i32 noundef %21) #11
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, ptr @debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 2, i32 noundef 128, i32 noundef 0) #10
  br label %28

28:                                               ; preds = %26, %23
  %29 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 2) #11
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = and i32 %29, -129
  %33 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 2, i32 noundef %32) #11
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 3, i32 noundef 192, i32 noundef 0) #10
  br label %39

39:                                               ; preds = %37, %34
  %40 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 3) #11
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = and i32 %40, -193
  %44 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 3, i32 noundef %43) #11
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, ptr @debug, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 67, i32 noundef 4, i32 noundef 0) #10
  br label %50

50:                                               ; preds = %48, %45
  %51 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 67) #11
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = and i32 %51, -5
  %55 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 67, i32 noundef %54) #11
  br label %56

56:                                               ; preds = %53, %50, %8
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = tail call i32 %58(ptr noundef %0) #11
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = tail call i32 %63(ptr noundef %0, i32 noundef 0) #11
  br label %67

67:                                               ; preds = %65, %60, %56
  %68 = load i32, ptr %9, align 4
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  br i1 %69, label %71, label %74

71:                                               ; preds = %67
  store i32 9, ptr %70, align 4
  %72 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  store i32 4, ptr %72, align 4
  %73 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  store i32 2, ptr %73, align 4
  br label %90

74:                                               ; preds = %67
  %75 = load i32, ptr %70, align 4
  %76 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  %77 = icmp eq i32 %75, 9
  br i1 %77, label %90, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 12
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 9
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 6
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %90, label %134

90:                                               ; preds = %86, %82, %78, %74, %71
  %91 = load i32, ptr @debug, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 1, i32 noundef 1) #10
  br label %95

95:                                               ; preds = %93, %90
  %96 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 1) #11
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = or i32 %96, 1
  %100 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 1, i32 noundef %99) #11
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, ptr @debug, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 2, i32 noundef 3, i32 noundef 0) #10
  br label %106

106:                                              ; preds = %104, %101
  %107 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 2) #11
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = and i32 %107, -4
  %111 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 2, i32 noundef %110) #11
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, ptr @debug, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 2, i32 noundef 96, i32 noundef 0) #10
  br label %117

117:                                              ; preds = %115, %112
  %118 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 2) #11
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = and i32 %118, -97
  %122 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 2, i32 noundef %121) #11
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32, ptr @debug, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 3, i32 noundef 63, i32 noundef 0) #10
  br label %128

128:                                              ; preds = %126, %123
  %129 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 3) #11
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %207, label %131

131:                                              ; preds = %128
  %132 = and i32 %129, -64
  %133 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 3, i32 noundef %132) #11
  br label %207

134:                                              ; preds = %86
  %135 = load i32, ptr @debug, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 1, i32 noundef 0) #10
  br label %139

139:                                              ; preds = %137, %134
  %140 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 1) #11
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = and i32 %140, -2
  %144 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 1, i32 noundef %143) #11
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, ptr %76, align 4
  %147 = add i32 %146, -1
  %148 = icmp ult i32 %147, 7
  br i1 %148, label %149, label %479

149:                                              ; preds = %145
  %150 = trunc i32 %147 to i8
  %151 = lshr i8 87, %150
  %152 = and i8 %151, 1
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %479, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds [7 x i32], ptr @switch.table.tda1004x_set_fe, i32 0, i32 %147
  %156 = load i32, ptr %155, align 4
  %157 = load i32, ptr @debug, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %154
  %160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 3, i32 noundef 7, i32 noundef %156) #10
  br label %161

161:                                              ; preds = %159, %154
  %162 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 3) #11
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = and i32 %162, -8
  %166 = or i32 %165, %156
  %167 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 3, i32 noundef %166) #11
  br label %168

168:                                              ; preds = %164, %161
  %169 = load i32, ptr %79, align 4
  %170 = add i32 %169, -1
  %171 = icmp ult i32 %170, 7
  br i1 %171, label %172, label %479

172:                                              ; preds = %168
  %173 = trunc i32 %170 to i8
  %174 = lshr i8 87, %173
  %175 = and i8 %174, 1
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %479, label %177

177:                                              ; preds = %172
  %178 = getelementptr inbounds [7 x i32], ptr @switch.table.tda1004x_set_fe.38, i32 0, i32 %170
  %179 = load i32, ptr %178, align 4
  %180 = load i32, ptr @debug, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %177
  %183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 3, i32 noundef 56, i32 noundef %179) #10
  br label %184

184:                                              ; preds = %182, %177
  %185 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 3) #11
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %184
  %188 = and i32 %185, -57
  %189 = or i32 %188, %179
  %190 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 3, i32 noundef %189) #11
  br label %191

191:                                              ; preds = %187, %184
  %192 = load i32, ptr %83, align 4
  switch i32 %192, label %479 [
    i32 0, label %195
    i32 1, label %193
    i32 3, label %194
  ]

193:                                              ; preds = %191
  br label %195

194:                                              ; preds = %191
  br label %195

195:                                              ; preds = %194, %193, %191
  %196 = phi i32 [ 2, %194 ], [ 1, %193 ], [ %192, %191 ]
  %197 = tail call fastcc i32 @tda1004x_write_mask(ptr noundef %3, i32 noundef 2, i32 noundef 3, i32 noundef %196)
  %198 = load i32, ptr %87, align 4
  switch i32 %198, label %479 [
    i32 0, label %199
    i32 1, label %201
    i32 2, label %203
    i32 3, label %205
  ]

199:                                              ; preds = %195
  %200 = tail call fastcc i32 @tda1004x_write_mask(ptr noundef %3, i32 noundef 2, i32 noundef 96, i32 noundef 0)
  br label %207

201:                                              ; preds = %195
  %202 = tail call fastcc i32 @tda1004x_write_mask(ptr noundef %3, i32 noundef 2, i32 noundef 96, i32 noundef 32)
  br label %207

203:                                              ; preds = %195
  %204 = tail call fastcc i32 @tda1004x_write_mask(ptr noundef %3, i32 noundef 2, i32 noundef 96, i32 noundef 64)
  br label %207

205:                                              ; preds = %195
  %206 = tail call fastcc i32 @tda1004x_write_mask(ptr noundef %3, i32 noundef 2, i32 noundef 96, i32 noundef 96)
  br label %207

207:                                              ; preds = %205, %203, %201, %199, %131, %128
  %208 = load i32, ptr %9, align 4
  switch i32 %208, label %215 [
    i32 0, label %209
    i32 1, label %212
  ]

209:                                              ; preds = %207
  %210 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %211 = load i32, ptr %210, align 4
  tail call fastcc void @tda10045h_set_bandwidth(ptr noundef %3, i32 noundef %211)
  br label %215

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %214 = load i32, ptr %213, align 4
  tail call fastcc void @tda10046h_set_bandwidth(ptr noundef %3, i32 noundef %214)
  br label %215

215:                                              ; preds = %212, %209, %207
  %216 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr inbounds %struct.tda1004x_state, ptr %3, i32 0, i32 1
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.tda1004x_config, ptr %219, i32 0, i32 1
  %221 = load i8, ptr %220, align 1
  %222 = icmp eq i8 %221, 0
  %223 = icmp eq i32 %217, 0
  %224 = zext i1 %223 to i32
  %225 = select i1 %222, i32 %217, i32 %224
  switch i32 %225, label %479 [
    i32 0, label %226
    i32 1, label %236
  ]

226:                                              ; preds = %215
  %227 = load i32, ptr @debug, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %226
  %230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 22, i32 noundef 32, i32 noundef 0) #10
  br label %231

231:                                              ; preds = %229, %226
  %232 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 22) #11
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %249, label %234

234:                                              ; preds = %231
  %235 = and i32 %232, -33
  br label %246

236:                                              ; preds = %215
  %237 = load i32, ptr @debug, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %236
  %240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 22, i32 noundef 32, i32 noundef 32) #10
  br label %241

241:                                              ; preds = %239, %236
  %242 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 22) #11
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %241
  %245 = or i32 %242, 32
  br label %246

246:                                              ; preds = %244, %234
  %247 = phi i32 [ %245, %244 ], [ %235, %234 ]
  %248 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 22, i32 noundef %247) #11
  br label %249

249:                                              ; preds = %246, %241, %231
  %250 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %251 = load i32, ptr %250, align 4
  switch i32 %251, label %479 [
    i32 0, label %252
    i32 1, label %273
    i32 2, label %295
    i32 3, label %317
    i32 4, label %338
  ]

252:                                              ; preds = %249
  %253 = load i32, ptr @debug, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %252
  %256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  br label %257

257:                                              ; preds = %255, %252
  %258 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 1) #11
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %257
  %261 = and i32 %258, -3
  %262 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 1, i32 noundef %261) #11
  br label %263

263:                                              ; preds = %260, %257
  %264 = load i32, ptr @debug, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %263
  %267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 2, i32 noundef 12, i32 noundef 0) #10
  br label %268

268:                                              ; preds = %266, %263
  %269 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 2) #11
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %362, label %271

271:                                              ; preds = %268
  %272 = and i32 %269, -13
  br label %359

273:                                              ; preds = %249
  %274 = load i32, ptr @debug, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %273
  %277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  br label %278

278:                                              ; preds = %276, %273
  %279 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 1) #11
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %278
  %282 = and i32 %279, -3
  %283 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 1, i32 noundef %282) #11
  br label %284

284:                                              ; preds = %281, %278
  %285 = load i32, ptr @debug, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %284
  %288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 2, i32 noundef 12, i32 noundef 4) #10
  br label %289

289:                                              ; preds = %287, %284
  %290 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 2) #11
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %362, label %292

292:                                              ; preds = %289
  %293 = and i32 %290, -13
  %294 = or i32 %293, 4
  br label %359

295:                                              ; preds = %249
  %296 = load i32, ptr @debug, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %295
  %299 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  br label %300

300:                                              ; preds = %298, %295
  %301 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 1) #11
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = and i32 %301, -3
  %305 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 1, i32 noundef %304) #11
  br label %306

306:                                              ; preds = %303, %300
  %307 = load i32, ptr @debug, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %306
  %310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 2, i32 noundef 12, i32 noundef 8) #10
  br label %311

311:                                              ; preds = %309, %306
  %312 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 2) #11
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %362, label %314

314:                                              ; preds = %311
  %315 = and i32 %312, -13
  %316 = or i32 %315, 8
  br label %359

317:                                              ; preds = %249
  %318 = load i32, ptr @debug, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %322, label %320

320:                                              ; preds = %317
  %321 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 2, i32 noundef 0) #10
  br label %322

322:                                              ; preds = %320, %317
  %323 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 1) #11
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %322
  %326 = and i32 %323, -3
  %327 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 1, i32 noundef %326) #11
  br label %328

328:                                              ; preds = %325, %322
  %329 = load i32, ptr @debug, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %328
  %332 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 2, i32 noundef 12, i32 noundef 12) #10
  br label %333

333:                                              ; preds = %331, %328
  %334 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 2) #11
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %362, label %336

336:                                              ; preds = %333
  %337 = or i32 %334, 12
  br label %359

338:                                              ; preds = %249
  %339 = load i32, ptr @debug, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %343, label %341

341:                                              ; preds = %338
  %342 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 2, i32 noundef 2) #10
  br label %343

343:                                              ; preds = %341, %338
  %344 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 1) #11
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %343
  %347 = or i32 %344, 2
  %348 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 1, i32 noundef %347) #11
  br label %349

349:                                              ; preds = %346, %343
  %350 = load i32, ptr @debug, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %354, label %352

352:                                              ; preds = %349
  %353 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 2, i32 noundef 12, i32 noundef 0) #10
  br label %354

354:                                              ; preds = %352, %349
  %355 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 2) #11
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %362, label %357

357:                                              ; preds = %354
  %358 = and i32 %355, -13
  br label %359

359:                                              ; preds = %357, %336, %314, %292, %271
  %360 = phi i32 [ %358, %357 ], [ %337, %336 ], [ %316, %314 ], [ %294, %292 ], [ %272, %271 ]
  %361 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 2, i32 noundef %360) #11
  br label %362

362:                                              ; preds = %359, %354, %333, %311, %289, %268
  %363 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %364 = load i32, ptr %363, align 4
  switch i32 %364, label %479 [
    i32 0, label %365
    i32 1, label %386
    i32 2, label %407
  ]

365:                                              ; preds = %362
  %366 = load i32, ptr @debug, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %365
  %369 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 4, i32 noundef 0) #10
  br label %370

370:                                              ; preds = %368, %365
  %371 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 1) #11
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %376, label %373

373:                                              ; preds = %370
  %374 = and i32 %371, -5
  %375 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 1, i32 noundef %374) #11
  br label %376

376:                                              ; preds = %373, %370
  %377 = load i32, ptr @debug, align 4
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %381, label %379

379:                                              ; preds = %376
  %380 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 2, i32 noundef 16, i32 noundef 0) #10
  br label %381

381:                                              ; preds = %379, %376
  %382 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 2) #11
  %383 = icmp slt i32 %382, 0
  br i1 %383, label %431, label %384

384:                                              ; preds = %381
  %385 = and i32 %382, -17
  br label %428

386:                                              ; preds = %362
  %387 = load i32, ptr @debug, align 4
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %391, label %389

389:                                              ; preds = %386
  %390 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 4, i32 noundef 0) #10
  br label %391

391:                                              ; preds = %389, %386
  %392 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 1) #11
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %391
  %395 = and i32 %392, -5
  %396 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 1, i32 noundef %395) #11
  br label %397

397:                                              ; preds = %394, %391
  %398 = load i32, ptr @debug, align 4
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %402, label %400

400:                                              ; preds = %397
  %401 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 2, i32 noundef 16, i32 noundef 16) #10
  br label %402

402:                                              ; preds = %400, %397
  %403 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 2) #11
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %431, label %405

405:                                              ; preds = %402
  %406 = or i32 %403, 16
  br label %428

407:                                              ; preds = %362
  %408 = load i32, ptr @debug, align 4
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %412, label %410

410:                                              ; preds = %407
  %411 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 4, i32 noundef 4) #10
  br label %412

412:                                              ; preds = %410, %407
  %413 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 1) #11
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %418, label %415

415:                                              ; preds = %412
  %416 = or i32 %413, 4
  %417 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 1, i32 noundef %416) #11
  br label %418

418:                                              ; preds = %415, %412
  %419 = load i32, ptr @debug, align 4
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %418
  %422 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 2, i32 noundef 16, i32 noundef 0) #10
  br label %423

423:                                              ; preds = %421, %418
  %424 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 2) #11
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %431, label %426

426:                                              ; preds = %423
  %427 = and i32 %424, -17
  br label %428

428:                                              ; preds = %426, %405, %384
  %429 = phi i32 [ %427, %426 ], [ %406, %405 ], [ %385, %384 ]
  %430 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 2, i32 noundef %429) #11
  br label %431

431:                                              ; preds = %428, %423, %402, %381
  %432 = load i32, ptr %9, align 4
  switch i32 %432, label %478 [
    i32 0, label %433
    i32 1, label %455
  ]

433:                                              ; preds = %431
  %434 = load i32, ptr @debug, align 4
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %438, label %436

436:                                              ; preds = %433
  %437 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 7, i32 noundef 8, i32 noundef 8) #10
  br label %438

438:                                              ; preds = %436, %433
  %439 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 7) #11
  %440 = icmp slt i32 %439, 0
  br i1 %440, label %444, label %441

441:                                              ; preds = %438
  %442 = or i32 %439, 8
  %443 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 7, i32 noundef %442) #11
  br label %444

444:                                              ; preds = %441, %438
  %445 = load i32, ptr @debug, align 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %449, label %447

447:                                              ; preds = %444
  %448 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 7, i32 noundef 8, i32 noundef 0) #10
  br label %449

449:                                              ; preds = %447, %444
  %450 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 7) #11
  %451 = icmp slt i32 %450, 0
  br i1 %451, label %478, label %452

452:                                              ; preds = %449
  %453 = and i32 %450, -9
  %454 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 7, i32 noundef %453) #11
  br label %478

455:                                              ; preds = %431
  %456 = load i32, ptr @debug, align 4
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %460, label %458

458:                                              ; preds = %455
  %459 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 1, i32 noundef 64, i32 noundef 64) #10
  br label %460

460:                                              ; preds = %458, %455
  %461 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 1) #11
  %462 = icmp slt i32 %461, 0
  br i1 %462, label %466, label %463

463:                                              ; preds = %460
  %464 = or i32 %461, 64
  %465 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 1, i32 noundef %464) #11
  br label %466

466:                                              ; preds = %463, %460
  tail call void @msleep(i32 noundef 1) #11
  %467 = load i32, ptr @debug, align 4
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %471, label %469

469:                                              ; preds = %466
  %470 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 67, i32 noundef 4, i32 noundef 1) #10
  br label %471

471:                                              ; preds = %469, %466
  %472 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %3, i32 noundef 67) #11
  %473 = icmp slt i32 %472, 0
  br i1 %473, label %478, label %474

474:                                              ; preds = %471
  %475 = and i32 %472, -6
  %476 = or i32 %475, 1
  %477 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %3, i32 noundef 67, i32 noundef %476) #11
  br label %478

478:                                              ; preds = %474, %471, %452, %449, %431
  tail call void @msleep(i32 noundef 10) #11
  br label %479

479:                                              ; preds = %478, %362, %249, %215, %195, %191, %172, %168, %149, %145
  %480 = phi i32 [ 0, %478 ], [ -22, %191 ], [ -22, %195 ], [ -22, %215 ], [ -22, %249 ], [ -22, %362 ], [ -22, %145 ], [ -22, %168 ], [ -22, %149 ], [ -22, %172 ]
  ret i32 %480
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tda1004x_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 800, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda1004x_get_fe(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda1004x_get_fe) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 6)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %87, label %12

12:                                               ; preds = %9
  %13 = and i32 %10, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %87, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 0, ptr %16, align 4
  %17 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 22)
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 1, ptr %16, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tda1004x_config, ptr %23, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %16, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, ptr %16, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %45 [
    i32 0, label %34
    i32 1, label %38
  ]

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 53)
  switch i32 %35, label %45 [
    i32 20, label %42
    i32 219, label %36
    i32 79, label %37
  ]

36:                                               ; preds = %34
  br label %42

37:                                               ; preds = %34
  br label %42

38:                                               ; preds = %31
  %39 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 49)
  switch i32 %39, label %45 [
    i32 92, label %42
    i32 84, label %42
    i32 106, label %40
    i32 96, label %40
    i32 123, label %41
    i32 112, label %41
  ]

40:                                               ; preds = %38, %38
  br label %42

41:                                               ; preds = %38, %38
  br label %42

42:                                               ; preds = %41, %40, %38, %38, %37, %36, %34
  %43 = phi i32 [ 7000000, %40 ], [ 6000000, %41 ], [ 7000000, %36 ], [ 6000000, %37 ], [ 8000000, %34 ], [ 8000000, %38 ], [ 8000000, %38 ]
  %44 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  store i32 %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %42, %38, %34, %31
  %46 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 5)
  %47 = and i32 %46, 7
  %48 = icmp ult i32 %47, 5
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds [5 x i32], ptr @switch.table.tda1004x_get_fe.39, i32 0, i32 %47
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i32 [ %51, %49 ], [ -1, %45 ]
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %53, ptr %54, align 4
  %55 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 5)
  %56 = lshr i32 %55, 3
  %57 = and i32 %56, 7
  %58 = icmp ult i32 %57, 5
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = getelementptr inbounds [5 x i32], ptr @switch.table.tda1004x_get_fe.39, i32 0, i32 %57
  %61 = load i32, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = phi i32 [ %61, %59 ], [ -1, %52 ]
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %63, ptr %64, align 4
  %65 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 4)
  %66 = and i32 %65, 3
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds [3 x i32], ptr @switch.table.tda1004x_get_fe.40, i32 0, i32 %66
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %68, %62
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 0, ptr %73, align 4
  %74 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 4)
  %75 = and i32 %74, 16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 1, ptr %73, align 4
  br label %78

78:                                               ; preds = %77, %72
  %79 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 4)
  %80 = lshr i32 %79, 2
  %81 = and i32 %80, 3
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %81, ptr %82, align 4
  %83 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 4)
  %84 = lshr i32 %83, 5
  %85 = and i32 %84, 3
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %85, ptr %86, align 4
  br label %87

87:                                               ; preds = %78, %12, %9
  %88 = phi i32 [ -5, %9 ], [ 0, %12 ], [ 0, %78 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda1004x_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda1004x_read_status) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 6)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %67, label %12

12:                                               ; preds = %9
  %13 = lshr i32 %10, 2
  %14 = and i32 %13, 1
  %15 = and i32 %10, 2
  %16 = or i32 %15, %14
  %17 = and i32 %10, 8
  %18 = icmp eq i32 %17, 0
  %19 = or i32 %16, 28
  %20 = select i1 %18, i32 %16, i32 %19
  store i32 %20, ptr %1, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %12
  %24 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 34)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %67, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 33)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %67, label %29

29:                                               ; preds = %26
  %30 = shl i32 %27, 8
  %31 = or i32 %30, %24
  %32 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 32)
  %33 = icmp eq i32 %31, 65535
  %34 = load i32, ptr %1, align 4
  br i1 %33, label %37, label %35

35:                                               ; preds = %29
  %36 = or i32 %34, 4
  store i32 %36, ptr %1, align 4
  br label %37

37:                                               ; preds = %35, %29, %12
  %38 = phi i32 [ %36, %35 ], [ %20, %12 ], [ %34, %29 ]
  %39 = and i32 %38, 12
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 38)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %67, label %44

44:                                               ; preds = %41
  %45 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 37)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %67, label %47

47:                                               ; preds = %44
  %48 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 36)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = shl i32 %45, 8
  %52 = or i32 %51, %42
  %53 = shl i32 %48, 16
  %54 = and i32 %53, 983040
  %55 = or i32 %52, %54
  %56 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 35)
  %57 = icmp slt i32 %55, 16632
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, ptr %1, align 4
  %60 = or i32 %59, 8
  store i32 %60, ptr %1, align 4
  br label %61

61:                                               ; preds = %58, %50, %37
  %62 = load i32, ptr @debug, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %1, align 4
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.tda1004x_read_status, i32 noundef %65) #10
  br label %67

67:                                               ; preds = %64, %61, %47, %44, %41, %26, %23, %9
  %68 = phi i32 [ -5, %9 ], [ -5, %23 ], [ -5, %26 ], [ -5, %41 ], [ -5, %44 ], [ -5, %47 ], [ 0, %64 ], [ 0, %61 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda1004x_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda1004x_read_ber) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 34)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %9
  %13 = shl nuw i32 %10, 1
  store i32 %13, ptr %1, align 4
  %14 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 33)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = shl i32 %14, 9
  %18 = load i32, ptr %1, align 4
  %19 = or i32 %18, %17
  store i32 %19, ptr %1, align 4
  %20 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 32)
  %21 = load i32, ptr @debug, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, ptr %1, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.tda1004x_read_ber, i32 noundef %24) #10
  br label %26

26:                                               ; preds = %23, %16, %12, %9
  %27 = phi i32 [ -5, %9 ], [ -5, %12 ], [ 0, %23 ], [ 0, %16 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda1004x_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda1004x_read_signal_strength) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  %13 = select i1 %12, i32 82, i32 0
  %14 = icmp eq i32 %11, 0
  %15 = select i1 %14, i32 26, i32 %13
  %16 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef %15)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %9
  %19 = shl i32 %16, 8
  %20 = or i32 %19, %16
  %21 = trunc i32 %20 to i16
  store i16 %21, ptr %1, align 2
  %22 = load i32, ptr @debug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = and i32 %20, 65535
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.tda1004x_read_signal_strength, i32 noundef %25) #10
  br label %27

27:                                               ; preds = %24, %18, %9
  %28 = phi i32 [ -5, %9 ], [ 0, %24 ], [ 0, %18 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda1004x_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda1004x_read_snr) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 28)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = sub nsw i32 255, %10
  %14 = shl i32 %13, 8
  %15 = or i32 %14, %13
  %16 = trunc i32 %15 to i16
  store i16 %16, ptr %1, align 2
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = and i32 %15, 65535
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.tda1004x_read_snr, i32 noundef %20) #10
  br label %22

22:                                               ; preds = %19, %12, %9
  %23 = phi i32 [ -5, %9 ], [ 0, %19 ], [ 0, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda1004x_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda1004x_read_ucblocks) #10
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 39)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %66, label %12

12:                                               ; preds = %9
  %13 = and i32 %10, 127
  br label %14

14:                                               ; preds = %54, %12
  %15 = phi i32 [ 0, %12 ], [ %16, %54 ]
  %16 = add nuw nsw i32 %15, 1
  %17 = icmp eq i32 %15, 5
  br i1 %17, label %59, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 39, i32 noundef 128, i32 noundef 0) #10
  br label %23

23:                                               ; preds = %21, %18
  %24 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 39) #11
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = and i32 %24, -129
  %28 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 39, i32 noundef %27) #11
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 39, i32 noundef 128, i32 noundef 0) #10
  br label %34

34:                                               ; preds = %32, %29
  %35 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 39) #11
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = and i32 %35, -129
  %39 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 39, i32 noundef %38) #11
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, ptr @debug, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 39, i32 noundef 128, i32 noundef 0) #10
  br label %45

45:                                               ; preds = %43, %40
  %46 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 39) #11
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = and i32 %46, -129
  %50 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 39, i32 noundef %49) #11
  br label %51

51:                                               ; preds = %48, %45
  %52 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 39)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %51
  %55 = and i32 %52, 127
  %56 = icmp ult i32 %55, %13
  %57 = icmp eq i32 %55, 0
  %58 = or i1 %56, %57
  br i1 %58, label %59, label %14

59:                                               ; preds = %54, %14
  %60 = icmp eq i32 %13, 127
  %61 = select i1 %60, i32 -1, i32 %13
  store i32 %61, ptr %1, align 4
  %62 = load i32, ptr @debug, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.tda1004x_read_ucblocks, i32 noundef %61) #10
  br label %66

66:                                               ; preds = %64, %59, %51, %9
  %67 = phi i32 [ -5, %9 ], [ 0, %64 ], [ 0, %59 ], [ -5, %51 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda1004x_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %5, label %23, label %8

8:                                                ; preds = %2
  br i1 %7, label %15, label %9

9:                                                ; preds = %8
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda1004x_enable_tuner_i2c) #10
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 7, i32 noundef 2, i32 noundef 2) #10
  br label %15

15:                                               ; preds = %13, %9, %8
  %16 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 7) #11
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = or i32 %16, 2
  %20 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 7, i32 noundef %19) #11
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %20, %18 ], [ %16, %15 ]
  tail call void @msleep(i32 noundef 20) #11
  br label %36

23:                                               ; preds = %2
  br i1 %7, label %30, label %24

24:                                               ; preds = %23
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda1004x_disable_tuner_i2c) #10
  %26 = load i32, ptr @debug, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 7, i32 noundef 2, i32 noundef 0) #10
  br label %30

30:                                               ; preds = %28, %24, %23
  %31 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 7) #11
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = and i32 %31, -3
  %35 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 7, i32 noundef %34) #11
  br label %36

36:                                               ; preds = %33, %30, %21
  %37 = phi i32 [ %22, %21 ], [ %35, %33 ], [ %31, %30 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda1004x_write_mask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef %1, i32 noundef %2, i32 noundef %3) #10
  br label %9

9:                                                ; preds = %7, %4
  %10 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %0, i32 noundef %1)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = xor i32 %2, -1
  %14 = and i32 %10, %13
  %15 = and i32 %3, 255
  %16 = or i32 %14, %15
  %17 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef %1, i32 noundef %16)
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i32 [ %17, %12 ], [ %10, %9 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda1004x_write_byteI(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  %6 = trunc i32 %1 to i8
  store i8 %6, ptr %4, align 2
  %7 = getelementptr inbounds i8, ptr %4, i32 1
  %8 = trunc i32 %2 to i8
  store i8 %8, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i64 0, ptr %5, align 8
  store i16 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %10, align 8
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.tda1004x_write_byteI, i32 noundef %1, i32 noundef %2) #10
  br label %15

15:                                               ; preds = %13, %3
  %16 = getelementptr inbounds %struct.tda1004x_state, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %5, align 8
  %20 = load ptr, ptr %0, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 1) #11
  %22 = icmp ne i32 %21, 1
  %23 = load i32, ptr @debug, align 4
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %29

26:                                               ; preds = %15
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.tda1004x_write_byteI, i32 noundef %1, i32 noundef %2, i32 noundef %21) #10
  %28 = load i32, ptr @debug, align 4
  br label %29

29:                                               ; preds = %26, %15
  %30 = phi i32 [ %23, %15 ], [ %28, %26 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tda1004x_write_byteI, i32 noundef %1, i32 noundef %2, i32 noundef %21) #10
  br label %34

34:                                               ; preds = %32, %29
  %35 = sext i1 %22 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda1004x_check_upload_ok(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tda1004x_state, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = add i32 %6, 200
  %8 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %0, i32 noundef 6)
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %17, %5
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = sub i32 %7, %12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %22

17:                                               ; preds = %11
  tail call void @msleep(i32 noundef 1) #11
  %18 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %0, i32 noundef 6)
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %11, label %22

21:                                               ; preds = %1
  tail call void @msleep(i32 noundef 100) #11
  br label %22

22:                                               ; preds = %21, %17, %15, %5
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 7, i32 noundef 16, i32 noundef 0) #10
  br label %27

27:                                               ; preds = %25, %22
  %28 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %0, i32 noundef 7) #11
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = and i32 %28, -17
  %32 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 7, i32 noundef %31) #11
  br label %33

33:                                               ; preds = %30, %27
  %34 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 17, i32 noundef 103)
  %35 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %0, i32 noundef 19)
  %36 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %0, i32 noundef 20)
  %37 = and i32 %35, 255
  %38 = icmp ne i32 %37, 103
  %39 = and i32 %36, 255
  %40 = add nsw i32 %39, -47
  %41 = icmp ult i32 %40, -15
  %42 = or i1 %41, %38
  %43 = select i1 %42, ptr @.str.15, ptr @.str.16
  %44 = select i1 %42, i32 -5, i32 0
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %43, i32 noundef %39) #10
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda10045h_set_bandwidth(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  switch i32 %1, label %56 [
    i32 6000000, label %3
    i32 7000000, label %20
    i32 8000000, label %37
  ]

3:                                                ; preds = %2
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda1004x_write_buf, i32 noundef 45, i32 noundef 9) #10
  br label %8

8:                                                ; preds = %6, %3
  br label %9

9:                                                ; preds = %9, %8
  %10 = phi i32 [ %17, %9 ], [ 0, %8 ]
  %11 = add nuw nsw i32 %10, 45
  %12 = getelementptr i8, ptr @tda10045h_set_bandwidth.bandwidth_6mhz, i32 %10
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef %11, i32 noundef %14) #11
  %16 = icmp ne i32 %15, 0
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, 9
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %54, label %9

20:                                               ; preds = %2
  %21 = load i32, ptr @debug, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda1004x_write_buf, i32 noundef 45, i32 noundef 9) #10
  br label %25

25:                                               ; preds = %23, %20
  br label %26

26:                                               ; preds = %26, %25
  %27 = phi i32 [ %34, %26 ], [ 0, %25 ]
  %28 = add nuw nsw i32 %27, 45
  %29 = getelementptr i8, ptr @tda10045h_set_bandwidth.bandwidth_7mhz, i32 %27
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef %28, i32 noundef %31) #11
  %33 = icmp ne i32 %32, 0
  %34 = add nuw nsw i32 %27, 1
  %35 = icmp eq i32 %34, 9
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %54, label %26

37:                                               ; preds = %2
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda1004x_write_buf, i32 noundef 45, i32 noundef 9) #10
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %43, %42
  %44 = phi i32 [ %51, %43 ], [ 0, %42 ]
  %45 = add nuw nsw i32 %44, 45
  %46 = getelementptr i8, ptr @tda10045h_set_bandwidth.bandwidth_8mhz, i32 %44
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef %45, i32 noundef %48) #11
  %50 = icmp ne i32 %49, 0
  %51 = add nuw nsw i32 %44, 1
  %52 = icmp eq i32 %51, 9
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %54, label %43

54:                                               ; preds = %43, %26, %9
  %55 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 56, i32 noundef 0)
  br label %56

56:                                               ; preds = %54, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda1004x_do_upload(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [65 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 8
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(65) %6, i8 0, i32 65, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store i64 0, ptr %7, align 8
  store ptr %6, ptr %9, align 8
  %10 = zext i8 %3 to i32
  %11 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef %10, i32 noundef 0)
  %12 = getelementptr inbounds %struct.tda1004x_state, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %7, align 8
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %18, align 4
  call void %19(ptr noundef %16, i32 noundef 2) #11
  store i8 %4, ptr %6, align 1
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %5
  %22 = getelementptr inbounds i8, ptr %6, i32 1
  br label %23

23:                                               ; preds = %46, %21
  %24 = phi i32 [ 0, %21 ], [ %41, %46 ]
  %25 = sub i32 %2, %24
  %26 = call i32 @llvm.smin.i32(i32 %25, i32 16)
  %27 = getelementptr i8, ptr %1, i32 %24
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr align 1 %27, i32 %26, i1 false)
  %28 = trunc i32 %26 to i16
  %29 = add i16 %28, 1
  store i16 %29, ptr %8, align 4
  %30 = load ptr, ptr %0, align 4
  %31 = call i32 @__i2c_transfer(ptr noundef %30, ptr noundef nonnull %7, i32 noundef 1) #11
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %40, label %33

33:                                               ; preds = %23
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.i2c_lock_operations, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  call void %39(ptr noundef %35, i32 noundef 2) #11
  br label %54

40:                                               ; preds = %23
  %41 = add i32 %26, %24
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.tda1004x_do_upload, i32 noundef %41) #10
  br label %46

46:                                               ; preds = %44, %40
  %47 = icmp eq i32 %41, %2
  br i1 %47, label %48, label %23

48:                                               ; preds = %46, %5
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 4
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.i2c_lock_operations, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  call void %53(ptr noundef %49, i32 noundef 2) #11
  call void @msleep(i32 noundef 100) #11
  br label %54

54:                                               ; preds = %48, %33
  %55 = phi i32 [ -5, %33 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %6) #11
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda10046h_set_bandwidth(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tda1004x_state, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda1004x_config, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -2
  %8 = icmp eq i32 %7, 2
  switch i32 %1, label %140 [
    i32 6000000, label %9
    i32 7000000, label %51
    i32 8000000, label %93
  ]

9:                                                ; preds = %2
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %8, label %29, label %12

12:                                               ; preds = %9
  br i1 %11, label %15, label %13

13:                                               ; preds = %12
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda1004x_write_buf, i32 noundef 49, i32 noundef 5) #10
  br label %15

15:                                               ; preds = %13, %12
  %16 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 49, i32 noundef 123) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 50, i32 noundef 46) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 51, i32 noundef 17) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 52, i32 noundef 240) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 53, i32 noundef 210) #11
  br label %46

29:                                               ; preds = %9
  br i1 %11, label %32, label %30

30:                                               ; preds = %29
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda1004x_write_buf, i32 noundef 49, i32 noundef 5) #10
  br label %32

32:                                               ; preds = %30, %29
  %33 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 49, i32 noundef 112) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 50, i32 noundef 2) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 51, i32 noundef 73) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 52, i32 noundef 36) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 53, i32 noundef 146) #11
  br label %46

46:                                               ; preds = %44, %41, %38, %35, %32, %27, %24, %21, %18, %15
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.tda1004x_config, ptr %47, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %135, label %140

51:                                               ; preds = %2
  %52 = load i32, ptr @debug, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %8, label %71, label %54

54:                                               ; preds = %51
  br i1 %53, label %57, label %55

55:                                               ; preds = %54
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda1004x_write_buf, i32 noundef 49, i32 noundef 5) #10
  br label %57

57:                                               ; preds = %55, %54
  %58 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 49, i32 noundef 106) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %57
  %61 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 50, i32 noundef 2) #11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %60
  %64 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 51, i32 noundef 106) #11
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 52, i32 noundef 67) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 53, i32 noundef 159) #11
  br label %88

71:                                               ; preds = %51
  br i1 %53, label %74, label %72

72:                                               ; preds = %71
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda1004x_write_buf, i32 noundef 49, i32 noundef 5) #10
  br label %74

74:                                               ; preds = %72, %71
  %75 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 49, i32 noundef 96) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 50, i32 noundef 2) #11
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 51, i32 noundef 170) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 52, i32 noundef 170) #11
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 53, i32 noundef 171) #11
  br label %88

88:                                               ; preds = %86, %83, %80, %77, %74, %69, %66, %63, %60, %57
  %89 = load ptr, ptr %3, align 4
  %90 = getelementptr inbounds %struct.tda1004x_config, ptr %89, i32 0, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %135, label %140

93:                                               ; preds = %2
  %94 = load i32, ptr @debug, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %8, label %113, label %96

96:                                               ; preds = %93
  br i1 %95, label %99, label %97

97:                                               ; preds = %96
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda1004x_write_buf, i32 noundef 49, i32 noundef 5) #10
  br label %99

99:                                               ; preds = %97, %96
  %100 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 49, i32 noundef 92) #11
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %99
  %103 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 50, i32 noundef 50) #11
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %102
  %106 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 51, i32 noundef 194) #11
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %105
  %109 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 52, i32 noundef 150) #11
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %108
  %112 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 53, i32 noundef 109) #11
  br label %130

113:                                              ; preds = %93
  br i1 %95, label %116, label %114

114:                                              ; preds = %113
  %115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.tda1004x_write_buf, i32 noundef 49, i32 noundef 5) #10
  br label %116

116:                                              ; preds = %114, %113
  %117 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 49, i32 noundef 84) #11
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 50, i32 noundef 3) #11
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 51, i32 noundef 12) #11
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 52, i32 noundef 48) #11
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 53, i32 noundef 195) #11
  br label %130

130:                                              ; preds = %128, %125, %122, %119, %116, %111, %108, %105, %102, %99
  %131 = load ptr, ptr %3, align 4
  %132 = getelementptr inbounds %struct.tda1004x_config, ptr %131, i32 0, i32 5
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %140

135:                                              ; preds = %130, %88, %46
  %136 = phi i32 [ 10, %46 ], [ 12, %88 ], [ 13, %130 ]
  %137 = phi i32 [ 171, %46 ], [ 0, %88 ], [ 85, %130 ]
  %138 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 77, i32 noundef %136)
  %139 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %0, i32 noundef 78, i32 noundef %137)
  br label %140

140:                                              ; preds = %135, %130, %88, %46, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda10046_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.tda10046_init) #10
  %9 = load ptr, ptr %3, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ %4, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store ptr null, ptr %2, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.tda1004x_state, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tda1004x_config, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr @debug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.tda10046_fwupload) #10
  br label %22

22:                                               ; preds = %20, %17, %10
  %23 = phi i32 [ 0, %10 ], [ 128, %20 ], [ 128, %17 ]
  %24 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %11, i32 noundef 7, i32 noundef %23) #11
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 59, i32 noundef 1, i32 noundef 0) #10
  br label %29

29:                                               ; preds = %27, %22
  %30 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %11, i32 noundef 59) #11
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = and i32 %30, -2
  %34 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %11, i32 noundef 59, i32 noundef %33) #11
  br label %35

35:                                               ; preds = %32, %29
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr inbounds %struct.tda1004x_config, ptr %36, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %35
  %41 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %11, i32 noundef 60, i32 noundef 51) #11
  %42 = load ptr, ptr %12, align 4
  %43 = getelementptr inbounds %struct.tda1004x_config, ptr %42, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 15
  %46 = load i32, ptr @debug, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 61, i32 noundef 15, i32 noundef %45) #10
  br label %50

50:                                               ; preds = %48, %40
  %51 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %11, i32 noundef 61) #11
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = and i32 %51, -16
  %55 = or i32 %54, %45
  %56 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %11, i32 noundef 61, i32 noundef %55) #11
  br label %57

57:                                               ; preds = %53, %50, %35
  tail call void @msleep(i32 noundef 10) #11
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds %struct.tda1004x_state, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.tda1004x_config, ptr %60, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, -2
  %64 = icmp eq i32 %63, 2
  %65 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %58, i32 noundef 45, i32 noundef 240) #11
  %66 = select i1 %64, ptr @.str.35, ptr @.str.34
  %67 = select i1 %64, i32 3, i32 8
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %66) #10
  %69 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %58, i32 noundef 47, i32 noundef %67) #11
  %70 = load ptr, ptr %59, align 4
  %71 = getelementptr inbounds %struct.tda1004x_config, ptr %70, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  %74 = load i32, ptr @debug, align 4
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %73, i32 0, i32 3
  br i1 %75, label %80, label %77

77:                                               ; preds = %57
  %78 = select i1 %73, ptr @.str.36, ptr @.str.37
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %78, ptr noundef nonnull @__func__.tda10046_init_plls) #10
  br label %80

80:                                               ; preds = %77, %57
  %81 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %58, i32 noundef 48, i32 noundef %76) #11
  %82 = select i1 %64, i32 114, i32 103
  %83 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %58, i32 noundef 62, i32 noundef %82) #11
  %84 = load ptr, ptr %59, align 4
  %85 = getelementptr inbounds %struct.tda1004x_config, ptr %84, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = icmp ult i32 %86, 4
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = getelementptr inbounds [4 x i32], ptr @switch.table.tda10046_init, i32 0, i32 %86
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds [4 x i32], ptr @switch.table.tda10046_init.41, i32 0, i32 %86
  %92 = load i32, ptr %91, align 4
  %93 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %58, i32 noundef 77, i32 noundef %90) #11
  %94 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %58, i32 noundef 78, i32 noundef %92) #11
  br label %95

95:                                               ; preds = %88, %80
  tail call fastcc void @tda10046h_set_bandwidth(ptr noundef %58, i32 noundef 8000000) #11
  tail call void @msleep(i32 noundef 120) #11
  %96 = load i32, ptr @debug, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 55, i32 noundef 192, i32 noundef 0) #10
  br label %100

100:                                              ; preds = %98, %95
  %101 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %11, i32 noundef 55) #11
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = and i32 %101, -193
  %105 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %11, i32 noundef 55, i32 noundef %104) #11
  br label %106

106:                                              ; preds = %103, %100
  %107 = tail call fastcc i32 @tda1004x_check_upload_ok(ptr noundef %11) #11
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %139, label %109

109:                                              ; preds = %106
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  %111 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %11, i32 noundef 7, i32 noundef 4) #11
  tail call void @msleep(i32 noundef 300) #11
  %112 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %11, i32 noundef 7, i32 noundef %23) #11
  %113 = tail call fastcc i32 @tda1004x_check_upload_ok(ptr noundef %11) #11
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %139, label %115

115:                                              ; preds = %109
  %116 = load ptr, ptr %12, align 4
  %117 = getelementptr inbounds %struct.tda1004x_config, ptr %116, i32 0, i32 11
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %137, label %120

120:                                              ; preds = %115
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  %122 = load ptr, ptr %12, align 4
  %123 = getelementptr inbounds %struct.tda1004x_config, ptr %122, i32 0, i32 11
  %124 = load ptr, ptr %123, align 4
  %125 = call i32 %124(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.31) #11
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %120
  %128 = load ptr, ptr %12, align 4
  %129 = getelementptr inbounds %struct.tda1004x_config, ptr %128, i32 0, i32 11
  %130 = load ptr, ptr %129, align 4
  %131 = call i32 %130(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.11) #11
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %140

135:                                              ; preds = %127
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #10
  br label %141

137:                                              ; preds = %115
  %138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #10
  br label %140

139:                                              ; preds = %109, %106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %153

140:                                              ; preds = %137, %133
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %151

141:                                              ; preds = %135, %120
  %142 = call fastcc i32 @tda1004x_write_mask(ptr noundef %11, i32 noundef 7, i32 noundef 8, i32 noundef 8) #11
  %143 = load ptr, ptr %2, align 4
  %144 = getelementptr inbounds %struct.firmware, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = load i32, ptr %143, align 4
  %147 = call fastcc i32 @tda1004x_do_upload(ptr noundef %11, ptr noundef %145, i32 noundef %146, i8 noundef zeroext 87, i8 noundef zeroext 88) #11
  %148 = load ptr, ptr %2, align 4
  call void @release_firmware(ptr noundef %148) #11
  %149 = call fastcc i32 @tda1004x_check_upload_ok(ptr noundef %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %141, %140
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %308

153:                                              ; preds = %141, %139
  %154 = load i32, ptr @debug, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 7, i32 noundef 32, i32 noundef 0) #10
  br label %158

158:                                              ; preds = %156, %153
  %159 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 7) #11
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = and i32 %159, -33
  %163 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 7, i32 noundef %162) #11
  br label %164

164:                                              ; preds = %161, %158
  %165 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 1, i32 noundef 135)
  %166 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 22, i32 noundef 136)
  %167 = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.tda1004x_config, ptr %168, i32 0, i32 6
  %170 = load i32, ptr %169, align 4
  switch i32 %170, label %223 [
    i32 0, label %171
    i32 1, label %183
    i32 2, label %195
    i32 3, label %206
  ]

171:                                              ; preds = %164
  %172 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 67, i32 noundef 0)
  %173 = load i32, ptr @debug, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 61, i32 noundef 240, i32 noundef 96) #10
  br label %177

177:                                              ; preds = %175, %171
  %178 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 61) #11
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %223, label %180

180:                                              ; preds = %177
  %181 = and i32 %178, -241
  %182 = or i32 %181, 96
  br label %220

183:                                              ; preds = %164
  %184 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 67, i32 noundef 10)
  %185 = load i32, ptr @debug, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 61, i32 noundef 240, i32 noundef 96) #10
  br label %189

189:                                              ; preds = %187, %183
  %190 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 61) #11
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %223, label %192

192:                                              ; preds = %189
  %193 = and i32 %190, -241
  %194 = or i32 %193, 96
  br label %220

195:                                              ; preds = %164
  %196 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 67, i32 noundef 10)
  %197 = load i32, ptr @debug, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %195
  %200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 61, i32 noundef 240, i32 noundef 0) #10
  br label %201

201:                                              ; preds = %199, %195
  %202 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 61) #11
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %223, label %204

204:                                              ; preds = %201
  %205 = and i32 %202, -241
  br label %220

206:                                              ; preds = %164
  %207 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 67, i32 noundef 2)
  %208 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 68, i32 noundef 112)
  %209 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 69, i32 noundef 8)
  %210 = load i32, ptr @debug, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %206
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 61, i32 noundef 240, i32 noundef 96) #10
  br label %214

214:                                              ; preds = %212, %206
  %215 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 61) #11
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %214
  %218 = and i32 %215, -241
  %219 = or i32 %218, 96
  br label %220

220:                                              ; preds = %217, %204, %192, %180
  %221 = phi i32 [ %219, %217 ], [ %205, %204 ], [ %194, %192 ], [ %182, %180 ]
  %222 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 61, i32 noundef %221) #11
  br label %223

223:                                              ; preds = %220, %214, %201, %189, %177, %164
  %224 = load ptr, ptr %167, align 4
  %225 = getelementptr inbounds %struct.tda1004x_config, ptr %224, i32 0, i32 3
  %226 = load i32, ptr %225, align 4
  %227 = icmp eq i32 %226, 0
  %228 = load i32, ptr @debug, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %227, label %230, label %258

230:                                              ; preds = %223
  br i1 %229, label %233, label %231

231:                                              ; preds = %230
  %232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 59, i32 noundef 192, i32 noundef 64) #10
  br label %233

233:                                              ; preds = %231, %230
  %234 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 59) #11
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %233
  %237 = and i32 %234, -193
  %238 = or i32 %237, 64
  %239 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 59, i32 noundef %238) #11
  br label %240

240:                                              ; preds = %236, %233
  %241 = load ptr, ptr %167, align 4
  %242 = getelementptr inbounds %struct.tda1004x_config, ptr %241, i32 0, i32 2
  %243 = load i8, ptr %242, align 2
  %244 = zext i8 %243 to i32
  %245 = shl nuw nsw i32 %244, 7
  %246 = load i32, ptr @debug, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %240
  %249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 58, i32 noundef 128, i32 noundef %245) #10
  br label %250

250:                                              ; preds = %248, %240
  %251 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 58) #11
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %286, label %253

253:                                              ; preds = %250
  %254 = and i32 %251, -129
  %255 = and i32 %245, 128
  %256 = or i32 %254, %255
  %257 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 58, i32 noundef %256) #11
  br label %286

258:                                              ; preds = %223
  br i1 %229, label %261, label %259

259:                                              ; preds = %258
  %260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 59, i32 noundef 192, i32 noundef 128) #10
  br label %261

261:                                              ; preds = %259, %258
  %262 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 59) #11
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %261
  %265 = and i32 %262, -193
  %266 = or i32 %265, 128
  %267 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 59, i32 noundef %266) #11
  br label %268

268:                                              ; preds = %264, %261
  %269 = load ptr, ptr %167, align 4
  %270 = getelementptr inbounds %struct.tda1004x_config, ptr %269, i32 0, i32 2
  %271 = load i8, ptr %270, align 2
  %272 = zext i8 %271 to i32
  %273 = shl nuw nsw i32 %272, 4
  %274 = load i32, ptr @debug, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %268
  %277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 61, i32 noundef 16, i32 noundef %273) #10
  br label %278

278:                                              ; preds = %276, %268
  %279 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 61) #11
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %278
  %282 = and i32 %279, -17
  %283 = and i32 %273, 240
  %284 = or i32 %282, %283
  %285 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 61, i32 noundef %284) #11
  br label %286

286:                                              ; preds = %281, %278, %253, %250
  %287 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 55, i32 noundef 56)
  %288 = load i32, ptr @debug, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %292, label %290

290:                                              ; preds = %286
  %291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.tda1004x_write_mask, i32 noundef 59, i32 noundef 62, i32 noundef 56) #10
  br label %292

292:                                              ; preds = %290, %286
  %293 = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 59) #11
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %292
  %296 = and i32 %293, -63
  %297 = or i32 %296, 56
  %298 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 59, i32 noundef %297) #11
  br label %299

299:                                              ; preds = %295, %292
  %300 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 71, i32 noundef 0)
  %301 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 72, i32 noundef 255)
  %302 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 73, i32 noundef 0)
  %303 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 74, i32 noundef 255)
  %304 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 70, i32 noundef 18)
  %305 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 79, i32 noundef 26)
  %306 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 30, i32 noundef 7)
  %307 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 31, i32 noundef 192)
  br label %308

308:                                              ; preds = %299, %151
  %309 = phi i32 [ -5, %151 ], [ 0, %299 ]
  ret i32 %309
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

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
