; ModuleID = '/llk/IR/drivers/media/dvb-frontends/helene.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/helene.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_helene_attach_s:\09\09\09\09\09"
module asm "\09.asciz \09\22helene_attach_s\22\09\09\09\09\09"
module asm "__kstrtabns_helene_attach_s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_helene_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22helene_attach\22\09\09\09\09\09"
module asm "__kstrtabns_helene_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.helene_terr_adjust_param_t = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.helene_priv = type { i32, i8, ptr, i32, ptr, ptr, i32 }
%struct.helene_config = type { i8, i8, ptr, ptr, i32, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@helene_tuner_ops_s = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sony HELENE Sat tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 500000000, i32 -1794967296, i32 1000000, i32 0, i32 0, i32 0 }, ptr @helene_release, ptr @helene_init, ptr @helene_sleep, ptr null, ptr null, ptr @helene_set_params_s, ptr null, ptr null, ptr @helene_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [55 x i8] c"Sony HELENE Sat attached on addr=%x at I2C adapter %p\0A\00", align 1
@__kstrtab_helene_attach_s = external dso_local constant [0 x i8], align 1
@__kstrtabns_helene_attach_s = external dso_local constant [0 x i8], align 1
@__ksymtab_helene_attach_s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @helene_attach_s to i32), ptr @__kstrtab_helene_attach_s, ptr @__kstrtabns_helene_attach_s }, section "___ksymtab+helene_attach_s", align 4
@helene_tuner_ops_t = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sony HELENE Ter tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 1200000000, i32 25000, i32 0, i32 0, i32 0 }, ptr @helene_release, ptr @helene_init, ptr @helene_sleep, ptr null, ptr null, ptr @helene_set_params_t, ptr null, ptr null, ptr @helene_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Sony HELENE Ter attached on addr=%x at I2C adapter %p\0A\00", align 1
@__kstrtab_helene_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_helene_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_helene_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @helene_attach to i32), ptr @__kstrtab_helene_attach, ptr @__kstrtabns_helene_attach }, section "___ksymtab+helene_attach", align 4
@helene_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"helene\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description249 = internal constant [45 x i8] c"description=Sony HELENE Sat/Ter tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [38 x i8] c"author=Abylay Ospan <aospan@netup.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"HELENE tuner CPU error 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"HELENE tuner x_pon done\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"%s: i2c wr failed=%d reg=%02x len=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"helene\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"%s: I2C rw failed=%d addr=%02x reg=%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"%s: i2c rd failed=%d addr=%02x reg=%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"%s(): unknown DTV system\0A\00", align 1
@__func__.helene_set_params_s = private unnamed_addr constant [20 x i8] c"helene_set_params_s\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"%s(): unknown xtal %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%s(): unknown standard %d\0A\00", align 1
@terr_params = internal unnamed_addr constant [28 x %struct.helene_terr_adjust_param_t] [%struct.helene_terr_adjust_param_t { i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 3, i8 6, i8 3, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 3, i8 6, i8 3, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 3, i8 6, i8 3, i8 1, i8 1, i8 1, i8 0, i8 0, i8 3, i8 1, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 3, i8 6, i8 3, i8 1, i8 1, i8 1, i8 0, i8 1, i8 11, i8 5, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 3, i8 6, i8 3, i8 1, i8 1, i8 1, i8 0, i8 2, i8 2, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 3, i8 6, i8 3, i8 1, i8 1, i8 1, i8 0, i8 2, i8 2, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 3, i8 4, i8 10, i8 4, i8 4, i8 4, i8 4, i8 0, i8 2, i8 2, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 3, i8 4, i8 10, i8 4, i8 4, i8 4, i8 4, i8 0, i8 2, i8 31, i8 4, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 3, i8 3, i8 3, i8 0, i8 0, i8 26, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 0, i8 26, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 0, i8 23, i8 27, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 1, i8 25, i8 26, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 2, i8 27, i8 25, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 0, i8 24, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 0, i8 24, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 1, i8 26, i8 27, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 2, i8 28, i8 26, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 3, i8 22, i8 22, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 0, i8 24, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 0, i8 24, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 1, i8 26, i8 27, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 2, i8 28, i8 26, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 2, i8 2, i8 2, i8 1, i8 1, i8 1, i8 0, i8 0, i8 26, i8 28, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 2, i8 2, i8 2, i8 1, i8 1, i8 1, i8 0, i8 2, i8 30, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 3, i8 9, i8 9, i8 9, i8 2, i8 2, i8 2, i8 0, i8 0, i8 26, i8 30, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 3, i8 9, i8 9, i8 9, i8 2, i8 2, i8 2, i8 0, i8 2, i8 30, i8 0, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 4, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 2, i8 2, i8 1, i8 0 }], align 1
@__this_module = external dso_local global %struct.module, align 64
@helene_driver = internal global %struct.i2c_driver { i32 0, ptr @helene_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @helene_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@helene_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sony HELENE Sat/Ter tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 -1794967296, i32 25000, i32 0, i32 0, i32 0 }, ptr @helene_release, ptr @helene_init, ptr @helene_sleep, ptr null, ptr null, ptr @helene_set_params, ptr null, ptr null, ptr @helene_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [51 x i8] c"Sony HELENE attached on addr=%x at I2C adapter %p\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_helene_attach, ptr @__ksymtab_helene_attach_s], section "llvm.metadata"

@__mod_i2c__helene_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @helene_id

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @helene_attach_s(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %1, align 4
  %9 = lshr i8 %8, 1
  %10 = getelementptr inbounds %struct.helene_priv, ptr %5, i32 0, i32 1
  store i8 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.helene_priv, ptr %5, i32 0, i32 2
  store ptr %2, ptr %11, align 8
  %12 = getelementptr inbounds %struct.helene_config, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.helene_priv, ptr %5, i32 0, i32 4
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.helene_config, ptr %1, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.helene_priv, ptr %5, i32 0, i32 5
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.helene_config, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.helene_priv, ptr %5, i32 0, i32 6
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %7
  %25 = tail call i32 %22(ptr noundef %0, i32 noundef 1) #12
  br label %26

26:                                               ; preds = %24, %7
  %27 = tail call fastcc i32 @helene_x_pon(ptr noundef nonnull %5)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @kfree(ptr noundef nonnull %5) #12
  br label %42

30:                                               ; preds = %26
  %31 = load ptr, ptr %21, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call i32 %31(ptr noundef %0, i32 noundef 0) #12
  br label %35

35:                                               ; preds = %33, %30
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %36, ptr noundef nonnull align 4 dereferenceable(220) @helene_tuner_ops_s, i32 220, i1 false)
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %5, ptr %37, align 4
  %38 = load ptr, ptr %11, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 9
  %40 = load i8, ptr %10, align 4
  %41 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str, i32 noundef %41, ptr noundef %38) #13
  br label %42

42:                                               ; preds = %35, %29, %3
  %43 = phi ptr [ null, %29 ], [ %0, %35 ], [ null, %3 ]
  ret ptr %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @helene_x_pon(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [21 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [21 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [21 x i8], align 1
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca [21 x i8], align 1
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = alloca [21 x i8], align 1
  %11 = alloca [1 x %struct.i2c_msg], align 4
  %12 = alloca [21 x i8], align 1
  %13 = alloca [1 x %struct.i2c_msg], align 4
  %14 = alloca [21 x i8], align 1
  %15 = alloca [1 x %struct.i2c_msg], align 4
  %16 = alloca [21 x i8], align 1
  %17 = alloca [1 x %struct.i2c_msg], align 4
  %18 = alloca [21 x i8], align 1
  %19 = alloca [1 x %struct.i2c_msg], align 4
  %20 = alloca [21 x i8], align 1
  %21 = alloca [1 x %struct.i2c_msg], align 4
  %22 = alloca [21 x i8], align 1
  %23 = alloca [1 x %struct.i2c_msg], align 4
  %24 = alloca [21 x i8], align 1
  %25 = alloca [1 x %struct.i2c_msg], align 4
  %26 = alloca [21 x i8], align 1
  %27 = alloca [1 x %struct.i2c_msg], align 4
  %28 = alloca [21 x i8], align 1
  %29 = alloca [1 x %struct.i2c_msg], align 4
  %30 = alloca [21 x i8], align 1
  %31 = alloca [1 x %struct.i2c_msg], align 4
  %32 = alloca [20 x i8], align 1
  %33 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %32) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %32, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #12
  store i16 0, ptr %33, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %30) #12
  %34 = getelementptr inbounds i8, ptr %30, i32 1
  %35 = getelementptr inbounds i8, ptr %30, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %35, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #12
  %36 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 2, ptr %36, align 4, !annotation !8
  %37 = getelementptr inbounds %struct.helene_priv, ptr %0, i32 0, i32 1
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %31, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %41, align 4
  store i8 1, ptr %30, align 1
  store i8 0, ptr %34, align 1
  %42 = getelementptr inbounds %struct.helene_priv, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %31, i32 noundef 1) #12
  %45 = icmp sgt i32 %44, -1
  %46 = icmp ne i32 %44, 1
  %47 = and i1 %45, %46
  %48 = select i1 %47, i32 -121, i32 %44
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %1
  %51 = load ptr, ptr %42, align 4
  %52 = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %48, i32 noundef 1, i32 noundef 1) #13
  br label %53

53:                                               ; preds = %50, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %30) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %28) #12
  %54 = getelementptr inbounds i8, ptr %28, i32 1
  %55 = getelementptr inbounds i8, ptr %28, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %55, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #12
  %56 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 2, ptr %56, align 4, !annotation !8
  %57 = load i8, ptr %37, align 4
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %29, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %59, align 2
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %60, align 4
  store i8 103, ptr %28, align 1
  store i8 0, ptr %54, align 1
  %61 = load ptr, ptr %42, align 4
  %62 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %29, i32 noundef 1) #12
  %63 = icmp sgt i32 %62, -1
  %64 = icmp ne i32 %62, 1
  %65 = and i1 %63, %64
  %66 = select i1 %65, i32 -121, i32 %62
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = load ptr, ptr %42, align 4
  %70 = getelementptr inbounds %struct.i2c_adapter, ptr %69, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %66, i32 noundef 103, i32 noundef 1) #13
  br label %71

71:                                               ; preds = %68, %53
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %28) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %26) #12
  %72 = getelementptr inbounds i8, ptr %26, i32 1
  %73 = getelementptr inbounds i8, ptr %26, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %73, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #12
  %74 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %74, align 4, !annotation !8
  %75 = load i8, ptr %37, align 4
  %76 = zext i8 %75 to i16
  store i16 %76, ptr %27, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %77, align 2
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %78, align 4
  store i8 67, ptr %26, align 1
  store i8 6, ptr %72, align 1
  %79 = load ptr, ptr %42, align 4
  %80 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %27, i32 noundef 1) #12
  %81 = icmp sgt i32 %80, -1
  %82 = icmp ne i32 %80, 1
  %83 = and i1 %81, %82
  %84 = select i1 %83, i32 -121, i32 %80
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %71
  %87 = load ptr, ptr %42, align 4
  %88 = getelementptr inbounds %struct.i2c_adapter, ptr %87, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %88, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %84, i32 noundef 67, i32 noundef 1) #13
  br label %89

89:                                               ; preds = %86, %71
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %26) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %24) #12
  %90 = getelementptr inbounds i8, ptr %24, i32 1
  %91 = getelementptr inbounds i8, ptr %24, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %91, i8 0, i32 17, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #12
  %92 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 4, ptr %92, align 4, !annotation !8
  %93 = load i8, ptr %37, align 4
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %25, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %95, align 2
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %96, align 4
  store i8 94, ptr %24, align 1
  store i24 131078, ptr %90, align 1
  %97 = load ptr, ptr %42, align 4
  %98 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %25, i32 noundef 1) #12
  %99 = icmp sgt i32 %98, -1
  %100 = icmp ne i32 %98, 1
  %101 = and i1 %99, %100
  %102 = select i1 %101, i32 -121, i32 %98
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %89
  %105 = load ptr, ptr %42, align 4
  %106 = getelementptr inbounds %struct.i2c_adapter, ptr %105, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %106, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %102, i32 noundef 94, i32 noundef 3) #13
  br label %107

107:                                              ; preds = %104, %89
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %24) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %22) #12
  %108 = getelementptr inbounds i8, ptr %22, i32 1
  %109 = getelementptr inbounds i8, ptr %22, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %109, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #12
  %110 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %110, align 4, !annotation !8
  %111 = load i8, ptr %37, align 4
  %112 = zext i8 %111 to i16
  store i16 %112, ptr %23, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %113, align 2
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %114, align 4
  store i8 12, ptr %22, align 1
  store i8 5, ptr %108, align 1
  %115 = load ptr, ptr %42, align 4
  %116 = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %23, i32 noundef 1) #12
  %117 = icmp sgt i32 %116, -1
  %118 = icmp ne i32 %116, 1
  %119 = and i1 %117, %118
  %120 = select i1 %119, i32 -121, i32 %116
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %107
  %123 = load ptr, ptr %42, align 4
  %124 = getelementptr inbounds %struct.i2c_adapter, ptr %123, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %124, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %120, i32 noundef 12, i32 noundef 1) #13
  br label %125

125:                                              ; preds = %122, %107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %22) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %20) #12
  %126 = getelementptr inbounds i8, ptr %20, i32 1
  %127 = getelementptr inbounds i8, ptr %20, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %127, i8 0, i32 18, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #12
  %128 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 3, ptr %128, align 4, !annotation !8
  %129 = load i8, ptr %37, align 4
  %130 = zext i8 %129 to i16
  store i16 %130, ptr %21, align 4
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %131, align 2
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %132, align 4
  store i8 -103, ptr %20, align 1
  store i8 122, ptr %126, align 1
  %133 = getelementptr inbounds [21 x i8], ptr %20, i32 0, i32 2
  store i8 1, ptr %133, align 1
  %134 = load ptr, ptr %42, align 4
  %135 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %21, i32 noundef 1) #12
  %136 = icmp sgt i32 %135, -1
  %137 = icmp ne i32 %135, 1
  %138 = and i1 %136, %137
  %139 = select i1 %138, i32 -121, i32 %135
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %125
  %142 = load ptr, ptr %42, align 4
  %143 = getelementptr inbounds %struct.i2c_adapter, ptr %142, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %143, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %139, i32 noundef 153, i32 noundef 2) #13
  br label %144

144:                                              ; preds = %141, %125
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %20) #12
  %145 = getelementptr inbounds %struct.helene_priv, ptr %0, i32 0, i32 6
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, i8 16, i8 24
  store i8 %148, ptr %32, align 1
  %149 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 1
  store i8 -124, ptr %149, align 1
  %150 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 2
  store i8 -90, ptr %150, align 1
  %151 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 3
  store i8 -128, ptr %151, align 1
  %152 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 4
  store i8 0, ptr %152, align 1
  %153 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 5
  store i8 0, ptr %153, align 1
  %154 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 6
  store i8 -60, ptr %154, align 1
  %155 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 7
  store i8 64, ptr %155, align 1
  %156 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 8
  store i8 16, ptr %156, align 1
  %157 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 9
  store i8 0, ptr %157, align 1
  %158 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 10
  store i8 69, ptr %158, align 1
  %159 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 11
  store i8 117, ptr %159, align 1
  %160 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 12
  store i8 7, ptr %160, align 1
  %161 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 13
  store i8 28, ptr %161, align 1
  %162 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 14
  store i8 63, ptr %162, align 1
  %163 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 15
  store i8 2, ptr %163, align 1
  %164 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 16
  store i8 16, ptr %164, align 1
  %165 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 17
  store i8 32, ptr %165, align 1
  %166 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 18
  store i8 10, ptr %166, align 1
  %167 = getelementptr inbounds [20 x i8], ptr %32, i32 0, i32 19
  store i8 0, ptr %167, align 1
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %18) #12
  %168 = getelementptr inbounds i8, ptr %18, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #12
  %169 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 21, ptr %169, align 4, !annotation !8
  %170 = load i8, ptr %37, align 4
  %171 = zext i8 %170 to i16
  store i16 %171, ptr %19, align 4
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %172, align 2
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %173, align 4
  store i8 -127, ptr %18, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(20) %168, ptr noundef nonnull align 1 dereferenceable(20) %32, i32 20, i1 false) #12
  %174 = load ptr, ptr %42, align 4
  %175 = call i32 @i2c_transfer(ptr noundef %174, ptr noundef nonnull %19, i32 noundef 1) #12
  %176 = icmp sgt i32 %175, -1
  %177 = icmp ne i32 %175, 1
  %178 = and i1 %176, %177
  %179 = select i1 %178, i32 -121, i32 %175
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %144
  %182 = load ptr, ptr %42, align 4
  %183 = getelementptr inbounds %struct.i2c_adapter, ptr %182, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %183, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %179, i32 noundef 129, i32 noundef 20) #13
  br label %184

184:                                              ; preds = %181, %144
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %16) #12
  %185 = getelementptr inbounds i8, ptr %16, i32 1
  %186 = getelementptr inbounds i8, ptr %16, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %186, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #12
  %187 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %187, align 4, !annotation !8
  %188 = load i8, ptr %37, align 4
  %189 = zext i8 %188 to i16
  store i16 %189, ptr %17, align 4
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %190, align 2
  %191 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %191, align 4
  store i8 -101, ptr %16, align 1
  store i8 0, ptr %185, align 1
  %192 = load ptr, ptr %42, align 4
  %193 = call i32 @i2c_transfer(ptr noundef %192, ptr noundef nonnull %17, i32 noundef 1) #12
  %194 = icmp sgt i32 %193, -1
  %195 = icmp ne i32 %193, 1
  %196 = and i1 %194, %195
  %197 = select i1 %196, i32 -121, i32 %193
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %184
  %200 = load ptr, ptr %42, align 4
  %201 = getelementptr inbounds %struct.i2c_adapter, ptr %200, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %201, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %197, i32 noundef 155, i32 noundef 1) #13
  br label %202

202:                                              ; preds = %199, %184
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %16) #12
  call void @msleep(i32 noundef 20) #12
  %203 = call fastcc i32 @helene_read_regs(ptr noundef %0, i8 noundef zeroext 26, ptr noundef nonnull %33, i32 noundef 2)
  %204 = load i8, ptr %33, align 2
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = zext i8 %204 to i32
  %208 = load ptr, ptr %42, align 4
  %209 = getelementptr inbounds %struct.i2c_adapter, ptr %208, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.2, i32 noundef %207) #13
  br label %344

210:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %14) #12
  %211 = getelementptr inbounds i8, ptr %14, i32 1
  %212 = getelementptr inbounds i8, ptr %14, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %212, i8 0, i32 18, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  %213 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 3, ptr %213, align 4, !annotation !8
  %214 = load i8, ptr %37, align 4
  %215 = zext i8 %214 to i16
  store i16 %215, ptr %15, align 4
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %216, align 2
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %217, align 4
  store i8 23, ptr %14, align 1
  store i8 -112, ptr %211, align 1
  %218 = getelementptr inbounds [21 x i8], ptr %14, i32 0, i32 2
  store i8 6, ptr %218, align 1
  %219 = load ptr, ptr %42, align 4
  %220 = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %15, i32 noundef 1) #12
  %221 = icmp sgt i32 %220, -1
  %222 = icmp ne i32 %220, 1
  %223 = and i1 %221, %222
  %224 = select i1 %223, i32 -121, i32 %220
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %210
  %227 = load ptr, ptr %42, align 4
  %228 = getelementptr inbounds %struct.i2c_adapter, ptr %227, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %228, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %224, i32 noundef 23, i32 noundef 2) #13
  br label %229

229:                                              ; preds = %226, %210
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %14) #12
  call void @msleep(i32 noundef 20) #12
  %230 = call fastcc i32 @helene_read_regs(ptr noundef %0, i8 noundef zeroext 25, ptr noundef nonnull %32, i32 noundef 1) #12
  %231 = load i8, ptr %32, align 1
  %232 = lshr i8 %231, 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %12) #12
  %233 = getelementptr inbounds i8, ptr %12, i32 1
  %234 = getelementptr inbounds i8, ptr %12, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %234, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  %235 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %235, align 4, !annotation !8
  %236 = load i8, ptr %37, align 4
  %237 = zext i8 %236 to i16
  store i16 %237, ptr %13, align 4
  %238 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %238, align 2
  %239 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %239, align 4
  store i8 -107, ptr %12, align 1
  store i8 %232, ptr %233, align 1
  %240 = load ptr, ptr %42, align 4
  %241 = call i32 @i2c_transfer(ptr noundef %240, ptr noundef nonnull %13, i32 noundef 1) #12
  %242 = icmp sgt i32 %241, -1
  %243 = icmp ne i32 %241, 1
  %244 = and i1 %242, %243
  %245 = select i1 %244, i32 -121, i32 %241
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %229
  %248 = load ptr, ptr %42, align 4
  %249 = getelementptr inbounds %struct.i2c_adapter, ptr %248, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %249, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %245, i32 noundef 149, i32 noundef 1) #13
  br label %250

250:                                              ; preds = %247, %229
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %10) #12
  %251 = getelementptr inbounds i8, ptr %10, i32 1
  %252 = getelementptr inbounds i8, ptr %10, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %252, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %253 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %253, align 4, !annotation !8
  %254 = load i8, ptr %37, align 4
  %255 = zext i8 %254 to i16
  store i16 %255, ptr %11, align 4
  %256 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %256, align 2
  %257 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %257, align 4
  store i8 116, ptr %10, align 1
  store i8 2, ptr %251, align 1
  %258 = load ptr, ptr %42, align 4
  %259 = call i32 @i2c_transfer(ptr noundef %258, ptr noundef nonnull %11, i32 noundef 1) #12
  %260 = icmp sgt i32 %259, -1
  %261 = icmp ne i32 %259, 1
  %262 = and i1 %260, %261
  %263 = select i1 %262, i32 -121, i32 %259
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %250
  %266 = load ptr, ptr %42, align 4
  %267 = getelementptr inbounds %struct.i2c_adapter, ptr %266, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %267, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %263, i32 noundef 116, i32 noundef 1) #13
  br label %268

268:                                              ; preds = %265, %250
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %8) #12
  %269 = getelementptr inbounds i8, ptr %8, i32 1
  %270 = getelementptr inbounds i8, ptr %8, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %270, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %271 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %271, align 4, !annotation !8
  %272 = load i8, ptr %37, align 4
  %273 = zext i8 %272 to i16
  store i16 %273, ptr %9, align 4
  %274 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %274, align 2
  %275 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %275, align 4
  store i8 -120, ptr %8, align 1
  store i8 0, ptr %269, align 1
  %276 = load ptr, ptr %42, align 4
  %277 = call i32 @i2c_transfer(ptr noundef %276, ptr noundef nonnull %9, i32 noundef 1) #12
  %278 = icmp sgt i32 %277, -1
  %279 = icmp ne i32 %277, 1
  %280 = and i1 %278, %279
  %281 = select i1 %280, i32 -121, i32 %277
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %268
  %284 = load ptr, ptr %42, align 4
  %285 = getelementptr inbounds %struct.i2c_adapter, ptr %284, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %285, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %281, i32 noundef 136, i32 noundef 1) #13
  br label %286

286:                                              ; preds = %283, %268
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #12
  %287 = getelementptr inbounds i8, ptr %6, i32 1
  %288 = getelementptr inbounds i8, ptr %6, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %288, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %289 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %289, align 4, !annotation !8
  %290 = load i8, ptr %37, align 4
  %291 = zext i8 %290 to i16
  store i16 %291, ptr %7, align 4
  %292 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %292, align 2
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %293, align 4
  store i8 -121, ptr %6, align 1
  store i8 -64, ptr %287, align 1
  %294 = load ptr, ptr %42, align 4
  %295 = call i32 @i2c_transfer(ptr noundef %294, ptr noundef nonnull %7, i32 noundef 1) #12
  %296 = icmp sgt i32 %295, -1
  %297 = icmp ne i32 %295, 1
  %298 = and i1 %296, %297
  %299 = select i1 %298, i32 -121, i32 %295
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %286
  %302 = load ptr, ptr %42, align 4
  %303 = getelementptr inbounds %struct.i2c_adapter, ptr %302, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %303, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %299, i32 noundef 135, i32 noundef 1) #13
  br label %304

304:                                              ; preds = %301, %286
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %4) #12
  %305 = getelementptr inbounds i8, ptr %4, i32 1
  %306 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %306, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %307 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %307, align 4, !annotation !8
  %308 = load i8, ptr %37, align 4
  %309 = zext i8 %308 to i16
  store i16 %309, ptr %5, align 4
  %310 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %310, align 2
  %311 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %311, align 4
  store i8 -128, ptr %4, align 1
  store i8 1, ptr %305, align 1
  %312 = load ptr, ptr %42, align 4
  %313 = call i32 @i2c_transfer(ptr noundef %312, ptr noundef nonnull %5, i32 noundef 1) #12
  %314 = icmp sgt i32 %313, -1
  %315 = icmp ne i32 %313, 1
  %316 = and i1 %314, %315
  %317 = select i1 %316, i32 -121, i32 %313
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %304
  %320 = load ptr, ptr %42, align 4
  %321 = getelementptr inbounds %struct.i2c_adapter, ptr %320, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %321, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %317, i32 noundef 128, i32 noundef 1) #13
  br label %322

322:                                              ; preds = %319, %304
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %2) #12
  %323 = getelementptr inbounds i8, ptr %2, i32 1
  %324 = getelementptr inbounds i8, ptr %2, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %324, i8 0, i32 18, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %325 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %325, align 4, !annotation !8
  %326 = load i8, ptr %37, align 4
  %327 = zext i8 %326 to i16
  store i16 %327, ptr %3, align 4
  %328 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %328, align 2
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %329, align 4
  store i8 65, ptr %2, align 1
  store i8 7, ptr %323, align 1
  %330 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 2
  store i8 0, ptr %330, align 1
  %331 = load ptr, ptr %42, align 4
  %332 = call i32 @i2c_transfer(ptr noundef %331, ptr noundef nonnull %3, i32 noundef 1) #12
  %333 = icmp sgt i32 %332, -1
  %334 = icmp ne i32 %332, 1
  %335 = and i1 %333, %334
  %336 = select i1 %335, i32 -121, i32 %332
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %322
  %339 = load ptr, ptr %42, align 4
  %340 = getelementptr inbounds %struct.i2c_adapter, ptr %339, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %340, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %336, i32 noundef 65, i32 noundef 2) #13
  br label %341

341:                                              ; preds = %338, %322
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %2) #12
  %342 = load ptr, ptr %42, align 4
  %343 = getelementptr inbounds %struct.i2c_adapter, ptr %342, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %343, ptr noundef nonnull @.str.3) #13
  br label %344

344:                                              ; preds = %341, %206
  %345 = phi i32 [ -5, %206 ], [ 0, %341 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %32) #12
  ret i32 %345
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @helene_attach(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %1, align 4
  %9 = lshr i8 %8, 1
  %10 = getelementptr inbounds %struct.helene_priv, ptr %5, i32 0, i32 1
  store i8 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.helene_priv, ptr %5, i32 0, i32 2
  store ptr %2, ptr %11, align 8
  %12 = getelementptr inbounds %struct.helene_config, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.helene_priv, ptr %5, i32 0, i32 4
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.helene_config, ptr %1, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.helene_priv, ptr %5, i32 0, i32 5
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.helene_config, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.helene_priv, ptr %5, i32 0, i32 6
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %7
  %25 = tail call i32 %22(ptr noundef %0, i32 noundef 1) #12
  br label %26

26:                                               ; preds = %24, %7
  %27 = tail call fastcc i32 @helene_x_pon(ptr noundef nonnull %5)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @kfree(ptr noundef nonnull %5) #12
  br label %42

30:                                               ; preds = %26
  %31 = load ptr, ptr %21, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call i32 %31(ptr noundef %0, i32 noundef 0) #12
  br label %35

35:                                               ; preds = %33, %30
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %36, ptr noundef nonnull align 4 dereferenceable(220) @helene_tuner_ops_t, i32 220, i1 false)
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %5, ptr %37, align 4
  %38 = load ptr, ptr %11, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 9
  %40 = load i8, ptr %10, align 4
  %41 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.1, i32 noundef %41, ptr noundef %38) #13
  br label %42

42:                                               ; preds = %35, %29, %3
  %43 = phi ptr [ null, %29 ], [ %0, %35 ], [ null, %3 ]
  ret ptr %43
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @helene_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @helene_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @helene_read_regs(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  store i8 %1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.helene_priv, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %10, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %17 = trunc i32 %3 to i16
  store i16 %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.helene_priv, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 1) #12
  %22 = icmp sgt i32 %21, -1
  %23 = icmp ne i32 %21, 1
  %24 = and i1 %22, %23
  %25 = select i1 %24, i32 -121, i32 %21
  %26 = icmp slt i32 %25, 0
  %27 = load ptr, ptr %19, align 4
  br i1 %26, label %28, label %34

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  %30 = load i8, ptr %8, align 4
  %31 = zext i8 %30 to i32
  %32 = load i8, ptr %5, align 1
  %33 = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %25, i32 noundef %31, i32 noundef %33) #13
  br label %48

34:                                               ; preds = %4
  %35 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef %14, i32 noundef 1) #12
  %36 = icmp sgt i32 %35, -1
  %37 = icmp ne i32 %35, 1
  %38 = and i1 %36, %37
  %39 = select i1 %38, i32 -121, i32 %35
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load ptr, ptr %19, align 4
  %43 = getelementptr inbounds %struct.i2c_adapter, ptr %42, i32 0, i32 9
  %44 = load i8, ptr %8, align 4
  %45 = zext i8 %44 to i32
  %46 = load i8, ptr %5, align 1
  %47 = zext i8 %46 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef %39, i32 noundef %45, i32 noundef %47) #13
  br label %48

48:                                               ; preds = %41, %34, %28
  %49 = phi i32 [ %25, %28 ], [ %39, %41 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  ret i32 %49
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @helene_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #12
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @helene_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @helene_leave_power_save(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @helene_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [21 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [21 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.helene_priv, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %50, label %11

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %4) #12
  %12 = getelementptr inbounds i8, ptr %4, i32 1
  %13 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %13, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %14, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.helene_priv, ptr %7, i32 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %5, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %19, align 4
  store i8 -120, ptr %4, align 1
  store i8 0, ptr %12, align 1
  %20 = getelementptr inbounds %struct.helene_priv, ptr %7, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 1) #12
  %23 = icmp sgt i32 %22, -1
  %24 = icmp ne i32 %22, 1
  %25 = and i1 %23, %24
  %26 = select i1 %25, i32 -121, i32 %22
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %11
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %26, i32 noundef 136, i32 noundef 1) #13
  br label %31

31:                                               ; preds = %28, %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %2) #12
  %32 = getelementptr inbounds i8, ptr %2, i32 1
  %33 = getelementptr inbounds i8, ptr %2, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %33, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %34 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %34, align 4, !annotation !8
  %35 = load i8, ptr %15, align 4
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %3, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %38, align 4
  store i8 -121, ptr %2, align 1
  store i8 -64, ptr %32, align 1
  %39 = load ptr, ptr %20, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %3, i32 noundef 1) #12
  %41 = icmp sgt i32 %40, -1
  %42 = icmp ne i32 %40, 1
  %43 = and i1 %41, %42
  %44 = select i1 %43, i32 -121, i32 %40
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %31
  %47 = load ptr, ptr %20, align 4
  %48 = getelementptr inbounds %struct.i2c_adapter, ptr %47, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %44, i32 noundef 135, i32 noundef 1) #13
  br label %49

49:                                               ; preds = %46, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %2) #12
  store i32 1, ptr %8, align 4
  br label %50

50:                                               ; preds = %49, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @helene_set_params_s(ptr nocapture noundef %0) #0 {
  %2 = alloca [21 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [21 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca [21 x i8], align 1
  %7 = alloca [1 x %struct.i2c_msg], align 4
  %8 = alloca [21 x i8], align 1
  %9 = alloca [1 x %struct.i2c_msg], align 4
  %10 = alloca [21 x i8], align 1
  %11 = alloca [1 x %struct.i2c_msg], align 4
  %12 = alloca [21 x i8], align 1
  %13 = alloca [1 x %struct.i2c_msg], align 4
  %14 = alloca [21 x i8], align 1
  %15 = alloca [1 x %struct.i2c_msg], align 4
  %16 = alloca [21 x i8], align 1
  %17 = alloca [1 x %struct.i2c_msg], align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %18, align 4
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = udiv i32 %23, 1000
  %25 = tail call fastcc i32 @helene_get_tv_system(ptr noundef %0)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.helene_priv, ptr %20, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.helene_set_params_s) #13
  br label %266

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.helene_priv, ptr %20, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.helene_priv, ptr %20, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %33(ptr noundef %37, i32 noundef 0) #12
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, ptr %18, align 4
  %41 = udiv i32 %40, 1000
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %16) #12
  %42 = getelementptr inbounds i8, ptr %16, i32 1
  %43 = getelementptr inbounds i8, ptr %16, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %43, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #12
  %44 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %44, align 4, !annotation !8
  %45 = getelementptr inbounds %struct.helene_priv, ptr %20, i32 0, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %17, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %48, align 2
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %49, align 4
  store i8 21, ptr %16, align 1
  store i8 2, ptr %42, align 1
  %50 = getelementptr inbounds %struct.helene_priv, ptr %20, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %17, i32 noundef 1) #12
  %53 = icmp sgt i32 %52, -1
  %54 = icmp ne i32 %52, 1
  %55 = and i1 %53, %54
  %56 = select i1 %55, i32 -121, i32 %52
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %39
  %59 = load ptr, ptr %50, align 4
  %60 = getelementptr inbounds %struct.i2c_adapter, ptr %59, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %56, i32 noundef 21, i32 noundef 1) #13
  br label %61

61:                                               ; preds = %58, %39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %14) #12
  %62 = getelementptr inbounds i8, ptr %14, i32 1
  %63 = getelementptr inbounds i8, ptr %14, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %63, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #12
  %64 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %64, align 4, !annotation !8
  %65 = load i8, ptr %45, align 4
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %15, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %67, align 2
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %68, align 4
  store i8 67, ptr %14, align 1
  store i8 6, ptr %62, align 1
  %69 = load ptr, ptr %50, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %15, i32 noundef 1) #12
  %71 = icmp sgt i32 %70, -1
  %72 = icmp ne i32 %70, 1
  %73 = and i1 %71, %72
  %74 = select i1 %73, i32 -121, i32 %70
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %61
  %77 = load ptr, ptr %50, align 4
  %78 = getelementptr inbounds %struct.i2c_adapter, ptr %77, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %74, i32 noundef 67, i32 noundef 1) #13
  br label %79

79:                                               ; preds = %76, %61
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %12) #12
  %80 = getelementptr inbounds i8, ptr %12, i32 1
  %81 = getelementptr inbounds i8, ptr %12, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %81, i8 0, i32 18, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #12
  %82 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 3, ptr %82, align 4, !annotation !8
  %83 = load i8, ptr %45, align 4
  %84 = zext i8 %83 to i16
  store i16 %84, ptr %13, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %85, align 2
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %86, align 4
  store i8 106, ptr %12, align 1
  store i8 0, ptr %80, align 1
  %87 = getelementptr inbounds [21 x i8], ptr %12, i32 0, i32 2
  store i8 0, ptr %87, align 1
  %88 = load ptr, ptr %50, align 4
  %89 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %13, i32 noundef 1) #12
  %90 = icmp sgt i32 %89, -1
  %91 = icmp ne i32 %89, 1
  %92 = and i1 %90, %91
  %93 = select i1 %92, i32 -121, i32 %89
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %79
  %96 = load ptr, ptr %50, align 4
  %97 = getelementptr inbounds %struct.i2c_adapter, ptr %96, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %93, i32 noundef 106, i32 noundef 2) #13
  br label %98

98:                                               ; preds = %95, %79
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %10) #12
  %99 = getelementptr inbounds i8, ptr %10, i32 1
  %100 = getelementptr inbounds i8, ptr %10, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %100, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #12
  %101 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %101, align 4, !annotation !8
  %102 = load i8, ptr %45, align 4
  %103 = zext i8 %102 to i16
  store i16 %103, ptr %11, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %104, align 2
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %105, align 4
  store i8 117, ptr %10, align 1
  store i8 -103, ptr %99, align 1
  %106 = load ptr, ptr %50, align 4
  %107 = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %11, i32 noundef 1) #12
  %108 = icmp sgt i32 %107, -1
  %109 = icmp ne i32 %107, 1
  %110 = and i1 %108, %109
  %111 = select i1 %110, i32 -121, i32 %107
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %98
  %114 = load ptr, ptr %50, align 4
  %115 = getelementptr inbounds %struct.i2c_adapter, ptr %114, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %115, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %111, i32 noundef 117, i32 noundef 1) #13
  br label %116

116:                                              ; preds = %113, %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %8) #12
  %117 = getelementptr inbounds i8, ptr %8, i32 1
  %118 = getelementptr inbounds i8, ptr %8, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %118, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %119 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %119, align 4, !annotation !8
  %120 = load i8, ptr %45, align 4
  %121 = zext i8 %120 to i16
  store i16 %121, ptr %9, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %122, align 2
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %123, align 4
  store i8 -99, ptr %8, align 1
  store i8 0, ptr %117, align 1
  %124 = load ptr, ptr %50, align 4
  %125 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %9, i32 noundef 1) #12
  %126 = icmp sgt i32 %125, -1
  %127 = icmp ne i32 %125, 1
  %128 = and i1 %126, %127
  %129 = select i1 %128, i32 -121, i32 %125
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %116
  %132 = load ptr, ptr %50, align 4
  %133 = getelementptr inbounds %struct.i2c_adapter, ptr %132, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %133, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %129, i32 noundef 157, i32 noundef 1) #13
  br label %134

134:                                              ; preds = %131, %116
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #12
  %135 = getelementptr inbounds i8, ptr %6, i32 1
  %136 = getelementptr inbounds i8, ptr %6, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %136, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %137 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %137, align 4, !annotation !8
  %138 = load i8, ptr %45, align 4
  %139 = zext i8 %138 to i16
  store i16 %139, ptr %7, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %140, align 2
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %141, align 4
  store i8 97, ptr %6, align 1
  store i8 7, ptr %135, align 1
  %142 = load ptr, ptr %50, align 4
  %143 = call i32 @i2c_transfer(ptr noundef %142, ptr noundef nonnull %7, i32 noundef 1) #12
  %144 = icmp sgt i32 %143, -1
  %145 = icmp ne i32 %143, 1
  %146 = and i1 %144, %145
  %147 = select i1 %146, i32 -121, i32 %143
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %134
  %150 = load ptr, ptr %50, align 4
  %151 = getelementptr inbounds %struct.i2c_adapter, ptr %150, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %147, i32 noundef 97, i32 noundef 1) #13
  br label %152

152:                                              ; preds = %149, %134
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %4) #12
  %153 = getelementptr inbounds i8, ptr %4, i32 1
  %154 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %154, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %155 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %155, align 4, !annotation !8
  %156 = load i8, ptr %45, align 4
  %157 = zext i8 %156 to i16
  store i16 %157, ptr %5, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %158, align 2
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %159, align 4
  store i8 1, ptr %4, align 1
  store i8 1, ptr %153, align 1
  %160 = load ptr, ptr %50, align 4
  %161 = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %5, i32 noundef 1) #12
  %162 = icmp sgt i32 %161, -1
  %163 = icmp ne i32 %161, 1
  %164 = and i1 %162, %163
  %165 = select i1 %164, i32 -121, i32 %161
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %152
  %168 = load ptr, ptr %50, align 4
  %169 = getelementptr inbounds %struct.i2c_adapter, ptr %168, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %169, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %165, i32 noundef 1, i32 noundef 1) #13
  br label %170

170:                                              ; preds = %167, %152
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %4) #12
  %171 = getelementptr inbounds %struct.helene_priv, ptr %20, i32 0, i32 6
  %172 = load i32, ptr %171, align 4
  switch i32 %172, label %174 [
    i32 3, label %173
    i32 2, label %178
    i32 1, label %180
    i32 0, label %177
  ]

173:                                              ; preds = %170
  br label %178

174:                                              ; preds = %170
  %175 = load ptr, ptr %50, align 4
  %176 = getelementptr inbounds %struct.i2c_adapter, ptr %175, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.helene_set_params_s, i32 noundef %172) #13
  br label %266

177:                                              ; preds = %170
  br label %178

178:                                              ; preds = %177, %173, %170
  %179 = phi i8 [ 5, %173 ], [ 3, %170 ], [ 2, %177 ]
  br label %180

180:                                              ; preds = %178, %170
  %181 = phi i8 [ %179, %178 ], [ 2, %170 ]
  %182 = phi i8 [ 112, %178 ], [ 88, %170 ]
  switch i32 %25, label %219 [
    i32 28, label %222
    i32 29, label %183
    i32 30, label %201
  ]

183:                                              ; preds = %180
  %184 = icmp ult i32 %23, 4001000
  br i1 %184, label %222, label %185

185:                                              ; preds = %183
  %186 = icmp ult i32 %23, 10001000
  br i1 %186, label %187, label %192

187:                                              ; preds = %185
  %188 = mul nuw nsw i32 %24, 47
  %189 = add nuw nsw i32 %188, 39999
  %190 = udiv i32 %189, 40000
  %191 = trunc i32 %190 to i8
  br label %198

192:                                              ; preds = %185
  %193 = mul nuw nsw i32 %24, 27
  %194 = add nuw nsw i32 %193, 39999
  %195 = udiv i32 %194, 40000
  %196 = trunc i32 %195 to i8
  %197 = add i8 %196, 5
  br label %198

198:                                              ; preds = %192, %187
  %199 = phi i8 [ %191, %187 ], [ %197, %192 ]
  %200 = call i8 @llvm.umin.i8(i8 %199, i8 36)
  br label %222

201:                                              ; preds = %180
  %202 = icmp ult i32 %23, 4001000
  br i1 %202, label %222, label %203

203:                                              ; preds = %201
  %204 = icmp ult i32 %23, 10001000
  br i1 %204, label %205, label %210

205:                                              ; preds = %203
  %206 = mul nuw nsw i32 %24, 11
  %207 = add nuw nsw i32 %206, 9999
  %208 = udiv i32 %207, 10000
  %209 = trunc i32 %208 to i8
  br label %216

210:                                              ; preds = %203
  %211 = mul nuw nsw i32 %24, 3
  %212 = add nuw nsw i32 %211, 4999
  %213 = udiv i32 %212, 5000
  %214 = trunc i32 %213 to i8
  %215 = add i8 %214, 5
  br label %216

216:                                              ; preds = %210, %205
  %217 = phi i8 [ %209, %205 ], [ %215, %210 ]
  %218 = call i8 @llvm.umin.i8(i8 %217, i8 36)
  br label %222

219:                                              ; preds = %180
  %220 = load ptr, ptr %50, align 4
  %221 = getelementptr inbounds %struct.i2c_adapter, ptr %220, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %221, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.helene_set_params_s, i32 noundef %25) #13
  br label %266

222:                                              ; preds = %216, %201, %198, %183, %180
  %223 = phi i8 [ 34, %180 ], [ 5, %183 ], [ 5, %201 ], [ %200, %198 ], [ %218, %216 ]
  %224 = add i32 %21, 2
  %225 = sdiv i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = lshr i32 %225, 8
  %228 = trunc i32 %227 to i8
  %229 = lshr i32 %225, 16
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 15
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %2) #12
  %232 = getelementptr inbounds i8, ptr %2, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %232, i8 0, i32 20, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %233 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 19, ptr %233, align 4, !annotation !8
  %234 = load i8, ptr %45, align 4
  %235 = zext i8 %234 to i16
  store i16 %235, ptr %3, align 4
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %236, align 2
  %237 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %237, align 4
  store i8 4, ptr %2, align 1
  store i8 -60, ptr %232, align 1
  %238 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 2
  store i8 64, ptr %238, align 1
  %239 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 3
  store i8 %181, ptr %239, align 1
  %240 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 4
  store i8 -128, ptr %240, align 1
  %241 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 5
  store i8 %182, ptr %241, align 1
  %242 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 6
  store i8 30, ptr %242, align 1
  %243 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 7
  store i8 2, ptr %243, align 1
  %244 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 8
  store i8 36, ptr %244, align 1
  %245 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 9
  store i8 -17, ptr %245, align 1
  %246 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 10
  store i8 2, ptr %246, align 1
  %247 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 11
  store i8 30, ptr %247, align 1
  %248 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 12
  store i8 %223, ptr %248, align 1
  %249 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 13
  store i8 %226, ptr %249, align 1
  %250 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 14
  store i8 %228, ptr %250, align 1
  %251 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 15
  store i8 %231, ptr %251, align 1
  %252 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 16
  store i8 -1, ptr %252, align 1
  %253 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 17
  store i8 0, ptr %253, align 1
  %254 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 18
  store i8 1, ptr %254, align 1
  %255 = load ptr, ptr %50, align 4
  %256 = call i32 @i2c_transfer(ptr noundef %255, ptr noundef nonnull %3, i32 noundef 1) #12
  %257 = icmp sgt i32 %256, -1
  %258 = icmp ne i32 %256, 1
  %259 = and i1 %257, %258
  %260 = select i1 %259, i32 -121, i32 %256
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %222
  %263 = load ptr, ptr %50, align 4
  %264 = getelementptr inbounds %struct.i2c_adapter, ptr %263, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %264, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %260, i32 noundef 4, i32 noundef 18) #13
  br label %265

265:                                              ; preds = %262, %222
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %2) #12
  store i32 %41, ptr %20, align 4
  br label %266

266:                                              ; preds = %265, %219, %174, %27
  %267 = phi i32 [ -22, %27 ], [ -22, %174 ], [ -22, %219 ], [ 0, %265 ]
  ret i32 %267
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @helene_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, 1000
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @helene_leave_power_save(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [21 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [21 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.helene_priv, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %48, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %4) #12
  %10 = getelementptr inbounds i8, ptr %4, i32 1
  %11 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %11, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.helene_priv, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %17, align 4
  store i8 -121, ptr %4, align 1
  store i8 -60, ptr %10, align 1
  %18 = getelementptr inbounds %struct.helene_priv, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 1) #12
  %21 = icmp sgt i32 %20, -1
  %22 = icmp ne i32 %20, 1
  %23 = and i1 %21, %22
  %24 = select i1 %23, i32 -121, i32 %20
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %9
  %27 = load ptr, ptr %18, align 4
  %28 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %24, i32 noundef 135, i32 noundef 1) #13
  br label %29

29:                                               ; preds = %26, %9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %2) #12
  %30 = getelementptr inbounds i8, ptr %2, i32 1
  %31 = getelementptr inbounds i8, ptr %2, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %31, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %32 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %32, align 4, !annotation !8
  %33 = load i8, ptr %13, align 4
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %3, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %36, align 4
  store i8 -120, ptr %2, align 1
  store i8 64, ptr %30, align 1
  %37 = load ptr, ptr %18, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %3, i32 noundef 1) #12
  %39 = icmp sgt i32 %38, -1
  %40 = icmp ne i32 %38, 1
  %41 = and i1 %39, %40
  %42 = select i1 %41, i32 -121, i32 %38
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load ptr, ptr %18, align 4
  %46 = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %42, i32 noundef 136, i32 noundef 1) #13
  br label %47

47:                                               ; preds = %44, %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %2) #12
  store i32 2, ptr %6, align 4
  br label %48

48:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @helene_get_tv_system(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %44 [
    i32 3, label %4
    i32 16, label %15
    i32 5, label %45
    i32 6, label %26
    i32 9, label %27
    i32 8, label %28
    i32 1, label %37
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 5000001
  br i1 %7, label %45, label %8

8:                                                ; preds = %4
  %9 = icmp ult i32 %6, 6000001
  br i1 %9, label %45, label %10

10:                                               ; preds = %8
  %11 = icmp ult i32 %6, 7000001
  br i1 %11, label %45, label %12

12:                                               ; preds = %10
  %13 = icmp ult i32 %6, 8000001
  br i1 %13, label %45, label %14

14:                                               ; preds = %12
  store i32 8000000, ptr %5, align 4
  br label %45

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 5000001
  br i1 %18, label %45, label %19

19:                                               ; preds = %15
  %20 = icmp ult i32 %17, 6000001
  br i1 %20, label %45, label %21

21:                                               ; preds = %19
  %22 = icmp ult i32 %17, 7000001
  br i1 %22, label %45, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %17, 8000001
  br i1 %24, label %45, label %25

25:                                               ; preds = %23
  store i32 8000000, ptr %16, align 4
  br label %45

26:                                               ; preds = %1
  br label %45

27:                                               ; preds = %1
  br label %45

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, 6000001
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = icmp ult i32 %30, 7000001
  br i1 %33, label %45, label %34

34:                                               ; preds = %32
  %35 = icmp ult i32 %30, 8000001
  br i1 %35, label %45, label %36

36:                                               ; preds = %34
  store i32 8000000, ptr %29, align 4
  br label %45

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %39, 6000001
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = icmp ult i32 %39, 8000001
  %43 = select i1 %42, i32 24, i32 0
  br label %45

44:                                               ; preds = %1
  br label %45

45:                                               ; preds = %44, %41, %37, %36, %34, %32, %28, %27, %26, %25, %23, %21, %19, %15, %14, %12, %10, %8, %4, %1
  %46 = phi i32 [ 17, %14 ], [ 22, %25 ], [ 30, %26 ], [ 28, %27 ], [ 13, %36 ], [ 14, %4 ], [ 15, %8 ], [ 16, %10 ], [ 17, %12 ], [ 19, %15 ], [ 20, %19 ], [ 21, %21 ], [ 22, %23 ], [ 29, %1 ], [ 11, %28 ], [ 12, %32 ], [ 13, %34 ], [ 0, %44 ], [ 23, %37 ], [ %43, %41 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @helene_set_params_t(ptr nocapture noundef %0) #0 {
  %2 = alloca [21 x i8], align 1
  %3 = alloca [1 x %struct.i2c_msg], align 4
  %4 = alloca [21 x i8], align 1
  %5 = alloca [1 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  %7 = alloca [21 x i8], align 1
  %8 = alloca [1 x %struct.i2c_msg], align 4
  %9 = alloca [21 x i8], align 1
  %10 = alloca [1 x %struct.i2c_msg], align 4
  %11 = alloca [21 x i8], align 1
  %12 = alloca [1 x %struct.i2c_msg], align 4
  %13 = alloca [21 x i8], align 1
  %14 = alloca [1 x %struct.i2c_msg], align 4
  %15 = alloca [21 x i8], align 1
  %16 = alloca [1 x %struct.i2c_msg], align 4
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %17, align 4
  %21 = udiv i32 %20, 1000
  %22 = tail call fastcc i32 @helene_get_tv_system(ptr noundef %0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %274, label %24

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %26(ptr noundef %30, i32 noundef 1) #12
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, ptr %17, align 4
  %34 = udiv i32 %33, 1000
  %35 = add nuw nsw i32 %34, 24
  %36 = urem i32 %35, 25
  %37 = sub nuw nsw i32 %35, %36
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %15) #12
  %38 = getelementptr inbounds i8, ptr %15, i32 1
  %39 = getelementptr inbounds i8, ptr %15, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %39, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #12
  %40 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 2, ptr %40, align 4, !annotation !8
  %41 = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 1
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %16, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %45, align 4
  store i8 1, ptr %15, align 1
  store i8 0, ptr %38, align 1
  %46 = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %16, i32 noundef 1) #12
  %49 = icmp sgt i32 %48, -1
  %50 = icmp ne i32 %48, 1
  %51 = and i1 %49, %50
  %52 = select i1 %51, i32 -121, i32 %48
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %32
  %55 = load ptr, ptr %46, align 4
  %56 = getelementptr inbounds %struct.i2c_adapter, ptr %55, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %52, i32 noundef 1, i32 noundef 1) #13
  br label %57

57:                                               ; preds = %54, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %13) #12
  %58 = getelementptr inbounds i8, ptr %13, i32 1
  %59 = getelementptr inbounds i8, ptr %13, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %59, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #12
  %60 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %60, align 4, !annotation !8
  %61 = load i8, ptr %41, align 4
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %14, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %63, align 2
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %64, align 4
  store i8 116, ptr %13, align 1
  store i8 2, ptr %58, align 1
  %65 = load ptr, ptr %46, align 4
  %66 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %14, i32 noundef 1) #12
  %67 = icmp sgt i32 %66, -1
  %68 = icmp ne i32 %66, 1
  %69 = and i1 %67, %68
  %70 = select i1 %69, i32 -121, i32 %66
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %57
  %73 = load ptr, ptr %46, align 4
  %74 = getelementptr inbounds %struct.i2c_adapter, ptr %73, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %70, i32 noundef 116, i32 noundef 1) #13
  br label %75

75:                                               ; preds = %72, %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %13) #12
  %76 = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  call fastcc void @helene_leave_power_save(ptr noundef %19)
  br label %80

80:                                               ; preds = %79, %75
  %81 = add i32 %22, -23
  %82 = icmp ult i32 %81, 2
  %83 = select i1 %82, i8 22, i8 16
  %84 = select i1 %82, i8 38, i8 32
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %11) #12
  %85 = getelementptr inbounds i8, ptr %11, i32 1
  %86 = getelementptr inbounds i8, ptr %11, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %86, i8 0, i32 18, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #12
  %87 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 3, ptr %87, align 4, !annotation !8
  %88 = load i8, ptr %41, align 4
  %89 = zext i8 %88 to i16
  store i16 %89, ptr %12, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %90, align 2
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %91, align 4
  store i8 -111, ptr %11, align 1
  store i8 %83, ptr %85, align 1
  %92 = getelementptr inbounds [21 x i8], ptr %11, i32 0, i32 2
  store i8 %84, ptr %92, align 1
  %93 = load ptr, ptr %46, align 4
  %94 = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %12, i32 noundef 1) #12
  %95 = icmp sgt i32 %94, -1
  %96 = icmp ne i32 %94, 1
  %97 = and i1 %95, %96
  %98 = select i1 %97, i32 -121, i32 %94
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %80
  %101 = load ptr, ptr %46, align 4
  %102 = getelementptr inbounds %struct.i2c_adapter, ptr %101, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %102, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %98, i32 noundef 145, i32 noundef 2) #13
  br label %103

103:                                              ; preds = %100, %80
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %11) #12
  %104 = add i32 %22, -27
  %105 = icmp ult i32 %104, -4
  %106 = select i1 %105, i8 -112, i8 0
  %107 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22
  %108 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22, i32 12
  %109 = load i8, ptr %108, align 1
  %110 = and i8 %109, 1
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %9) #12
  %111 = getelementptr inbounds i8, ptr %9, i32 1
  %112 = getelementptr inbounds i8, ptr %9, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %112, i8 0, i32 18, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %113 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 3, ptr %113, align 4, !annotation !8
  %114 = load i8, ptr %41, align 4
  %115 = zext i8 %114 to i16
  store i16 %115, ptr %10, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %116, align 2
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %117, align 4
  store i8 -100, ptr %9, align 1
  store i8 %106, ptr %111, align 1
  %118 = getelementptr inbounds [21 x i8], ptr %9, i32 0, i32 2
  store i8 %110, ptr %118, align 1
  %119 = load ptr, ptr %46, align 4
  %120 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %10, i32 noundef 1) #12
  %121 = icmp sgt i32 %120, -1
  %122 = icmp ne i32 %120, 1
  %123 = and i1 %121, %122
  %124 = select i1 %123, i32 -121, i32 %120
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %103
  %127 = load ptr, ptr %46, align 4
  %128 = getelementptr inbounds %struct.i2c_adapter, ptr %127, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %128, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %124, i32 noundef 156, i32 noundef 2) #13
  br label %129

129:                                              ; preds = %126, %103
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %9) #12
  br i1 %82, label %130, label %131

130:                                              ; preds = %129
  br i1 %105, label %134, label %132

131:                                              ; preds = %129
  br i1 %105, label %134, label %133

132:                                              ; preds = %130
  br label %134

133:                                              ; preds = %131
  br label %134

134:                                              ; preds = %133, %132, %131, %130
  %135 = phi i8 [ 24, %132 ], [ 3, %133 ], [ 24, %130 ], [ 3, %131 ]
  %136 = phi i8 [ 28, %132 ], [ -76, %133 ], [ 56, %130 ], [ 56, %131 ]
  %137 = phi i8 [ 120, %132 ], [ 120, %133 ], [ 30, %130 ], [ 30, %131 ]
  %138 = phi i8 [ 8, %132 ], [ 8, %133 ], [ 2, %130 ], [ 2, %131 ]
  %139 = phi i8 [ 28, %132 ], [ 48, %133 ], [ 36, %130 ], [ 36, %131 ]
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %7) #12
  %140 = getelementptr inbounds i8, ptr %7, i32 1
  %141 = getelementptr inbounds i8, ptr %7, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %141, i8 0, i32 11, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #12
  %142 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 10, ptr %142, align 4, !annotation !8
  %143 = load i8, ptr %41, align 4
  %144 = zext i8 %143 to i16
  store i16 %144, ptr %8, align 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %145, align 2
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %146, align 4
  store i8 94, ptr %7, align 1
  store i8 -18, ptr %140, align 1
  %147 = getelementptr inbounds [21 x i8], ptr %7, i32 0, i32 2
  store i8 2, ptr %147, align 1
  %148 = getelementptr inbounds [21 x i8], ptr %7, i32 0, i32 3
  store i8 30, ptr %148, align 1
  %149 = getelementptr inbounds [21 x i8], ptr %7, i32 0, i32 4
  store i8 103, ptr %149, align 1
  %150 = getelementptr inbounds [21 x i8], ptr %7, i32 0, i32 5
  store i8 %135, ptr %150, align 1
  %151 = getelementptr inbounds [21 x i8], ptr %7, i32 0, i32 6
  store i8 %136, ptr %151, align 1
  %152 = getelementptr inbounds [21 x i8], ptr %7, i32 0, i32 7
  store i8 %137, ptr %152, align 1
  %153 = getelementptr inbounds [21 x i8], ptr %7, i32 0, i32 8
  store i8 %138, ptr %153, align 1
  %154 = getelementptr inbounds [21 x i8], ptr %7, i32 0, i32 9
  store i8 %139, ptr %154, align 1
  %155 = load ptr, ptr %46, align 4
  %156 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %8, i32 noundef 1) #12
  %157 = icmp sgt i32 %156, -1
  %158 = icmp ne i32 %156, 1
  %159 = and i1 %157, %158
  %160 = select i1 %159, i32 -121, i32 %156
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %134
  %163 = load ptr, ptr %46, align 4
  %164 = getelementptr inbounds %struct.i2c_adapter, ptr %163, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %164, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %160, i32 noundef 94, i32 noundef 9) #13
  br label %165

165:                                              ; preds = %162, %134
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1, !annotation !8
  %166 = call fastcc i32 @helene_read_regs(ptr noundef %19, i8 noundef zeroext 103, ptr noundef nonnull %6, i32 noundef 1) #12
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %189

168:                                              ; preds = %165
  %169 = load i8, ptr %6, align 1
  %170 = and i8 %169, -3
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %4) #12
  %171 = getelementptr inbounds i8, ptr %4, i32 1
  %172 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %172, i8 0, i32 19, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %173 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %173, align 4, !annotation !8
  %174 = load i8, ptr %41, align 4
  %175 = zext i8 %174 to i16
  store i16 %175, ptr %5, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %176, align 2
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %177, align 4
  store i8 103, ptr %4, align 1
  store i8 %170, ptr %171, align 1
  %178 = load ptr, ptr %46, align 4
  %179 = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %5, i32 noundef 1) #12
  %180 = icmp sgt i32 %179, -1
  %181 = icmp ne i32 %179, 1
  %182 = and i1 %180, %181
  %183 = select i1 %182, i32 -121, i32 %179
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %168
  %186 = load ptr, ptr %46, align 4
  %187 = getelementptr inbounds %struct.i2c_adapter, ptr %186, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %187, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %183, i32 noundef 103, i32 noundef 1) #13
  br label %188

188:                                              ; preds = %185, %168
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %4) #12
  br label %189

189:                                              ; preds = %188, %165
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  %190 = load i8, ptr %107, align 1
  %191 = icmp eq i8 %190, -1
  %192 = shl i8 %190, 4
  %193 = and i8 %192, 112
  %194 = select i1 %191, i8 -128, i8 %193
  %195 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22, i32 1
  %196 = load i8, ptr %195, align 1
  %197 = and i8 %196, 15
  %198 = or i8 %194, %197
  %199 = icmp ult i32 %20, 172001000
  br i1 %199, label %200, label %203

200:                                              ; preds = %189
  %201 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22, i32 2
  %202 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22, i32 5
  br label %211

203:                                              ; preds = %189
  %204 = icmp ult i32 %20, 464001000
  br i1 %204, label %205, label %208

205:                                              ; preds = %203
  %206 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22, i32 3
  %207 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22, i32 6
  br label %211

208:                                              ; preds = %203
  %209 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22, i32 4
  %210 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22, i32 7
  br label %211

211:                                              ; preds = %208, %205, %200
  %212 = phi ptr [ %201, %200 ], [ %206, %205 ], [ %209, %208 ]
  %213 = phi ptr [ %202, %200 ], [ %207, %205 ], [ %210, %208 ]
  %214 = load i8, ptr %213, align 1
  %215 = and i8 %214, 7
  %216 = load i8, ptr %212, align 1
  %217 = and i8 %216, 15
  %218 = or i8 %215, 32
  %219 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22, i32 8
  %220 = load i8, ptr %219, align 1
  %221 = shl i8 %220, 4
  %222 = and i8 %221, 48
  %223 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22, i32 9
  %224 = load i8, ptr %223, align 1
  %225 = and i8 %224, 3
  %226 = or i8 %222, %225
  %227 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22, i32 10
  %228 = load i8, ptr %227, align 1
  %229 = and i8 %228, 31
  %230 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %22, i32 11
  %231 = load i8, ptr %230, align 1
  %232 = and i8 %231, 31
  %233 = trunc i32 %21 to i8
  %234 = lshr i32 %21, 8
  %235 = trunc i32 %234 to i8
  %236 = lshr i32 %21, 16
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 15
  %239 = select i1 %82, i8 -39, i8 -103
  %240 = select i1 %82, i8 15, i8 0
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %2) #12
  %241 = getelementptr inbounds i8, ptr %2, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %241, i8 0, i32 20, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %242 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 18, ptr %242, align 4, !annotation !8
  %243 = load i8, ptr %41, align 4
  %244 = zext i8 %243 to i16
  store i16 %244, ptr %3, align 4
  %245 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %245, align 2
  %246 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %246, align 4
  store i8 104, ptr %2, align 1
  store i8 0, ptr %241, align 1
  %247 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 2
  store i8 %198, ptr %247, align 1
  %248 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 3
  store i8 0, ptr %248, align 1
  %249 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 4
  store i8 %217, ptr %249, align 1
  %250 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 5
  store i8 %218, ptr %250, align 1
  %251 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 6
  store i8 %226, ptr %251, align 1
  %252 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 7
  store i8 %229, ptr %252, align 1
  %253 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 8
  store i8 %232, ptr %253, align 1
  %254 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 9
  store i8 %233, ptr %254, align 1
  %255 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 10
  store i8 %235, ptr %255, align 1
  %256 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 11
  store i8 %238, ptr %256, align 1
  %257 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 12
  store i8 -1, ptr %257, align 1
  %258 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 13
  store i8 1, ptr %258, align 1
  %259 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 14
  store i8 %239, ptr %259, align 1
  %260 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 15
  store i8 %240, ptr %260, align 1
  %261 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 16
  store i8 36, ptr %261, align 1
  %262 = getelementptr inbounds [21 x i8], ptr %2, i32 0, i32 17
  store i8 -121, ptr %262, align 1
  %263 = load ptr, ptr %46, align 4
  %264 = call i32 @i2c_transfer(ptr noundef %263, ptr noundef nonnull %3, i32 noundef 1) #12
  %265 = icmp sgt i32 %264, -1
  %266 = icmp ne i32 %264, 1
  %267 = and i1 %265, %266
  %268 = select i1 %267, i32 -121, i32 %264
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %211
  %271 = load ptr, ptr %46, align 4
  %272 = getelementptr inbounds %struct.i2c_adapter, ptr %271, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %272, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %268, i32 noundef 104, i32 noundef 17) #13
  br label %273

273:                                              ; preds = %270, %211
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %2) #12
  store i32 %37, ptr %19, align 4
  br label %274

274:                                              ; preds = %273, %1
  %275 = phi i32 [ 0, %273 ], [ -22, %1 ]
  ret i32 %275
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @helene_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.helene_config, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = trunc i16 %12 to i8
  %14 = getelementptr inbounds %struct.helene_priv, ptr %8, i32 0, i32 1
  store i8 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.helene_priv, ptr %8, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.helene_config, ptr %5, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.helene_priv, ptr %8, i32 0, i32 4
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.helene_config, ptr %5, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.helene_priv, ptr %8, i32 0, i32 5
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.helene_config, ptr %5, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.helene_priv, ptr %8, i32 0, i32 6
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 28
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %10
  %31 = tail call i32 %28(ptr noundef %7, i32 noundef 1) #12
  br label %32

32:                                               ; preds = %30, %10
  %33 = tail call fastcc i32 @helene_x_pon(ptr noundef nonnull %8)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load ptr, ptr %27, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call i32 %36(ptr noundef %7, i32 noundef 0) #12
  br label %40

40:                                               ; preds = %38, %35
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %41, ptr noundef nonnull align 4 dereferenceable(220) @helene_tuner_ops, i32 220, i1 false)
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 4
  store ptr %8, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %8, ptr %43, align 8
  %44 = load i8, ptr %14, align 4
  %45 = zext i8 %44 to i32
  %46 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %45, ptr noundef %46) #13
  br label %47

47:                                               ; preds = %40, %32, %2
  %48 = phi i32 [ 0, %40 ], [ -12, %2 ], [ -22, %32 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @helene_set_params(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %6 [
    i32 3, label %4
    i32 16, label %4
    i32 8, label %4
    i32 1, label %4
  ]

4:                                                ; preds = %1, %1, %1, %1
  %5 = tail call i32 @helene_set_params_t(ptr noundef %0)
  br label %8

6:                                                ; preds = %1
  %7 = tail call i32 @helene_set_params_s(ptr noundef %0)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %5, %4 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
