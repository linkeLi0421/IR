; ModuleID = '/llk/IR/drivers/media/dvb-core/dvb_frontend.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dvb_frontend.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_frontend_reinitialise:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_frontend_reinitialise\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_frontend_reinitialise:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_frontend_sleep_until:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_frontend_sleep_until\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_frontend_sleep_until:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_frontend_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_frontend_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_frontend_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_frontend_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_frontend_resume\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_frontend_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_register_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_register_frontend\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_register_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_unregister_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_unregister_frontend\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_unregister_frontend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_frontend_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_frontend_detach\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_frontend_detach:\09\09\09\09\09"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.67 }
%union.anon.67 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.74], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.74 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.75 }>
%union.anon.75 = type { i64 }
%struct.dvb_frontend_private = type { ptr, %struct.dvb_frontend_parameters, %struct.dvb_fe_events, %struct.semaphore, %struct.list_head, %struct.wait_queue_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i32, i32, %union.anon.76 }
%union.anon.76 = type { %struct.dvb_ofdm_parameters }
%struct.dvb_ofdm_parameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_fe_events = type { [8 x %struct.dvb_frontend_event], i32, i32, i32, %struct.wait_queue_head, %struct.mutex }
%struct.dvb_frontend_event = type { i32, %struct.dvb_frontend_parameters }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dtv_properties = type { i32, ptr }
%struct.dtv_property = type { i32, [3 x i32], %union.anon.77, i32 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { [32 x i8], i32, [3 x i32], ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dvb_frontend_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_frontend_debug = internal constant [15 x i8] c"frontend_debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_frontend_debug = internal global i32 0, align 4
@__param_frontend_debug = internal constant %struct.kernel_param { ptr @__param_str_frontend_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.67 { ptr @dvb_frontend_debug } }, section "__param", align 4
@__UNIQUE_ID_frontend_debugtype251 = internal constant [28 x i8] c"parmtype=frontend_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_frontend_debug252 = internal constant [71 x i8] c"parm=frontend_debug:Turn on/off frontend core debugging (default:off).\00", section ".modinfo", align 1
@__param_str_dvb_shutdown_timeout = internal constant [21 x i8] c"dvb_shutdown_timeout\00", align 1
@dvb_shutdown_timeout = internal global i32 0, align 4
@__param_dvb_shutdown_timeout = internal constant %struct.kernel_param { ptr @__param_str_dvb_shutdown_timeout, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.67 { ptr @dvb_shutdown_timeout } }, section "__param", align 4
@__UNIQUE_ID_dvb_shutdown_timeouttype253 = internal constant [34 x i8] c"parmtype=dvb_shutdown_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvb_shutdown_timeout254 = internal constant [99 x i8] c"parm=dvb_shutdown_timeout:wait <shutdown_timeout> seconds after close() before suspending hardware\00", section ".modinfo", align 1
@__param_str_dvb_force_auto_inversion = internal constant [25 x i8] c"dvb_force_auto_inversion\00", align 1
@dvb_force_auto_inversion = internal global i32 0, align 4
@__param_dvb_force_auto_inversion = internal constant %struct.kernel_param { ptr @__param_str_dvb_force_auto_inversion, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.67 { ptr @dvb_force_auto_inversion } }, section "__param", align 4
@__UNIQUE_ID_dvb_force_auto_inversiontype255 = internal constant [38 x i8] c"parmtype=dvb_force_auto_inversion:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvb_force_auto_inversion256 = internal constant [83 x i8] c"parm=dvb_force_auto_inversion:0: normal (default), 1: INVERSION_AUTO forced always\00", section ".modinfo", align 1
@__param_str_dvb_override_tune_delay = internal constant [24 x i8] c"dvb_override_tune_delay\00", align 1
@dvb_override_tune_delay = internal global i32 0, align 4
@__param_dvb_override_tune_delay = internal constant %struct.kernel_param { ptr @__param_str_dvb_override_tune_delay, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.67 { ptr @dvb_override_tune_delay } }, section "__param", align 4
@__UNIQUE_ID_dvb_override_tune_delaytype257 = internal constant [37 x i8] c"parmtype=dvb_override_tune_delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvb_override_tune_delay258 = internal constant [116 x i8] c"parm=dvb_override_tune_delay:0: normal (default), >0 => delay in milliseconds to wait for lock after a tune attempt\00", section ".modinfo", align 1
@__param_str_dvb_powerdown_on_sleep = internal constant [23 x i8] c"dvb_powerdown_on_sleep\00", align 1
@dvb_powerdown_on_sleep = internal global i32 1, align 4
@__param_dvb_powerdown_on_sleep = internal constant %struct.kernel_param { ptr @__param_str_dvb_powerdown_on_sleep, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.67 { ptr @dvb_powerdown_on_sleep } }, section "__param", align 4
@__UNIQUE_ID_dvb_powerdown_on_sleeptype259 = internal constant [36 x i8] c"parmtype=dvb_powerdown_on_sleep:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvb_powerdown_on_sleep260 = internal constant [93 x i8] c"parm=dvb_powerdown_on_sleep:0: do not power down, 1: turn LNB voltage off on sleep (default)\00", section ".modinfo", align 1
@__param_str_dvb_mfe_wait_time = internal constant [18 x i8] c"dvb_mfe_wait_time\00", align 1
@dvb_mfe_wait_time = internal global i32 5, align 4
@__param_dvb_mfe_wait_time = internal constant %struct.kernel_param { ptr @__param_str_dvb_mfe_wait_time, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.67 { ptr @dvb_mfe_wait_time } }, section "__param", align 4
@__UNIQUE_ID_dvb_mfe_wait_timetype261 = internal constant [31 x i8] c"parmtype=dvb_mfe_wait_time:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dvb_mfe_wait_time262 = internal constant [127 x i8] c"parm=dvb_mfe_wait_time:Wait up to <mfe_wait_time> seconds on open() for multi-frontend to become available (default:5 seconds)\00", section ".modinfo", align 1
@__kstrtab_dvb_frontend_reinitialise = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_frontend_reinitialise = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_frontend_reinitialise = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_frontend_reinitialise to i32), ptr @__kstrtab_dvb_frontend_reinitialise, ptr @__kstrtabns_dvb_frontend_reinitialise }, section "___ksymtab+dvb_frontend_reinitialise", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_dvb_frontend_sleep_until = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_frontend_sleep_until = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_frontend_sleep_until = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_frontend_sleep_until to i32), ptr @__kstrtab_dvb_frontend_sleep_until, ptr @__kstrtabns_dvb_frontend_sleep_until }, section "___ksymtab+dvb_frontend_sleep_until", align 4
@__kstrtab_dvb_frontend_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_frontend_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_frontend_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_frontend_suspend to i32), ptr @__kstrtab_dvb_frontend_suspend, ptr @__kstrtabns_dvb_frontend_suspend }, section "___ksymtab+dvb_frontend_suspend", align 4
@__kstrtab_dvb_frontend_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_frontend_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_frontend_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_frontend_resume to i32), ptr @__kstrtab_dvb_frontend_resume, ptr @__kstrtabns_dvb_frontend_resume }, section "___ksymtab+dvb_frontend_resume", align 4
@dvb_frontend_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_frontend_poll, ptr @dvb_frontend_ioctl, ptr null, ptr null, i32 0, ptr @dvb_frontend_open, ptr null, ptr @dvb_frontend_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.dvb_register_frontend.dvbdev_template = private unnamed_addr constant %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_frontend_fops, ptr null, i32 0, i32 0, i32 0, i32 -2, i32 1, i32 -1, %struct.wait_queue_head zeroinitializer, ptr null, ptr null }, align 4
@frontend_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @frontend_mutex, i64 12), ptr getelementptr (i8, ptr @frontend_mutex, i64 12) } }, align 4
@dvb_register_frontend.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [20 x i8] c"&fepriv->wait_queue\00", align 1
@dvb_register_frontend.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"&fepriv->events.wait_queue\00", align 1
@dvb_register_frontend.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"&fepriv->events.mtx\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"DVB: registering adapter %i frontend %i (%s)...\0A\00", align 1
@__kstrtab_dvb_register_frontend = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_register_frontend = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_register_frontend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_register_frontend to i32), ptr @__kstrtab_dvb_register_frontend, ptr @__kstrtabns_dvb_register_frontend }, section "___ksymtab+dvb_register_frontend", align 4
@__kstrtab_dvb_unregister_frontend = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_unregister_frontend = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_unregister_frontend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_unregister_frontend to i32), ptr @__kstrtab_dvb_unregister_frontend, ptr @__kstrtabns_dvb_unregister_frontend }, section "___ksymtab+dvb_unregister_frontend", align 4
@__kstrtab_dvb_frontend_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_frontend_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_frontend_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_frontend_detach to i32), ptr @__kstrtab_dvb_frontend_detach, ptr @__kstrtabns_dvb_frontend_detach }, section "___ksymtab+dvb_frontend_detach", align 4
@.str.6 = private unnamed_addr constant [67 x i8] c"%s: doesn't know how to handle a DVBv3 call to delivery system %i\0A\00", align 1
@__func__.dvb_frontend_handle_ioctl = private unnamed_addr constant [26 x i8] c"dvb_frontend_handle_ioctl\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"\017dvb_frontend: %s: switch command: 0x%04lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"\017dvb_frontend: %s: (adapter %d): switch delay (should be 32k followed by all 8k)\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"\016dvb_frontend: %d: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"%s: SET cmd 0x%08x undefined\0A\00", align 1
@__func__.dtv_property_process_set = private unnamed_addr constant [25 x i8] c"dtv_property_process_set\00", align 1
@__func__.dtv_property_legacy_params_sync = private unnamed_addr constant [32 x i8] c"dtv_property_legacy_params_sync\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"DVB: adapter %i frontend %u frequency limits undefined - fix the driver\0A\00", align 1
@__func__.dtv_property_cache_sync = private unnamed_addr constant [24 x i8] c"dtv_property_cache_sync\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"DVB: adapter %i frontend %i frequency %u out of range (%u..%u)\0A\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"DVB: adapter %i frontend %i symbol rate %u out of range (%u..%u)\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"kdvb-ad-%i-fe-%i\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"dvb_frontend_start: failed to start kthread (%d)\0A\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@dvb_frontend_swzigzag.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.18 = private unnamed_addr constant [76 x i8] c"Frontend requested software zigzag, but didn't set the frequency step size\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.20 = private unnamed_addr constant [50 x i8] c"dvb_frontend_stop: warning: thread %p won't exit\0A\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_dvb_force_auto_inversion256, ptr @__UNIQUE_ID_dvb_force_auto_inversiontype255, ptr @__UNIQUE_ID_dvb_mfe_wait_time262, ptr @__UNIQUE_ID_dvb_mfe_wait_timetype261, ptr @__UNIQUE_ID_dvb_override_tune_delay258, ptr @__UNIQUE_ID_dvb_override_tune_delaytype257, ptr @__UNIQUE_ID_dvb_powerdown_on_sleep260, ptr @__UNIQUE_ID_dvb_powerdown_on_sleeptype259, ptr @__UNIQUE_ID_dvb_shutdown_timeout254, ptr @__UNIQUE_ID_dvb_shutdown_timeouttype253, ptr @__UNIQUE_ID_frontend_debug252, ptr @__UNIQUE_ID_frontend_debugtype251, ptr @__ksymtab_dvb_frontend_detach, ptr @__ksymtab_dvb_frontend_reinitialise, ptr @__ksymtab_dvb_frontend_resume, ptr @__ksymtab_dvb_frontend_sleep_until, ptr @__ksymtab_dvb_frontend_suspend, ptr @__ksymtab_dvb_register_frontend, ptr @__ksymtab_dvb_unregister_frontend, ptr @__param_dvb_force_auto_inversion, ptr @__param_dvb_mfe_wait_time, ptr @__param_dvb_override_tune_delay, ptr @__param_dvb_powerdown_on_sleep, ptr @__param_dvb_shutdown_timeout, ptr @__param_frontend_debug], section "llvm.metadata"
@switch.table.dvb_frontend_handle_ioctl = private unnamed_addr constant [18 x i32] [i32 1, i32 3, i32 2, i32 0, i32 0, i32 0, i32 1, i32 2, i32 0, i32 1, i32 3, i32 3, i32 2, i32 1, i32 1, i32 2, i32 0, i32 1], align 4
@switch.table.dvb_frontend_handle_ioctl.21 = private unnamed_addr constant [18 x i8] c"\01\02\03\04\05\06\02\08\09\02\0B\0C\0D\02\02\10\11\12", align 1
@switch.table.dvb_frontend_handle_ioctl.22 = private unnamed_addr constant [7 x i32] [i32 8000000, i32 7000000, i32 6000000, i32 0, i32 5000000, i32 10000000, i32 1712000], align 4
@switch.table.dvbv5_set_delivery_system.29 = private unnamed_addr constant [18 x i32] [i32 2, i32 4, i32 3, i32 1, i32 1, i32 1, i32 0, i32 3, i32 1, i32 0, i32 4, i32 4, i32 3, i32 0, i32 0, i32 3, i32 1, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_frontend_reinitialise(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_private, ptr %3, i32 0, i32 12
  store i32 1, ptr %4, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 8
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %7, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_frontend_sleep_until(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = load i64, ptr %0, align 8
  %4 = zext i32 %1 to i64
  %5 = mul nuw nsw i64 %4, 1000
  %6 = add i64 %3, %5
  store i64 %6, ptr %0, align 8
  %7 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  %8 = load i64, ptr %0, align 8
  %9 = sub i64 %7, %8
  %10 = tail call i64 @llvm.abs.i64(i64 %9, i1 false) #10
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %10, i32 0) #11, !srcloc !8
  %12 = extractvalue { i64, i32 } %11, 0
  %13 = extractvalue { i64, i32 } %11, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %10, i64 %12, i32 %13) #11, !srcloc !9
  %15 = extractvalue { i64, i32 } %14, 0
  %16 = icmp slt i64 %9, 0
  %17 = lshr i64 %15, 9
  %18 = sub nsw i64 0, %17
  %19 = select i1 %16, i64 %18, i64 %17
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %20, 2500
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = add nsw i32 %20, -1500
  %24 = udiv i32 %23, 1000
  tail call void @msleep(i32 noundef %24) #10
  %25 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  %26 = load i64, ptr %0, align 8
  %27 = sub i64 %25, %26
  %28 = tail call i64 @llvm.abs.i64(i64 %27, i1 false) #10
  %29 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %28, i32 0) #11, !srcloc !8
  %30 = extractvalue { i64, i32 } %29, 0
  %31 = extractvalue { i64, i32 } %29, 1
  %32 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %28, i64 %30, i32 %31) #11, !srcloc !9
  %33 = extractvalue { i64, i32 } %32, 0
  %34 = icmp slt i64 %27, 0
  %35 = lshr i64 %33, 9
  %36 = sub nsw i64 0, %35
  %37 = select i1 %34, i64 %36, i64 %35
  %38 = trunc i64 %37 to i32
  br label %39

39:                                               ; preds = %22, %2
  %40 = phi i32 [ %38, %22 ], [ %20, %2 ]
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %43(i32 noundef %40) #10
  br label %44

44:                                               ; preds = %42, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_frontend_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %3, %1 ], [ %7, %5 ]
  %11 = tail call i32 %10(ptr noundef %0) #10
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ 0, %5 ], [ %11, %9 ]
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %12
  %22 = phi ptr [ %15, %12 ], [ %19, %17 ]
  %23 = tail call i32 %22(ptr noundef %0) #10
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %13, %17 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_frontend_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 11
  store i32 3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %6, %1 ], [ %10, %8 ]
  %14 = tail call i32 %13(ptr noundef %0) #10
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ 0, %8 ], [ %14, %12 ]
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %15
  %25 = phi ptr [ %18, %15 ], [ %22, %20 ]
  %26 = tail call i32 %25(ptr noundef %0) #10
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %16, %20 ], [ %26, %24 ]
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 24
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.dvb_frontend_private, ptr %3, i32 0, i32 13
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call i32 %30(ptr noundef %0, i32 noundef %34) #10
  br label %38

38:                                               ; preds = %36, %32, %27
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 25
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.dvb_frontend_private, ptr %3, i32 0, i32 14
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call i32 %40(ptr noundef %0, i32 noundef %44) #10
  br label %48

48:                                               ; preds = %46, %42, %38
  store i32 0, ptr %4, align 4
  %49 = getelementptr inbounds %struct.dvb_frontend_private, ptr %3, i32 0, i32 15
  store i32 2, ptr %49, align 4
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr inbounds %struct.dvb_frontend_private, ptr %50, i32 0, i32 8
  store i32 1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dvb_frontend_private, ptr %50, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %52, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_register_frontend(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.dvb_device, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %3, ptr noundef nonnull align 4 dereferenceable(60) @__const.dvb_register_frontend.dvbdev_template, i32 60, i1 false)
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @frontend_mutex) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 528) #12
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 5
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @mutex_unlock(ptr noundef nonnull @frontend_mutex) #10
  br label %44

12:                                               ; preds = %6
  store volatile i32 1, ptr %1, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #10, !srcloc !10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #10, !srcloc !11
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !12

16:                                               ; preds = %12
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !13

20:                                               ; preds = %16, %12
  %21 = phi i32 [ 2, %12 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %21) #10
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 3
  %24 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 3, i32 2
  store i32 0, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 3, i32 1
  store i32 1, ptr %25, align 8
  store ptr %24, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 3, i32 2, i32 1
  store ptr %24, ptr %26, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef nonnull @dvb_register_frontend.__key) #10
  %28 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 2, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %28, ptr noundef nonnull @.str.2, ptr noundef nonnull @dvb_register_frontend.__key.1) #10
  %29 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 2, i32 5
  tail call void @__mutex_init(ptr noundef %29, ptr noundef nonnull @.str.4, ptr noundef nonnull @dvb_register_frontend.__key.3) #10
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 2
  store ptr %0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 18
  store i32 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.dvb_adapter, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %0, align 4
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.5, i32 noundef %34, i32 noundef %36, ptr noundef %37) #13
  %38 = load ptr, ptr %30, align 4
  %39 = call i32 @dvb_register_device(ptr noundef %38, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef %1, i32 noundef 1, i32 noundef 0) #10
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 1, i32 1
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 15
  store i32 %42, ptr %43, align 4
  call fastcc void @dvb_frontend_clear_cache(ptr noundef %1)
  call void @mutex_unlock(ptr noundef nonnull @frontend_mutex) #10
  br label %44

44:                                               ; preds = %22, %11, %2
  %45 = phi i32 [ 0, %22 ], [ -12, %11 ], [ -512, %2 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #10
  ret i32 %45
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dvb_frontend_clear_cache(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %4 = load i32, ptr %3, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(160) %2, i8 0, i32 160, i1 false)
  store i32 %4, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  store i32 2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  store i32 4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  store i32 4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  store i32 9, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 12
  store i32 9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  store i32 9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 14
  store i32 3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 2
  store i32 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 3
  store i32 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 13
  store i32 2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 18
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 20
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 22
  store i8 7, ptr %17, align 4
  %18 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 0
  %19 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 0, i32 1
  store i32 9, ptr %19, align 4
  %20 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 0, i32 2
  store i32 6, ptr %20, align 4
  store i8 0, ptr %18, align 4
  %21 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 1
  %22 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 1, i32 1
  store i32 9, ptr %22, align 4
  %23 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 1, i32 2
  store i32 6, ptr %23, align 4
  store i8 0, ptr %21, align 4
  %24 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 2
  %25 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 2, i32 1
  store i32 9, ptr %25, align 4
  %26 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 2, i32 2
  store i32 6, ptr %26, align 4
  store i8 0, ptr %24, align 4
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 24
  store i32 -1, ptr %27, align 4
  switch i32 %4, label %35 [
    i32 5, label %28
    i32 6, label %28
    i32 17, label %28
    i32 11, label %30
    i32 9, label %32
  ]

28:                                               ; preds = %1, %1, %1
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  store i32 0, ptr %29, align 4
  store i32 0, ptr %11, align 4
  br label %37

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  store i32 7, ptr %31, align 4
  br label %37

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  store i32 28860000, ptr %33, align 4
  store i32 0, ptr %11, align 4
  store i32 38961000, ptr %34, align 4
  br label %37

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  store i32 6, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %32, %30, %28
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 41
  store i32 -1, ptr %38, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dvb_unregister_frontend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @frontend_mutex) #10
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 1, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %1
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  tail call void @arm_heavy_mb() #10
  %10 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @kthread_stop(ptr noundef nonnull %11) #10
  %15 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 3
  %16 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 3, i32 2
  store i32 0, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 3, i32 1
  store i32 1, ptr %17, align 4
  store ptr %16, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 3, i32 2, i32 1
  store ptr %16, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 15
  store i32 1, ptr %19, align 4
  %20 = load ptr, ptr %10, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dvb_adapter, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.20, ptr noundef nonnull %20) #13
  br label %27

27:                                               ; preds = %22, %13, %9
  %28 = load ptr, ptr %3, align 4
  tail call void @dvb_remove_device(ptr noundef %28) #10
  tail call void @mutex_unlock(ptr noundef nonnull @frontend_mutex) #10
  tail call fastcc void @dvb_frontend_put(ptr noundef %0)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_remove_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dvb_frontend_put(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void %3(ptr noundef %0) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #10, !srcloc !16
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %34, label %16, !prof !13

16:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #10
  br label %34

17:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %18 = load ptr, ptr %7, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 4
  tail call void @dvb_free_device(ptr noundef %21) #10
  br label %22

22:                                               ; preds = %20, %17
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void %24(ptr noundef %0) #10
  tail call void @symbol_put_addr(ptr noundef nonnull %24) #10
  br label %27

27:                                               ; preds = %26, %22
  tail call void @kfree(ptr noundef %18) #10
  br label %34

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void %30(ptr noundef %0) #10
  tail call void @symbol_put_addr(ptr noundef nonnull %30) #10
  br label %33

33:                                               ; preds = %32, %28
  tail call void @kfree(ptr noundef null) #10
  br label %34

34:                                               ; preds = %33, %27, %16, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dvb_frontend_detach(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void %3(ptr noundef %0) #10
  tail call void @symbol_put_addr(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %0) #10
  tail call void @symbol_put_addr(ptr noundef nonnull %8) #10
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %0) #10
  tail call void @symbol_put_addr(ptr noundef nonnull %13) #10
  br label %16

16:                                               ; preds = %15, %11
  tail call fastcc void @dvb_frontend_put(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_frontend_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 2, i32 4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %1, align 4
  %13 = icmp ne ptr %12, null
  %14 = icmp ne ptr %9, null
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void %12(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %1) #10
  br label %17

17:                                               ; preds = %16, %11, %2
  %18 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 2, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 2, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  %23 = select i1 %22, i32 0, i32 67
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_frontend_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @dvb_usercopy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @dvb_frontend_do_ioctl) #10
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -19, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_frontend_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %193, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dvb_adapter, ptr %10, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %74, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dvb_adapter, ptr %10, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.dvb_adapter, ptr %10, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %73, label %23

23:                                               ; preds = %18
  %24 = icmp eq ptr %21, %4
  br i1 %24, label %74, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.dvb_device, ptr %21, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr @dvb_mfe_wait_time, align 4
  %31 = shl i32 %30, 1
  tail call void @mutex_unlock(ptr noundef %19) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.dvb_device, ptr %21, i32 0, i32 8
  %35 = getelementptr inbounds %struct.dvb_frontend_private, ptr %29, i32 0, i32 6
  br label %36

36:                                               ; preds = %56, %33
  %37 = phi i32 [ %31, %33 ], [ %38, %56 ]
  %38 = add i32 %37, -1
  %39 = load i32, ptr %34, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load ptr, ptr %35, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %41, %36
  %45 = tail call i32 @msleep_interruptible(i32 noundef 500) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = tail call ptr @llvm.thread.pointer() #10
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 256
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %193, !prof !13

52:                                               ; preds = %47
  %53 = load volatile i32, ptr %48, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %193

56:                                               ; preds = %52, %44
  %57 = icmp eq i32 %38, 0
  br i1 %57, label %58, label %36

58:                                               ; preds = %56, %41, %25
  tail call void @mutex_lock(ptr noundef %19) #10
  %59 = load ptr, ptr %20, align 4
  %60 = icmp eq ptr %59, %4
  br i1 %60, label %74, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.dvb_device, ptr %59, i32 0, i32 8
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %190

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.dvb_device, ptr %59, i32 0, i32 11
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dvb_frontend, ptr %67, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.dvb_frontend_private, ptr %69, i32 0, i32 6
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %190

73:                                               ; preds = %65, %18
  store ptr %4, ptr %20, align 4
  br label %74

74:                                               ; preds = %73, %58, %23, %14
  %75 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 8
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 1, i32 29
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = tail call i32 %80(ptr noundef %6, i32 noundef 1) #10
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %184, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 12
  store i32 1, ptr %86, align 4
  br label %87

87:                                               ; preds = %85, %78, %74
  %88 = tail call i32 @dvb_generic_open(ptr noundef %0, ptr noundef %1) #10
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %174, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 3
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %155, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 10
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, -2
  store i32 %98, ptr %96, align 4
  %99 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 13
  store i32 -1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 14
  store i32 -1, ptr %100, align 4
  %101 = load ptr, ptr %7, align 4
  %102 = getelementptr inbounds %struct.dvb_frontend_private, ptr %101, i32 0, i32 6
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %124, label %105

105:                                              ; preds = %95
  %106 = load i32, ptr %11, align 4
  switch i32 %106, label %107 [
    i32 0, label %152
    i32 2, label %108
  ]

107:                                              ; preds = %105
  store i32 1, ptr %11, align 4
  br label %108

108:                                              ; preds = %107, %105
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  tail call void @arm_heavy_mb() #10
  %109 = load ptr, ptr %102, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %124, label %111

111:                                              ; preds = %108
  %112 = tail call i32 @kthread_stop(ptr noundef nonnull %109) #10
  %113 = getelementptr inbounds %struct.dvb_frontend_private, ptr %101, i32 0, i32 3
  %114 = getelementptr inbounds %struct.dvb_frontend_private, ptr %101, i32 0, i32 3, i32 2
  store i32 0, ptr %113, align 4
  %115 = getelementptr inbounds %struct.dvb_frontend_private, ptr %101, i32 0, i32 3, i32 1
  store i32 1, ptr %115, align 4
  store ptr %114, ptr %114, align 4
  %116 = getelementptr inbounds %struct.dvb_frontend_private, ptr %101, i32 0, i32 3, i32 2, i32 1
  store ptr %114, ptr %116, align 4
  %117 = getelementptr inbounds %struct.dvb_frontend_private, ptr %101, i32 0, i32 15
  store i32 1, ptr %117, align 4
  %118 = load ptr, ptr %102, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %111
  %121 = load ptr, ptr %9, align 4
  %122 = getelementptr inbounds %struct.dvb_adapter, ptr %121, i32 0, i32 6
  %123 = load ptr, ptr %122, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %123, ptr noundef nonnull @.str.20, ptr noundef nonnull %118) #13
  br label %124

124:                                              ; preds = %120, %111, %108, %95
  %125 = tail call ptr @llvm.thread.pointer() #10
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %126, 256
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %171, !prof !13

129:                                              ; preds = %124
  %130 = load volatile i32, ptr %125, align 4
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %171

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.dvb_frontend_private, ptr %101, i32 0, i32 3
  %135 = tail call i32 @down_interruptible(ptr noundef %134) #10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %171

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.dvb_frontend_private, ptr %101, i32 0, i32 15
  store i32 1, ptr %138, align 4
  store i32 0, ptr %11, align 4
  store ptr null, ptr %102, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  tail call void @arm_heavy_mb() #10
  %139 = load ptr, ptr %9, align 4
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 10
  %142 = load i32, ptr %141, align 4
  %143 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @dvb_frontend_thread, ptr noundef %6, i32 noundef -1, ptr noundef nonnull @.str.16, i32 noundef %140, i32 noundef %142) #10
  %144 = icmp ugt ptr %143, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %147, label %145

145:                                              ; preds = %137
  %146 = tail call i32 @wake_up_process(ptr noundef %143) #10
  store ptr %143, ptr %102, align 4
  br label %152

147:                                              ; preds = %137
  %148 = ptrtoint ptr %143 to i32
  %149 = load ptr, ptr %9, align 4
  %150 = getelementptr inbounds %struct.dvb_adapter, ptr %149, i32 0, i32 6
  %151 = load ptr, ptr %150, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.17, i32 noundef %148) #13
  tail call void @up(ptr noundef %134) #10
  br label %171

152:                                              ; preds = %145, %105
  %153 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 2, i32 1
  store i32 0, ptr %153, align 4
  %154 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 2, i32 2
  store i32 0, ptr %154, align 4
  br label %155

155:                                              ; preds = %152, %90
  %156 = phi i32 [ 0, %152 ], [ %88, %90 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #10, !srcloc !10
  %157 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #10, !srcloc !11
  %158 = extractvalue { i32, i32, i32 } %157, 0
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %164, label %160, !prof !12

160:                                              ; preds = %155
  %161 = add i32 %158, 1
  %162 = or i32 %161, %158
  %163 = icmp sgt i32 %162, -1
  br i1 %163, label %166, label %164, !prof !13

164:                                              ; preds = %160, %155
  %165 = phi i32 [ 2, %155 ], [ 1, %160 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %165) #10
  br label %166

166:                                              ; preds = %164, %160
  %167 = load i32, ptr %15, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %193, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.dvb_adapter, ptr %10, i32 0, i32 10
  br label %190

171:                                              ; preds = %147, %133, %129, %124
  %172 = phi i32 [ %148, %147 ], [ -4, %129 ], [ -4, %133 ], [ -4, %124 ]
  %173 = tail call i32 @dvb_generic_release(ptr noundef %0, ptr noundef %1) #10
  br label %174

174:                                              ; preds = %171, %87
  %175 = phi i32 [ %88, %87 ], [ %172, %171 ]
  %176 = load i32, ptr %75, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 1, i32 29
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = tail call i32 %180(ptr noundef %6, i32 noundef 0) #10
  br label %184

184:                                              ; preds = %182, %178, %174, %82
  %185 = phi i32 [ %83, %82 ], [ %175, %182 ], [ %175, %178 ], [ %175, %174 ]
  %186 = load i32, ptr %15, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.dvb_adapter, ptr %10, i32 0, i32 10
  br label %190

190:                                              ; preds = %188, %169, %65, %61
  %191 = phi ptr [ %189, %188 ], [ %170, %169 ], [ %19, %65 ], [ %19, %61 ]
  %192 = phi i32 [ %185, %188 ], [ %156, %169 ], [ -16, %65 ], [ -16, %61 ]
  tail call void @mutex_unlock(ptr noundef %191) #10
  br label %193

193:                                              ; preds = %190, %184, %166, %52, %47, %2
  %194 = phi i32 [ -19, %2 ], [ %156, %166 ], [ %185, %184 ], [ %192, %190 ], [ -4, %52 ], [ -4, %47 ]
  ret i32 %194
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_frontend_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 7
  store i32 %14, ptr %15, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  br label %16

16:                                               ; preds = %13, %2
  %17 = tail call i32 @dvb_generic_release(ptr noundef %0, ptr noundef %1) #10
  %18 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.dvb_frontend_private, ptr %8, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %22, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.dvb_device, ptr %4, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %27, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %28

28:                                               ; preds = %26, %21
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 1, i32 29
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef %6, i32 noundef 0) #10
  br label %34

34:                                               ; preds = %32, %28, %16
  tail call fastcc void @dvb_frontend_put(ptr noundef %6)
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usercopy(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_frontend_do_ioctl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dvb_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend_private, ptr %9, i32 0, i32 3
  %11 = tail call i32 @down_interruptible(ptr noundef %10) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = and i32 %1, -1073741824
  %24 = icmp eq i32 %23, -2147483648
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  switch i32 %1, label %26 [
    i32 -2144833714, label %28
    i32 -2146668736, label %28
  ]

26:                                               ; preds = %25, %17
  %27 = tail call fastcc i32 @dvb_frontend_handle_ioctl(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  br label %28

28:                                               ; preds = %26, %25, %25, %22, %13
  %29 = phi i32 [ %27, %26 ], [ -19, %13 ], [ -1, %25 ], [ -1, %25 ], [ -1, %22 ]
  tail call void @up(ptr noundef %10) #10
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi i32 [ -512, %3 ], [ %29, %28 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_frontend_handle_ioctl(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.dtv_frontend_properties, align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = alloca %struct.dtv_frontend_properties, align 4
  %7 = alloca i64, align 8
  %8 = alloca [10 x i64], align 8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.dvb_device, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8
  switch i32 %1, label %1076 [
    i32 1074294610, label %16
    i32 -2146930861, label %161
    i32 -2136445123, label %563
    i32 -2147193019, label %669
    i32 28478, label %679
    i32 1074229055, label %687
    i32 28481, label %699
    i32 28482, label %708
    i32 28483, label %719
    i32 -2146668736, label %730
    i32 28484, label %736
    i32 28497, label %743
    i32 28496, label %746
    i32 -2147193018, label %832
    i32 -2147324089, label %842
    i32 -2147324088, label %852
    i32 -2147193015, label %862
    i32 1076129612, label %872
    i32 -2144833714, label %1018
    i32 -2145095859, label %1064
  ]

16:                                               ; preds = %3
  %17 = load i32, ptr %2, align 4
  %18 = add i32 %17, -65
  %19 = icmp ult i32 %18, -64
  br i1 %19, label %1076, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dtv_properties, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = mul nuw nsw i32 %17, 72
  %24 = tail call ptr @memdup_user(ptr noundef %22, i32 noundef %23) #10
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %70, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %2, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %160, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 2
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 41
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 30
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 33
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 27
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 25
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 24
  %37 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 2, i32 3
  %38 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 2
  %39 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 2, i32 2
  %40 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 2, i32 1
  %41 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 1, i32 3
  %42 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 1
  %43 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 1, i32 2
  %44 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 1, i32 1
  %45 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 0, i32 3
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23
  %47 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 0, i32 2
  %48 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 0, i32 1
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 22
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 21
  %51 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 20
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 19
  %53 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 18
  %54 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 17
  %55 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 16
  %56 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 9
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 6
  %58 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 8
  %59 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 12
  %60 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 11
  %61 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 3
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 2
  %63 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 14
  %64 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 13
  %65 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 5
  %66 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 10
  %67 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 4
  %68 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 7
  %69 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 1
  br label %72

70:                                               ; preds = %20
  %71 = ptrtoint ptr %24 to i32
  br label %1076

72:                                               ; preds = %156, %29
  %73 = phi i32 [ 0, %29 ], [ %157, %156 ]
  %74 = getelementptr %struct.dtv_property, ptr %24, i32 %73
  %75 = load i32, ptr %74, align 1
  %76 = getelementptr %struct.dtv_property, ptr %24, i32 %73, i32 2
  %77 = load i32, ptr %76, align 1
  %78 = add i32 %75, -71
  %79 = icmp ult i32 %78, -70
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load ptr, ptr %30, align 4
  %82 = getelementptr inbounds %struct.dvb_adapter, ptr %81, i32 0, i32 6
  %83 = load ptr, ptr %82, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dtv_property_process_set, i32 noundef %75) #13
  br label %84

84:                                               ; preds = %80, %72
  switch i32 %75, label %154 [
    i32 2, label %85
    i32 1, label %86
    i32 3, label %88
    i32 4, label %89
    i32 5, label %90
    i32 6, label %91
    i32 8, label %92
    i32 9, label %93
    i32 12, label %94
    i32 13, label %95
    i32 17, label %96
    i32 10, label %98
    i32 11, label %101
    i32 36, label %104
    i32 37, label %105
    i32 38, label %106
    i32 39, label %107
    i32 40, label %108
    i32 60, label %109
    i32 18, label %110
    i32 19, label %112
    i32 20, label %114
    i32 21, label %116
    i32 22, label %117
    i32 41, label %118
    i32 23, label %120
    i32 24, label %121
    i32 25, label %122
    i32 26, label %124
    i32 27, label %126
    i32 28, label %127
    i32 29, label %128
    i32 30, label %130
    i32 31, label %132
    i32 32, label %133
    i32 33, label %134
    i32 34, label %136
    i32 42, label %138
    i32 43, label %138
    i32 70, label %139
    i32 46, label %140
    i32 52, label %142
    i32 61, label %144
  ]

85:                                               ; preds = %84
  tail call fastcc void @dvb_frontend_clear_cache(ptr noundef %12) #10
  br label %156

86:                                               ; preds = %84
  %87 = tail call fastcc i32 @dtv_set_frontend(ptr noundef %12) #10
  br label %151

88:                                               ; preds = %84
  store i32 %77, ptr %15, align 4
  br label %156

89:                                               ; preds = %84
  store i32 %77, ptr %69, align 4
  br label %156

90:                                               ; preds = %84
  store i32 %77, ptr %68, align 4
  br label %156

91:                                               ; preds = %84
  store i32 %77, ptr %67, align 4
  br label %156

92:                                               ; preds = %84
  store i32 %77, ptr %66, align 4
  br label %156

93:                                               ; preds = %84
  store i32 %77, ptr %65, align 4
  br label %156

94:                                               ; preds = %84
  store i32 %77, ptr %64, align 4
  br label %156

95:                                               ; preds = %84
  store i32 %77, ptr %63, align 4
  br label %156

96:                                               ; preds = %84
  %97 = tail call fastcc i32 @dvbv5_set_delivery_system(ptr noundef %12, i32 noundef %77) #10
  br label %151

98:                                               ; preds = %84
  store i32 %77, ptr %62, align 4
  %99 = inttoptr i32 %77 to ptr
  %100 = tail call fastcc i32 @dvb_frontend_handle_ioctl(ptr noundef %0, i32 noundef 28483, ptr noundef %99) #10
  br label %151

101:                                              ; preds = %84
  store i32 %77, ptr %61, align 4
  %102 = inttoptr i32 %77 to ptr
  %103 = tail call fastcc i32 @dvb_frontend_handle_ioctl(ptr noundef %0, i32 noundef 28482, ptr noundef %102) #10
  br label %151

104:                                              ; preds = %84
  store i32 %77, ptr %60, align 4
  br label %156

105:                                              ; preds = %84
  store i32 %77, ptr %59, align 4
  br label %156

106:                                              ; preds = %84
  store i32 %77, ptr %58, align 4
  br label %156

107:                                              ; preds = %84
  store i32 %77, ptr %57, align 4
  br label %156

108:                                              ; preds = %84
  store i32 %77, ptr %56, align 4
  br label %156

109:                                              ; preds = %84
  store i32 %77, ptr %55, align 4
  br label %156

110:                                              ; preds = %84
  %111 = trunc i32 %77 to i8
  store i8 %111, ptr %54, align 4
  br label %156

112:                                              ; preds = %84
  %113 = trunc i32 %77 to i8
  store i8 %113, ptr %53, align 1
  br label %156

114:                                              ; preds = %84
  %115 = trunc i32 %77 to i8
  store i8 %115, ptr %52, align 2
  br label %156

116:                                              ; preds = %84
  store i32 %77, ptr %51, align 4
  br label %156

117:                                              ; preds = %84
  store i32 %77, ptr %50, align 4
  br label %156

118:                                              ; preds = %84
  %119 = trunc i32 %77 to i8
  store i8 %119, ptr %49, align 4
  br label %156

120:                                              ; preds = %84
  store i32 %77, ptr %48, align 4
  br label %156

121:                                              ; preds = %84
  store i32 %77, ptr %47, align 4
  br label %156

122:                                              ; preds = %84
  %123 = trunc i32 %77 to i8
  store i8 %123, ptr %46, align 4
  br label %156

124:                                              ; preds = %84
  %125 = trunc i32 %77 to i8
  store i8 %125, ptr %45, align 4
  br label %156

126:                                              ; preds = %84
  store i32 %77, ptr %44, align 4
  br label %156

127:                                              ; preds = %84
  store i32 %77, ptr %43, align 4
  br label %156

128:                                              ; preds = %84
  %129 = trunc i32 %77 to i8
  store i8 %129, ptr %42, align 4
  br label %156

130:                                              ; preds = %84
  %131 = trunc i32 %77 to i8
  store i8 %131, ptr %41, align 4
  br label %156

132:                                              ; preds = %84
  store i32 %77, ptr %40, align 4
  br label %156

133:                                              ; preds = %84
  store i32 %77, ptr %39, align 4
  br label %156

134:                                              ; preds = %84
  %135 = trunc i32 %77 to i8
  store i8 %135, ptr %38, align 4
  br label %156

136:                                              ; preds = %84
  %137 = trunc i32 %77 to i8
  store i8 %137, ptr %37, align 4
  br label %156

138:                                              ; preds = %84, %84
  store i32 %77, ptr %36, align 4
  br label %156

139:                                              ; preds = %84
  store i32 %77, ptr %35, align 4
  br label %156

140:                                              ; preds = %84
  %141 = trunc i32 %77 to i8
  store i8 %141, ptr %34, align 1
  br label %156

142:                                              ; preds = %84
  %143 = trunc i32 %77 to i8
  store i8 %143, ptr %33, align 1
  br label %156

144:                                              ; preds = %84
  store i32 %77, ptr %31, align 4
  %145 = load ptr, ptr %32, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %156, label %147

147:                                              ; preds = %144
  %148 = tail call i32 %145(ptr noundef %12) #10
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  store i32 -1, ptr %31, align 4
  br label %154

151:                                              ; preds = %101, %98, %96, %86
  %152 = phi i32 [ %103, %101 ], [ %100, %98 ], [ %97, %96 ], [ %87, %86 ]
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151, %150, %84
  %155 = phi i32 [ %148, %150 ], [ %152, %151 ], [ -22, %84 ]
  tail call void @kfree(ptr noundef %24) #10
  br label %1076

156:                                              ; preds = %151, %147, %144, %142, %140, %139, %138, %136, %134, %133, %132, %130, %128, %127, %126, %124, %122, %121, %120, %118, %117, %116, %114, %112, %110, %109, %108, %107, %106, %105, %104, %95, %94, %93, %92, %91, %90, %89, %88, %85
  %157 = add nuw i32 %73, 1
  %158 = load i32, ptr %2, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %72, label %160

160:                                              ; preds = %156, %26
  tail call void @kfree(ptr noundef %24) #10
  br label %1076

161:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %6) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(456) %6, ptr noundef align 4 dereferenceable(456) %15, i32 456, i1 false) #10
  %162 = load i32, ptr %2, align 4
  %163 = add i32 %162, -65
  %164 = icmp ult i32 %163, -64
  br i1 %164, label %561, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.dtv_properties, ptr %2, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = mul nuw nsw i32 %162, 72
  %169 = tail call ptr @memdup_user(ptr noundef %167, i32 noundef %168) #10
  %170 = icmp ugt ptr %169, inttoptr (i32 -4096 to ptr)
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = ptrtoint ptr %169 to i32
  br label %561

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 15
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %184, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 14
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = call i32 %179(ptr noundef %12, ptr noundef nonnull %6) #10
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %559, label %184, !prof !12

184:                                              ; preds = %181, %177, %173
  %185 = load i32, ptr %2, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %542, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 49
  %189 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 48
  %190 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 47
  %191 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 46
  %192 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 45
  %193 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 44
  %194 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 43
  %195 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 42
  %196 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 41
  %197 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 40
  %198 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 39
  %199 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 38
  %200 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 37
  %201 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 36
  %202 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 35
  %203 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 34
  %204 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 33
  %205 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 32
  %206 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 31
  %207 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 30
  %208 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 29
  %209 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 28
  %210 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 27
  %211 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 26
  %212 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 25
  %213 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 24
  %214 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 23, i32 2, i32 3
  %215 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 23, i32 2
  %216 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 23, i32 2, i32 2
  %217 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 23, i32 2, i32 1
  %218 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 23, i32 1, i32 3
  %219 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 23, i32 1
  %220 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 23, i32 1, i32 2
  %221 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 23, i32 1, i32 1
  %222 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 23, i32 0, i32 3
  %223 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 23
  %224 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 23, i32 0, i32 2
  %225 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 23, i32 0, i32 1
  %226 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 22
  %227 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 21
  %228 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 20
  %229 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 19
  %230 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 18
  %231 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 17
  %232 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 16
  %233 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 9
  %234 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 6
  %235 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 8
  %236 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 12
  %237 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 11
  %238 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 3
  %239 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 2
  %240 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 15
  %241 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 14
  %242 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 13
  %243 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 5
  %244 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 10
  %245 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 4
  %246 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 7
  %247 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %6, i32 0, i32 1
  %248 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 0
  %249 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 1
  %250 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 2
  %251 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 3
  %252 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 4
  %253 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 5
  %254 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 6
  %255 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 7
  br label %256

256:                                              ; preds = %530, %187
  %257 = phi i32 [ 0, %187 ], [ %531, %530 ]
  %258 = getelementptr %struct.dtv_property, ptr %169, i32 %257
  %259 = load i32, ptr %258, align 1
  switch i32 %259, label %559 [
    i32 44, label %260
    i32 3, label %296
    i32 4, label %299
    i32 5, label %302
    i32 6, label %305
    i32 8, label %308
    i32 9, label %311
    i32 12, label %314
    i32 13, label %317
    i32 17, label %320
    i32 10, label %323
    i32 11, label %326
    i32 35, label %329
    i32 36, label %331
    i32 37, label %334
    i32 38, label %337
    i32 39, label %340
    i32 40, label %343
    i32 60, label %346
    i32 18, label %349
    i32 19, label %353
    i32 20, label %357
    i32 21, label %361
    i32 22, label %364
    i32 41, label %367
    i32 23, label %371
    i32 24, label %374
    i32 25, label %377
    i32 26, label %381
    i32 27, label %385
    i32 28, label %388
    i32 29, label %391
    i32 30, label %395
    i32 31, label %399
    i32 32, label %402
    i32 33, label %405
    i32 34, label %409
    i32 42, label %413
    i32 43, label %413
    i32 70, label %416
    i32 45, label %419
    i32 46, label %423
    i32 47, label %427
    i32 48, label %431
    i32 49, label %435
    i32 50, label %439
    i32 51, label %443
    i32 52, label %447
    i32 53, label %451
    i32 54, label %455
    i32 55, label %459
    i32 56, label %463
    i32 57, label %467
    i32 58, label %471
    i32 59, label %475
    i32 61, label %479
    i32 62, label %482
    i32 63, label %488
    i32 64, label %494
    i32 65, label %500
    i32 66, label %506
    i32 67, label %512
    i32 68, label %518
    i32 69, label %524
  ]

260:                                              ; preds = %256
  %261 = load i8, ptr %248, align 1
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %293, label %263

263:                                              ; preds = %260
  %264 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i8 %261, ptr %264, align 1
  %265 = load i8, ptr %249, align 1
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %293, label %267

267:                                              ; preds = %263
  %268 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 0, i32 1
  store i8 %265, ptr %268, align 1
  %269 = load i8, ptr %250, align 1
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %293, label %271

271:                                              ; preds = %267
  %272 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 0, i32 2
  store i8 %269, ptr %272, align 1
  %273 = load i8, ptr %251, align 1
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %293, label %275

275:                                              ; preds = %271
  %276 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 0, i32 3
  store i8 %273, ptr %276, align 1
  %277 = load i8, ptr %252, align 1
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %293, label %279

279:                                              ; preds = %275
  %280 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 0, i32 4
  store i8 %277, ptr %280, align 1
  %281 = load i8, ptr %253, align 1
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %293, label %283

283:                                              ; preds = %279
  %284 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 0, i32 5
  store i8 %281, ptr %284, align 1
  %285 = load i8, ptr %254, align 1
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %293, label %287

287:                                              ; preds = %283
  %288 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 0, i32 6
  store i8 %285, ptr %288, align 1
  %289 = load i8, ptr %255, align 1
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %287
  %292 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 0, i32 7
  store i8 %289, ptr %292, align 1
  br label %293

293:                                              ; preds = %291, %287, %283, %279, %275, %271, %267, %263, %260
  %294 = phi i32 [ 0, %260 ], [ 1, %263 ], [ 2, %267 ], [ 3, %271 ], [ 4, %275 ], [ 5, %279 ], [ 6, %283 ], [ 7, %287 ], [ 8, %291 ]
  %295 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 1
  store i32 %294, ptr %295, align 1
  br label %530

296:                                              ; preds = %256
  %297 = load i32, ptr %6, align 4
  %298 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %297, ptr %298, align 1
  br label %530

299:                                              ; preds = %256
  %300 = load i32, ptr %247, align 4
  %301 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %300, ptr %301, align 1
  br label %530

302:                                              ; preds = %256
  %303 = load i32, ptr %246, align 4
  %304 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %303, ptr %304, align 1
  br label %530

305:                                              ; preds = %256
  %306 = load i32, ptr %245, align 4
  %307 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %306, ptr %307, align 1
  br label %530

308:                                              ; preds = %256
  %309 = load i32, ptr %244, align 4
  %310 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %309, ptr %310, align 1
  br label %530

311:                                              ; preds = %256
  %312 = load i32, ptr %243, align 4
  %313 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %312, ptr %313, align 1
  br label %530

314:                                              ; preds = %256
  %315 = load i32, ptr %242, align 4
  %316 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %315, ptr %316, align 1
  br label %530

317:                                              ; preds = %256
  %318 = load i32, ptr %241, align 4
  %319 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %318, ptr %319, align 1
  br label %530

320:                                              ; preds = %256
  %321 = load i32, ptr %240, align 4
  %322 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %321, ptr %322, align 1
  br label %530

323:                                              ; preds = %256
  %324 = load i32, ptr %239, align 4
  %325 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %324, ptr %325, align 1
  br label %530

326:                                              ; preds = %256
  %327 = load i32, ptr %238, align 4
  %328 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %327, ptr %328, align 1
  br label %530

329:                                              ; preds = %256
  %330 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 1291, ptr %330, align 1
  br label %530

331:                                              ; preds = %256
  %332 = load i32, ptr %237, align 4
  %333 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %332, ptr %333, align 1
  br label %530

334:                                              ; preds = %256
  %335 = load i32, ptr %236, align 4
  %336 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %335, ptr %336, align 1
  br label %530

337:                                              ; preds = %256
  %338 = load i32, ptr %235, align 4
  %339 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %338, ptr %339, align 1
  br label %530

340:                                              ; preds = %256
  %341 = load i32, ptr %234, align 4
  %342 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %341, ptr %342, align 1
  br label %530

343:                                              ; preds = %256
  %344 = load i32, ptr %233, align 4
  %345 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %344, ptr %345, align 1
  br label %530

346:                                              ; preds = %256
  %347 = load i32, ptr %232, align 4
  %348 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %347, ptr %348, align 1
  br label %530

349:                                              ; preds = %256
  %350 = load i8, ptr %231, align 4
  %351 = zext i8 %350 to i32
  %352 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %351, ptr %352, align 1
  br label %530

353:                                              ; preds = %256
  %354 = load i8, ptr %230, align 1
  %355 = zext i8 %354 to i32
  %356 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %355, ptr %356, align 1
  br label %530

357:                                              ; preds = %256
  %358 = load i8, ptr %229, align 2
  %359 = zext i8 %358 to i32
  %360 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %359, ptr %360, align 1
  br label %530

361:                                              ; preds = %256
  %362 = load i32, ptr %228, align 4
  %363 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %362, ptr %363, align 1
  br label %530

364:                                              ; preds = %256
  %365 = load i32, ptr %227, align 4
  %366 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %365, ptr %366, align 1
  br label %530

367:                                              ; preds = %256
  %368 = load i8, ptr %226, align 4
  %369 = zext i8 %368 to i32
  %370 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %369, ptr %370, align 1
  br label %530

371:                                              ; preds = %256
  %372 = load i32, ptr %225, align 4
  %373 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %372, ptr %373, align 1
  br label %530

374:                                              ; preds = %256
  %375 = load i32, ptr %224, align 4
  %376 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %375, ptr %376, align 1
  br label %530

377:                                              ; preds = %256
  %378 = load i8, ptr %223, align 4
  %379 = zext i8 %378 to i32
  %380 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %379, ptr %380, align 1
  br label %530

381:                                              ; preds = %256
  %382 = load i8, ptr %222, align 4
  %383 = zext i8 %382 to i32
  %384 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %383, ptr %384, align 1
  br label %530

385:                                              ; preds = %256
  %386 = load i32, ptr %221, align 4
  %387 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %386, ptr %387, align 1
  br label %530

388:                                              ; preds = %256
  %389 = load i32, ptr %220, align 4
  %390 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %389, ptr %390, align 1
  br label %530

391:                                              ; preds = %256
  %392 = load i8, ptr %219, align 4
  %393 = zext i8 %392 to i32
  %394 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %393, ptr %394, align 1
  br label %530

395:                                              ; preds = %256
  %396 = load i8, ptr %218, align 4
  %397 = zext i8 %396 to i32
  %398 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %397, ptr %398, align 1
  br label %530

399:                                              ; preds = %256
  %400 = load i32, ptr %217, align 4
  %401 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %400, ptr %401, align 1
  br label %530

402:                                              ; preds = %256
  %403 = load i32, ptr %216, align 4
  %404 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %403, ptr %404, align 1
  br label %530

405:                                              ; preds = %256
  %406 = load i8, ptr %215, align 4
  %407 = zext i8 %406 to i32
  %408 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %407, ptr %408, align 1
  br label %530

409:                                              ; preds = %256
  %410 = load i8, ptr %214, align 4
  %411 = zext i8 %410 to i32
  %412 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %411, ptr %412, align 1
  br label %530

413:                                              ; preds = %256, %256
  %414 = load i32, ptr %213, align 4
  %415 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %414, ptr %415, align 1
  br label %530

416:                                              ; preds = %256
  %417 = load i32, ptr %212, align 4
  %418 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %417, ptr %418, align 1
  br label %530

419:                                              ; preds = %256
  %420 = load i8, ptr %211, align 4
  %421 = zext i8 %420 to i32
  %422 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %421, ptr %422, align 1
  br label %530

423:                                              ; preds = %256
  %424 = load i8, ptr %210, align 1
  %425 = zext i8 %424 to i32
  %426 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %425, ptr %426, align 1
  br label %530

427:                                              ; preds = %256
  %428 = load i8, ptr %209, align 2
  %429 = zext i8 %428 to i32
  %430 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %429, ptr %430, align 1
  br label %530

431:                                              ; preds = %256
  %432 = load i8, ptr %208, align 1
  %433 = zext i8 %432 to i32
  %434 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %433, ptr %434, align 1
  br label %530

435:                                              ; preds = %256
  %436 = load i8, ptr %207, align 4
  %437 = zext i8 %436 to i32
  %438 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %437, ptr %438, align 1
  br label %530

439:                                              ; preds = %256
  %440 = load i8, ptr %206, align 1
  %441 = zext i8 %440 to i32
  %442 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %441, ptr %442, align 1
  br label %530

443:                                              ; preds = %256
  %444 = load i8, ptr %205, align 2
  %445 = zext i8 %444 to i32
  %446 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %445, ptr %446, align 1
  br label %530

447:                                              ; preds = %256
  %448 = load i8, ptr %204, align 1
  %449 = zext i8 %448 to i32
  %450 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %449, ptr %450, align 1
  br label %530

451:                                              ; preds = %256
  %452 = load i8, ptr %203, align 4
  %453 = zext i8 %452 to i32
  %454 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %453, ptr %454, align 1
  br label %530

455:                                              ; preds = %256
  %456 = load i8, ptr %202, align 1
  %457 = zext i8 %456 to i32
  %458 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %457, ptr %458, align 1
  br label %530

459:                                              ; preds = %256
  %460 = load i8, ptr %201, align 2
  %461 = zext i8 %460 to i32
  %462 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %461, ptr %462, align 1
  br label %530

463:                                              ; preds = %256
  %464 = load i8, ptr %200, align 1
  %465 = zext i8 %464 to i32
  %466 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %465, ptr %466, align 1
  br label %530

467:                                              ; preds = %256
  %468 = load i8, ptr %199, align 4
  %469 = zext i8 %468 to i32
  %470 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %469, ptr %470, align 1
  br label %530

471:                                              ; preds = %256
  %472 = load i8, ptr %198, align 1
  %473 = zext i8 %472 to i32
  %474 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %473, ptr %474, align 1
  br label %530

475:                                              ; preds = %256
  %476 = load i8, ptr %197, align 2
  %477 = zext i8 %476 to i32
  %478 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %477, ptr %478, align 1
  br label %530

479:                                              ; preds = %256
  %480 = load i32, ptr %196, align 4
  %481 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  store i32 %480, ptr %481, align 1
  br label %530

482:                                              ; preds = %256
  %483 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(37) %483, ptr noundef align 4 dereferenceable(37) %195, i32 37, i1 false) #10
  %484 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 1
  %485 = load i32, ptr %484, align 1
  %486 = icmp ugt i32 %485, 16
  br i1 %486, label %487, label %530

487:                                              ; preds = %482
  store i32 16, ptr %484, align 1
  br label %530

488:                                              ; preds = %256
  %489 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(37) %489, ptr noundef align 1 dereferenceable(37) %194, i32 37, i1 false) #10
  %490 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 1
  %491 = load i32, ptr %490, align 1
  %492 = icmp ugt i32 %491, 16
  br i1 %492, label %493, label %530

493:                                              ; preds = %488
  store i32 16, ptr %490, align 1
  br label %530

494:                                              ; preds = %256
  %495 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(37) %495, ptr noundef align 2 dereferenceable(37) %193, i32 37, i1 false) #10
  %496 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 1
  %497 = load i32, ptr %496, align 1
  %498 = icmp ugt i32 %497, 16
  br i1 %498, label %499, label %530

499:                                              ; preds = %494
  store i32 16, ptr %496, align 1
  br label %530

500:                                              ; preds = %256
  %501 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(37) %501, ptr noundef align 1 dereferenceable(37) %192, i32 37, i1 false) #10
  %502 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 1
  %503 = load i32, ptr %502, align 1
  %504 = icmp ugt i32 %503, 16
  br i1 %504, label %505, label %530

505:                                              ; preds = %500
  store i32 16, ptr %502, align 1
  br label %530

506:                                              ; preds = %256
  %507 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(37) %507, ptr noundef align 4 dereferenceable(37) %191, i32 37, i1 false) #10
  %508 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 1
  %509 = load i32, ptr %508, align 1
  %510 = icmp ugt i32 %509, 16
  br i1 %510, label %511, label %530

511:                                              ; preds = %506
  store i32 16, ptr %508, align 1
  br label %530

512:                                              ; preds = %256
  %513 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(37) %513, ptr noundef align 1 dereferenceable(37) %190, i32 37, i1 false) #10
  %514 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 1
  %515 = load i32, ptr %514, align 1
  %516 = icmp ugt i32 %515, 16
  br i1 %516, label %517, label %530

517:                                              ; preds = %512
  store i32 16, ptr %514, align 1
  br label %530

518:                                              ; preds = %256
  %519 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(37) %519, ptr noundef align 2 dereferenceable(37) %189, i32 37, i1 false) #10
  %520 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 1
  %521 = load i32, ptr %520, align 1
  %522 = icmp ugt i32 %521, 16
  br i1 %522, label %523, label %530

523:                                              ; preds = %518
  store i32 16, ptr %520, align 1
  br label %530

524:                                              ; preds = %256
  %525 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(37) %525, ptr noundef align 1 dereferenceable(37) %188, i32 37, i1 false) #10
  %526 = getelementptr %struct.dtv_property, ptr %169, i32 %257, i32 2, i32 0, i32 1
  %527 = load i32, ptr %526, align 1
  %528 = icmp ugt i32 %527, 16
  br i1 %528, label %529, label %530

529:                                              ; preds = %524
  store i32 16, ptr %526, align 1
  br label %530

530:                                              ; preds = %529, %524, %523, %518, %517, %512, %511, %506, %505, %500, %499, %494, %493, %488, %487, %482, %479, %475, %471, %467, %463, %459, %455, %451, %447, %443, %439, %435, %431, %427, %423, %419, %416, %413, %409, %405, %402, %399, %395, %391, %388, %385, %381, %377, %374, %371, %367, %364, %361, %357, %353, %349, %346, %343, %340, %337, %334, %331, %329, %326, %323, %320, %317, %314, %311, %308, %305, %302, %299, %296, %293
  %531 = add nuw i32 %257, 1
  %532 = load i32, ptr %2, align 4
  %533 = icmp ult i32 %531, %532
  br i1 %533, label %256, label %534

534:                                              ; preds = %530
  %535 = mul i32 %532, 72
  %536 = icmp slt i32 %535, 0
  %537 = load i1, ptr @check_copy_size.__already_done, align 1
  %538 = xor i1 %537, true
  %539 = select i1 %536, i1 %538, i1 false
  br i1 %539, label %540, label %541, !prof !12

540:                                              ; preds = %534
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %559

541:                                              ; preds = %534
  br i1 %536, label %555, label %542, !prof !12

542:                                              ; preds = %541, %184
  %543 = phi i32 [ %535, %541 ], [ 0, %184 ]
  %544 = load ptr, ptr %166, align 4
  %545 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %544, i32 %543, i32 -1090519040) #11, !srcloc !20
  %546 = extractvalue { i32, i32 } %545, 0
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %555

548:                                              ; preds = %542
  %549 = tail call ptr @llvm.thread.pointer() #10
  %550 = getelementptr inbounds %struct.thread_info, ptr %549, i32 0, i32 3
  %551 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %550) #14, !srcloc !21
  %552 = and i32 %551, -13
  %553 = or i32 %552, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %553) #10, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !23
  %554 = call i32 @arm_copy_to_user(ptr noundef %544, ptr noundef %169, i32 noundef %543) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %551) #10, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !23
  br label %555

555:                                              ; preds = %548, %542, %541
  %556 = phi i32 [ %535, %541 ], [ %554, %548 ], [ %543, %542 ]
  %557 = icmp eq i32 %556, 0
  %558 = select i1 %557, i32 0, i32 -14
  br label %559

559:                                              ; preds = %555, %540, %256, %181
  %560 = phi i32 [ %182, %181 ], [ -14, %540 ], [ %558, %555 ], [ -22, %256 ]
  call void @kfree(ptr noundef %169) #10
  br label %561

561:                                              ; preds = %559, %171, %161
  %562 = phi i32 [ %172, %171 ], [ %560, %559 ], [ -22, %161 ]
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %6) #10
  br label %1076

563:                                              ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(168) %2, i8 0, i32 168, i1 false)
  %564 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1
  %565 = tail call i32 @strscpy(ptr noundef %2, ptr noundef %564, i32 noundef 128) #10
  %566 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 0, i32 5
  %567 = load i32, ptr %566, align 4
  %568 = getelementptr inbounds %struct.dvb_frontend_info, ptr %2, i32 0, i32 6
  store i32 %567, ptr %568, align 4
  %569 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 0, i32 6
  %570 = load i32, ptr %569, align 4
  %571 = getelementptr inbounds %struct.dvb_frontend_info, ptr %2, i32 0, i32 7
  store i32 %570, ptr %571, align 4
  %572 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 0, i32 7
  %573 = load i32, ptr %572, align 4
  %574 = getelementptr inbounds %struct.dvb_frontend_info, ptr %2, i32 0, i32 8
  store i32 %573, ptr %574, align 4
  %575 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 0, i32 8
  %576 = load i32, ptr %575, align 4
  %577 = getelementptr inbounds %struct.dvb_frontend_info, ptr %2, i32 0, i32 10
  store i32 %576, ptr %577, align 4
  %578 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 0, i32 3
  %579 = load i32, ptr %578, align 4
  %580 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 32, i32 0, i32 3
  %581 = load i32, ptr %580, align 4
  %582 = tail call i32 @llvm.umax.i32(i32 %579, i32 %581) #10
  %583 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 15
  %584 = load i32, ptr %583, align 4
  switch i32 %584, label %587 [
    i32 5, label %585
    i32 6, label %585
    i32 17, label %585
    i32 9, label %585
  ]

585:                                              ; preds = %563, %563, %563, %563
  %586 = udiv i32 %582, 1000
  br label %587

587:                                              ; preds = %585, %563
  %588 = phi i32 [ %582, %563 ], [ %586, %585 ]
  %589 = getelementptr inbounds %struct.dvb_frontend_info, ptr %2, i32 0, i32 4
  store i32 %588, ptr %589, align 4
  %590 = getelementptr inbounds %struct.dvb_frontend_info, ptr %2, i32 0, i32 2
  %591 = getelementptr inbounds %struct.dvb_frontend_info, ptr %2, i32 0, i32 3
  %592 = getelementptr inbounds %struct.dvb_frontend_info, ptr %2, i32 0, i32 5
  %593 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 32, i32 0, i32 1
  %594 = load i32, ptr %593, align 4
  %595 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 32, i32 0, i32 2
  %596 = load i32, ptr %595, align 4
  %597 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 0, i32 1
  %598 = load i32, ptr %597, align 4
  %599 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 0, i32 2
  %600 = load i32, ptr %599, align 4
  %601 = tail call i32 @llvm.umax.i32(i32 %598, i32 %594) #10
  store i32 %601, ptr %590, align 4
  %602 = icmp eq i32 %600, 0
  br i1 %602, label %607, label %603

603:                                              ; preds = %587
  %604 = icmp eq i32 %596, 0
  br i1 %604, label %612, label %605

605:                                              ; preds = %603
  %606 = tail call i32 @llvm.umin.i32(i32 %600, i32 %596) #10
  br label %607

607:                                              ; preds = %605, %587
  %608 = phi i32 [ %606, %605 ], [ %596, %587 ]
  store i32 %608, ptr %591, align 4
  %609 = icmp eq i32 %601, 0
  %610 = icmp eq i32 %608, 0
  %611 = select i1 %609, i1 true, i1 %610
  br i1 %611, label %614, label %622

612:                                              ; preds = %603
  store i32 %600, ptr %591, align 4
  %613 = icmp eq i32 %601, 0
  br i1 %613, label %614, label %622

614:                                              ; preds = %612, %607
  %615 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 2
  %616 = load ptr, ptr %615, align 4
  %617 = getelementptr inbounds %struct.dvb_adapter, ptr %616, i32 0, i32 6
  %618 = load ptr, ptr %617, align 4
  %619 = load i32, ptr %616, align 4
  %620 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 10
  %621 = load i32, ptr %620, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %618, ptr noundef nonnull @.str.13, i32 noundef %619, i32 noundef %621) #13
  br label %622

622:                                              ; preds = %614, %612, %607
  %623 = load i32, ptr %583, align 4
  switch i32 %623, label %634 [
    i32 5, label %624
    i32 6, label %624
    i32 17, label %624
    i32 9, label %624
  ]

624:                                              ; preds = %622, %622, %622, %622
  %625 = load i32, ptr %590, align 4
  %626 = udiv i32 %625, 1000
  store i32 %626, ptr %590, align 4
  %627 = load i32, ptr %591, align 4
  %628 = udiv i32 %627, 1000
  store i32 %628, ptr %591, align 4
  %629 = icmp eq ptr %592, null
  br i1 %629, label %641, label %630

630:                                              ; preds = %624
  %631 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 0, i32 4
  %632 = load i32, ptr %631, align 4
  %633 = udiv i32 %632, 1000
  br label %639

634:                                              ; preds = %622
  %635 = icmp eq ptr %592, null
  br i1 %635, label %643, label %636

636:                                              ; preds = %634
  %637 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 0, i32 4
  %638 = load i32, ptr %637, align 4
  br label %639

639:                                              ; preds = %636, %630
  %640 = phi i32 [ %638, %636 ], [ %633, %630 ]
  store i32 %640, ptr %592, align 4
  br label %641

641:                                              ; preds = %639, %624
  %642 = load i32, ptr %583, align 4
  br label %643

643:                                              ; preds = %641, %634
  %644 = phi i32 [ %642, %641 ], [ %623, %634 ]
  %645 = add i32 %644, -1
  %646 = icmp ult i32 %645, 18
  br i1 %646, label %652, label %647

647:                                              ; preds = %652, %643
  %648 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 2
  %649 = load ptr, ptr %648, align 4
  %650 = getelementptr inbounds %struct.dvb_adapter, ptr %649, i32 0, i32 6
  %651 = load ptr, ptr %650, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %651, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dvb_frontend_handle_ioctl, i32 noundef %644) #13
  br label %659

652:                                              ; preds = %643
  %653 = lshr i32 236991, %645
  %654 = and i32 %653, 1
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %647, label %656

656:                                              ; preds = %652
  %657 = getelementptr inbounds [18 x i32], ptr @switch.table.dvb_frontend_handle_ioctl, i32 0, i32 %645
  %658 = load i32, ptr %657, align 4
  br label %659

659:                                              ; preds = %656, %647
  %660 = phi i32 [ 2, %647 ], [ %658, %656 ]
  %661 = getelementptr inbounds %struct.dvb_frontend_info, ptr %2, i32 0, i32 1
  store i32 %660, ptr %661, align 4
  %662 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 10
  %663 = load i32, ptr %662, align 4
  %664 = and i32 %663, 1
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %1076

666:                                              ; preds = %659
  %667 = load i32, ptr %577, align 4
  %668 = or i32 %667, 1
  store i32 %668, ptr %577, align 4
  br label %1076

669:                                              ; preds = %3
  %670 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 15
  %671 = load i32, ptr %670, align 4
  switch i32 %671, label %673 [
    i32 2, label %672
    i32 256, label %672
  ]

672:                                              ; preds = %669, %669
  store i32 0, ptr %2, align 4
  br label %1076

673:                                              ; preds = %669
  %674 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 15
  %675 = load ptr, ptr %674, align 4
  %676 = icmp eq ptr %675, null
  br i1 %676, label %1076, label %677

677:                                              ; preds = %673
  %678 = tail call i32 %675(ptr noundef %12, ptr noundef %2) #10
  br label %1076

679:                                              ; preds = %3
  %680 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 20
  %681 = load ptr, ptr %680, align 4
  %682 = icmp eq ptr %681, null
  br i1 %682, label %1076, label %683

683:                                              ; preds = %679
  %684 = tail call i32 %681(ptr noundef %12) #10
  %685 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 15
  store i32 128, ptr %685, align 4
  %686 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 9
  store i32 0, ptr %686, align 4
  br label %1076

687:                                              ; preds = %3
  %688 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 21
  %689 = load ptr, ptr %688, align 4
  %690 = icmp eq ptr %689, null
  br i1 %690, label %1076, label %691

691:                                              ; preds = %687
  %692 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %2, i32 0, i32 1
  %693 = load i8, ptr %692, align 1
  %694 = icmp ugt i8 %693, 6
  br i1 %694, label %1076, label %695

695:                                              ; preds = %691
  %696 = tail call i32 %689(ptr noundef %12, ptr noundef %2) #10
  %697 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 15
  store i32 128, ptr %697, align 4
  %698 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 9
  store i32 0, ptr %698, align 4
  br label %1076

699:                                              ; preds = %3
  %700 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 23
  %701 = load ptr, ptr %700, align 4
  %702 = icmp eq ptr %701, null
  br i1 %702, label %1076, label %703

703:                                              ; preds = %699
  %704 = ptrtoint ptr %2 to i32
  %705 = tail call i32 %701(ptr noundef %12, i32 noundef %704) #10
  %706 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 15
  store i32 128, ptr %706, align 4
  %707 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 9
  store i32 0, ptr %707, align 4
  br label %1076

708:                                              ; preds = %3
  %709 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 24
  %710 = load ptr, ptr %709, align 4
  %711 = icmp eq ptr %710, null
  br i1 %711, label %1076, label %712

712:                                              ; preds = %708
  %713 = ptrtoint ptr %2 to i32
  %714 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 13
  store i32 %713, ptr %714, align 4
  %715 = load ptr, ptr %709, align 4
  %716 = tail call i32 %715(ptr noundef %12, i32 noundef %713) #10
  %717 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 15
  store i32 128, ptr %717, align 4
  %718 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 9
  store i32 0, ptr %718, align 4
  br label %1076

719:                                              ; preds = %3
  %720 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 25
  %721 = load ptr, ptr %720, align 4
  %722 = icmp eq ptr %721, null
  br i1 %722, label %1076, label %723

723:                                              ; preds = %719
  %724 = ptrtoint ptr %2 to i32
  %725 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 14
  store i32 %724, ptr %725, align 4
  %726 = load ptr, ptr %720, align 4
  %727 = tail call i32 %726(ptr noundef %12, i32 noundef %724) #10
  %728 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 15
  store i32 128, ptr %728, align 4
  %729 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 9
  store i32 0, ptr %729, align 4
  br label %1076

730:                                              ; preds = %3
  %731 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 22
  %732 = load ptr, ptr %731, align 4
  %733 = icmp eq ptr %732, null
  br i1 %733, label %1076, label %734

734:                                              ; preds = %730
  %735 = tail call i32 %732(ptr noundef %12, ptr noundef %2) #10
  br label %1076

736:                                              ; preds = %3
  %737 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 26
  %738 = load ptr, ptr %737, align 4
  %739 = icmp eq ptr %738, null
  br i1 %739, label %1076, label %740

740:                                              ; preds = %736
  %741 = ptrtoint ptr %2 to i32
  %742 = tail call i32 %738(ptr noundef %12, i32 noundef %741) #10
  br label %1076

743:                                              ; preds = %3
  %744 = ptrtoint ptr %2 to i32
  %745 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 10
  store i32 %744, ptr %745, align 4
  br label %1076

746:                                              ; preds = %3
  %747 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 27
  %748 = load ptr, ptr %747, align 4
  %749 = icmp eq ptr %748, null
  br i1 %749, label %755, label %750

750:                                              ; preds = %746
  %751 = ptrtoint ptr %2 to i32
  %752 = tail call i32 %748(ptr noundef %12, i32 noundef %751) #10
  %753 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 15
  store i32 128, ptr %753, align 4
  %754 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 9
  store i32 0, ptr %754, align 4
  br label %1076

755:                                              ; preds = %746
  %756 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 25
  %757 = load ptr, ptr %756, align 4
  %758 = icmp eq ptr %757, null
  br i1 %758, label %1076, label %759

759:                                              ; preds = %755
  %760 = ptrtoint ptr %2 to i32
  %761 = shl i32 %760, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %8, i8 0, i32 80, i1 false), !annotation !24
  %762 = load i32, ptr @dvb_frontend_debug, align 4
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %766, label %764

764:                                              ; preds = %759
  %765 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dvb_frontend_handle_ioctl, i32 noundef %761) #13
  br label %766

766:                                              ; preds = %764, %759
  %767 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  store i64 %767, ptr %7, align 8
  %768 = load i32, ptr @dvb_frontend_debug, align 4
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %771, label %770

770:                                              ; preds = %766
  store i64 %767, ptr %8, align 8
  br label %771

771:                                              ; preds = %770, %766
  %772 = load ptr, ptr %756, align 4
  %773 = tail call i32 %772(ptr noundef %12, i32 noundef 1) #10
  call void @dvb_frontend_sleep_until(ptr noundef nonnull %7, i32 noundef 32000)
  br label %774

774:                                              ; preds = %797, %771
  %775 = phi i8 [ 1, %771 ], [ %795, %797 ]
  %776 = phi i32 [ 0, %771 ], [ %799, %797 ]
  %777 = phi i32 [ %761, %771 ], [ %798, %797 ]
  %778 = load i32, ptr @dvb_frontend_debug, align 4
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %784, label %780

780:                                              ; preds = %774
  %781 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #10
  %782 = add nuw nsw i32 %776, 1
  %783 = getelementptr [10 x i64], ptr %8, i32 0, i32 %782
  store i64 %781, ptr %783, align 8
  br label %784

784:                                              ; preds = %780, %774
  %785 = and i32 %777, 1
  %786 = zext i8 %775 to i32
  %787 = icmp eq i32 %785, %786
  br i1 %787, label %794, label %788

788:                                              ; preds = %784
  %789 = load ptr, ptr %756, align 4
  %790 = icmp eq i8 %775, 0
  %791 = zext i1 %790 to i32
  %792 = tail call i32 %789(ptr noundef %12, i32 noundef %791) #10
  %793 = zext i1 %790 to i8
  br label %794

794:                                              ; preds = %788, %784
  %795 = phi i8 [ %793, %788 ], [ %775, %784 ]
  %796 = icmp eq i32 %776, 8
  br i1 %796, label %800, label %797

797:                                              ; preds = %794
  %798 = lshr i32 %777, 1
  call void @dvb_frontend_sleep_until(ptr noundef nonnull %7, i32 noundef 8000)
  %799 = add nuw nsw i32 %776, 1
  br label %774

800:                                              ; preds = %794
  %801 = load i32, ptr @dvb_frontend_debug, align 4
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %829, label %803

803:                                              ; preds = %800
  %804 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 2
  %805 = load ptr, ptr %804, align 4
  %806 = load i32, ptr %805, align 4
  %807 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dvb_frontend_handle_ioctl, i32 noundef %806) #13
  %808 = load i64, ptr %8, align 8
  br label %809

809:                                              ; preds = %809, %803
  %810 = phi i64 [ %808, %803 ], [ %813, %809 ]
  %811 = phi i32 [ 1, %803 ], [ %827, %809 ]
  %812 = getelementptr [10 x i64], ptr %8, i32 0, i32 %811
  %813 = load i64, ptr %812, align 8
  %814 = sub i64 %813, %810
  %815 = tail call i64 @llvm.abs.i64(i64 %814, i1 false) #10
  %816 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %815, i32 0) #11, !srcloc !8
  %817 = extractvalue { i64, i32 } %816, 0
  %818 = extractvalue { i64, i32 } %816, 1
  %819 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %815, i64 %817, i32 %818) #11, !srcloc !9
  %820 = extractvalue { i64, i32 } %819, 0
  %821 = icmp slt i64 %814, 0
  %822 = lshr i64 %820, 9
  %823 = sub nsw i64 0, %822
  %824 = select i1 %821, i64 %823, i64 %822
  %825 = trunc i64 %824 to i32
  %826 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %811, i32 noundef %825) #13
  %827 = add nuw nsw i32 %811, 1
  %828 = icmp eq i32 %827, 10
  br i1 %828, label %829, label %809

829:                                              ; preds = %809, %800
  %830 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 15
  store i32 128, ptr %830, align 4
  %831 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 9
  store i32 0, ptr %831, align 4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  br label %1076

832:                                              ; preds = %3
  %833 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 16
  %834 = load ptr, ptr %833, align 4
  %835 = icmp eq ptr %834, null
  br i1 %835, label %1076, label %836

836:                                              ; preds = %832
  %837 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 6
  %838 = load ptr, ptr %837, align 4
  %839 = icmp eq ptr %838, null
  br i1 %839, label %1076, label %840

840:                                              ; preds = %836
  %841 = tail call i32 %834(ptr noundef %12, ptr noundef %2) #10
  br label %1076

842:                                              ; preds = %3
  %843 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 17
  %844 = load ptr, ptr %843, align 4
  %845 = icmp eq ptr %844, null
  br i1 %845, label %1076, label %846

846:                                              ; preds = %842
  %847 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 6
  %848 = load ptr, ptr %847, align 4
  %849 = icmp eq ptr %848, null
  br i1 %849, label %1076, label %850

850:                                              ; preds = %846
  %851 = tail call i32 %844(ptr noundef %12, ptr noundef %2) #10
  br label %1076

852:                                              ; preds = %3
  %853 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 18
  %854 = load ptr, ptr %853, align 4
  %855 = icmp eq ptr %854, null
  br i1 %855, label %1076, label %856

856:                                              ; preds = %852
  %857 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 6
  %858 = load ptr, ptr %857, align 4
  %859 = icmp eq ptr %858, null
  br i1 %859, label %1076, label %860

860:                                              ; preds = %856
  %861 = tail call i32 %854(ptr noundef %12, ptr noundef %2) #10
  br label %1076

862:                                              ; preds = %3
  %863 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 19
  %864 = load ptr, ptr %863, align 4
  %865 = icmp eq ptr %864, null
  br i1 %865, label %1076, label %866

866:                                              ; preds = %862
  %867 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 6
  %868 = load ptr, ptr %867, align 4
  %869 = icmp eq ptr %868, null
  br i1 %869, label %1076, label %870

870:                                              ; preds = %866
  %871 = tail call i32 %864(ptr noundef %12, ptr noundef %2) #10
  br label %1076

872:                                              ; preds = %3
  %873 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 15
  %874 = load i32, ptr %873, align 4
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %876, label %880

876:                                              ; preds = %872
  %877 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1
  %878 = load i8, ptr %877, align 4
  %879 = zext i8 %878 to i32
  store i32 %879, ptr %873, align 4
  br label %880

880:                                              ; preds = %876, %872
  %881 = phi i32 [ %879, %876 ], [ %874, %872 ]
  %882 = add i32 %881, -1
  %883 = tail call i32 @llvm.fshl.i32(i32 %882, i32 %882, i32 31) #10
  switch i32 %883, label %884 [
    i32 2, label %951
    i32 1, label %951
    i32 0, label %951
    i32 5, label %951
  ]

884:                                              ; preds = %880
  %885 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 0
  %886 = load i8, ptr %885, align 1
  switch i8 %886, label %887 [
    i8 0, label %1076
    i8 1, label %919
    i8 18, label %919
    i8 5, label %919
    i8 6, label %919
    i8 17, label %919
    i8 9, label %919
    i8 4, label %919
    i8 3, label %919
    i8 16, label %919
    i8 8, label %919
    i8 13, label %919
    i8 11, label %919
    i8 12, label %919
    i8 2, label %919
  ]

887:                                              ; preds = %884
  %888 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 1
  %889 = load i8, ptr %888, align 1
  switch i8 %889, label %890 [
    i8 0, label %1076
    i8 1, label %919
    i8 18, label %919
    i8 5, label %919
    i8 6, label %919
    i8 17, label %919
    i8 9, label %919
    i8 4, label %919
    i8 3, label %919
    i8 16, label %919
    i8 8, label %919
    i8 13, label %919
    i8 11, label %919
    i8 12, label %919
    i8 2, label %919
  ]

890:                                              ; preds = %887
  %891 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 2
  %892 = load i8, ptr %891, align 1
  switch i8 %892, label %893 [
    i8 0, label %1076
    i8 1, label %919
    i8 18, label %919
    i8 5, label %919
    i8 6, label %919
    i8 17, label %919
    i8 9, label %919
    i8 4, label %919
    i8 3, label %919
    i8 16, label %919
    i8 8, label %919
    i8 13, label %919
    i8 11, label %919
    i8 12, label %919
    i8 2, label %919
  ]

893:                                              ; preds = %890
  %894 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 3
  %895 = load i8, ptr %894, align 1
  switch i8 %895, label %896 [
    i8 0, label %1076
    i8 1, label %919
    i8 18, label %919
    i8 5, label %919
    i8 6, label %919
    i8 17, label %919
    i8 9, label %919
    i8 4, label %919
    i8 3, label %919
    i8 16, label %919
    i8 8, label %919
    i8 13, label %919
    i8 11, label %919
    i8 12, label %919
    i8 2, label %919
  ]

896:                                              ; preds = %893
  %897 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 4
  %898 = load i8, ptr %897, align 1
  switch i8 %898, label %899 [
    i8 0, label %1076
    i8 1, label %919
    i8 18, label %919
    i8 5, label %919
    i8 6, label %919
    i8 17, label %919
    i8 9, label %919
    i8 4, label %919
    i8 3, label %919
    i8 16, label %919
    i8 8, label %919
    i8 13, label %919
    i8 11, label %919
    i8 12, label %919
    i8 2, label %919
  ]

899:                                              ; preds = %896
  %900 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 5
  %901 = load i8, ptr %900, align 1
  switch i8 %901, label %902 [
    i8 0, label %1076
    i8 1, label %919
    i8 18, label %919
    i8 5, label %919
    i8 6, label %919
    i8 17, label %919
    i8 9, label %919
    i8 4, label %919
    i8 3, label %919
    i8 16, label %919
    i8 8, label %919
    i8 13, label %919
    i8 11, label %919
    i8 12, label %919
    i8 2, label %919
  ]

902:                                              ; preds = %899
  %903 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 6
  %904 = load i8, ptr %903, align 1
  switch i8 %904, label %905 [
    i8 0, label %1076
    i8 1, label %919
    i8 18, label %919
    i8 5, label %919
    i8 6, label %919
    i8 17, label %919
    i8 9, label %919
    i8 4, label %919
    i8 3, label %919
    i8 16, label %919
    i8 8, label %919
    i8 13, label %919
    i8 11, label %919
    i8 12, label %919
    i8 2, label %919
  ]

905:                                              ; preds = %902
  %906 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 1, i32 7
  %907 = load i8, ptr %906, align 1
  %908 = add i8 %907, -1
  %909 = icmp ult i8 %908, 18
  br i1 %909, label %910, label %1076

910:                                              ; preds = %905
  %911 = zext i8 %908 to i32
  %912 = lshr i32 236991, %911
  %913 = and i32 %912, 1
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %1076, label %915

915:                                              ; preds = %910
  %916 = sext i8 %908 to i32
  %917 = getelementptr inbounds [18 x i8], ptr @switch.table.dvb_frontend_handle_ioctl.21, i32 0, i32 %916
  %918 = load i8, ptr %917, align 1
  br label %919

919:                                              ; preds = %915, %902, %902, %902, %902, %902, %902, %902, %902, %902, %902, %902, %902, %902, %902, %899, %899, %899, %899, %899, %899, %899, %899, %899, %899, %899, %899, %899, %899, %896, %896, %896, %896, %896, %896, %896, %896, %896, %896, %896, %896, %896, %896, %893, %893, %893, %893, %893, %893, %893, %893, %893, %893, %893, %893, %893, %893, %890, %890, %890, %890, %890, %890, %890, %890, %890, %890, %890, %890, %890, %890, %887, %887, %887, %887, %887, %887, %887, %887, %887, %887, %887, %887, %887, %887, %884, %884, %884, %884, %884, %884, %884, %884, %884, %884, %884, %884, %884, %884
  %920 = phi i8 [ %886, %884 ], [ %886, %884 ], [ %886, %884 ], [ %886, %884 ], [ %886, %884 ], [ %886, %884 ], [ %886, %884 ], [ %886, %884 ], [ %886, %884 ], [ %886, %884 ], [ %886, %884 ], [ %886, %884 ], [ %886, %884 ], [ %886, %884 ], [ %889, %887 ], [ %889, %887 ], [ %889, %887 ], [ %889, %887 ], [ %889, %887 ], [ %889, %887 ], [ %889, %887 ], [ %889, %887 ], [ %889, %887 ], [ %889, %887 ], [ %889, %887 ], [ %889, %887 ], [ %889, %887 ], [ %889, %887 ], [ %892, %890 ], [ %892, %890 ], [ %892, %890 ], [ %892, %890 ], [ %892, %890 ], [ %892, %890 ], [ %892, %890 ], [ %892, %890 ], [ %892, %890 ], [ %892, %890 ], [ %892, %890 ], [ %892, %890 ], [ %892, %890 ], [ %892, %890 ], [ %895, %893 ], [ %895, %893 ], [ %895, %893 ], [ %895, %893 ], [ %895, %893 ], [ %895, %893 ], [ %895, %893 ], [ %895, %893 ], [ %895, %893 ], [ %895, %893 ], [ %895, %893 ], [ %895, %893 ], [ %895, %893 ], [ %895, %893 ], [ %898, %896 ], [ %898, %896 ], [ %898, %896 ], [ %898, %896 ], [ %898, %896 ], [ %898, %896 ], [ %898, %896 ], [ %898, %896 ], [ %898, %896 ], [ %898, %896 ], [ %898, %896 ], [ %898, %896 ], [ %898, %896 ], [ %898, %896 ], [ %901, %899 ], [ %901, %899 ], [ %901, %899 ], [ %901, %899 ], [ %901, %899 ], [ %901, %899 ], [ %901, %899 ], [ %901, %899 ], [ %901, %899 ], [ %901, %899 ], [ %901, %899 ], [ %901, %899 ], [ %901, %899 ], [ %901, %899 ], [ %904, %902 ], [ %904, %902 ], [ %904, %902 ], [ %904, %902 ], [ %904, %902 ], [ %904, %902 ], [ %904, %902 ], [ %904, %902 ], [ %904, %902 ], [ %904, %902 ], [ %904, %902 ], [ %904, %902 ], [ %904, %902 ], [ %904, %902 ], [ %918, %915 ]
  %921 = zext i8 %920 to i32
  store i32 %921, ptr %873, align 4
  %922 = icmp eq i8 %920, 8
  br i1 %922, label %923, label %951

923:                                              ; preds = %919
  %924 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 7
  %925 = load i32, ptr %924, align 4
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %927, label %928

927:                                              ; preds = %923
  store i32 6000000, ptr %924, align 4
  br label %928

928:                                              ; preds = %927, %923
  %929 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 17
  store i8 0, ptr %929, align 4
  %930 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 18
  store i8 0, ptr %930, align 1
  %931 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 19
  store i8 0, ptr %931, align 2
  %932 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 20
  store i32 0, ptr %932, align 4
  %933 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 21
  store i32 0, ptr %933, align 4
  %934 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 22
  store i8 7, ptr %934, align 4
  %935 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 0
  %936 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 0, i32 1
  store i32 9, ptr %936, align 4
  %937 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 0, i32 2
  store i32 6, ptr %937, align 4
  %938 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 0, i32 3
  store i8 0, ptr %938, align 4
  store i8 0, ptr %935, align 4
  %939 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 1
  %940 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 1, i32 1
  store i32 9, ptr %940, align 4
  %941 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 1, i32 2
  store i32 6, ptr %941, align 4
  %942 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 1, i32 3
  store i8 0, ptr %942, align 4
  store i8 0, ptr %939, align 4
  %943 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 2
  %944 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 2, i32 1
  store i32 9, ptr %944, align 4
  %945 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 2, i32 2
  store i32 6, ptr %945, align 4
  %946 = getelementptr %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 23, i32 2, i32 3
  store i8 0, ptr %946, align 4
  store i8 0, ptr %943, align 4
  %947 = load i32, ptr %2, align 4
  store i32 %947, ptr %15, align 4
  %948 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 1
  %949 = load i32, ptr %948, align 4
  %950 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 4
  store i32 %949, ptr %950, align 4
  br label %974

951:                                              ; preds = %919, %880, %880, %880, %880
  %952 = phi i32 [ %921, %919 ], [ %881, %880 ], [ %881, %880 ], [ %881, %880 ], [ %881, %880 ]
  %953 = load i32, ptr %2, align 4
  store i32 %953, ptr %15, align 4
  %954 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 1
  %955 = load i32, ptr %954, align 4
  %956 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 4
  store i32 %955, ptr %956, align 4
  switch i32 %952, label %1011 [
    i32 1, label %964
    i32 18, label %964
    i32 5, label %957
    i32 6, label %957
    i32 17, label %957
    i32 9, label %957
    i32 4, label %957
    i32 3, label %974
    i32 16, label %974
    i32 8, label %974
    i32 13, label %974
    i32 11, label %1001
    i32 12, label %1001
    i32 2, label %1001
  ]

957:                                              ; preds = %951, %951, %951, %951, %951
  %958 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2
  %959 = load i32, ptr %958, align 4
  %960 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 10
  store i32 %959, ptr %960, align 4
  %961 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 1
  %962 = load i32, ptr %961, align 4
  %963 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 5
  store i32 %962, ptr %963, align 4
  br label %1016

964:                                              ; preds = %951, %951
  %965 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2
  %966 = load i32, ptr %965, align 4
  %967 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 10
  store i32 %966, ptr %967, align 4
  %968 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 1
  %969 = load i32, ptr %968, align 4
  %970 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 5
  store i32 %969, ptr %970, align 4
  %971 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 2
  %972 = load i32, ptr %971, align 4
  %973 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 1
  store i32 %972, ptr %973, align 4
  br label %1016

974:                                              ; preds = %951, %951, %951, %951, %928
  %975 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2
  %976 = load i32, ptr %975, align 4
  %977 = icmp ult i32 %976, 7
  br i1 %977, label %978, label %982

978:                                              ; preds = %974
  %979 = getelementptr inbounds [7 x i32], ptr @switch.table.dvb_frontend_handle_ioctl.22, i32 0, i32 %976
  %980 = load i32, ptr %979, align 4
  %981 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 7
  store i32 %980, ptr %981, align 4
  br label %982

982:                                              ; preds = %978, %974
  %983 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 1
  %984 = load i32, ptr %983, align 4
  %985 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 11
  store i32 %984, ptr %985, align 4
  %986 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 2
  %987 = load i32, ptr %986, align 4
  %988 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 12
  store i32 %987, ptr %988, align 4
  %989 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 3
  %990 = load i32, ptr %989, align 4
  %991 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 1
  store i32 %990, ptr %991, align 4
  %992 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 4
  %993 = load i32, ptr %992, align 4
  %994 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 6
  store i32 %993, ptr %994, align 4
  %995 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 5
  %996 = load i32, ptr %995, align 4
  %997 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 8
  store i32 %996, ptr %997, align 4
  %998 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 6
  %999 = load i32, ptr %998, align 4
  %1000 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 9
  store i32 %999, ptr %1000, align 4
  br label %1016

1001:                                             ; preds = %951, %951, %951
  %1002 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2
  %1003 = load i32, ptr %1002, align 4
  %1004 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 8, i32 1
  store i32 %1003, ptr %1004, align 4
  %1005 = icmp eq i32 %952, 12
  br i1 %1005, label %1016, label %1006

1006:                                             ; preds = %1001
  %1007 = add i32 %1003, -7
  %1008 = icmp ult i32 %1007, 2
  br i1 %1008, label %1009, label %1010

1009:                                             ; preds = %1006
  store i32 11, ptr %873, align 4
  br label %1016

1010:                                             ; preds = %1006
  store i32 2, ptr %873, align 4
  br label %1016

1011:                                             ; preds = %951
  %1012 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 2
  %1013 = load ptr, ptr %1012, align 4
  %1014 = getelementptr inbounds %struct.dvb_adapter, ptr %1013, i32 0, i32 6
  %1015 = load ptr, ptr %1014, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1015, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dtv_property_cache_sync, i32 noundef %952) #13
  br label %1076

1016:                                             ; preds = %1010, %1009, %1001, %982, %964, %957
  %1017 = tail call fastcc i32 @dtv_set_frontend(ptr noundef %12)
  br label %1076

1018:                                             ; preds = %3
  %1019 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %1020 = load i32, ptr %1019, align 4
  %1021 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 2
  %1022 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 2, i32 3
  %1023 = load i32, ptr %1022, align 4
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1026, label %1025

1025:                                             ; preds = %1018
  store i32 0, ptr %1022, align 4
  br label %1076

1026:                                             ; preds = %1018
  %1027 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 2, i32 1
  %1028 = load i32, ptr %1027, align 4
  %1029 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 2, i32 2
  %1030 = load i32, ptr %1029, align 4
  %1031 = icmp eq i32 %1028, %1030
  br i1 %1031, label %1032, label %1057

1032:                                             ; preds = %1026
  %1033 = and i32 %1020, 2048
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1035, label %1076

1035:                                             ; preds = %1032
  %1036 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 3
  tail call void @up(ptr noundef %1036) #10
  %1037 = load i32, ptr %1027, align 4
  %1038 = load i32, ptr %1029, align 4
  %1039 = icmp eq i32 %1037, %1038
  tail call void @down(ptr noundef %1036) #10
  br i1 %1039, label %1040, label %1057

1040:                                             ; preds = %1035
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #10, !annotation !24
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #10
  %1041 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 2, i32 4
  %1042 = call i32 @prepare_to_wait_event(ptr noundef %1041, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @up(ptr noundef %1036) #10
  %1043 = load i32, ptr %1027, align 4
  %1044 = load i32, ptr %1029, align 4
  %1045 = icmp eq i32 %1043, %1044
  call void @down(ptr noundef %1036) #10
  br i1 %1045, label %1046, label %1054

1046:                                             ; preds = %1049, %1040
  %1047 = phi i32 [ %1050, %1049 ], [ %1042, %1040 ]
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1049, label %1055

1049:                                             ; preds = %1046
  call void @schedule() #10
  %1050 = call i32 @prepare_to_wait_event(ptr noundef %1041, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @up(ptr noundef %1036) #10
  %1051 = load i32, ptr %1027, align 4
  %1052 = load i32, ptr %1029, align 4
  %1053 = icmp eq i32 %1051, %1052
  call void @down(ptr noundef %1036) #10
  br i1 %1053, label %1046, label %1054

1054:                                             ; preds = %1049, %1040
  call void @finish_wait(ptr noundef %1041, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  br label %1057

1055:                                             ; preds = %1046
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #10
  %1056 = icmp slt i32 %1047, 0
  br i1 %1056, label %1076, label %1057

1057:                                             ; preds = %1055, %1054, %1035, %1026
  %1058 = getelementptr inbounds %struct.dvb_frontend_private, ptr %14, i32 0, i32 2, i32 5
  call void @mutex_lock(ptr noundef %1058) #10
  %1059 = load i32, ptr %1029, align 4
  %1060 = getelementptr [8 x %struct.dvb_frontend_event], ptr %1021, i32 0, i32 %1059
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %2, ptr noundef align 4 dereferenceable(40) %1060, i32 40, i1 false) #10
  %1061 = load i32, ptr %1029, align 4
  %1062 = add i32 %1061, 1
  %1063 = srem i32 %1062, 8
  store i32 %1063, ptr %1029, align 4
  call void @mutex_unlock(ptr noundef %1058) #10
  br label %1076

1064:                                             ; preds = %3
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(456) %4, ptr noundef align 4 dereferenceable(456) %15, i32 456, i1 false) #10
  %1065 = getelementptr inbounds %struct.dvb_frontend, ptr %12, i32 0, i32 1, i32 14
  %1066 = load ptr, ptr %1065, align 4
  %1067 = icmp eq ptr %1066, null
  br i1 %1067, label %1074, label %1068

1068:                                             ; preds = %1064
  %1069 = call i32 %1066(ptr noundef %12, ptr noundef nonnull %4) #10
  %1070 = icmp slt i32 %1069, 0
  br i1 %1070, label %1074, label %1071, !prof !12

1071:                                             ; preds = %1068
  %1072 = icmp eq ptr %2, null
  br i1 %1072, label %1074, label %1073

1073:                                             ; preds = %1071
  call fastcc void @dtv_property_legacy_params_sync(ptr noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %2) #10
  br label %1074

1074:                                             ; preds = %1073, %1071, %1068, %1064
  %1075 = phi i32 [ %1069, %1068 ], [ 0, %1073 ], [ 0, %1071 ], [ 0, %1064 ]
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %4) #10
  br label %1076

1076:                                             ; preds = %1074, %1057, %1055, %1032, %1025, %1016, %1011, %910, %905, %902, %899, %896, %893, %890, %887, %884, %870, %866, %862, %860, %856, %852, %850, %846, %842, %840, %836, %832, %829, %755, %750, %743, %740, %736, %734, %730, %723, %719, %712, %708, %703, %699, %695, %691, %687, %683, %679, %677, %673, %672, %666, %659, %561, %160, %154, %70, %16, %3
  %1077 = phi i32 [ -524, %3 ], [ %1075, %1074 ], [ -22, %1011 ], [ %1017, %1016 ], [ %871, %870 ], [ -524, %862 ], [ %861, %860 ], [ -524, %852 ], [ %851, %850 ], [ -524, %842 ], [ %841, %840 ], [ -524, %832 ], [ %752, %750 ], [ 0, %829 ], [ -524, %755 ], [ 0, %743 ], [ %742, %740 ], [ -524, %736 ], [ %735, %734 ], [ -524, %730 ], [ %727, %723 ], [ -524, %719 ], [ %716, %712 ], [ -524, %708 ], [ %705, %703 ], [ -524, %699 ], [ -524, %687 ], [ %684, %683 ], [ -524, %679 ], [ %562, %561 ], [ 0, %160 ], [ 0, %666 ], [ 0, %659 ], [ 0, %672 ], [ %678, %677 ], [ -524, %673 ], [ %696, %695 ], [ -22, %691 ], [ -11, %836 ], [ -11, %846 ], [ -11, %856 ], [ -11, %866 ], [ -75, %1025 ], [ 0, %1057 ], [ %1047, %1055 ], [ -11, %1032 ], [ -22, %16 ], [ %155, %154 ], [ %71, %70 ], [ -22, %905 ], [ -22, %902 ], [ -22, %899 ], [ -22, %896 ], [ -22, %893 ], [ -22, %890 ], [ -22, %887 ], [ -22, %884 ], [ -22, %910 ]
  ret i32 %1077
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dtv_set_frontend(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.dvb_frontend_tune_settings, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %7) #10
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = tail call i32 @llvm.umin.i32(i32 %13, i32 %9) #10
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ %19, %18 ], [ %9, %1 ]
  %22 = icmp eq i32 %14, 0
  %23 = icmp eq i32 %21, 0
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %27, label %36

25:                                               ; preds = %16
  %26 = icmp eq i32 %14, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %25, %20
  %28 = phi i32 [ %21, %20 ], [ %13, %25 ]
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dvb_adapter, ptr %30, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %30, align 4
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.13, i32 noundef %33, i32 noundef %35) #13
  br label %36

36:                                               ; preds = %27, %25, %20
  %37 = phi i32 [ %28, %27 ], [ %21, %20 ], [ %13, %25 ]
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %43 [
    i32 5, label %40
    i32 6, label %40
    i32 17, label %40
    i32 9, label %40
  ]

40:                                               ; preds = %36, %36, %36, %36
  %41 = udiv i32 %14, 1000
  %42 = udiv i32 %37, 1000
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %41, %40 ], [ %14, %36 ]
  %45 = phi i32 [ %42, %40 ], [ %37, %36 ]
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %5, align 4
  %49 = icmp ult i32 %48, %44
  br i1 %49, label %55, label %50

50:                                               ; preds = %47, %43
  %51 = icmp eq i32 %45, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %50
  %53 = load i32, ptr %5, align 4
  %54 = icmp ugt i32 %53, %45
  br i1 %54, label %55, label %64

55:                                               ; preds = %52, %47
  %56 = phi i32 [ %48, %47 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dvb_adapter, ptr %58, i32 0, i32 6
  %60 = load ptr, ptr %59, align 4
  %61 = load i32, ptr %58, align 4
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 10
  %63 = load i32, ptr %62, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull @.str.14, i32 noundef %61, i32 noundef %63, i32 noundef %56, i32 noundef %44, i32 noundef %45) #13
  br label %231

64:                                               ; preds = %52, %50
  switch i32 %39, label %94 [
    i32 5, label %65
    i32 6, label %65
    i32 17, label %65
    i32 1, label %65
    i32 18, label %65
  ]

65:                                               ; preds = %64, %64, %64, %64, %64
  %66 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %71 = load i32, ptr %70, align 4
  %72 = icmp ult i32 %71, %67
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  br label %84

76:                                               ; preds = %69, %65
  %77 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %82, %78
  br i1 %83, label %84, label %94

84:                                               ; preds = %80, %73
  %85 = phi i32 [ %75, %73 ], [ %78, %80 ]
  %86 = phi i32 [ %71, %73 ], [ %82, %80 ]
  %87 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.dvb_adapter, ptr %88, i32 0, i32 6
  %90 = load ptr, ptr %89, align 4
  %91 = load i32, ptr %88, align 4
  %92 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 10
  %93 = load i32, ptr %92, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.15, i32 noundef %91, i32 noundef %93, i32 noundef %86, i32 noundef %67, i32 noundef %85) #13
  br label %231

94:                                               ; preds = %80, %76, %64
  %95 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 1
  tail call fastcc void @dtv_property_legacy_params_sync(ptr noundef %0, ptr noundef %5, ptr noundef %95)
  %96 = load i32, ptr %38, align 4
  switch i32 %96, label %123 [
    i32 11, label %120
    i32 2, label %120
    i32 1, label %106
    i32 18, label %97
    i32 5, label %98
    i32 17, label %98
    i32 9, label %98
    i32 6, label %99
  ]

97:                                               ; preds = %94
  br label %106

98:                                               ; preds = %94, %94, %94
  br label %106

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 14
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 2
  %103 = select i1 %102, i32 125, i32 135
  %104 = icmp eq i32 %101, 1
  %105 = select i1 %104, i32 120, i32 %103
  br label %106

106:                                              ; preds = %99, %98, %97, %94
  %107 = phi i32 [ 113, %97 ], [ 135, %98 ], [ 115, %94 ], [ %105, %99 ]
  %108 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %109 = load i32, ptr %108, align 4
  %110 = freeze i32 %109
  %111 = udiv i32 %110, 100
  %112 = mul i32 %111, 100
  %113 = sub i32 %110, %112
  %114 = mul i32 %111, %107
  %115 = mul nuw nsw i32 %113, %107
  %116 = trunc i32 %115 to i16
  %117 = udiv i16 %116, 100
  %118 = zext i16 %117 to i32
  %119 = add i32 %114, %118
  br label %120

120:                                              ; preds = %106, %94, %94
  %121 = phi i32 [ %119, %106 ], [ 6000000, %94 ], [ 6000000, %94 ]
  %122 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  store i32 %121, ptr %122, align 4
  br label %123

123:                                              ; preds = %120, %94
  %124 = load i32, ptr @dvb_force_auto_inversion, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  store i32 2, ptr %127, align 4
  br label %128

128:                                              ; preds = %126, %123
  %129 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 12
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 9, ptr %133, align 4
  br label %137

137:                                              ; preds = %136, %132, %128
  %138 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #10
  %139 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 13
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %158, label %142

142:                                              ; preds = %137
  %143 = call i32 %140(ptr noundef %0, ptr noundef nonnull %2) #10
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = load i32, ptr %38, align 4
  br label %158

147:                                              ; preds = %142
  %148 = load i32, ptr %2, align 4
  %149 = mul i32 %148, 100
  %150 = sdiv i32 %149, 1000
  %151 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 22
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %2, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 23
  store i32 %153, ptr %154, align 4
  %155 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %2, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 24
  store i32 %156, ptr %157, align 4
  br label %189

158:                                              ; preds = %145, %137
  %159 = phi i32 [ %146, %145 ], [ %96, %137 ]
  switch i32 %159, label %185 [
    i32 5, label %160
    i32 6, label %160
    i32 9, label %160
    i32 17, label %160
    i32 1, label %160
    i32 18, label %160
    i32 3, label %169
    i32 16, label %169
    i32 8, label %169
    i32 13, label %169
  ]

160:                                              ; preds = %158, %158, %158, %158, %158, %158
  %161 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 22
  store i32 5, ptr %161, align 4
  %162 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %163 = load i32, ptr %162, align 4
  %164 = udiv i32 %163, 16000
  %165 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 24
  store i32 %164, ptr %165, align 4
  %166 = load i32, ptr %162, align 4
  %167 = udiv i32 %166, 2000
  %168 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 23
  store i32 %167, ptr %168, align 4
  br label %189

169:                                              ; preds = %158, %158, %158, %158
  %170 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 22
  store i32 5, ptr %170, align 4
  %171 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 3
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 0, i32 3
  %174 = load i32, ptr %173, align 4
  %175 = call i32 @llvm.umax.i32(i32 %172, i32 %174) #10
  %176 = load i32, ptr %38, align 4
  switch i32 %176, label %179 [
    i32 5, label %177
    i32 6, label %177
    i32 17, label %177
    i32 9, label %177
  ]

177:                                              ; preds = %169, %169, %169, %169
  %178 = udiv i32 %175, 1000
  br label %179

179:                                              ; preds = %177, %169
  %180 = phi i32 [ %175, %169 ], [ %178, %177 ]
  %181 = shl i32 %180, 1
  %182 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 24
  store i32 %181, ptr %182, align 4
  %183 = or i32 %181, 1
  %184 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 23
  store i32 %183, ptr %184, align 4
  br label %189

185:                                              ; preds = %158
  %186 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 22
  store i32 5, ptr %186, align 4
  %187 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 24
  store i32 0, ptr %187, align 4
  %188 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 23
  store i32 0, ptr %188, align 4
  br label %189

189:                                              ; preds = %185, %179, %160, %147
  %190 = load i32, ptr @dvb_override_tune_delay, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = mul i32 %190, 100
  %194 = sdiv i32 %193, 1000
  %195 = getelementptr inbounds %struct.dvb_frontend_private, ptr %138, i32 0, i32 22
  store i32 %194, ptr %195, align 4
  br label %196

196:                                              ; preds = %192, %189
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %197 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 15
  store i32 2, ptr %197, align 4
  %198 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 27
  %199 = load i32, ptr %198, align 4
  %200 = or i32 %199, 16
  store i32 %200, ptr %198, align 4
  %201 = load ptr, ptr %3, align 4
  %202 = getelementptr inbounds %struct.dvb_frontend_private, ptr %201, i32 0, i32 2, i32 5
  call void @mutex_lock(ptr noundef %202) #10
  %203 = getelementptr inbounds %struct.dvb_frontend_private, ptr %201, i32 0, i32 2, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr inbounds %struct.dvb_frontend_private, ptr %201, i32 0, i32 2, i32 2
  store i32 %204, ptr %205, align 4
  call void @mutex_unlock(ptr noundef %202) #10
  %206 = load ptr, ptr %3, align 4
  %207 = getelementptr inbounds %struct.dvb_frontend_private, ptr %206, i32 0, i32 2, i32 5
  call void @mutex_lock(ptr noundef %207) #10
  %208 = getelementptr inbounds %struct.dvb_frontend_private, ptr %206, i32 0, i32 2, i32 1
  %209 = load i32, ptr %208, align 4
  %210 = add i32 %209, 1
  %211 = srem i32 %210, 8
  %212 = getelementptr inbounds %struct.dvb_frontend_private, ptr %206, i32 0, i32 2, i32 2
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %211, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %196
  %216 = getelementptr inbounds %struct.dvb_frontend_private, ptr %206, i32 0, i32 2, i32 3
  store i32 1, ptr %216, align 4
  %217 = trunc i32 %211 to i8
  %218 = add nsw i8 %217, 1
  %219 = srem i8 %218, 8
  %220 = sext i8 %219 to i32
  store i32 %220, ptr %212, align 4
  br label %221

221:                                              ; preds = %215, %196
  %222 = getelementptr inbounds %struct.dvb_frontend_private, ptr %206, i32 0, i32 2
  %223 = getelementptr [8 x %struct.dvb_frontend_event], ptr %222, i32 0, i32 %209
  store i32 0, ptr %223, align 4
  %224 = getelementptr [8 x %struct.dvb_frontend_event], ptr %222, i32 0, i32 %209, i32 1
  %225 = getelementptr inbounds %struct.dvb_frontend_private, ptr %206, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %224, ptr noundef align 4 dereferenceable(36) %225, i32 36, i1 false) #10
  store i32 %211, ptr %208, align 4
  call void @mutex_unlock(ptr noundef %207) #10
  %226 = getelementptr inbounds %struct.dvb_frontend_private, ptr %206, i32 0, i32 2, i32 4
  call void @__wake_up(ptr noundef %226, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %227 = load ptr, ptr %3, align 4
  %228 = getelementptr inbounds %struct.dvb_frontend_private, ptr %227, i32 0, i32 8
  store i32 1, ptr %228, align 4
  %229 = getelementptr inbounds %struct.dvb_frontend_private, ptr %227, i32 0, i32 5
  call void @__wake_up(ptr noundef %229, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %230 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 9
  store i32 0, ptr %230, align 4
  br label %231

231:                                              ; preds = %221, %84, %55
  %232 = phi i32 [ 0, %221 ], [ -22, %55 ], [ -22, %84 ]
  ret i32 %232
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbv5_set_delivery_system(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 0
  %6 = load i8, ptr %5, align 1
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i8 [ %9, %7 ], [ %6, %4 ]
  %13 = phi i32 [ %10, %7 ], [ %1, %4 ]
  %14 = icmp eq i8 %12, 0
  br i1 %14, label %69, label %64

15:                                               ; preds = %64
  %16 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %69, label %19

19:                                               ; preds = %15
  %20 = zext i8 %17 to i32
  %21 = icmp eq i32 %13, %20
  br i1 %21, label %67, label %22

22:                                               ; preds = %19
  %23 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %69, label %26

26:                                               ; preds = %22
  %27 = zext i8 %24 to i32
  %28 = icmp eq i32 %13, %27
  br i1 %28, label %67, label %29

29:                                               ; preds = %26
  %30 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %69, label %33

33:                                               ; preds = %29
  %34 = zext i8 %31 to i32
  %35 = icmp eq i32 %13, %34
  br i1 %35, label %67, label %36

36:                                               ; preds = %33
  %37 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 4
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %36
  %41 = zext i8 %38 to i32
  %42 = icmp eq i32 %13, %41
  br i1 %42, label %67, label %43

43:                                               ; preds = %40
  %44 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 5
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %43
  %48 = zext i8 %45 to i32
  %49 = icmp eq i32 %13, %48
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 6
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = zext i8 %52 to i32
  %56 = icmp eq i32 %13, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 7
  %59 = load i8, ptr %58, align 1
  %60 = icmp ne i8 %59, 0
  %61 = zext i8 %59 to i32
  %62 = icmp eq i32 %13, %61
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %67, label %69

64:                                               ; preds = %11
  %65 = zext i8 %12 to i32
  %66 = icmp eq i32 %13, %65
  br i1 %66, label %67, label %15

67:                                               ; preds = %64, %57, %54, %47, %40, %33, %26, %19
  %68 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  store i32 %13, ptr %68, align 4
  br label %221

69:                                               ; preds = %57, %50, %43, %36, %29, %22, %15, %11
  %70 = add i32 %13, -1
  %71 = tail call i32 @llvm.fshl.i32(i32 %70, i32 %70, i32 31) #10
  switch i32 %71, label %221 [
    i32 2, label %72
    i32 1, label %72
    i32 0, label %72
    i32 5, label %72
  ]

72:                                               ; preds = %69, %69, %69, %69
  %73 = add i32 %13, -1
  %74 = icmp ult i32 %73, 18
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = getelementptr inbounds [18 x i32], ptr @switch.table.dvbv5_set_delivery_system.29, i32 0, i32 %73
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i32 [ %77, %75 ], [ 0, %72 ]
  br i1 %14, label %221, label %80

80:                                               ; preds = %78
  %81 = zext i8 %12 to i32
  %82 = add i8 %12, -1
  %83 = icmp ult i8 %82, 18
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = sext i8 %82 to i32
  %86 = getelementptr inbounds [18 x i32], ptr @switch.table.dvbv5_set_delivery_system.29, i32 0, i32 %85
  %87 = load i32, ptr %86, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i32 [ %87, %84 ], [ 0, %80 ]
  %90 = icmp eq i32 %89, %79
  %91 = select i1 %90, i32 %81, i32 0
  %92 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 1
  %93 = load i8, ptr %92, align 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %191, label %95

95:                                               ; preds = %88
  %96 = zext i8 %93 to i32
  %97 = add i8 %93, -1
  %98 = icmp ult i8 %97, 18
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = sext i8 %97 to i32
  %101 = getelementptr inbounds [18 x i32], ptr @switch.table.dvbv5_set_delivery_system.29, i32 0, i32 %100
  %102 = load i32, ptr %101, align 4
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i32 [ %102, %99 ], [ 0, %95 ]
  %105 = icmp eq i32 %104, %79
  %106 = select i1 %105, i32 %96, i32 %91
  %107 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 2
  %108 = load i8, ptr %107, align 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %191, label %110

110:                                              ; preds = %103
  %111 = zext i8 %108 to i32
  %112 = add i8 %108, -1
  %113 = icmp ult i8 %112, 18
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = sext i8 %112 to i32
  %116 = getelementptr inbounds [18 x i32], ptr @switch.table.dvbv5_set_delivery_system.29, i32 0, i32 %115
  %117 = load i32, ptr %116, align 4
  br label %118

118:                                              ; preds = %114, %110
  %119 = phi i32 [ %117, %114 ], [ 0, %110 ]
  %120 = icmp eq i32 %119, %79
  %121 = select i1 %120, i32 %111, i32 %106
  %122 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 3
  %123 = load i8, ptr %122, align 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %191, label %125

125:                                              ; preds = %118
  %126 = zext i8 %123 to i32
  %127 = add i8 %123, -1
  %128 = icmp ult i8 %127, 18
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = sext i8 %127 to i32
  %131 = getelementptr inbounds [18 x i32], ptr @switch.table.dvbv5_set_delivery_system.29, i32 0, i32 %130
  %132 = load i32, ptr %131, align 4
  br label %133

133:                                              ; preds = %129, %125
  %134 = phi i32 [ %132, %129 ], [ 0, %125 ]
  %135 = icmp eq i32 %134, %79
  %136 = select i1 %135, i32 %126, i32 %121
  %137 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 4
  %138 = load i8, ptr %137, align 1
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %191, label %140

140:                                              ; preds = %133
  %141 = zext i8 %138 to i32
  %142 = add i8 %138, -1
  %143 = icmp ult i8 %142, 18
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = sext i8 %142 to i32
  %146 = getelementptr inbounds [18 x i32], ptr @switch.table.dvbv5_set_delivery_system.29, i32 0, i32 %145
  %147 = load i32, ptr %146, align 4
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi i32 [ %147, %144 ], [ 0, %140 ]
  %150 = icmp eq i32 %149, %79
  %151 = select i1 %150, i32 %141, i32 %136
  %152 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 5
  %153 = load i8, ptr %152, align 1
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %191, label %155

155:                                              ; preds = %148
  %156 = zext i8 %153 to i32
  %157 = add i8 %153, -1
  %158 = icmp ult i8 %157, 18
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = sext i8 %157 to i32
  %161 = getelementptr inbounds [18 x i32], ptr @switch.table.dvbv5_set_delivery_system.29, i32 0, i32 %160
  %162 = load i32, ptr %161, align 4
  br label %163

163:                                              ; preds = %159, %155
  %164 = phi i32 [ %162, %159 ], [ 0, %155 ]
  %165 = icmp eq i32 %164, %79
  %166 = select i1 %165, i32 %156, i32 %151
  %167 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 6
  %168 = load i8, ptr %167, align 1
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %191, label %170

170:                                              ; preds = %163
  %171 = zext i8 %168 to i32
  %172 = add i8 %168, -1
  %173 = icmp ult i8 %172, 18
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = sext i8 %172 to i32
  %176 = getelementptr inbounds [18 x i32], ptr @switch.table.dvbv5_set_delivery_system.29, i32 0, i32 %175
  %177 = load i32, ptr %176, align 4
  br label %178

178:                                              ; preds = %174, %170
  %179 = phi i32 [ %177, %174 ], [ 0, %170 ]
  %180 = icmp eq i32 %179, %79
  %181 = select i1 %180, i32 %171, i32 %166
  %182 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 1, i32 7
  %183 = load i8, ptr %182, align 1
  switch i8 %183, label %187 [
    i8 0, label %191
    i8 1, label %188
    i8 18, label %188
    i8 5, label %186
    i8 6, label %186
    i8 17, label %186
    i8 9, label %186
    i8 4, label %186
    i8 3, label %185
    i8 16, label %185
    i8 8, label %185
    i8 13, label %185
    i8 11, label %184
    i8 12, label %184
    i8 2, label %184
  ]

184:                                              ; preds = %178, %178, %178
  br label %188

185:                                              ; preds = %178, %178, %178, %178
  br label %188

186:                                              ; preds = %178, %178, %178, %178, %178
  br label %188

187:                                              ; preds = %178
  br label %188

188:                                              ; preds = %187, %186, %185, %184, %178, %178
  %189 = phi i32 [ 0, %187 ], [ 4, %184 ], [ 3, %185 ], [ 1, %186 ], [ 2, %178 ], [ 2, %178 ]
  %190 = icmp eq i32 %189, %79
  br i1 %190, label %194, label %191

191:                                              ; preds = %188, %178, %163, %148, %133, %118, %103, %88
  %192 = phi i32 [ %91, %88 ], [ %106, %103 ], [ %121, %118 ], [ %136, %133 ], [ %151, %148 ], [ %166, %163 ], [ %181, %178 ], [ %181, %188 ]
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %221, label %194

194:                                              ; preds = %191, %188
  %195 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  store i32 %13, ptr %195, align 4
  %196 = icmp eq i32 %13, 8
  br i1 %196, label %197, label %221

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  store i32 6000000, ptr %198, align 4
  br label %202

202:                                              ; preds = %201, %197
  %203 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 17
  store i8 0, ptr %203, align 4
  %204 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 18
  store i8 0, ptr %204, align 1
  %205 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 19
  store i8 0, ptr %205, align 2
  %206 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 20
  store i32 0, ptr %206, align 4
  %207 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 21
  store i32 0, ptr %207, align 4
  %208 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 22
  store i8 7, ptr %208, align 4
  %209 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 0
  %210 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 0, i32 1
  store i32 9, ptr %210, align 4
  %211 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 0, i32 2
  store i32 6, ptr %211, align 4
  %212 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 0, i32 3
  store i8 0, ptr %212, align 4
  store i8 0, ptr %209, align 4
  %213 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 1
  %214 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 1, i32 1
  store i32 9, ptr %214, align 4
  %215 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 1, i32 2
  store i32 6, ptr %215, align 4
  %216 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 1, i32 3
  store i8 0, ptr %216, align 4
  store i8 0, ptr %213, align 4
  %217 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 2
  %218 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 2, i32 1
  store i32 9, ptr %218, align 4
  %219 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 2, i32 2
  store i32 6, ptr %219, align 4
  %220 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 2, i32 3
  store i8 0, ptr %220, align 4
  store i8 0, ptr %217, align 4
  br label %221

221:                                              ; preds = %202, %194, %191, %78, %69, %67
  %222 = phi i32 [ 0, %67 ], [ -22, %191 ], [ -22, %69 ], [ 0, %194 ], [ 0, %202 ], [ -22, %78 ]
  ret i32 %222
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dtv_property_legacy_params_sync(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %10 [
    i32 1, label %22
    i32 18, label %22
    i32 5, label %15
    i32 6, label %15
    i32 17, label %15
    i32 9, label %15
    i32 4, label %15
    i32 3, label %32
    i32 16, label %32
    i32 8, label %32
    i32 13, label %32
    i32 11, label %62
    i32 12, label %62
    i32 2, label %62
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dvb_adapter, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dtv_property_legacy_params_sync, i32 noundef %9) #13
  br label %66

15:                                               ; preds = %3, %3, %3, %3, %3
  %16 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  br label %66

22:                                               ; preds = %3, %3
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  br label %66

32:                                               ; preds = %3, %3, %3, %3
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  switch i32 %34, label %40 [
    i32 10000000, label %41
    i32 8000000, label %35
    i32 7000000, label %36
    i32 6000000, label %37
    i32 5000000, label %38
    i32 1712000, label %39
  ]

35:                                               ; preds = %32
  br label %41

36:                                               ; preds = %32
  br label %41

37:                                               ; preds = %32
  br label %41

38:                                               ; preds = %32
  br label %41

39:                                               ; preds = %32
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %39, %38, %37, %36, %35, %32
  %42 = phi i32 [ 3, %40 ], [ 6, %39 ], [ 4, %38 ], [ 2, %37 ], [ 1, %36 ], [ 0, %35 ], [ 5, %32 ]
  %43 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 2
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 5
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2, i32 0, i32 6
  store i32 %60, ptr %61, align 4
  br label %66

62:                                               ; preds = %3, %3, %3
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.dvb_frontend_parameters, ptr %2, i32 0, i32 2
  store i32 %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %62, %41, %22, %15, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dvb_frontend_add_event(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %6 = and i32 %1, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 1
  %14 = tail call i32 %10(ptr noundef %0, ptr noundef %5) #10
  %15 = icmp slt i32 %14, 0
  %16 = icmp eq ptr %13, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %19, label %18, !prof !25

18:                                               ; preds = %12
  tail call fastcc void @dtv_property_legacy_params_sync(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %13) #10
  br label %19

19:                                               ; preds = %18, %12, %8, %2
  %20 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 2, i32 5
  tail call void @mutex_lock(ptr noundef %20) #10
  %21 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 2, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  %24 = srem i32 %23, 8
  %25 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 2, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 2, i32 3
  store i32 1, ptr %29, align 4
  %30 = trunc i32 %24 to i8
  %31 = add i8 %30, 1
  %32 = srem i8 %31, 8
  %33 = sext i8 %32 to i32
  store i32 %33, ptr %25, align 4
  br label %34

34:                                               ; preds = %28, %19
  %35 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 2
  %36 = getelementptr [8 x %struct.dvb_frontend_event], ptr %35, i32 0, i32 %22
  store i32 %1, ptr %36, align 4
  %37 = getelementptr [8 x %struct.dvb_frontend_event], ptr %35, i32 0, i32 %22, i32 1
  %38 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %37, ptr noundef align 4 dereferenceable(36) %38, i32 36, i1 false)
  store i32 %24, ptr %21, align 4
  tail call void @mutex_unlock(ptr noundef %20) #10
  %39 = getelementptr inbounds %struct.dvb_frontend_private, ptr %4, i32 0, i32 2, i32 4
  tail call void @__wake_up(ptr noundef %39, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvb_frontend_thread(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 26
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 25
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 11
  store i32 300, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 9
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 8
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 12
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = tail call i32 %14(ptr noundef %0) #10
  br label %18

18:                                               ; preds = %16, %1
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call i32 %24(ptr noundef %0, i32 noundef 1) #10
  %28 = load ptr, ptr %19, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %28, %26 ], [ %20, %22 ]
  %31 = tail call i32 %30(ptr noundef %0) #10
  %32 = load ptr, ptr %23, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call i32 %32(ptr noundef %0, i32 noundef 0) #10
  br label %36

36:                                               ; preds = %34, %29, %18
  %37 = tail call zeroext i1 @set_freezable() #10
  %38 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 3
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 11
  %40 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 5
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 24
  %43 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 13
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 25
  %45 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 14
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 11
  %47 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 15
  %48 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 27
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 31
  %50 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 1
  %51 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 15
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 10
  %53 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 10
  br label %54

54:                                               ; preds = %253, %36
  call void @up(ptr noundef %38) #10
  br label %55

55:                                               ; preds = %179, %54
  %56 = load i32, ptr %9, align 4
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr inbounds %struct.dvb_frontend_private, ptr %57, i32 0, i32 8
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  store i32 0, ptr %58, align 4
  br label %150

62:                                               ; preds = %55
  %63 = load i32, ptr %39, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %150

65:                                               ; preds = %62
  %66 = load ptr, ptr %57, align 4
  %67 = getelementptr inbounds %struct.dvb_device, ptr %66, i32 0, i32 7
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load volatile i32, ptr @jiffies, align 64
  %72 = getelementptr inbounds %struct.dvb_frontend_private, ptr %57, i32 0, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = load i32, ptr @dvb_shutdown_timeout, align 4
  %75 = mul i32 %74, -100
  %76 = sub i32 %71, %73
  %77 = add i32 %76, %75
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %150, label %79

79:                                               ; preds = %70, %65
  %80 = call zeroext i1 @kthread_should_stop() #10
  br i1 %80, label %150, label %81

81:                                               ; preds = %79
  %82 = load volatile i32, ptr @system_freezing_cnt, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84, !prof !13

84:                                               ; preds = %81
  %85 = tail call ptr @llvm.thread.pointer() #10
  %86 = call zeroext i1 @freezing_slow_path(ptr noundef %85) #10
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i1 [ %86, %84 ], [ false, %81 ]
  %89 = xor i1 %88, true
  %90 = icmp eq i32 %56, 0
  %91 = select i1 %89, i1 %90, i1 false
  %92 = select i1 %88, i1 true, i1 %91
  br i1 %92, label %150, label %93

93:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !24
  %94 = load i32, ptr %9, align 4
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #10
  %95 = call i32 @prepare_to_wait_event(ptr noundef %40, ptr noundef nonnull %3, i32 noundef 1) #10
  %96 = load ptr, ptr %5, align 4
  %97 = getelementptr inbounds %struct.dvb_frontend_private, ptr %96, i32 0, i32 8
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %141, %93
  %101 = phi ptr [ %96, %93 ], [ %144, %141 ]
  %102 = getelementptr inbounds %struct.dvb_frontend_private, ptr %101, i32 0, i32 8
  store i32 0, ptr %102, align 4
  br label %148

103:                                              ; preds = %141, %93
  %104 = phi ptr [ %144, %141 ], [ %96, %93 ]
  %105 = phi i32 [ %143, %141 ], [ %95, %93 ]
  %106 = phi i32 [ %142, %141 ], [ %94, %93 ]
  %107 = load i32, ptr %39, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %148

109:                                              ; preds = %103
  %110 = load ptr, ptr %104, align 4
  %111 = getelementptr inbounds %struct.dvb_device, ptr %110, i32 0, i32 7
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load volatile i32, ptr @jiffies, align 64
  %116 = getelementptr inbounds %struct.dvb_frontend_private, ptr %104, i32 0, i32 7
  %117 = load i32, ptr %116, align 4
  %118 = load i32, ptr @dvb_shutdown_timeout, align 4
  %119 = mul i32 %118, -100
  %120 = sub i32 %115, %117
  %121 = add i32 %120, %119
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %148, label %123

123:                                              ; preds = %114, %109
  %124 = call zeroext i1 @kthread_should_stop() #10
  br i1 %124, label %148, label %125

125:                                              ; preds = %123
  %126 = load volatile i32, ptr @system_freezing_cnt, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128, !prof !13

128:                                              ; preds = %125
  %129 = tail call ptr @llvm.thread.pointer() #10
  %130 = call zeroext i1 @freezing_slow_path(ptr noundef %129) #10
  br label %131

131:                                              ; preds = %128, %125
  %132 = phi i1 [ %130, %128 ], [ false, %125 ]
  %133 = xor i1 %132, true
  %134 = icmp ne i32 %106, 0
  %135 = select i1 %133, i1 true, i1 %134
  %136 = select i1 %135, i32 %106, i32 1
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %132, i1 true, i1 %137
  br i1 %138, label %148, label %139

139:                                              ; preds = %131
  %140 = icmp eq i32 %105, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %139
  %142 = call i32 @schedule_timeout(i32 noundef %136) #10
  %143 = call i32 @prepare_to_wait_event(ptr noundef %40, ptr noundef nonnull %3, i32 noundef 1) #10
  %144 = load ptr, ptr %5, align 4
  %145 = getelementptr inbounds %struct.dvb_frontend_private, ptr %144, i32 0, i32 8
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %103, label %100

148:                                              ; preds = %131, %123, %114, %103, %100
  call void @finish_wait(ptr noundef %40, ptr noundef nonnull %3) #10
  br label %149

149:                                              ; preds = %148, %139
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  br label %150

150:                                              ; preds = %149, %87, %79, %70, %62, %61
  %151 = call zeroext i1 @kthread_should_stop() #10
  br i1 %151, label %170, label %152

152:                                              ; preds = %150
  %153 = load ptr, ptr %5, align 4
  %154 = load i32, ptr %39, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %152
  %157 = load ptr, ptr %153, align 4
  %158 = getelementptr inbounds %struct.dvb_device, ptr %157, i32 0, i32 7
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %173

161:                                              ; preds = %156
  %162 = load volatile i32, ptr @jiffies, align 64
  %163 = getelementptr inbounds %struct.dvb_frontend_private, ptr %153, i32 0, i32 7
  %164 = load i32, ptr %163, align 4
  %165 = load i32, ptr @dvb_shutdown_timeout, align 4
  %166 = mul i32 %165, -100
  %167 = sub i32 %162, %164
  %168 = add i32 %167, %166
  %169 = icmp sgt i32 %168, -1
  br i1 %169, label %170, label %173

170:                                              ; preds = %161, %152, %150
  %171 = call i32 @down_interruptible(ptr noundef %38) #10
  %172 = icmp eq i32 %171, 0
  store i32 1, ptr %39, align 4
  br label %292

173:                                              ; preds = %161, %156
  %174 = load volatile i32, ptr @system_freezing_cnt, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %181, label %176, !prof !13

176:                                              ; preds = %173
  %177 = tail call ptr @llvm.thread.pointer() #10
  %178 = call zeroext i1 @freezing_slow_path(ptr noundef %177) #10
  br i1 %178, label %179, label %181, !prof !12

179:                                              ; preds = %176
  %180 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #10
  br i1 %180, label %55, label %181

181:                                              ; preds = %179, %176, %173
  %182 = call i32 @down_interruptible(ptr noundef %38) #10
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %292

184:                                              ; preds = %181
  %185 = load i32, ptr %12, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %225, label %187

187:                                              ; preds = %184
  %188 = load ptr, ptr %13, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = call i32 %188(ptr noundef %0) #10
  br label %192

192:                                              ; preds = %190, %187
  %193 = load ptr, ptr %19, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %208, label %195

195:                                              ; preds = %192
  %196 = load ptr, ptr %41, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = call i32 %196(ptr noundef %0, i32 noundef 1) #10
  %200 = load ptr, ptr %19, align 4
  br label %201

201:                                              ; preds = %198, %195
  %202 = phi ptr [ %200, %198 ], [ %193, %195 ]
  %203 = call i32 %202(ptr noundef %0) #10
  %204 = load ptr, ptr %41, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %208, label %206

206:                                              ; preds = %201
  %207 = call i32 %204(ptr noundef %0, i32 noundef 0) #10
  br label %208

208:                                              ; preds = %206, %201, %192
  %209 = load ptr, ptr %42, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %216, label %211

211:                                              ; preds = %208
  %212 = load i32, ptr %43, align 4
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = call i32 %209(ptr noundef %0, i32 noundef %212) #10
  br label %216

216:                                              ; preds = %214, %211, %208
  %217 = load ptr, ptr %44, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %224, label %219

219:                                              ; preds = %216
  %220 = load i32, ptr %45, align 4
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %224, label %222

222:                                              ; preds = %219
  %223 = call i32 %217(ptr noundef %0, i32 noundef %220) #10
  br label %224

224:                                              ; preds = %222, %219, %216
  store i32 0, ptr %12, align 4
  br label %225

225:                                              ; preds = %224, %184
  %226 = load ptr, ptr %46, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %291, label %228

228:                                              ; preds = %225
  %229 = call i32 %226(ptr noundef %0) #10
  switch i32 %229, label %253 [
    i32 1, label %230
    i32 2, label %252
    i32 4, label %254
  ]

230:                                              ; preds = %228
  %231 = load i32, ptr %47, align 4
  %232 = and i32 %231, 2
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  store i32 16, ptr %47, align 4
  br label %235

235:                                              ; preds = %234, %230
  %236 = load ptr, ptr %52, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %242, label %238

238:                                              ; preds = %235
  %239 = xor i1 %233, true
  %240 = load i32, ptr %53, align 4
  %241 = call i32 %236(ptr noundef %0, i1 noundef zeroext %239, i32 noundef %240, ptr noundef %9, ptr noundef nonnull %2) #10
  br label %242

242:                                              ; preds = %238, %235
  %243 = load i32, ptr %2, align 4
  %244 = load i32, ptr %10, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %253, label %246

246:                                              ; preds = %242
  %247 = load i32, ptr %53, align 4
  %248 = and i32 %247, 1
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  call fastcc void @dvb_frontend_add_event(ptr noundef %0, i32 noundef %243)
  %251 = load i32, ptr %2, align 4
  store i32 %251, ptr %10, align 4
  br label %253

252:                                              ; preds = %228
  call fastcc void @dvb_frontend_swzigzag(ptr noundef %0)
  br label %253

253:                                              ; preds = %291, %290, %287, %277, %252, %250, %246, %242, %228
  br label %54

254:                                              ; preds = %228
  %255 = load i32, ptr %47, align 4
  %256 = and i32 %255, 2
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %254
  store i32 16, ptr %47, align 4
  br label %259

259:                                              ; preds = %258, %254
  %260 = load i32, ptr %48, align 4
  %261 = and i32 %260, 16
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %272, label %263

263:                                              ; preds = %259
  %264 = load ptr, ptr %49, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %268, label %266

266:                                              ; preds = %263
  %267 = call i32 %264(ptr noundef %0) #10
  br label %270

268:                                              ; preds = %263
  %269 = and i32 %260, -17
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  store i32 %271, ptr %48, align 4
  br label %272

272:                                              ; preds = %270, %259
  %273 = phi i32 [ %260, %259 ], [ %271, %270 ]
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = or i32 %273, 16
  store i32 %276, ptr %48, align 4
  store i32 50, ptr %9, align 4
  br label %277

277:                                              ; preds = %275, %272
  call fastcc void @dtv_property_legacy_params_sync(ptr noundef %0, ptr noundef %4, ptr noundef %50)
  %278 = load ptr, ptr %51, align 4
  %279 = call i32 %278(ptr noundef %0, ptr noundef nonnull %2) #10
  %280 = load i32, ptr %2, align 4
  %281 = load i32, ptr %10, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %253, label %283

283:                                              ; preds = %277
  call fastcc void @dvb_frontend_add_event(ptr noundef %0, i32 noundef %280)
  %284 = load i32, ptr %2, align 4
  store i32 %284, ptr %10, align 4
  %285 = and i32 %284, 16
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  store i32 10, ptr %9, align 4
  %288 = load i32, ptr %48, align 4
  %289 = or i32 %288, 16
  store i32 %289, ptr %48, align 4
  br label %253

290:                                              ; preds = %283
  store i32 6000, ptr %9, align 4
  br label %253

291:                                              ; preds = %225
  call fastcc void @dvb_frontend_swzigzag(ptr noundef %0)
  br label %253

292:                                              ; preds = %181, %170
  %293 = phi i1 [ %172, %170 ], [ false, %181 ]
  %294 = load i32, ptr @dvb_powerdown_on_sleep, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %324, label %296

296:                                              ; preds = %292
  %297 = load ptr, ptr %44, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %301, label %299

299:                                              ; preds = %296
  %300 = call i32 %297(ptr noundef %0, i32 noundef 2) #10
  br label %301

301:                                              ; preds = %299, %296
  %302 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 3
  %303 = load ptr, ptr %302, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %318, label %305

305:                                              ; preds = %301
  %306 = load ptr, ptr %41, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %311, label %308

308:                                              ; preds = %305
  %309 = call i32 %306(ptr noundef %0, i32 noundef 1) #10
  %310 = load ptr, ptr %302, align 4
  br label %311

311:                                              ; preds = %308, %305
  %312 = phi ptr [ %310, %308 ], [ %303, %305 ]
  %313 = call i32 %312(ptr noundef %0) #10
  %314 = load ptr, ptr %41, align 4
  %315 = icmp eq ptr %314, null
  br i1 %315, label %318, label %316

316:                                              ; preds = %311
  %317 = call i32 %314(ptr noundef %0, i32 noundef 0) #10
  br label %318

318:                                              ; preds = %316, %311, %301
  %319 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 6
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, null
  br i1 %321, label %324, label %322

322:                                              ; preds = %318
  %323 = call i32 %320(ptr noundef %0) #10
  br label %324

324:                                              ; preds = %322, %318, %292
  %325 = getelementptr inbounds %struct.dvb_frontend_private, ptr %6, i32 0, i32 6
  store ptr null, ptr %325, align 4
  %326 = call zeroext i1 @kthread_should_stop() #10
  %327 = select i1 %326, i32 2, i32 0
  store i32 %327, ptr %39, align 4
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  call void @arm_heavy_mb() #10
  br i1 %293, label %328, label %329

328:                                              ; preds = %324
  call void @up(ptr noundef %38) #10
  br label %329

329:                                              ; preds = %328, %324
  %330 = load ptr, ptr %5, align 4
  %331 = getelementptr inbounds %struct.dvb_frontend_private, ptr %330, i32 0, i32 8
  store i32 1, ptr %331, align 4
  %332 = getelementptr inbounds %struct.dvb_frontend_private, ptr %330, i32 0, i32 5
  call void @__wake_up(ptr noundef %332, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dvb_frontend_swzigzag(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dtv_frontend_properties, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %3)
  %7 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 23
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load i1, ptr @dvb_frontend_swzigzag.__print_once, align 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  store i1 true, ptr @dvb_frontend_swzigzag.__print_once, align 1
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dvb_adapter, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.18) #13
  br label %17

17:                                               ; preds = %12, %10, %1
  %18 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 11
  store i32 300, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 25
  store i32 0, ptr %24, align 4
  br label %224

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %19, 2
  %31 = icmp eq i32 %30, 0
  br i1 %29, label %46, label %32

32:                                               ; preds = %25
  br i1 %31, label %43, label %33

33:                                               ; preds = %32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(456) %3, ptr noundef align 4 dereferenceable(456) %6, i32 456, i1 false)
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call i32 %35(ptr noundef %0) #10
  %39 = icmp slt i32 %38, 0
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(456) %6, ptr noundef nonnull align 4 dereferenceable(456) %3, i32 456, i1 false)
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ 16, %40 ], [ 256, %37 ]
  store i32 %42, ptr %18, align 4
  br label %43

43:                                               ; preds = %41, %32
  %44 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 11
  store i32 300, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 25
  store i32 0, ptr %45, align 4
  br label %224

46:                                               ; preds = %25
  br i1 %31, label %48, label %47

47:                                               ; preds = %46
  store i32 0, ptr %2, align 4
  br label %62

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 15
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = call i32 %50(ptr noundef %0, ptr noundef nonnull %2) #10
  %54 = load i32, ptr %2, align 4
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i32 [ %54, %52 ], [ 0, %48 ]
  %57 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 9
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  call fastcc void @dvb_frontend_add_event(ptr noundef %0, i32 noundef %56)
  %61 = load i32, ptr %2, align 4
  store i32 %61, ptr %57, align 4
  br label %62

62:                                               ; preds = %60, %55, %47
  %63 = phi i32 [ %56, %55 ], [ %61, %60 ], [ 0, %47 ]
  %64 = load i32, ptr %18, align 4
  %65 = and i32 %64, 236
  %66 = icmp eq i32 %65, 0
  %67 = and i32 %63, 16
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %95, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 25
  %72 = load i32, ptr %71, align 4
  %73 = mul i32 %72, 220
  %74 = add i32 %73, 9216
  %75 = sdiv i32 %74, 256
  store i32 %75, ptr %71, align 4
  %76 = add nsw i32 %75, -128
  %77 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 22
  %78 = load i32, ptr %77, align 4
  %79 = mul nsw i32 %76, 100
  %80 = mul i32 %79, %76
  %81 = sdiv i32 %80, 16384
  %82 = add i32 %81, %78
  %83 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 11
  store i32 %82, ptr %83, align 4
  store i32 16, ptr %18, align 4
  %84 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 8
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %224

88:                                               ; preds = %70
  %89 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %224

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 18
  %94 = load i32, ptr %93, align 4
  store i32 %94, ptr %89, align 4
  br label %224

95:                                               ; preds = %62
  %96 = and i32 %64, 16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %120, label %98

98:                                               ; preds = %95
  %99 = and i32 %63, 16
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 25
  %102 = load i32, ptr %101, align 4
  %103 = mul i32 %102, 220
  %104 = add i32 %103, 9216
  %105 = select i1 %100, i32 %103, i32 %104
  %106 = sdiv i32 %105, 256
  store i32 %106, ptr %101, align 4
  %107 = add nsw i32 %106, -128
  %108 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 22
  %109 = load i32, ptr %108, align 4
  %110 = mul nsw i32 %107, 100
  %111 = mul i32 %110, %107
  %112 = sdiv i32 %111, 16384
  %113 = add i32 %112, %109
  %114 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 11
  store i32 %113, ptr %114, align 4
  br i1 %100, label %115, label %224

115:                                              ; preds = %98
  store i32 32, ptr %18, align 4
  %116 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 19
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 21
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 26
  store i32 0, ptr %119, align 4
  br label %123

120:                                              ; preds = %95
  %121 = and i32 %64, 96
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %149, label %123

123:                                              ; preds = %120, %115
  %124 = phi i32 [ 32, %115 ], [ %64, %120 ]
  %125 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 8
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 1073741824
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %149, label %129

129:                                              ; preds = %123
  %130 = load i32, ptr %7, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %129
  %133 = and i32 %63, 16
  %134 = icmp eq i32 %133, 0
  %135 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 25
  %136 = load i32, ptr %135, align 4
  %137 = mul i32 %136, 220
  %138 = add i32 %137, 9216
  %139 = select i1 %134, i32 %137, i32 %138
  %140 = sdiv i32 %139, 256
  store i32 %140, ptr %135, align 4
  %141 = add nsw i32 %140, -128
  %142 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 22
  %143 = load i32, ptr %142, align 4
  %144 = mul nsw i32 %141, 100
  %145 = mul i32 %144, %141
  %146 = sdiv i32 %145, 16384
  %147 = add i32 %146, %143
  %148 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 11
  store i32 %147, ptr %148, align 4
  br label %224

149:                                              ; preds = %129, %123, %120
  %150 = phi i32 [ %124, %129 ], [ %124, %123 ], [ %64, %120 ]
  %151 = and i32 %150, 128
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %170, label %153

153:                                              ; preds = %149
  %154 = and i32 %63, 16
  %155 = icmp eq i32 %154, 0
  %156 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 25
  %157 = load i32, ptr %156, align 4
  %158 = mul i32 %157, 220
  %159 = add i32 %158, 9216
  %160 = select i1 %155, i32 %158, i32 %159
  %161 = sdiv i32 %160, 256
  store i32 %161, ptr %156, align 4
  %162 = add nsw i32 %161, -128
  %163 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 22
  %164 = load i32, ptr %163, align 4
  %165 = mul nsw i32 %162, 100
  %166 = mul i32 %165, %162
  %167 = sdiv i32 %166, 16384
  %168 = add i32 %167, %164
  %169 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 11
  store i32 %168, ptr %169, align 4
  br label %224

170:                                              ; preds = %149
  %171 = and i32 %150, 2
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 17
  store i32 0, ptr %174, align 4
  %175 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 19
  store i32 0, ptr %175, align 4
  %176 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 20
  store i32 0, ptr %176, align 4
  %177 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 21
  store i32 0, ptr %177, align 4
  %178 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 26
  store i32 0, ptr %178, align 4
  br label %179

179:                                              ; preds = %173, %170
  %180 = and i32 %150, 38
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %201, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 22
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 11
  store i32 %184, ptr %185, align 4
  %186 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 26
  %187 = load i32, ptr %186, align 4
  %188 = call fastcc i32 @dvb_frontend_swzigzag_autotune(ptr noundef %0, i32 noundef %187)
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %224, label %190

190:                                              ; preds = %182
  %191 = icmp eq i32 %188, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %190
  store i32 72, ptr %18, align 4
  %193 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 19
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 21
  store i32 %194, ptr %195, align 4
  br label %224

196:                                              ; preds = %190
  store i32 1, ptr %186, align 4
  %197 = load i32, ptr %18, align 4
  %198 = and i32 %197, 2
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %196
  store i32 4, ptr %18, align 4
  br label %224

201:                                              ; preds = %196, %179
  %202 = phi i32 [ %150, %179 ], [ %197, %196 ]
  %203 = and i32 %202, 72
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %224, label %205

205:                                              ; preds = %201
  %206 = load i32, ptr %2, align 4
  %207 = and i32 %206, 16
  %208 = icmp eq i32 %207, 0
  %209 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 25
  %210 = load i32, ptr %209, align 4
  %211 = mul i32 %210, 220
  %212 = add i32 %211, 9216
  %213 = select i1 %208, i32 %211, i32 %212
  %214 = sdiv i32 %213, 256
  store i32 %214, ptr %209, align 4
  %215 = add nsw i32 %214, -128
  %216 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 22
  %217 = load i32, ptr %216, align 4
  %218 = mul nsw i32 %215, 100
  %219 = mul i32 %218, %215
  %220 = sdiv i32 %219, 16384
  %221 = add i32 %220, %217
  %222 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 11
  store i32 %221, ptr %222, align 4
  %223 = call fastcc i32 @dvb_frontend_swzigzag_autotune(ptr noundef %0, i32 noundef 0)
  br label %224

224:                                              ; preds = %205, %201, %200, %192, %182, %153, %132, %98, %92, %88, %70, %43, %22
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvb_frontend_swzigzag_autotune(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.dtv_frontend_properties, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 456, ptr nonnull %3)
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %8, 2
  %15 = select i1 %13, i1 %14, i1 false
  %16 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 19
  %17 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 24
  %18 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 23
  %19 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 20
  %20 = load i32, ptr %16, align 4
  %21 = load i32, ptr %17, align 4
  %22 = load i32, ptr %18, align 4
  %23 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 18
  %24 = mul i32 %21, %20
  %25 = icmp ugt i32 %24, %22
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, ptr %19, align 4
  br label %29

28:                                               ; preds = %52, %2
  store i32 0, ptr %16, align 4
  store i32 0, ptr %19, align 4
  br label %57

29:                                               ; preds = %52, %26
  %30 = phi i32 [ %24, %26 ], [ %55, %52 ]
  %31 = phi i32 [ %20, %26 ], [ %54, %52 ]
  %32 = phi i32 [ %27, %26 ], [ %53, %52 ]
  switch i32 %32, label %50 [
    i32 0, label %57
    i32 1, label %33
    i32 2, label %38
    i32 3, label %42
  ]

33:                                               ; preds = %29
  br i1 %15, label %34, label %52

34:                                               ; preds = %33
  %35 = load i32, ptr %23, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, ptr %23, align 4
  br label %57

38:                                               ; preds = %29
  %39 = icmp eq i32 %30, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %38
  %41 = sub i32 0, %30
  br label %57

42:                                               ; preds = %29
  %43 = icmp ne i32 %30, 0
  %44 = select i1 %43, i1 %15, i1 false
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, ptr %23, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, ptr %23, align 4
  %49 = sub i32 0, %30
  br label %57

50:                                               ; preds = %29
  %51 = add i32 %31, 1
  store i32 %51, ptr %16, align 4
  br label %52

52:                                               ; preds = %50, %42, %38, %33
  %53 = phi i32 [ 0, %50 ], [ 4, %42 ], [ 3, %38 ], [ 2, %33 ]
  %54 = phi i32 [ %51, %50 ], [ %31, %42 ], [ %31, %38 ], [ %31, %33 ]
  store i32 %53, ptr %19, align 4
  %55 = mul i32 %21, %54
  %56 = icmp ugt i32 %55, %22
  br i1 %56, label %28, label %29

57:                                               ; preds = %45, %40, %34, %29, %28
  %58 = phi i32 [ 0, %28 ], [ %32, %34 ], [ %32, %40 ], [ %32, %45 ], [ %32, %29 ]
  %59 = phi i32 [ 0, %28 ], [ %30, %34 ], [ %41, %40 ], [ %49, %45 ], [ %30, %29 ]
  %60 = phi i32 [ 0, %28 ], [ %31, %34 ], [ %31, %40 ], [ %31, %45 ], [ %31, %29 ]
  %61 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 17
  store i32 %59, ptr %61, align 4
  %62 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 21
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = icmp eq i32 %58, 0
  %67 = icmp ne i32 %1, 0
  %68 = and i1 %67, %66
  br i1 %68, label %86, label %69

69:                                               ; preds = %65, %57
  %70 = load i32, ptr %6, align 4
  %71 = add i32 %70, %59
  store i32 %71, ptr %6, align 4
  br i1 %15, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, ptr %23, align 4
  store i32 %73, ptr %7, align 4
  br label %74

74:                                               ; preds = %72, %69
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(456) %3, ptr noundef align 4 dereferenceable(456) %6, i32 456, i1 false)
  %75 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 12
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = tail call i32 %76(ptr noundef %0) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(456) %6, ptr noundef nonnull align 4 dereferenceable(456) %3, i32 456, i1 false)
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.dvb_frontend_private, ptr %5, i32 0, i32 15
  store i32 256, ptr %82, align 4
  br label %86

83:                                               ; preds = %78, %74
  store i32 %9, ptr %6, align 4
  store i32 %8, ptr %7, align 4
  %84 = load i32, ptr %19, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %19, align 4
  br label %86

86:                                               ; preds = %83, %81, %65
  %87 = phi i32 [ %79, %81 ], [ 0, %83 ], [ 1, %65 ]
  call void @llvm.lifetime.end.p0(i64 456, ptr nonnull %3)
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @symbol_put_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly }

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
!8 = !{i64 936561, i64 936588, i64 936610, i64 936638}
!9 = !{i64 936969, i64 936996, i64 937029, i64 937050, i64 937077, i64 937103}
!10 = !{i64 506742, i64 2147996713, i64 2147996739, i64 2147996786, i64 2147996808, i64 2147996836, i64 2147996856}
!11 = !{i64 2148010383, i64 2148010415, i64 2148010444, i64 2148010478, i64 2148010509, i64 2148010532}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2154459692}
!15 = !{i64 2148110581}
!16 = !{i64 2148012740, i64 2148012772, i64 2148012801, i64 2148012835, i64 2148012866, i64 2148012889}
!17 = !{i64 2149387097}
!18 = !{i64 2154463048}
!19 = !{i64 2154521652}
!20 = !{i64 2150040377, i64 2150040402}
!21 = !{i64 2535911}
!22 = !{i64 2536108}
!23 = !{i64 2150021387}
!24 = !{!"auto-init"}
!25 = !{!"branch_weights", i32 2002, i32 2000}
!26 = !{i64 2154459079}
