; ModuleID = '/llk/IR/drivers/media/dvb-frontends/m88rs2000.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/m88rs2000.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_m88rs2000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22m88rs2000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_m88rs2000_attach:\09\09\09\09\09"
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
%struct.inittab = type { i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.m88rs2000_state = type { ptr, ptr, %struct.dvb_frontend, i8, i32, i32, i32, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.m88rs2000_config = type { i8, ptr, i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@m88rs2000_debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @m88rs2000_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [51 x i8] c"parm=debug:set debugging level (1=info (or-able)).\00", section ".modinfo", align 1
@m88rs2000_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"M88RS2000 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1000000, i32 5000000, i32 1000000, i32 45000000, i32 500, i32 1711 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @m88rs2000_release, ptr null, ptr @m88rs2000_init, ptr @m88rs2000_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m88rs2000_set_frontend, ptr @m88rs2000_get_tune_settings, ptr @m88rs2000_get_frontend, ptr @m88rs2000_read_status, ptr @m88rs2000_read_ber, ptr @m88rs2000_read_signal_strength, ptr @m88rs2000_read_snr, ptr @m88rs2000_read_ucblocks, ptr null, ptr @m88rs2000_send_diseqc_msg, ptr null, ptr @m88rs2000_send_diseqc_burst, ptr @m88rs2000_set_tone, ptr @m88rs2000_set_voltage, ptr null, ptr null, ptr @m88rs2000_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_m88rs2000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_m88rs2000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_m88rs2000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @m88rs2000_attach to i32), ptr @__kstrtab_m88rs2000_attach, ptr @__kstrtabns_m88rs2000_attach }, section "___ksymtab+m88rs2000_attach", align 4
@__UNIQUE_ID_description251 = internal constant [47 x i8] c"description=M88RS2000 DVB-S Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [44 x i8] c"author=Malcolm Priestley tvboxspy@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version254 = internal constant [13 x i8] c"version=1.13\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [38 x i8] c"\017m88rs2000-fe: m88rs2000: init chip\0A\00", align 1
@m88rs2000_setup = internal global [15 x %struct.inittab] [%struct.inittab { i8 1, i8 -102, i8 48 }, %struct.inittab { i8 1, i8 0, i8 1 }, %struct.inittab { i8 16, i8 25, i8 0 }, %struct.inittab { i8 1, i8 0, i8 0 }, %struct.inittab { i8 1, i8 -102, i8 -80 }, %struct.inittab { i8 1, i8 -127, i8 -63 }, %struct.inittab { i8 1, i8 -127, i8 -127 }, %struct.inittab { i8 1, i8 -122, i8 -58 }, %struct.inittab { i8 1, i8 -102, i8 48 }, %struct.inittab { i8 1, i8 -16, i8 34 }, %struct.inittab { i8 1, i8 -15, i8 -65 }, %struct.inittab { i8 1, i8 -80, i8 69 }, %struct.inittab { i8 1, i8 -78, i8 1 }, %struct.inittab { i8 1, i8 -102, i8 -80 }, %struct.inittab { i8 -1, i8 -86, i8 -1 }], align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"\017m88rs2000-fe: %s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", align 1
@__func__.m88rs2000_writereg = private unnamed_addr constant [19 x i8] c"m88rs2000_writereg\00", align 1
@m88rs2000_shutdown = internal global [7 x %struct.inittab] [%struct.inittab { i8 1, i8 -102, i8 48 }, %struct.inittab { i8 1, i8 -80, i8 0 }, %struct.inittab { i8 1, i8 -15, i8 -119 }, %struct.inittab { i8 1, i8 0, i8 1 }, %struct.inittab { i8 1, i8 -102, i8 -80 }, %struct.inittab { i8 1, i8 -127, i8 -127 }, %struct.inittab { i8 -1, i8 -86, i8 -1 }], align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"\017m88rs2000-fe: %s: unsupported delivery system selected (%d)\0A\00", align 1
@__func__.m88rs2000_set_frontend = private unnamed_addr constant [23 x i8] c"m88rs2000_set_frontend\00", align 1
@fe_reset = internal global [35 x %struct.inittab] [%struct.inittab { i8 1, i8 0, i8 1 }, %struct.inittab { i8 1, i8 32, i8 -127 }, %struct.inittab { i8 1, i8 33, i8 -128 }, %struct.inittab { i8 1, i8 16, i8 51 }, %struct.inittab { i8 1, i8 17, i8 68 }, %struct.inittab { i8 1, i8 18, i8 7 }, %struct.inittab { i8 1, i8 24, i8 32 }, %struct.inittab { i8 1, i8 40, i8 4 }, %struct.inittab { i8 1, i8 41, i8 -114 }, %struct.inittab { i8 1, i8 59, i8 -1 }, %struct.inittab { i8 1, i8 50, i8 16 }, %struct.inittab { i8 1, i8 51, i8 2 }, %struct.inittab { i8 1, i8 52, i8 48 }, %struct.inittab { i8 1, i8 53, i8 -1 }, %struct.inittab { i8 1, i8 56, i8 80 }, %struct.inittab { i8 1, i8 57, i8 104 }, %struct.inittab { i8 1, i8 60, i8 127 }, %struct.inittab { i8 1, i8 61, i8 15 }, %struct.inittab { i8 1, i8 69, i8 32 }, %struct.inittab { i8 1, i8 70, i8 36 }, %struct.inittab { i8 1, i8 71, i8 124 }, %struct.inittab { i8 1, i8 72, i8 22 }, %struct.inittab { i8 1, i8 73, i8 4 }, %struct.inittab { i8 1, i8 74, i8 1 }, %struct.inittab { i8 1, i8 75, i8 120 }, %struct.inittab { i8 1, i8 77, i8 -46 }, %struct.inittab { i8 1, i8 78, i8 109 }, %struct.inittab { i8 1, i8 80, i8 48 }, %struct.inittab { i8 1, i8 81, i8 48 }, %struct.inittab { i8 1, i8 84, i8 123 }, %struct.inittab { i8 1, i8 86, i8 9 }, %struct.inittab { i8 1, i8 88, i8 89 }, %struct.inittab { i8 1, i8 89, i8 55 }, %struct.inittab { i8 1, i8 99, i8 -6 }, %struct.inittab { i8 -1, i8 -86, i8 -1 }], align 1
@fe_trigger = internal global [14 x %struct.inittab] [%struct.inittab { i8 1, i8 -105, i8 4 }, %struct.inittab { i8 1, i8 -103, i8 119 }, %struct.inittab { i8 1, i8 -101, i8 100 }, %struct.inittab { i8 1, i8 -98, i8 0 }, %struct.inittab { i8 1, i8 -97, i8 -8 }, %struct.inittab { i8 1, i8 -104, i8 -1 }, %struct.inittab { i8 1, i8 -64, i8 15 }, %struct.inittab { i8 1, i8 -119, i8 1 }, %struct.inittab { i8 1, i8 0, i8 0 }, %struct.inittab { i8 16, i8 10, i8 0 }, %struct.inittab { i8 1, i8 0, i8 1 }, %struct.inittab { i8 1, i8 0, i8 0 }, %struct.inittab { i8 1, i8 -102, i8 -80 }, %struct.inittab { i8 -1, i8 -86, i8 -1 }], align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"\017m88rs2000-fe: m88rs2000: m88rs2000_set_symbolrate\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"\017m88rs2000-fe: %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", align 1
@__func__.m88rs2000_readreg = private unnamed_addr constant [18 x i8] c"m88rs2000_readreg\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\017m88rs2000-fe: %s\0A\00", align 1
@__func__.m88rs2000_send_diseqc_msg = private unnamed_addr constant [26 x i8] c"m88rs2000_send_diseqc_msg\00", align 1
@__func__.m88rs2000_send_diseqc_burst = private unnamed_addr constant [28 x i8] c"m88rs2000_send_diseqc_burst\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_version254, ptr @__ksymtab_m88rs2000_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.m88rs2000_set_frontend = private unnamed_addr constant [7 x i8] c"\08\10 \00@\00\80", align 1
@switch.table.m88rs2000_get_fec = private unnamed_addr constant [5 x i32] [i32 7, i32 5, i32 3, i32 2, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @m88rs2000_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1072) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.m88rs2000_state, ptr %4, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %4, align 8
  %8 = getelementptr inbounds %struct.m88rs2000_state, ptr %4, i32 0, i32 4
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.m88rs2000_state, ptr %4, i32 0, i32 5
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.m88rs2000_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.m88rs2000_state, ptr %4, i32 0, i32 2
  %12 = getelementptr inbounds %struct.m88rs2000_state, ptr %4, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %12, ptr noundef nonnull align 4 dereferenceable(544) @m88rs2000_ops, i32 544, i1 false)
  %13 = getelementptr inbounds %struct.m88rs2000_state, ptr %4, i32 0, i32 2, i32 3
  store ptr %4, ptr %13, align 8
  br label %15

14:                                               ; preds = %2
  tail call void @kfree(ptr noundef null) #10
  br label %15

15:                                               ; preds = %14, %6
  %16 = phi ptr [ null, %14 ], [ %11, %6 ]
  ret ptr %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @m88rs2000_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @m88rs2000_debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.m88rs2000_state, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.m88rs2000_config, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @m88rs2000_setup, ptr %13
  %16 = tail call fastcc i32 @m88rs2000_tab_set(ptr noundef %3, ptr noundef nonnull %15)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @m88rs2000_tab_set(ptr noundef %3, ptr noundef nonnull @m88rs2000_shutdown)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [2 x i8], align 2
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [2 x i8], align 2
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [2 x i8], align 2
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [2 x i8], align 2
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [2 x i8], align 2
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [2 x i8], align 2
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [2 x i8], align 2
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [1 x i8], align 1
  %43 = alloca [1 x i8], align 1
  %44 = alloca [2 x %struct.i2c_msg], align 4
  %45 = alloca [2 x i8], align 2
  %46 = alloca %struct.i2c_msg, align 4
  %47 = alloca [2 x i8], align 2
  %48 = alloca %struct.i2c_msg, align 4
  %49 = alloca [2 x i8], align 2
  %50 = alloca %struct.i2c_msg, align 4
  %51 = alloca [1 x i8], align 1
  %52 = alloca [1 x i8], align 1
  %53 = alloca [2 x %struct.i2c_msg], align 4
  %54 = alloca [2 x i8], align 2
  %55 = alloca %struct.i2c_msg, align 4
  %56 = alloca [2 x i8], align 2
  %57 = alloca %struct.i2c_msg, align 4
  %58 = alloca [2 x i8], align 2
  %59 = alloca %struct.i2c_msg, align 4
  %60 = alloca i32, align 4
  %61 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %60) #10
  store i32 0, ptr %60, align 4, !annotation !8
  %64 = getelementptr inbounds %struct.m88rs2000_state, ptr %62, i32 0, i32 3
  store i8 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 5
  br i1 %67, label %74, label %68

68:                                               ; preds = %1
  %69 = load i32, ptr @m88rs2000_debug, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %749, label %72

72:                                               ; preds = %68
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.m88rs2000_set_frontend, i32 noundef %66) #11
  br label %749

74:                                               ; preds = %1
  %75 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = tail call i32 %76(ptr noundef %0) #10
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %749, label %81

81:                                               ; preds = %78, %74
  %82 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 9
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, ptr %63, align 4
  br label %94

87:                                               ; preds = %81
  %88 = call i32 %83(ptr noundef %0, ptr noundef nonnull %60) #10
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %749, label %90

90:                                               ; preds = %87
  %91 = load i32, ptr %60, align 4
  %92 = load i32, ptr %63, align 4
  %93 = sub i32 %91, %92
  br label %94

94:                                               ; preds = %90, %85
  %95 = phi i32 [ %92, %90 ], [ %86, %85 ]
  %96 = phi i32 [ %93, %90 ], [ 0, %85 ]
  %97 = urem i32 %95, 192857
  %98 = add nsw i32 %97, -189857
  %99 = icmp ult i32 %98, -186856
  br i1 %99, label %100, label %120

100:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %58) #10
  store i8 -122, ptr %58, align 2
  %101 = getelementptr inbounds i8, ptr %58, i32 1
  store i8 -62, ptr %101, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #10
  %102 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 0, ptr %102, align 4, !annotation !8
  %103 = getelementptr inbounds %struct.m88rs2000_state, ptr %62, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = load i8, ptr %104, align 4
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %59, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 1
  store i16 0, ptr %107, align 2
  store i16 2, ptr %102, align 4
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %108, align 4
  %109 = load ptr, ptr %62, align 4
  %110 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %59, i32 noundef 1) #10
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %118, label %112

112:                                              ; preds = %100
  %113 = load i32, ptr @m88rs2000_debug, align 4
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 134, i32 noundef 194, i32 noundef %110) #11
  br label %118

118:                                              ; preds = %116, %112, %100
  %119 = phi i32 [ -121, %112 ], [ -121, %116 ], [ 0, %100 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %58) #10
  br label %140

120:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #10
  store i8 -122, ptr %56, align 2
  %121 = getelementptr inbounds i8, ptr %56, i32 1
  store i8 -58, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #10
  %122 = getelementptr inbounds i8, ptr %57, i32 4
  store i32 0, ptr %122, align 4, !annotation !8
  %123 = getelementptr inbounds %struct.m88rs2000_state, ptr %62, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = load i8, ptr %124, align 4
  %126 = zext i8 %125 to i16
  store i16 %126, ptr %57, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  store i16 0, ptr %127, align 2
  store i16 2, ptr %122, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  store ptr %56, ptr %128, align 4
  %129 = load ptr, ptr %62, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %57, i32 noundef 1) #10
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %138, label %132

132:                                              ; preds = %120
  %133 = load i32, ptr @m88rs2000_debug, align 4
  %134 = and i32 %133, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 134, i32 noundef 198, i32 noundef %130) #11
  br label %138

138:                                              ; preds = %136, %132, %120
  %139 = phi i32 [ -121, %132 ], [ -121, %136 ], [ 0, %120 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #10
  br label %140

140:                                              ; preds = %138, %118
  %141 = phi i32 [ %119, %118 ], [ %139, %138 ]
  %142 = load ptr, ptr %61, align 4
  %143 = call fastcc i32 @m88rs2000_get_mclk(ptr noundef %0) #10
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %223, label %145

145:                                              ; preds = %140
  %146 = shl i32 %96, 16
  %147 = ashr exact i32 %146, 4
  %148 = sdiv i32 %143, 2
  %149 = add nsw i32 %148, %147
  %150 = sdiv i32 %149, %143
  %151 = icmp slt i32 %150, 0
  %152 = add nsw i32 %150, 4096
  %153 = select i1 %151, i32 %152, i32 %150
  %154 = lshr i32 %153, 4
  %155 = trunc i32 %154 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #10
  store i8 -100, ptr %54, align 2
  %156 = getelementptr inbounds i8, ptr %54, i32 1
  store i8 %155, ptr %156, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #10
  %157 = getelementptr inbounds i8, ptr %55, i32 4
  store i32 2, ptr %157, align 4, !annotation !8
  %158 = getelementptr inbounds %struct.m88rs2000_state, ptr %142, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = load i8, ptr %159, align 4
  %161 = zext i8 %160 to i16
  store i16 %161, ptr %55, align 4
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %162, align 2
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %54, ptr %163, align 4
  %164 = load ptr, ptr %142, align 4
  %165 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %55, i32 noundef 1) #10
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %174, label %167

167:                                              ; preds = %145
  %168 = load i32, ptr @m88rs2000_debug, align 4
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = and i32 %154, 255
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 156, i32 noundef %172, i32 noundef %165) #11
  br label %174

174:                                              ; preds = %171, %167, %145
  %175 = phi i32 [ -121, %167 ], [ -121, %171 ], [ 0, %145 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %51) #10
  store i8 -99, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %52) #10
  store i8 0, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %53) #10
  %176 = getelementptr inbounds i8, ptr %53, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %176, i8 0, i32 16, i1 false) #10, !annotation !8
  %177 = load ptr, ptr %158, align 4
  %178 = load i8, ptr %177, align 4
  %179 = zext i8 %178 to i16
  store i16 %179, ptr %53, align 4
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %180, align 2
  store i16 1, ptr %176, align 4
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %51, ptr %181, align 4
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 1
  %183 = load i8, ptr %177, align 4
  %184 = zext i8 %183 to i16
  store i16 %184, ptr %182, align 4
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 1, i32 1
  store i16 1, ptr %185, align 2
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 1, i32 2
  store i16 1, ptr %186, align 4
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 1, i32 3
  store ptr %52, ptr %187, align 4
  %188 = load ptr, ptr %142, align 4
  %189 = call i32 @i2c_transfer(ptr noundef %188, ptr noundef nonnull %53, i32 noundef 2) #10
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %197, label %191

191:                                              ; preds = %174
  %192 = load i32, ptr @m88rs2000_debug, align 4
  %193 = and i32 %192, 1
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %191
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 157, i32 noundef %189) #11
  br label %197

197:                                              ; preds = %195, %191, %174
  %198 = load i8, ptr %52, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %53) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %52) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %51) #10
  %199 = and i8 %198, 15
  %200 = trunc i32 %153 to i8
  %201 = shl i8 %200, 4
  %202 = or i8 %199, %201
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #10
  store i8 -99, ptr %49, align 2
  %203 = getelementptr inbounds i8, ptr %49, i32 1
  store i8 %202, ptr %203, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #10
  %204 = getelementptr inbounds i8, ptr %50, i32 4
  store i32 2, ptr %204, align 4, !annotation !8
  %205 = load ptr, ptr %158, align 4
  %206 = load i8, ptr %205, align 4
  %207 = zext i8 %206 to i16
  store i16 %207, ptr %50, align 4
  %208 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  store i16 0, ptr %208, align 2
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  store ptr %49, ptr %209, align 4
  %210 = load ptr, ptr %142, align 4
  %211 = call i32 @i2c_transfer(ptr noundef %210, ptr noundef nonnull %50, i32 noundef 1) #10
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %220, label %213

213:                                              ; preds = %197
  %214 = load i32, ptr @m88rs2000_debug, align 4
  %215 = and i32 %214, 1
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %213
  %218 = zext i8 %202 to i32
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 157, i32 noundef %218, i32 noundef %211) #11
  br label %220

220:                                              ; preds = %217, %213, %197
  %221 = phi i32 [ -121, %213 ], [ -121, %217 ], [ 0, %197 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #10
  %222 = or i32 %221, %175
  br label %223

223:                                              ; preds = %220, %140
  %224 = phi i32 [ %222, %220 ], [ -22, %140 ]
  %225 = or i32 %224, %141
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %749, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %229 = load i32, ptr %228, align 4
  %230 = icmp ugt i32 %229, 27500000
  br i1 %230, label %231, label %251

231:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %47) #10
  store i8 -15, ptr %47, align 2
  %232 = getelementptr inbounds i8, ptr %47, i32 1
  store i8 -92, ptr %232, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #10
  %233 = getelementptr inbounds i8, ptr %48, i32 4
  store i32 0, ptr %233, align 4, !annotation !8
  %234 = getelementptr inbounds %struct.m88rs2000_state, ptr %62, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = load i8, ptr %235, align 4
  %237 = zext i8 %236 to i16
  store i16 %237, ptr %48, align 4
  %238 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  store i16 0, ptr %238, align 2
  store i16 2, ptr %233, align 4
  %239 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  store ptr %47, ptr %239, align 4
  %240 = load ptr, ptr %62, align 4
  %241 = call i32 @i2c_transfer(ptr noundef %240, ptr noundef nonnull %48, i32 noundef 1) #10
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %249, label %243

243:                                              ; preds = %231
  %244 = load i32, ptr @m88rs2000_debug, align 4
  %245 = and i32 %244, 1
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %243
  %248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 241, i32 noundef 164, i32 noundef %241) #11
  br label %249

249:                                              ; preds = %247, %243, %231
  %250 = phi i32 [ -121, %243 ], [ -121, %247 ], [ 0, %231 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %47) #10
  br label %271

251:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %45) #10
  store i8 -15, ptr %45, align 2
  %252 = getelementptr inbounds i8, ptr %45, i32 1
  store i8 -65, ptr %252, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #10
  %253 = getelementptr inbounds i8, ptr %46, i32 4
  store i32 0, ptr %253, align 4, !annotation !8
  %254 = getelementptr inbounds %struct.m88rs2000_state, ptr %62, i32 0, i32 1
  %255 = load ptr, ptr %254, align 4
  %256 = load i8, ptr %255, align 4
  %257 = zext i8 %256 to i16
  store i16 %257, ptr %46, align 4
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %258, align 2
  store i16 2, ptr %253, align 4
  %259 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %45, ptr %259, align 4
  %260 = load ptr, ptr %62, align 4
  %261 = call i32 @i2c_transfer(ptr noundef %260, ptr noundef nonnull %46, i32 noundef 1) #10
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %269, label %263

263:                                              ; preds = %251
  %264 = load i32, ptr @m88rs2000_debug, align 4
  %265 = and i32 %264, 1
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %263
  %268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 241, i32 noundef 191, i32 noundef %261) #11
  br label %269

269:                                              ; preds = %267, %263, %251
  %270 = phi i32 [ -121, %263 ], [ -121, %267 ], [ 0, %251 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %45) #10
  br label %271

271:                                              ; preds = %269, %249
  %272 = phi i32 [ %250, %249 ], [ %270, %269 ]
  %273 = call fastcc i32 @m88rs2000_tab_set(ptr noundef %62, ptr noundef nonnull @fe_reset)
  %274 = or i32 %273, %272
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %749, label %276

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %278 = load i32, ptr %277, align 4
  %279 = add i32 %278, -1
  %280 = icmp ult i32 %279, 7
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = getelementptr inbounds [7 x i8], ptr @switch.table.m88rs2000_set_frontend, i32 0, i32 %279
  %283 = load i8, ptr %282, align 1
  br label %284

284:                                              ; preds = %281, %276
  %285 = phi i8 [ %283, %281 ], [ 0, %276 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %42) #10
  store i8 112, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %43) #10
  store i8 0, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %44) #10
  %286 = getelementptr inbounds i8, ptr %44, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %286, i8 0, i32 16, i1 false) #10, !annotation !8
  %287 = getelementptr inbounds %struct.m88rs2000_state, ptr %62, i32 0, i32 1
  %288 = load ptr, ptr %287, align 4
  %289 = load i8, ptr %288, align 4
  %290 = zext i8 %289 to i16
  store i16 %290, ptr %44, align 4
  %291 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 1
  store i16 0, ptr %291, align 2
  store i16 1, ptr %286, align 4
  %292 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 0, i32 3
  store ptr %42, ptr %292, align 4
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 1
  %294 = load i8, ptr %288, align 4
  %295 = zext i8 %294 to i16
  store i16 %295, ptr %293, align 4
  %296 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 1, i32 1
  store i16 1, ptr %296, align 2
  %297 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 1, i32 2
  store i16 1, ptr %297, align 4
  %298 = getelementptr inbounds %struct.i2c_msg, ptr %44, i32 1, i32 3
  store ptr %43, ptr %298, align 4
  %299 = load ptr, ptr %62, align 4
  %300 = call i32 @i2c_transfer(ptr noundef %299, ptr noundef nonnull %44, i32 noundef 2) #10
  %301 = icmp eq i32 %300, 2
  br i1 %301, label %308, label %302

302:                                              ; preds = %284
  %303 = load i32, ptr @m88rs2000_debug, align 4
  %304 = and i32 %303, 1
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %302
  %307 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 112, i32 noundef %300) #11
  br label %308

308:                                              ; preds = %306, %302, %284
  %309 = load i8, ptr %43, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %44) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %42) #10
  %310 = and i8 %309, 7
  %311 = or i8 %310, %285
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #10
  store i8 112, ptr %40, align 2
  %312 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 %311, ptr %312, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #10
  %313 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 2, ptr %313, align 4, !annotation !8
  %314 = load ptr, ptr %287, align 4
  %315 = load i8, ptr %314, align 4
  %316 = zext i8 %315 to i16
  store i16 %316, ptr %41, align 4
  %317 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %317, align 2
  %318 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %318, align 4
  %319 = load ptr, ptr %62, align 4
  %320 = call i32 @i2c_transfer(ptr noundef %319, ptr noundef nonnull %41, i32 noundef 1) #10
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %329, label %322

322:                                              ; preds = %308
  %323 = load i32, ptr @m88rs2000_debug, align 4
  %324 = and i32 %323, 1
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %329, label %326

326:                                              ; preds = %322
  %327 = zext i8 %311 to i32
  %328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 112, i32 noundef %327, i32 noundef %320) #11
  br label %329

329:                                              ; preds = %326, %322, %308
  %330 = phi i32 [ -121, %322 ], [ -121, %326 ], [ 0, %308 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #10
  store i8 118, ptr %38, align 2
  %331 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 8, ptr %331, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  %332 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 2, ptr %332, align 4, !annotation !8
  %333 = load ptr, ptr %287, align 4
  %334 = load i8, ptr %333, align 4
  %335 = zext i8 %334 to i16
  store i16 %335, ptr %39, align 4
  %336 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %336, align 2
  %337 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %337, align 4
  %338 = load ptr, ptr %62, align 4
  %339 = call i32 @i2c_transfer(ptr noundef %338, ptr noundef nonnull %39, i32 noundef 1) #10
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %347, label %341

341:                                              ; preds = %329
  %342 = load i32, ptr @m88rs2000_debug, align 4
  %343 = and i32 %342, 1
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %347, label %345

345:                                              ; preds = %341
  %346 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 118, i32 noundef 8, i32 noundef %339) #11
  br label %347

347:                                              ; preds = %345, %341, %329
  %348 = phi i32 [ -121, %341 ], [ -121, %345 ], [ 0, %329 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #10
  %349 = or i32 %348, %330
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #10
  store i8 -123, ptr %36, align 2
  %350 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 1, ptr %350, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %351 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 0, ptr %351, align 4, !annotation !8
  %352 = load ptr, ptr %287, align 4
  %353 = load i8, ptr %352, align 4
  %354 = zext i8 %353 to i16
  store i16 %354, ptr %37, align 4
  %355 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %355, align 2
  store i16 2, ptr %351, align 4
  %356 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %356, align 4
  %357 = load ptr, ptr %62, align 4
  %358 = call i32 @i2c_transfer(ptr noundef %357, ptr noundef nonnull %37, i32 noundef 1) #10
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %366, label %360

360:                                              ; preds = %347
  %361 = load i32, ptr @m88rs2000_debug, align 4
  %362 = and i32 %361, 1
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %366, label %364

364:                                              ; preds = %360
  %365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 133, i32 noundef 1, i32 noundef %358) #11
  br label %366

366:                                              ; preds = %364, %360, %347
  %367 = phi i32 [ -121, %360 ], [ -121, %364 ], [ 0, %347 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #10
  %368 = or i32 %349, %367
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #10
  store i8 -118, ptr %34, align 2
  %369 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 -65, ptr %369, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  %370 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 0, ptr %370, align 4, !annotation !8
  %371 = load ptr, ptr %287, align 4
  %372 = load i8, ptr %371, align 4
  %373 = zext i8 %372 to i16
  store i16 %373, ptr %35, align 4
  %374 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %374, align 2
  store i16 2, ptr %370, align 4
  %375 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %375, align 4
  %376 = load ptr, ptr %62, align 4
  %377 = call i32 @i2c_transfer(ptr noundef %376, ptr noundef nonnull %35, i32 noundef 1) #10
  %378 = icmp eq i32 %377, 1
  br i1 %378, label %385, label %379

379:                                              ; preds = %366
  %380 = load i32, ptr @m88rs2000_debug, align 4
  %381 = and i32 %380, 1
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %385, label %383

383:                                              ; preds = %379
  %384 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 138, i32 noundef 191, i32 noundef %377) #11
  br label %385

385:                                              ; preds = %383, %379, %366
  %386 = phi i32 [ -121, %379 ], [ -121, %383 ], [ 0, %366 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #10
  %387 = or i32 %368, %386
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #10
  store i8 -115, ptr %32, align 2
  %388 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 30, ptr %388, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  %389 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 0, ptr %389, align 4, !annotation !8
  %390 = load ptr, ptr %287, align 4
  %391 = load i8, ptr %390, align 4
  %392 = zext i8 %391 to i16
  store i16 %392, ptr %33, align 4
  %393 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %393, align 2
  store i16 2, ptr %389, align 4
  %394 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %394, align 4
  %395 = load ptr, ptr %62, align 4
  %396 = call i32 @i2c_transfer(ptr noundef %395, ptr noundef nonnull %33, i32 noundef 1) #10
  %397 = icmp eq i32 %396, 1
  br i1 %397, label %404, label %398

398:                                              ; preds = %385
  %399 = load i32, ptr @m88rs2000_debug, align 4
  %400 = and i32 %399, 1
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %398
  %403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 141, i32 noundef 30, i32 noundef %396) #11
  br label %404

404:                                              ; preds = %402, %398, %385
  %405 = phi i32 [ -121, %398 ], [ -121, %402 ], [ 0, %385 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #10
  %406 = or i32 %387, %405
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #10
  store i8 -112, ptr %30, align 2
  %407 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 -15, ptr %407, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  %408 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 0, ptr %408, align 4, !annotation !8
  %409 = load ptr, ptr %287, align 4
  %410 = load i8, ptr %409, align 4
  %411 = zext i8 %410 to i16
  store i16 %411, ptr %31, align 4
  %412 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %412, align 2
  store i16 2, ptr %408, align 4
  %413 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %413, align 4
  %414 = load ptr, ptr %62, align 4
  %415 = call i32 @i2c_transfer(ptr noundef %414, ptr noundef nonnull %31, i32 noundef 1) #10
  %416 = icmp eq i32 %415, 1
  br i1 %416, label %423, label %417

417:                                              ; preds = %404
  %418 = load i32, ptr @m88rs2000_debug, align 4
  %419 = and i32 %418, 1
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %417
  %422 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 144, i32 noundef 241, i32 noundef %415) #11
  br label %423

423:                                              ; preds = %421, %417, %404
  %424 = phi i32 [ -121, %417 ], [ -121, %421 ], [ 0, %404 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #10
  %425 = or i32 %406, %424
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #10
  store i8 -111, ptr %28, align 2
  %426 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 8, ptr %426, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  %427 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 0, ptr %427, align 4, !annotation !8
  %428 = load ptr, ptr %287, align 4
  %429 = load i8, ptr %428, align 4
  %430 = zext i8 %429 to i16
  store i16 %430, ptr %29, align 4
  %431 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %431, align 2
  store i16 2, ptr %427, align 4
  %432 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %432, align 4
  %433 = load ptr, ptr %62, align 4
  %434 = call i32 @i2c_transfer(ptr noundef %433, ptr noundef nonnull %29, i32 noundef 1) #10
  %435 = icmp eq i32 %434, 1
  br i1 %435, label %442, label %436

436:                                              ; preds = %423
  %437 = load i32, ptr @m88rs2000_debug, align 4
  %438 = and i32 %437, 1
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %442, label %440

440:                                              ; preds = %436
  %441 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 145, i32 noundef 8, i32 noundef %434) #11
  br label %442

442:                                              ; preds = %440, %436, %423
  %443 = phi i32 [ -121, %436 ], [ -121, %440 ], [ 0, %423 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #10
  %444 = or i32 %425, %443
  %445 = icmp slt i32 %444, 0
  br i1 %445, label %749, label %446

446:                                              ; preds = %442
  %447 = load i32, ptr %228, align 4
  %448 = load ptr, ptr %61, align 4
  %449 = add i32 %447, -45000001
  %450 = icmp ult i32 %449, -44000001
  br i1 %450, label %749, label %451

451:                                              ; preds = %446
  %452 = call fastcc i32 @m88rs2000_get_mclk(ptr noundef %0) #10
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %749, label %454

454:                                              ; preds = %451
  %455 = udiv i32 %447, 1000
  %456 = zext i32 %455 to i64
  %457 = shl nuw nsw i64 %456, 24
  %458 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %452, i64 %457) #12, !srcloc !9
  %459 = extractvalue { i64, i64 } %458, 1
  %460 = lshr i64 %459, 8
  %461 = trunc i64 %460 to i8
  %462 = lshr i64 %459, 16
  %463 = trunc i64 %462 to i8
  %464 = trunc i64 %459 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #10
  store i8 -109, ptr %26, align 2
  %465 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 %464, ptr %465, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %466 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 0, ptr %466, align 4, !annotation !8
  %467 = getelementptr inbounds %struct.m88rs2000_state, ptr %448, i32 0, i32 1
  %468 = load ptr, ptr %467, align 4
  %469 = load i8, ptr %468, align 4
  %470 = zext i8 %469 to i16
  store i16 %470, ptr %27, align 4
  %471 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %471, align 2
  store i16 2, ptr %466, align 4
  %472 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %472, align 4
  %473 = load ptr, ptr %448, align 4
  %474 = call i32 @i2c_transfer(ptr noundef %473, ptr noundef nonnull %27, i32 noundef 1) #10
  %475 = icmp eq i32 %474, 1
  br i1 %475, label %484, label %476

476:                                              ; preds = %454
  %477 = load i32, ptr @m88rs2000_debug, align 4
  %478 = and i32 %477, 1
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %484, label %480

480:                                              ; preds = %476
  %481 = trunc i64 %459 to i32
  %482 = and i32 %481, 255
  %483 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 147, i32 noundef %482, i32 noundef %474) #11
  br label %484

484:                                              ; preds = %480, %476, %454
  %485 = phi i32 [ -121, %476 ], [ -121, %480 ], [ 0, %454 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #10
  store i8 -108, ptr %24, align 2
  %486 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 %461, ptr %486, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %487 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 0, ptr %487, align 4, !annotation !8
  %488 = load ptr, ptr %467, align 4
  %489 = load i8, ptr %488, align 4
  %490 = zext i8 %489 to i16
  store i16 %490, ptr %25, align 4
  %491 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %491, align 2
  store i16 2, ptr %487, align 4
  %492 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %492, align 4
  %493 = load ptr, ptr %448, align 4
  %494 = call i32 @i2c_transfer(ptr noundef %493, ptr noundef nonnull %25, i32 noundef 1) #10
  %495 = icmp eq i32 %494, 1
  br i1 %495, label %504, label %496

496:                                              ; preds = %484
  %497 = load i32, ptr @m88rs2000_debug, align 4
  %498 = and i32 %497, 1
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %504, label %500

500:                                              ; preds = %496
  %501 = trunc i64 %460 to i32
  %502 = and i32 %501, 255
  %503 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 148, i32 noundef %502, i32 noundef %494) #11
  br label %504

504:                                              ; preds = %500, %496, %484
  %505 = phi i32 [ -121, %496 ], [ -121, %500 ], [ 0, %484 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #10
  %506 = or i32 %505, %485
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #10
  store i8 -107, ptr %22, align 2
  %507 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 %463, ptr %507, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %508 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %508, align 4, !annotation !8
  %509 = load ptr, ptr %467, align 4
  %510 = load i8, ptr %509, align 4
  %511 = zext i8 %510 to i16
  store i16 %511, ptr %23, align 4
  %512 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %512, align 2
  %513 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %513, align 4
  %514 = load ptr, ptr %448, align 4
  %515 = call i32 @i2c_transfer(ptr noundef %514, ptr noundef nonnull %23, i32 noundef 1) #10
  %516 = icmp eq i32 %515, 1
  br i1 %516, label %525, label %517

517:                                              ; preds = %504
  %518 = load i32, ptr @m88rs2000_debug, align 4
  %519 = and i32 %518, 1
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %525, label %521

521:                                              ; preds = %517
  %522 = trunc i64 %462 to i32
  %523 = and i32 %522, 255
  %524 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 149, i32 noundef %523, i32 noundef %515) #11
  br label %525

525:                                              ; preds = %521, %517, %504
  %526 = phi i32 [ -121, %517 ], [ -121, %521 ], [ 0, %504 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #10
  %527 = or i32 %506, %526
  %528 = icmp ugt i32 %447, 10000000
  br i1 %528, label %529, label %548

529:                                              ; preds = %525
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #10
  store i8 -96, ptr %20, align 2
  %530 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 32, ptr %530, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %531 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %531, align 4, !annotation !8
  %532 = load ptr, ptr %467, align 4
  %533 = load i8, ptr %532, align 4
  %534 = zext i8 %533 to i16
  store i16 %534, ptr %21, align 4
  %535 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %535, align 2
  %536 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %536, align 4
  %537 = load ptr, ptr %448, align 4
  %538 = call i32 @i2c_transfer(ptr noundef %537, ptr noundef nonnull %21, i32 noundef 1) #10
  %539 = icmp eq i32 %538, 1
  br i1 %539, label %546, label %540

540:                                              ; preds = %529
  %541 = load i32, ptr @m88rs2000_debug, align 4
  %542 = and i32 %541, 1
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %546, label %544

544:                                              ; preds = %540
  %545 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 160, i32 noundef 32, i32 noundef %538) #11
  br label %546

546:                                              ; preds = %544, %540, %529
  %547 = phi i32 [ -121, %540 ], [ -121, %544 ], [ 0, %529 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #10
  br label %567

548:                                              ; preds = %525
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #10
  store i8 -96, ptr %18, align 2
  %549 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 96, ptr %549, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %550 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %550, align 4, !annotation !8
  %551 = load ptr, ptr %467, align 4
  %552 = load i8, ptr %551, align 4
  %553 = zext i8 %552 to i16
  store i16 %553, ptr %19, align 4
  %554 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %554, align 2
  %555 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %555, align 4
  %556 = load ptr, ptr %448, align 4
  %557 = call i32 @i2c_transfer(ptr noundef %556, ptr noundef nonnull %19, i32 noundef 1) #10
  %558 = icmp eq i32 %557, 1
  br i1 %558, label %565, label %559

559:                                              ; preds = %548
  %560 = load i32, ptr @m88rs2000_debug, align 4
  %561 = and i32 %560, 1
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %565, label %563

563:                                              ; preds = %559
  %564 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 160, i32 noundef 96, i32 noundef %557) #11
  br label %565

565:                                              ; preds = %563, %559, %548
  %566 = phi i32 [ -121, %559 ], [ -121, %563 ], [ 0, %548 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  br label %567

567:                                              ; preds = %565, %546
  %568 = phi i32 [ %547, %546 ], [ %566, %565 ]
  %569 = or i32 %527, %568
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #10
  store i8 -95, ptr %16, align 2
  %570 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 -32, ptr %570, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %571 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %571, align 4, !annotation !8
  %572 = load ptr, ptr %467, align 4
  %573 = load i8, ptr %572, align 4
  %574 = zext i8 %573 to i16
  store i16 %574, ptr %17, align 4
  %575 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %575, align 2
  %576 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %576, align 4
  %577 = load ptr, ptr %448, align 4
  %578 = call i32 @i2c_transfer(ptr noundef %577, ptr noundef nonnull %17, i32 noundef 1) #10
  %579 = icmp eq i32 %578, 1
  br i1 %579, label %586, label %580

580:                                              ; preds = %567
  %581 = load i32, ptr @m88rs2000_debug, align 4
  %582 = and i32 %581, 1
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %586, label %584

584:                                              ; preds = %580
  %585 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 161, i32 noundef 224, i32 noundef %578) #11
  br label %586

586:                                              ; preds = %584, %580, %567
  %587 = phi i32 [ -121, %580 ], [ -121, %584 ], [ 0, %567 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  %588 = or i32 %569, %587
  %589 = icmp ugt i32 %447, 12000000
  br i1 %589, label %590, label %609

590:                                              ; preds = %586
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #10
  store i8 -93, ptr %14, align 2
  %591 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 32, ptr %591, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %592 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %592, align 4, !annotation !8
  %593 = load ptr, ptr %467, align 4
  %594 = load i8, ptr %593, align 4
  %595 = zext i8 %594 to i16
  store i16 %595, ptr %15, align 4
  %596 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %596, align 2
  %597 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %597, align 4
  %598 = load ptr, ptr %448, align 4
  %599 = call i32 @i2c_transfer(ptr noundef %598, ptr noundef nonnull %15, i32 noundef 1) #10
  %600 = icmp eq i32 %599, 1
  br i1 %600, label %607, label %601

601:                                              ; preds = %590
  %602 = load i32, ptr @m88rs2000_debug, align 4
  %603 = and i32 %602, 1
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %607, label %605

605:                                              ; preds = %601
  %606 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 163, i32 noundef 32, i32 noundef %599) #11
  br label %607

607:                                              ; preds = %605, %601, %590
  %608 = phi i32 [ -121, %601 ], [ -121, %605 ], [ 0, %590 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #10
  br label %649

609:                                              ; preds = %586
  %610 = icmp ugt i32 %447, 2800000
  br i1 %610, label %611, label %630

611:                                              ; preds = %609
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i8 -93, ptr %12, align 2
  %612 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 -104, ptr %612, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %613 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %613, align 4, !annotation !8
  %614 = load ptr, ptr %467, align 4
  %615 = load i8, ptr %614, align 4
  %616 = zext i8 %615 to i16
  store i16 %616, ptr %13, align 4
  %617 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %617, align 2
  %618 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %618, align 4
  %619 = load ptr, ptr %448, align 4
  %620 = call i32 @i2c_transfer(ptr noundef %619, ptr noundef nonnull %13, i32 noundef 1) #10
  %621 = icmp eq i32 %620, 1
  br i1 %621, label %628, label %622

622:                                              ; preds = %611
  %623 = load i32, ptr @m88rs2000_debug, align 4
  %624 = and i32 %623, 1
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %628, label %626

626:                                              ; preds = %622
  %627 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 163, i32 noundef 152, i32 noundef %620) #11
  br label %628

628:                                              ; preds = %626, %622, %611
  %629 = phi i32 [ -121, %622 ], [ -121, %626 ], [ 0, %611 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  br label %649

630:                                              ; preds = %609
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i8 -93, ptr %10, align 2
  %631 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 -112, ptr %631, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %632 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %632, align 4, !annotation !8
  %633 = load ptr, ptr %467, align 4
  %634 = load i8, ptr %633, align 4
  %635 = zext i8 %634 to i16
  store i16 %635, ptr %11, align 4
  %636 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %636, align 2
  %637 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %637, align 4
  %638 = load ptr, ptr %448, align 4
  %639 = call i32 @i2c_transfer(ptr noundef %638, ptr noundef nonnull %11, i32 noundef 1) #10
  %640 = icmp eq i32 %639, 1
  br i1 %640, label %647, label %641

641:                                              ; preds = %630
  %642 = load i32, ptr @m88rs2000_debug, align 4
  %643 = and i32 %642, 1
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %647, label %645

645:                                              ; preds = %641
  %646 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 163, i32 noundef 144, i32 noundef %639) #11
  br label %647

647:                                              ; preds = %645, %641, %630
  %648 = phi i32 [ -121, %641 ], [ -121, %645 ], [ 0, %630 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  br label %649

649:                                              ; preds = %647, %628, %607
  %650 = phi i32 [ %608, %607 ], [ %629, %628 ], [ %648, %647 ]
  %651 = or i32 %588, %650
  %652 = load i32, ptr @m88rs2000_debug, align 4
  %653 = and i32 %652, 1
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %657, label %655

655:                                              ; preds = %649
  %656 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %657

657:                                              ; preds = %655, %649
  %658 = icmp slt i32 %651, 0
  br i1 %658, label %749, label %659

659:                                              ; preds = %657
  %660 = call fastcc i32 @m88rs2000_tab_set(ptr noundef %62, ptr noundef nonnull @fe_trigger)
  %661 = icmp slt i32 %660, 0
  br i1 %661, label %749, label %662

662:                                              ; preds = %659
  %663 = getelementptr inbounds i8, ptr %9, i32 4
  %664 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %665 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  %666 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %667 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  %668 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  %669 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  %670 = getelementptr inbounds i8, ptr %6, i32 4
  %671 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %672 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %673 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %674 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %675 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %676 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  %677 = getelementptr inbounds i8, ptr %2, i32 1
  %678 = getelementptr inbounds i8, ptr %3, i32 4
  %679 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %680 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %681

681:                                              ; preds = %737, %662
  %682 = phi i32 [ 0, %662 ], [ %738, %737 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 -116, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %663, i8 0, i32 16, i1 false) #10, !annotation !8
  %683 = load ptr, ptr %287, align 4
  %684 = load i8, ptr %683, align 4
  %685 = zext i8 %684 to i16
  store i16 %685, ptr %9, align 4
  store i16 0, ptr %664, align 2
  store i16 1, ptr %663, align 4
  store ptr %7, ptr %665, align 4
  %686 = load i8, ptr %683, align 4
  %687 = zext i8 %686 to i16
  store i16 %687, ptr %666, align 4
  store i16 1, ptr %667, align 2
  store i16 1, ptr %668, align 4
  store ptr %8, ptr %669, align 4
  %688 = load ptr, ptr %62, align 4
  %689 = call i32 @i2c_transfer(ptr noundef %688, ptr noundef nonnull %9, i32 noundef 2) #10
  %690 = icmp eq i32 %689, 2
  br i1 %690, label %697, label %691

691:                                              ; preds = %681
  %692 = load i32, ptr @m88rs2000_debug, align 4
  %693 = and i32 %692, 1
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %697, label %695

695:                                              ; preds = %691
  %696 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 140, i32 noundef %689) #11
  br label %697

697:                                              ; preds = %695, %691, %681
  %698 = load i8, ptr %8, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %699 = and i8 %698, -18
  %700 = icmp eq i8 %699, -18
  br i1 %700, label %740, label %701

701:                                              ; preds = %697
  %702 = load i8, ptr %64, align 4
  %703 = add i8 %702, 1
  store i8 %703, ptr %64, align 4
  %704 = icmp eq i8 %703, 15
  br i1 %704, label %705, label %737

705:                                              ; preds = %701
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 112, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %670, i8 0, i32 16, i1 false) #10, !annotation !8
  %706 = load ptr, ptr %287, align 4
  %707 = load i8, ptr %706, align 4
  %708 = zext i8 %707 to i16
  store i16 %708, ptr %6, align 4
  store i16 0, ptr %671, align 2
  store i16 1, ptr %670, align 4
  store ptr %4, ptr %672, align 4
  %709 = load i8, ptr %706, align 4
  %710 = zext i8 %709 to i16
  store i16 %710, ptr %673, align 4
  store i16 1, ptr %674, align 2
  store i16 1, ptr %675, align 4
  store ptr %5, ptr %676, align 4
  %711 = load ptr, ptr %62, align 4
  %712 = call i32 @i2c_transfer(ptr noundef %711, ptr noundef nonnull %6, i32 noundef 2) #10
  %713 = icmp eq i32 %712, 2
  br i1 %713, label %720, label %714

714:                                              ; preds = %705
  %715 = load i32, ptr @m88rs2000_debug, align 4
  %716 = and i32 %715, 1
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %720, label %718

718:                                              ; preds = %714
  %719 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 112, i32 noundef %712) #11
  br label %720

720:                                              ; preds = %718, %714, %705
  %721 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %722 = xor i8 %721, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 112, ptr %2, align 2
  store i8 %722, ptr %677, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 0, ptr %678, align 4, !annotation !8
  %723 = load ptr, ptr %287, align 4
  %724 = load i8, ptr %723, align 4
  %725 = zext i8 %724 to i16
  store i16 %725, ptr %3, align 4
  store i16 0, ptr %679, align 2
  store i16 2, ptr %678, align 4
  store ptr %2, ptr %680, align 4
  %726 = load ptr, ptr %62, align 4
  %727 = call i32 @i2c_transfer(ptr noundef %726, ptr noundef nonnull %3, i32 noundef 1) #10
  %728 = icmp eq i32 %727, 1
  br i1 %728, label %736, label %729

729:                                              ; preds = %720
  %730 = load i32, ptr @m88rs2000_debug, align 4
  %731 = and i32 %730, 1
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %736, label %733

733:                                              ; preds = %729
  %734 = zext i8 %722 to i32
  %735 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 112, i32 noundef %734, i32 noundef %727) #11
  br label %736

736:                                              ; preds = %733, %729, %720
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  store i8 0, ptr %64, align 4
  br label %737

737:                                              ; preds = %736, %701
  call void @msleep(i32 noundef 20) #10
  %738 = add nuw nsw i32 %682, 1
  %739 = icmp eq i32 %738, 25
  br i1 %739, label %744, label %681

740:                                              ; preds = %697
  %741 = call fastcc i32 @m88rs2000_get_fec(ptr noundef %62)
  %742 = getelementptr inbounds %struct.m88rs2000_state, ptr %62, i32 0, i32 6
  store i32 %741, ptr %742, align 4
  %743 = call fastcc zeroext i8 @m88rs2000_readreg(ptr noundef %62, i8 noundef zeroext 101)
  br label %744

744:                                              ; preds = %740, %737
  %745 = load i32, ptr %63, align 4
  %746 = getelementptr inbounds %struct.m88rs2000_state, ptr %62, i32 0, i32 4
  store i32 %745, ptr %746, align 4
  %747 = load i32, ptr %228, align 4
  %748 = getelementptr inbounds %struct.m88rs2000_state, ptr %62, i32 0, i32 5
  store i32 %747, ptr %748, align 4
  br label %749

749:                                              ; preds = %744, %659, %657, %451, %446, %442, %271, %223, %87, %78, %72, %68
  %750 = phi i32 [ 0, %744 ], [ -95, %72 ], [ -95, %68 ], [ -19, %78 ], [ -19, %87 ], [ -19, %223 ], [ -19, %271 ], [ -19, %442 ], [ -19, %657 ], [ -19, %659 ], [ -19, %446 ], [ -19, %451 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %60) #10
  ret i32 %750
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @m88rs2000_get_tune_settings(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3000000
  %6 = select i1 %5, i32 2000, i32 3000
  store i32 %6, ptr %1, align 4
  %7 = load i32, ptr %3, align 4
  %8 = udiv i32 %7, 16000
  %9 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = load i32, ptr %3, align 4
  %11 = udiv i32 %10, 2000
  %12 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @m88rs2000_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.m88rs2000_state, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.m88rs2000_state, ptr %4, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.m88rs2000_state, ptr %4, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %11, ptr %12, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_read_status(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 -116, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.m88rs2000_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #10
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i32, ptr @m88rs2000_debug, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 140, i32 noundef %22) #11
  br label %30

30:                                               ; preds = %28, %24, %2
  %31 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  store i32 0, ptr %1, align 4
  %32 = and i8 %31, -18
  %33 = icmp eq i8 %32, -18
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  store i32 31, ptr %1, align 4
  %35 = load ptr, ptr %9, align 4
  %36 = getelementptr inbounds %struct.m88rs2000_config, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = call i32 %37(ptr noundef %0, i32 noundef 1) #10
  br label %41

41:                                               ; preds = %39, %34, %30
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [1 x i8], align 1
  %12 = alloca [1 x i8], align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [1 x i8], align 1
  %15 = alloca [1 x i8], align 1
  %16 = alloca [2 x %struct.i2c_msg], align 4
  %17 = alloca [1 x i8], align 1
  %18 = alloca [1 x i8], align 1
  %19 = alloca [2 x %struct.i2c_msg], align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [1 x i8], align 1
  %23 = alloca [1 x i8], align 1
  %24 = alloca [2 x %struct.i2c_msg], align 4
  %25 = alloca [2 x i8], align 2
  %26 = alloca %struct.i2c_msg, align 4
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #10
  store i8 -102, ptr %25, align 2
  %29 = getelementptr inbounds i8, ptr %25, i32 1
  store i8 48, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #10
  %30 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 2, ptr %30, align 4, !annotation !8
  %31 = getelementptr inbounds %struct.m88rs2000_state, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %26, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %36, align 4
  %37 = load ptr, ptr %28, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %26, i32 noundef 1) #10
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %46, label %40

40:                                               ; preds = %2
  %41 = load i32, ptr @m88rs2000_debug, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 154, i32 noundef 48, i32 noundef %38) #11
  br label %46

46:                                               ; preds = %44, %40, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #10
  store i8 -40, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #10
  store i8 0, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #10
  %47 = getelementptr inbounds i8, ptr %24, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %47, i8 0, i32 16, i1 false) #10, !annotation !8
  %48 = load ptr, ptr %31, align 4
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i16
  store i16 %50, ptr %24, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %51, align 2
  store i16 1, ptr %47, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %22, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1
  %54 = load i8, ptr %48, align 4
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 1
  store i16 1, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 2
  store i16 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 3
  store ptr %23, ptr %58, align 4
  %59 = load ptr, ptr %28, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %24, i32 noundef 2) #10
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %68, label %62

62:                                               ; preds = %46
  %63 = load i32, ptr @m88rs2000_debug, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 216, i32 noundef %60) #11
  br label %68

68:                                               ; preds = %66, %62, %46
  %69 = load i8, ptr %23, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #10
  %70 = and i8 %69, 16
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #10
  store i8 -102, ptr %20, align 2
  %73 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 -80, ptr %73, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %74 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %74, align 4, !annotation !8
  %75 = load ptr, ptr %31, align 4
  %76 = load i8, ptr %75, align 4
  %77 = zext i8 %76 to i16
  store i16 %77, ptr %21, align 4
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %78, align 2
  %79 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %79, align 4
  %80 = load ptr, ptr %28, align 4
  %81 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %21, i32 noundef 1) #10
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %89, label %83

83:                                               ; preds = %72
  %84 = load i32, ptr @m88rs2000_debug, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 154, i32 noundef 176, i32 noundef %81) #11
  br label %89

89:                                               ; preds = %87, %83, %72
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #10
  store i32 -1, ptr %1, align 4
  br label %239

90:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #10
  store i8 -41, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #10
  %91 = getelementptr inbounds i8, ptr %19, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %91, i8 0, i32 16, i1 false) #10, !annotation !8
  %92 = load ptr, ptr %31, align 4
  %93 = load i8, ptr %92, align 4
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %19, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %95, align 2
  store i16 1, ptr %91, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %17, ptr %96, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1
  %98 = load i8, ptr %92, align 4
  %99 = zext i8 %98 to i16
  store i16 %99, ptr %97, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 1
  store i16 1, ptr %100, align 2
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 2
  store i16 1, ptr %101, align 4
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 1, i32 3
  store ptr %18, ptr %102, align 4
  %103 = load ptr, ptr %28, align 4
  %104 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %19, i32 noundef 2) #10
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %112, label %106

106:                                              ; preds = %90
  %107 = load i32, ptr @m88rs2000_debug, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 215, i32 noundef %104) #11
  br label %112

112:                                              ; preds = %110, %106, %90
  %113 = load i8, ptr %18, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #10
  %114 = zext i8 %113 to i32
  %115 = shl nuw nsw i32 %114, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #10
  store i8 -42, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #10
  store i8 0, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #10
  %116 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %116, i8 0, i32 16, i1 false) #10, !annotation !8
  %117 = load ptr, ptr %31, align 4
  %118 = load i8, ptr %117, align 4
  %119 = zext i8 %118 to i16
  store i16 %119, ptr %16, align 4
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %120, align 2
  store i16 1, ptr %116, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %14, ptr %121, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  %123 = load i8, ptr %117, align 4
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %122, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %125, align 2
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 1, ptr %126, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr %15, ptr %127, align 4
  %128 = load ptr, ptr %28, align 4
  %129 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %16, i32 noundef 2) #10
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %137, label %131

131:                                              ; preds = %112
  %132 = load i32, ptr @m88rs2000_debug, align 4
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 214, i32 noundef %129) #11
  br label %137

137:                                              ; preds = %135, %131, %112
  %138 = load i8, ptr %15, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #10
  %139 = zext i8 %138 to i32
  %140 = or i32 %115, %139
  store i32 %140, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 -39, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #10
  %141 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %141, i8 0, i32 16, i1 false) #10, !annotation !8
  %142 = load ptr, ptr %31, align 4
  %143 = load i8, ptr %142, align 4
  %144 = zext i8 %143 to i16
  store i16 %144, ptr %13, align 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %145, align 2
  store i16 1, ptr %141, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %11, ptr %146, align 4
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %148 = load i8, ptr %142, align 4
  %149 = zext i8 %148 to i16
  store i16 %149, ptr %147, align 4
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %150, align 2
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %151, align 4
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %12, ptr %152, align 4
  %153 = load ptr, ptr %28, align 4
  %154 = call i32 @i2c_transfer(ptr noundef %153, ptr noundef nonnull %13, i32 noundef 2) #10
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %162, label %156

156:                                              ; preds = %137
  %157 = load i32, ptr @m88rs2000_debug, align 4
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 217, i32 noundef %154) #11
  br label %162

162:                                              ; preds = %160, %156, %137
  %163 = load i8, ptr %12, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  %164 = and i8 %163, -8
  %165 = or i8 %164, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i8 -39, ptr %9, align 2
  %166 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %165, ptr %166, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %167 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %167, align 4, !annotation !8
  %168 = load ptr, ptr %31, align 4
  %169 = load i8, ptr %168, align 4
  %170 = zext i8 %169 to i16
  store i16 %170, ptr %10, align 4
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %171, align 2
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %172, align 4
  %173 = load ptr, ptr %28, align 4
  %174 = call i32 @i2c_transfer(ptr noundef %173, ptr noundef nonnull %10, i32 noundef 1) #10
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %183, label %176

176:                                              ; preds = %162
  %177 = load i32, ptr @m88rs2000_debug, align 4
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = zext i8 %165 to i32
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 217, i32 noundef %181, i32 noundef %174) #11
  br label %183

183:                                              ; preds = %180, %176, %162
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  %184 = and i8 %69, -57
  %185 = or i8 %184, 48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 -40, ptr %7, align 2
  %186 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %185, ptr %186, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %187 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %187, align 4, !annotation !8
  %188 = load ptr, ptr %31, align 4
  %189 = load i8, ptr %188, align 4
  %190 = zext i8 %189 to i16
  store i16 %190, ptr %8, align 4
  %191 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %191, align 2
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %192, align 4
  %193 = load ptr, ptr %28, align 4
  %194 = call i32 @i2c_transfer(ptr noundef %193, ptr noundef nonnull %8, i32 noundef 1) #10
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %203, label %196

196:                                              ; preds = %183
  %197 = load i32, ptr @m88rs2000_debug, align 4
  %198 = and i32 %197, 1
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %196
  %201 = zext i8 %185 to i32
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 216, i32 noundef %201, i32 noundef %194) #11
  br label %203

203:                                              ; preds = %200, %196, %183
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -40, ptr %5, align 2
  %204 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %185, ptr %204, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %205 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %205, align 4, !annotation !8
  %206 = load ptr, ptr %31, align 4
  %207 = load i8, ptr %206, align 4
  %208 = zext i8 %207 to i16
  store i16 %208, ptr %6, align 4
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %209, align 2
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %210, align 4
  %211 = load ptr, ptr %28, align 4
  %212 = call i32 @i2c_transfer(ptr noundef %211, ptr noundef nonnull %6, i32 noundef 1) #10
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %221, label %214

214:                                              ; preds = %203
  %215 = load i32, ptr @m88rs2000_debug, align 4
  %216 = and i32 %215, 1
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = zext i8 %185 to i32
  %220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 216, i32 noundef %219, i32 noundef %212) #11
  br label %221

221:                                              ; preds = %218, %214, %203
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -102, ptr %3, align 2
  %222 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -80, ptr %222, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %223 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %223, align 4, !annotation !8
  %224 = load ptr, ptr %31, align 4
  %225 = load i8, ptr %224, align 4
  %226 = zext i8 %225 to i16
  store i16 %226, ptr %4, align 4
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %227, align 2
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %228, align 4
  %229 = load ptr, ptr %28, align 4
  %230 = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %4, i32 noundef 1) #10
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %238, label %232

232:                                              ; preds = %221
  %233 = load i32, ptr @m88rs2000_debug, align 4
  %234 = and i32 %233, 1
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %232
  %237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 154, i32 noundef 176, i32 noundef %230) #11
  br label %238

238:                                              ; preds = %236, %232, %221
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %239

239:                                              ; preds = %238, %89
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_read_signal_strength(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, ptr noundef %1) #10
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 101, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.m88rs2000_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %5, i32 noundef 2) #10
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i32, ptr @m88rs2000_debug, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 101, i32 noundef %22) #11
  br label %30

30:                                               ; preds = %28, %24, %2
  %31 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %32 = zext i8 %31 to i16
  %33 = shl i16 %32, 9
  store i16 %33, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca [1 x i8], align 1
  %16 = alloca [1 x i8], align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #10
  store i8 -43, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #10
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #10
  %20 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #10, !annotation !8
  %21 = getelementptr inbounds %struct.m88rs2000_state, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %17, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %20, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %28 = load i8, ptr %22, align 4
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %32, align 4
  %33 = load ptr, ptr %19, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %17, i32 noundef 2) #10
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %42, label %36

36:                                               ; preds = %2
  %37 = load i32, ptr @m88rs2000_debug, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 213, i32 noundef %34) #11
  br label %42

42:                                               ; preds = %40, %36, %2
  %43 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #10
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 -44, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %46 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %46, i8 0, i32 16, i1 false) #10, !annotation !8
  %47 = load ptr, ptr %21, align 4
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %14, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %50, align 2
  store i16 1, ptr %46, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %51, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %53 = load i8, ptr %47, align 4
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %52, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %55, align 2
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %57, align 4
  %58 = load ptr, ptr %19, align 4
  %59 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %14, i32 noundef 2) #10
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %67, label %61

61:                                               ; preds = %42
  %62 = load i32, ptr @m88rs2000_debug, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 212, i32 noundef %59) #11
  br label %67

67:                                               ; preds = %65, %61, %42
  %68 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %69 = zext i8 %68 to i32
  %70 = or i32 %45, %69
  store i32 %70, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 -40, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %71 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %71, i8 0, i32 16, i1 false) #10, !annotation !8
  %72 = load ptr, ptr %21, align 4
  %73 = load i8, ptr %72, align 4
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %11, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %75, align 2
  store i16 1, ptr %71, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %76, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %78 = load i8, ptr %72, align 4
  %79 = zext i8 %78 to i16
  store i16 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %80, align 2
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %81, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %82, align 4
  %83 = load ptr, ptr %19, align 4
  %84 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %11, i32 noundef 2) #10
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %92, label %86

86:                                               ; preds = %67
  %87 = load i32, ptr @m88rs2000_debug, align 4
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 216, i32 noundef %84) #11
  br label %92

92:                                               ; preds = %90, %86, %67
  %93 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %94 = and i8 %93, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 -40, ptr %7, align 2
  %95 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %94, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %96 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %96, align 4, !annotation !8
  %97 = load ptr, ptr %21, align 4
  %98 = load i8, ptr %97, align 4
  %99 = zext i8 %98 to i16
  store i16 %99, ptr %8, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %100, align 2
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %101, align 4
  %102 = load ptr, ptr %19, align 4
  %103 = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %8, i32 noundef 1) #10
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %112, label %105

105:                                              ; preds = %92
  %106 = load i32, ptr @m88rs2000_debug, align 4
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = zext i8 %94 to i32
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 216, i32 noundef %110, i32 noundef %103) #11
  br label %112

112:                                              ; preds = %109, %105, %92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  %113 = or i8 %93, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -40, ptr %5, align 2
  %114 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %113, ptr %114, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %115 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %115, align 4, !annotation !8
  %116 = load ptr, ptr %21, align 4
  %117 = load i8, ptr %116, align 4
  %118 = zext i8 %117 to i16
  store i16 %118, ptr %6, align 4
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %119, align 2
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %120, align 4
  %121 = load ptr, ptr %19, align 4
  %122 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %6, i32 noundef 1) #10
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %131, label %124

124:                                              ; preds = %112
  %125 = load i32, ptr @m88rs2000_debug, align 4
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = zext i8 %113 to i32
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 216, i32 noundef %129, i32 noundef %122) #11
  br label %131

131:                                              ; preds = %128, %124, %112
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -40, ptr %3, align 2
  %132 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %113, ptr %132, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %133 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %133, align 4, !annotation !8
  %134 = load ptr, ptr %21, align 4
  %135 = load i8, ptr %134, align 4
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %4, align 4
  %137 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %137, align 2
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %138, align 4
  %139 = load ptr, ptr %19, align 4
  %140 = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %4, i32 noundef 1) #10
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %149, label %142

142:                                              ; preds = %131
  %143 = load i32, ptr @m88rs2000_debug, align 4
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = zext i8 %113 to i32
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 216, i32 noundef %147, i32 noundef %140) #11
  br label %149

149:                                              ; preds = %146, %142, %131
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca [1 x i8], align 1
  %16 = alloca [1 x i8], align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [1 x i8], align 1
  %21 = alloca [1 x i8], align 1
  %22 = alloca [2 x %struct.i2c_msg], align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [2 x i8], align 2
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca [1 x i8], align 1
  %28 = alloca [1 x i8], align 1
  %29 = alloca [2 x %struct.i2c_msg], align 4
  %30 = alloca [2 x i8], align 2
  %31 = alloca %struct.i2c_msg, align 4
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr @m88rs2000_debug, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %2
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.m88rs2000_send_diseqc_msg) #11
  br label %39

39:                                               ; preds = %37, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #10
  store i8 -102, ptr %30, align 2
  %40 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 48, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  %41 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 0, ptr %41, align 4, !annotation !8
  %42 = getelementptr inbounds %struct.m88rs2000_state, ptr %33, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %31, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %46, align 2
  store i16 2, ptr %41, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %47, align 4
  %48 = load ptr, ptr %33, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %31, i32 noundef 1) #10
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %57, label %51

51:                                               ; preds = %39
  %52 = load i32, ptr @m88rs2000_debug, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 154, i32 noundef 48, i32 noundef %49) #11
  br label %57

57:                                               ; preds = %55, %51, %39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #10
  store i8 -78, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #10
  store i8 0, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %29) #10
  %58 = getelementptr inbounds i8, ptr %29, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %58, i8 0, i32 16, i1 false) #10, !annotation !8
  %59 = load ptr, ptr %42, align 4
  %60 = load i8, ptr %59, align 4
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %29, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %62, align 2
  store i16 1, ptr %58, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %27, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1
  %65 = load i8, ptr %59, align 4
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %64, align 4
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 1
  store i16 1, ptr %67, align 2
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 2
  store i16 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 1, i32 3
  store ptr %28, ptr %69, align 4
  %70 = load ptr, ptr %33, align 4
  %71 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %29, i32 noundef 2) #10
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %79, label %73

73:                                               ; preds = %57
  %74 = load i32, ptr @m88rs2000_debug, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 178, i32 noundef %71) #11
  br label %79

79:                                               ; preds = %77, %73, %57
  %80 = load i8, ptr %28, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #10
  %81 = and i8 %80, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #10
  store i8 -78, ptr %25, align 2
  %82 = getelementptr inbounds i8, ptr %25, i32 1
  store i8 %81, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #10
  %83 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 2, ptr %83, align 4, !annotation !8
  %84 = load ptr, ptr %42, align 4
  %85 = load i8, ptr %84, align 4
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %26, align 4
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %87, align 2
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr %25, ptr %88, align 4
  %89 = load ptr, ptr %33, align 4
  %90 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %26, i32 noundef 1) #10
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %99, label %92

92:                                               ; preds = %79
  %93 = load i32, ptr @m88rs2000_debug, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = zext i8 %81 to i32
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 178, i32 noundef %97, i32 noundef %90) #11
  br label %99

99:                                               ; preds = %96, %92, %79
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #10
  %100 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %133, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds i8, ptr %23, i32 1
  %105 = getelementptr inbounds i8, ptr %24, i32 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  br label %108

108:                                              ; preds = %128, %103
  %109 = phi i32 [ 0, %103 ], [ %129, %128 ]
  %110 = trunc i32 %109 to i8
  %111 = add i8 %110, -77
  %112 = getelementptr [6 x i8], ptr %1, i32 0, i32 %109
  %113 = load i8, ptr %112, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #10
  store i8 %111, ptr %23, align 2
  store i8 %113, ptr %104, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  store i32 0, ptr %105, align 4, !annotation !8
  %114 = load ptr, ptr %42, align 4
  %115 = load i8, ptr %114, align 4
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %24, align 4
  store i16 0, ptr %106, align 2
  store i16 2, ptr %105, align 4
  store ptr %23, ptr %107, align 4
  %117 = load ptr, ptr %33, align 4
  %118 = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %24, i32 noundef 1) #10
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %128, label %120

120:                                              ; preds = %108
  %121 = load i32, ptr @m88rs2000_debug, align 4
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = zext i8 %111 to i32
  %126 = zext i8 %113 to i32
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef %125, i32 noundef %126, i32 noundef %118) #11
  br label %128

128:                                              ; preds = %124, %120, %108
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #10
  %129 = add nuw nsw i32 %109, 1
  %130 = load i8, ptr %100, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ult i32 %129, %131
  br i1 %132, label %108, label %133

133:                                              ; preds = %128, %99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #10
  store i8 -79, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #10
  store i8 0, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #10
  %134 = getelementptr inbounds i8, ptr %22, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %134, i8 0, i32 16, i1 false) #10, !annotation !8
  %135 = load ptr, ptr %42, align 4
  %136 = load i8, ptr %135, align 4
  %137 = zext i8 %136 to i16
  store i16 %137, ptr %22, align 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %138, align 2
  store i16 1, ptr %134, align 4
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %20, ptr %139, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1
  %141 = load i8, ptr %135, align 4
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %140, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 1
  store i16 1, ptr %143, align 2
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 2
  store i16 1, ptr %144, align 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 3
  store ptr %21, ptr %145, align 4
  %146 = load ptr, ptr %33, align 4
  %147 = call i32 @i2c_transfer(ptr noundef %146, ptr noundef nonnull %22, i32 noundef 2) #10
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %155, label %149

149:                                              ; preds = %133
  %150 = load i32, ptr @m88rs2000_debug, align 4
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 177, i32 noundef %147) #11
  br label %155

155:                                              ; preds = %153, %149, %133
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #10
  %156 = load i8, ptr %100, align 1
  %157 = shl i8 %156, 3
  %158 = add i8 %157, 120
  %159 = and i8 %158, 120
  %160 = or i8 %159, 7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #10
  store i8 -79, ptr %18, align 2
  %161 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 %160, ptr %161, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %162 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %162, align 4, !annotation !8
  %163 = load ptr, ptr %42, align 4
  %164 = load i8, ptr %163, align 4
  %165 = zext i8 %164 to i16
  store i16 %165, ptr %19, align 4
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %166, align 2
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %167, align 4
  %168 = load ptr, ptr %33, align 4
  %169 = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %19, i32 noundef 1) #10
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %178, label %171

171:                                              ; preds = %155
  %172 = load i32, ptr @m88rs2000_debug, align 4
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = zext i8 %160 to i32
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 177, i32 noundef %176, i32 noundef %169) #11
  br label %178

178:                                              ; preds = %175, %171, %155
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  %179 = getelementptr inbounds i8, ptr %17, i32 4
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  br label %186

186:                                              ; preds = %206, %178
  %187 = phi i32 [ 0, %178 ], [ %207, %206 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #10
  store i8 -79, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #10
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %179, i8 0, i32 16, i1 false) #10, !annotation !8
  %188 = load ptr, ptr %42, align 4
  %189 = load i8, ptr %188, align 4
  %190 = zext i8 %189 to i16
  store i16 %190, ptr %17, align 4
  store i16 0, ptr %180, align 2
  store i16 1, ptr %179, align 4
  store ptr %15, ptr %181, align 4
  %191 = load i8, ptr %188, align 4
  %192 = zext i8 %191 to i16
  store i16 %192, ptr %182, align 4
  store i16 1, ptr %183, align 2
  store i16 1, ptr %184, align 4
  store ptr %16, ptr %185, align 4
  %193 = load ptr, ptr %33, align 4
  %194 = call i32 @i2c_transfer(ptr noundef %193, ptr noundef nonnull %17, i32 noundef 2) #10
  %195 = icmp eq i32 %194, 2
  br i1 %195, label %202, label %196

196:                                              ; preds = %186
  %197 = load i32, ptr @m88rs2000_debug, align 4
  %198 = and i32 %197, 1
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 177, i32 noundef %194) #11
  br label %202

202:                                              ; preds = %200, %196, %186
  %203 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #10
  %204 = and i8 %203, 64
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  call void @msleep(i32 noundef 20) #10
  %207 = add nuw nsw i32 %187, 1
  %208 = icmp eq i32 %207, 15
  br i1 %208, label %209, label %186

209:                                              ; preds = %206, %202
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 -79, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %210 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %210, i8 0, i32 16, i1 false) #10, !annotation !8
  %211 = load ptr, ptr %42, align 4
  %212 = load i8, ptr %211, align 4
  %213 = zext i8 %212 to i16
  store i16 %213, ptr %14, align 4
  %214 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %214, align 2
  store i16 1, ptr %210, align 4
  %215 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %215, align 4
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %217 = load i8, ptr %211, align 4
  %218 = zext i8 %217 to i16
  store i16 %218, ptr %216, align 4
  %219 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %219, align 2
  %220 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %220, align 4
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %221, align 4
  %222 = load ptr, ptr %33, align 4
  %223 = call i32 @i2c_transfer(ptr noundef %222, ptr noundef nonnull %14, i32 noundef 2) #10
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %231, label %225

225:                                              ; preds = %209
  %226 = load i32, ptr @m88rs2000_debug, align 4
  %227 = and i32 %226, 1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %225
  %230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 177, i32 noundef %223) #11
  br label %231

231:                                              ; preds = %229, %225, %209
  %232 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %233 = and i8 %232, 64
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %256, label %235

235:                                              ; preds = %231
  %236 = and i8 %232, 63
  %237 = or i8 %236, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i8 -79, ptr %10, align 2
  %238 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 %237, ptr %238, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %239 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %239, align 4, !annotation !8
  %240 = load ptr, ptr %42, align 4
  %241 = load i8, ptr %240, align 4
  %242 = zext i8 %241 to i16
  store i16 %242, ptr %11, align 4
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %243, align 2
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %244, align 4
  %245 = load ptr, ptr %33, align 4
  %246 = call i32 @i2c_transfer(ptr noundef %245, ptr noundef nonnull %11, i32 noundef 1) #10
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %255, label %248

248:                                              ; preds = %235
  %249 = load i32, ptr @m88rs2000_debug, align 4
  %250 = and i32 %249, 1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %248
  %253 = zext i8 %237 to i32
  %254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 177, i32 noundef %253, i32 noundef %246) #11
  br label %255

255:                                              ; preds = %252, %248, %235
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  br label %256

256:                                              ; preds = %255, %231
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 -78, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %257 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %257, i8 0, i32 16, i1 false) #10, !annotation !8
  %258 = load ptr, ptr %42, align 4
  %259 = load i8, ptr %258, align 4
  %260 = zext i8 %259 to i16
  store i16 %260, ptr %9, align 4
  %261 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %261, align 2
  store i16 1, ptr %257, align 4
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %262, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %264 = load i8, ptr %258, align 4
  %265 = zext i8 %264 to i16
  store i16 %265, ptr %263, align 4
  %266 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %266, align 2
  %267 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %267, align 4
  %268 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %268, align 4
  %269 = load ptr, ptr %33, align 4
  %270 = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %9, i32 noundef 2) #10
  %271 = icmp eq i32 %270, 2
  br i1 %271, label %278, label %272

272:                                              ; preds = %256
  %273 = load i32, ptr @m88rs2000_debug, align 4
  %274 = and i32 %273, 1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %272
  %277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 178, i32 noundef %270) #11
  br label %278

278:                                              ; preds = %276, %272, %256
  %279 = load i8, ptr %8, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %280 = and i8 %279, 63
  %281 = or i8 %280, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -78, ptr %5, align 2
  %282 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %281, ptr %282, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %283 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %283, align 4, !annotation !8
  %284 = load ptr, ptr %42, align 4
  %285 = load i8, ptr %284, align 4
  %286 = zext i8 %285 to i16
  store i16 %286, ptr %6, align 4
  %287 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %287, align 2
  %288 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %288, align 4
  %289 = load ptr, ptr %33, align 4
  %290 = call i32 @i2c_transfer(ptr noundef %289, ptr noundef nonnull %6, i32 noundef 1) #10
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %299, label %292

292:                                              ; preds = %278
  %293 = load i32, ptr @m88rs2000_debug, align 4
  %294 = and i32 %293, 1
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %292
  %297 = zext i8 %281 to i32
  %298 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 178, i32 noundef %297, i32 noundef %290) #11
  br label %299

299:                                              ; preds = %296, %292, %278
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -102, ptr %3, align 2
  %300 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -80, ptr %300, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %301 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %301, align 4, !annotation !8
  %302 = load ptr, ptr %42, align 4
  %303 = load i8, ptr %302, align 4
  %304 = zext i8 %303 to i16
  store i16 %304, ptr %4, align 4
  %305 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %305, align 2
  %306 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %306, align 4
  %307 = load ptr, ptr %33, align 4
  %308 = call i32 @i2c_transfer(ptr noundef %307, ptr noundef nonnull %4, i32 noundef 1) #10
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %316, label %310

310:                                              ; preds = %299
  %311 = load i32, ptr @m88rs2000_debug, align 4
  %312 = and i32 %311, 1
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %310
  %315 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 154, i32 noundef 176, i32 noundef %308) #11
  br label %316

316:                                              ; preds = %314, %310, %299
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_send_diseqc_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca %struct.i2c_msg, align 4
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr @m88rs2000_debug, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.m88rs2000_send_diseqc_burst) #11
  br label %24

24:                                               ; preds = %22, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #10
  store i8 -102, ptr %15, align 2
  %25 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 48, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %26 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 2, ptr %26, align 4, !annotation !8
  %27 = getelementptr inbounds %struct.m88rs2000_state, ptr %18, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %16, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %32, align 4
  %33 = load ptr, ptr %18, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %16, i32 noundef 1) #10
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %42, label %36

36:                                               ; preds = %24
  %37 = load i32, ptr @m88rs2000_debug, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 154, i32 noundef 48, i32 noundef %34) #11
  br label %42

42:                                               ; preds = %40, %36, %24
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  call void @msleep(i32 noundef 50) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 -79, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %43 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %43, i8 0, i32 16, i1 false) #10, !annotation !8
  %44 = load ptr, ptr %27, align 4
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %14, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %47, align 2
  store i16 1, ptr %43, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %50 = load i8, ptr %44, align 4
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %52, align 2
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %54, align 4
  %55 = load ptr, ptr %18, align 4
  %56 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %14, i32 noundef 2) #10
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %64, label %58

58:                                               ; preds = %42
  %59 = load i32, ptr @m88rs2000_debug, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 177, i32 noundef %56) #11
  br label %64

64:                                               ; preds = %62, %58, %42
  %65 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 -78, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %66 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %66, i8 0, i32 16, i1 false) #10, !annotation !8
  %67 = load ptr, ptr %27, align 4
  %68 = load i8, ptr %67, align 4
  %69 = zext i8 %68 to i16
  store i16 %69, ptr %11, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %70, align 2
  store i16 1, ptr %66, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %71, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %73 = load i8, ptr %67, align 4
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %72, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %75, align 2
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %77, align 4
  %78 = load ptr, ptr %18, align 4
  %79 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %11, i32 noundef 2) #10
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %87, label %81

81:                                               ; preds = %64
  %82 = load i32, ptr @m88rs2000_debug, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 178, i32 noundef %79) #11
  br label %87

87:                                               ; preds = %85, %81, %64
  %88 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 -78, ptr %7, align 2
  %89 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %88, ptr %89, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %90 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %90, align 4, !annotation !8
  %91 = load ptr, ptr %27, align 4
  %92 = load i8, ptr %91, align 4
  %93 = zext i8 %92 to i16
  store i16 %93, ptr %8, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %94, align 2
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %95, align 4
  %96 = load ptr, ptr %18, align 4
  %97 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %8, i32 noundef 1) #10
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %106, label %99

99:                                               ; preds = %87
  %100 = load i32, ptr @m88rs2000_debug, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = zext i8 %88 to i32
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 178, i32 noundef %104, i32 noundef %97) #11
  br label %106

106:                                              ; preds = %103, %99, %87
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -79, ptr %5, align 2
  %107 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %65, ptr %107, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %108 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %108, align 4, !annotation !8
  %109 = load ptr, ptr %27, align 4
  %110 = load i8, ptr %109, align 4
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %6, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %112, align 2
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %113, align 4
  %114 = load ptr, ptr %18, align 4
  %115 = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %6, i32 noundef 1) #10
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %124, label %117

117:                                              ; preds = %106
  %118 = load i32, ptr @m88rs2000_debug, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = zext i8 %65 to i32
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 177, i32 noundef %122, i32 noundef %115) #11
  br label %124

124:                                              ; preds = %121, %117, %106
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -102, ptr %3, align 2
  %125 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -80, ptr %125, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %126 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %126, align 4, !annotation !8
  %127 = load ptr, ptr %27, align 4
  %128 = load i8, ptr %127, align 4
  %129 = zext i8 %128 to i16
  store i16 %129, ptr %4, align 4
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %130, align 2
  %131 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %131, align 4
  %132 = load ptr, ptr %18, align 4
  %133 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %4, i32 noundef 1) #10
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %141, label %135

135:                                              ; preds = %124
  %136 = load i32, ptr @m88rs2000_debug, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 154, i32 noundef 176, i32 noundef %133) #11
  br label %141

141:                                              ; preds = %139, %135, %124
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca %struct.i2c_msg, align 4
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #10
  store i8 -102, ptr %15, align 2
  %19 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 48, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %20 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 2, ptr %20, align 4, !annotation !8
  %21 = getelementptr inbounds %struct.m88rs2000_state, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %16, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %26, align 4
  %27 = load ptr, ptr %18, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %16, i32 noundef 1) #10
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load i32, ptr @m88rs2000_debug, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 154, i32 noundef 48, i32 noundef %28) #11
  br label %36

36:                                               ; preds = %34, %30, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 -79, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %37 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %37, i8 0, i32 16, i1 false) #10, !annotation !8
  %38 = load ptr, ptr %21, align 4
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %14, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %41, align 2
  store i16 1, ptr %37, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  %44 = load i8, ptr %38, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %48, align 4
  %49 = load ptr, ptr %18, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %14, i32 noundef 2) #10
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %58, label %52

52:                                               ; preds = %36
  %53 = load i32, ptr @m88rs2000_debug, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 177, i32 noundef %50) #11
  br label %58

58:                                               ; preds = %56, %52, %36
  %59 = load i8, ptr %13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 -78, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %60 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %60, i8 0, i32 16, i1 false) #10, !annotation !8
  %61 = load ptr, ptr %21, align 4
  %62 = load i8, ptr %61, align 4
  %63 = zext i8 %62 to i16
  store i16 %63, ptr %11, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %64, align 2
  store i16 1, ptr %60, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %67 = load i8, ptr %61, align 4
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %66, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %69, align 2
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %71, align 4
  %72 = load ptr, ptr %18, align 4
  %73 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %11, i32 noundef 2) #10
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %81, label %75

75:                                               ; preds = %58
  %76 = load i32, ptr @m88rs2000_debug, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 178, i32 noundef %73) #11
  br label %81

81:                                               ; preds = %79, %75, %58
  %82 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %83 = and i8 %82, 63
  switch i32 %1, label %89 [
    i32 0, label %84
    i32 1, label %87
  ]

84:                                               ; preds = %81
  %85 = and i8 %59, -72
  %86 = or i8 %85, 4
  br label %89

87:                                               ; preds = %81
  %88 = or i8 %83, -128
  br label %89

89:                                               ; preds = %87, %84, %81
  %90 = phi i8 [ %59, %81 ], [ %59, %87 ], [ %86, %84 ]
  %91 = phi i8 [ %83, %81 ], [ %88, %87 ], [ %83, %84 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 -78, ptr %7, align 2
  %92 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %91, ptr %92, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %93 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %93, align 4, !annotation !8
  %94 = load ptr, ptr %21, align 4
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i16
  store i16 %96, ptr %8, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %97, align 2
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %98, align 4
  %99 = load ptr, ptr %18, align 4
  %100 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %8, i32 noundef 1) #10
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %109, label %102

102:                                              ; preds = %89
  %103 = load i32, ptr @m88rs2000_debug, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = zext i8 %91 to i32
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 178, i32 noundef %107, i32 noundef %100) #11
  br label %109

109:                                              ; preds = %106, %102, %89
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -79, ptr %5, align 2
  %110 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %90, ptr %110, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %111 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %111, align 4, !annotation !8
  %112 = load ptr, ptr %21, align 4
  %113 = load i8, ptr %112, align 4
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %6, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %115, align 2
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %116, align 4
  %117 = load ptr, ptr %18, align 4
  %118 = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %6, i32 noundef 1) #10
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %127, label %120

120:                                              ; preds = %109
  %121 = load i32, ptr @m88rs2000_debug, align 4
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = zext i8 %90 to i32
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 177, i32 noundef %125, i32 noundef %118) #11
  br label %127

127:                                              ; preds = %124, %120, %109
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -102, ptr %3, align 2
  %128 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -80, ptr %128, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %129 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %129, align 4, !annotation !8
  %130 = load ptr, ptr %21, align 4
  %131 = load i8, ptr %130, align 4
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %4, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %133, align 2
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %134, align 4
  %135 = load ptr, ptr %18, align 4
  %136 = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %4, i32 noundef 1) #10
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %144, label %138

138:                                              ; preds = %127
  %139 = load i32, ptr @m88rs2000_debug, align 4
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 154, i32 noundef 176, i32 noundef %136) #11
  br label %144

144:                                              ; preds = %142, %138, %127
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 -78, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %10 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #10, !annotation !8
  %11 = getelementptr inbounds %struct.m88rs2000_state, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %7, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %15, align 2
  store i16 1, ptr %10, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %18 = load i8, ptr %12, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %22, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %7, i32 noundef 2) #10
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load i32, ptr @m88rs2000_debug, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 178, i32 noundef %24) #11
  br label %32

32:                                               ; preds = %30, %26, %2
  %33 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %34 = or i8 %33, 3
  switch i32 %1, label %40 [
    i32 1, label %35
    i32 0, label %37
  ]

35:                                               ; preds = %32
  %36 = and i8 %33, -4
  br label %40

37:                                               ; preds = %32
  %38 = and i8 %33, -4
  %39 = or i8 %38, 1
  br label %40

40:                                               ; preds = %37, %35, %32
  %41 = phi i8 [ %34, %32 ], [ %39, %37 ], [ %36, %35 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -78, ptr %3, align 2
  %42 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %41, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %43 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %43, align 4, !annotation !8
  %44 = load ptr, ptr %11, align 4
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i16
  store i16 %46, ptr %4, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %47, align 2
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %48, align 4
  %49 = load ptr, ptr %9, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %4, i32 noundef 1) #10
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %59, label %52

52:                                               ; preds = %40
  %53 = load i32, ptr @m88rs2000_debug, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = zext i8 %41 to i32
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 178, i32 noundef %57, i32 noundef %50) #11
  br label %59

59:                                               ; preds = %56, %52, %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m88rs2000_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -127, ptr %5, align 2
  %11 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -124, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %12 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.m88rs2000_state, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %18, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %6, i32 noundef 1) #10
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %28, label %22

22:                                               ; preds = %10
  %23 = load i32, ptr @m88rs2000_debug, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 129, i32 noundef 132, i32 noundef %20) #11
  br label %28

28:                                               ; preds = %26, %22, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %48

29:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -127, ptr %3, align 2
  %30 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 -127, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %31 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %31, align 4, !annotation !8
  %32 = getelementptr inbounds %struct.m88rs2000_state, ptr %8, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %4, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %37, align 4
  %38 = load ptr, ptr %8, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %4, i32 noundef 1) #10
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %47, label %41

41:                                               ; preds = %29
  %42 = load i32, ptr @m88rs2000_debug, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 129, i32 noundef 129, i32 noundef %39) #11
  br label %47

47:                                               ; preds = %45, %41, %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %48

48:                                               ; preds = %47, %28
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 2147480) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @m88rs2000_tab_set(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %65, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %3, i32 1
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  %9 = getelementptr inbounds %struct.m88rs2000_state, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  br label %12

12:                                               ; preds = %63, %6
  %13 = phi i8 [ 0, %6 ], [ %64, %63 ]
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.inittab, ptr %1, i32 %14
  %16 = load i8, ptr %15, align 1
  switch i8 %16, label %65 [
    i8 1, label %17
    i8 16, label %36
    i8 -1, label %47
    i8 0, label %60
  ]

17:                                               ; preds = %12
  %18 = getelementptr %struct.inittab, ptr %1, i32 %14, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr %struct.inittab, ptr %1, i32 %14, i32 2
  %21 = load i8, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 %19, ptr %3, align 2
  store i8 %21, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i32 0, ptr %8, align 4, !annotation !8
  %22 = load ptr, ptr %9, align 4
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %4, align 4
  store i16 0, ptr %10, align 2
  store i16 2, ptr %8, align 4
  store ptr %3, ptr %11, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %4, i32 noundef 1) #10
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %59, label %28

28:                                               ; preds = %17
  %29 = load i32, ptr @m88rs2000_debug, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %28
  %33 = zext i8 %19 to i32
  %34 = zext i8 %21 to i32
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef %33, i32 noundef %34, i32 noundef %26) #11
  br label %58

36:                                               ; preds = %12
  %37 = getelementptr %struct.inittab, ptr %1, i32 %14, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %36
  %41 = zext i8 %38 to i32
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i32 [ %44, %42 ], [ %41, %40 ]
  %44 = add nsw i32 %43, -1
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748000) #10
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %60, label %42

47:                                               ; preds = %12
  %48 = getelementptr %struct.inittab, ptr %1, i32 %14, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, -86
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr %struct.inittab, ptr %1, i32 %14, i32 2
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, -1
  %55 = add i8 %13, 1
  %56 = icmp eq i8 %55, -1
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %65, label %63

58:                                               ; preds = %32, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %65

59:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %60

60:                                               ; preds = %59, %47, %42, %36, %12
  %61 = add i8 %13, 1
  %62 = icmp eq i8 %61, -1
  br i1 %62, label %65, label %63

63:                                               ; preds = %60, %51
  %64 = phi i8 [ %61, %60 ], [ %55, %51 ]
  br label %12

65:                                               ; preds = %60, %58, %51, %12, %2
  %66 = phi i32 [ -22, %2 ], [ -19, %58 ], [ 0, %60 ], [ -22, %12 ], [ 0, %51 ]
  ret i32 %66
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @m88rs2000_readreg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.m88rs2000_state, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %15 = load i8, ptr %8, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %19, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 2) #10
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load i32, ptr @m88rs2000_debug, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = zext i8 %1 to i32
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef %28, i32 noundef %21) #11
  br label %30

30:                                               ; preds = %27, %23, %2
  %31 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret i8 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @m88rs2000_get_fec(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 -102, ptr %7, align 2
  %9 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 48, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %10 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %10, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.m88rs2000_state, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %8, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %16, align 4
  %17 = load ptr, ptr %0, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %8, i32 noundef 1) #10
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load i32, ptr @m88rs2000_debug, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 154, i32 noundef 48, i32 noundef %18) #11
  br label %26

26:                                               ; preds = %24, %20, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 118, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %27 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %27, i8 0, i32 16, i1 false) #10, !annotation !8
  %28 = load ptr, ptr %11, align 4
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %6, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %31, align 2
  store i16 1, ptr %27, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %34 = load i8, ptr %28, align 4
  %35 = zext i8 %34 to i16
  store i16 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %36, align 2
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %38, align 4
  %39 = load ptr, ptr %0, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %6, i32 noundef 2) #10
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %48, label %42

42:                                               ; preds = %26
  %43 = load i32, ptr @m88rs2000_debug, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 118, i32 noundef %40) #11
  br label %48

48:                                               ; preds = %46, %42, %26
  %49 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 -102, ptr %2, align 2
  %50 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -80, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %51 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %51, align 4, !annotation !8
  %52 = load ptr, ptr %11, align 4
  %53 = load i8, ptr %52, align 4
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %3, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %55, align 2
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %56, align 4
  %57 = load ptr, ptr %0, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %3, i32 noundef 1) #10
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %66, label %60

60:                                               ; preds = %48
  %61 = load i32, ptr @m88rs2000_debug, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.m88rs2000_writereg, i32 noundef 154, i32 noundef 176, i32 noundef %58) #11
  br label %66

66:                                               ; preds = %64, %60, %48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  %67 = icmp ult i8 %49, -96
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = lshr i8 %49, 5
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds [5 x i32], ptr @switch.table.m88rs2000_get_fec, i32 0, i32 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %68, %66
  %74 = phi i32 [ %72, %68 ], [ 9, %66 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @m88rs2000_get_mclk(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 -122, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #10, !annotation !8
  %8 = getelementptr inbounds %struct.m88rs2000_state, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %12, align 2
  store i16 1, ptr %7, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %15 = load i8, ptr %9, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %3, ptr %19, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 2) #10
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load i32, ptr @m88rs2000_debug, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.m88rs2000_readreg, i32 noundef 134, i32 noundef %21) #11
  br label %29

29:                                               ; preds = %27, %23, %1
  %30 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %31 = add i8 %30, 1
  %32 = icmp ult i8 %31, 2
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = lshr i8 %30, 1
  %35 = add nuw i8 %34, 1
  %36 = zext i8 %35 to i32
  %37 = mul nuw nsw i32 %36, 27000
  %38 = add nuw nsw i32 %37, 14
  %39 = udiv i32 %38, 28
  br label %40

40:                                               ; preds = %33, %29
  %41 = phi i32 [ %39, %33 ], [ 0, %29 ]
  ret i32 %41
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!9 = !{i64 2147918675, i64 2147918955, i64 2147919289, i64 2147919623}
