; ModuleID = '/llk/IR/drivers/media/dvb-frontends/mt312.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mt312.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt312_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt312_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt312_attach:\09\09\09\09\09"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mt312_state = type { ptr, ptr, %struct.dvb_frontend, i8, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.mt312_config = type { i8, i8, [2 x i8] }

@mt312_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Zarlink ???? DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 78125, i32 0, i32 703125, i32 45000000, i32 0, i32 -1073740114 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @mt312_release, ptr null, ptr @mt312_initfe, ptr @mt312_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt312_set_frontend, ptr @mt312_get_tune_settings, ptr @mt312_get_frontend, ptr @mt312_read_status, ptr @mt312_read_ber, ptr @mt312_read_signal_strength, ptr @mt312_read_snr, ptr @mt312_read_ucblocks, ptr null, ptr @mt312_send_master_cmd, ptr null, ptr @mt312_send_burst, ptr @mt312_set_tone, ptr @mt312_set_voltage, ptr null, ptr null, ptr @mt312_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str = private unnamed_addr constant [20 x i8] c"Zarlink VP310 DVB-S\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Zarlink MT312 DVB-S\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Zarlink ZL10313 DVB-S\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\014Only Zarlink VP310/MT312/ZL10313 are supported chips.\0A\00", align 1
@__kstrtab_mt312_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt312_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt312_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt312_attach to i32), ptr @__kstrtab_mt312_attach, ptr @__kstrtabns_mt312_attach }, section "___ksymtab+mt312_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [65 x i8] c"description=Zarlink VP310/MT312/ZL10313 DVB-S Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [44 x i8] c"author=Andreas Oberritter <obi@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [45 x i8] c"author=Matthias Schwarzott <zzam@gentoo.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"\017%s: ret == %d\0A\00", align 1
@__func__.mt312_read = private unnamed_addr constant [11 x i8] c"mt312_read\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\017mt312: R(%d):\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\01c %02x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"\014mt312: write: len=%zu is too big!\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"\017mt312: W(%d):\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"\017mt312: %s: ret == %d\0A\00", align 1
@__func__.mt312_write = private unnamed_addr constant [12 x i8] c"mt312_write\00", align 1
@__const.mt312_set_frontend.fec_tab = private unnamed_addr constant [10 x i8] c"\00\01\02\04?\08\10 ??", align 1
@__const.mt312_set_frontend.inv_tab = private unnamed_addr constant [3 x i8] c"\00@\80", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"\017mt312: %s: Freq %d\0A\00", align 1
@__func__.mt312_set_frontend = private unnamed_addr constant [19 x i8] c"mt312_set_frontend\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"\017mt312: sr(auto) = %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"\017mt312: sym_rat_op=%d dec_ratio=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"\017mt312: *sr(manual) = %lu\0A\00", align 1
@__const.mt312_get_code_rate.fec_tab = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 9, i32 9], align 4
@.str.15 = private unnamed_addr constant [71 x i8] c"\017mt312: QPSK_STAT_H: 0x%02x, QPSK_STAT_L: 0x%02x, FEC_STATUS: 0x%02x\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"\017mt312: agc=%08x err_db=%hd\0A\00", align 1
@__const.mt312_send_burst.mini_tab = private unnamed_addr constant [2 x i8] c"\02\03", align 1
@__const.mt312_set_tone.tone_tab = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@__const.mt312_set_voltage.volt_tab = private unnamed_addr constant [3 x i8] c"\00@\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license254, ptr @__ksymtab_mt312_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mt312_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1060) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mt312_state, ptr %4, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  store ptr %1, ptr %4, align 8
  %8 = getelementptr inbounds %struct.mt312_state, ptr %4, i32 0, i32 3
  %9 = tail call fastcc i32 @mt312_read(ptr noundef nonnull %4, i32 noundef 126, ptr noundef %8, i32 noundef 1) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mt312_state, ptr %4, i32 0, i32 2
  %13 = getelementptr inbounds %struct.mt312_state, ptr %4, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %13, ptr noundef nonnull align 4 dereferenceable(544) @mt312_ops, i32 544, i1 false)
  %14 = getelementptr inbounds %struct.mt312_state, ptr %4, i32 0, i32 2, i32 3
  store ptr %4, ptr %14, align 8
  %15 = load i8, ptr %8, align 8
  switch i8 %15, label %28 [
    i8 1, label %16
    i8 3, label %20
    i8 5, label %24
  ]

16:                                               ; preds = %11
  %17 = tail call i32 @strscpy(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 128) #10
  %18 = getelementptr inbounds %struct.mt312_state, ptr %4, i32 0, i32 4
  store i32 10000000, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mt312_state, ptr %4, i32 0, i32 5
  store i8 9, ptr %19, align 8
  br label %31

20:                                               ; preds = %11
  %21 = tail call i32 @strscpy(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef 128) #10
  %22 = getelementptr inbounds %struct.mt312_state, ptr %4, i32 0, i32 4
  store i32 10000000, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mt312_state, ptr %4, i32 0, i32 5
  store i8 6, ptr %23, align 8
  br label %31

24:                                               ; preds = %11
  %25 = tail call i32 @strscpy(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef 128) #10
  %26 = getelementptr inbounds %struct.mt312_state, ptr %4, i32 0, i32 4
  store i32 10111000, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mt312_state, ptr %4, i32 0, i32 5
  store i8 9, ptr %27, align 8
  br label %31

28:                                               ; preds = %11
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %30

30:                                               ; preds = %28, %6, %2
  tail call void @kfree(ptr noundef %4) #10
  br label %31

31:                                               ; preds = %30, %24, %20, %16
  %32 = phi ptr [ null, %30 ], [ %12, %24 ], [ %12, %20 ], [ %12, %16 ]
  ret ptr %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mt312_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  %8 = trunc i32 %1 to i8
  store i8 %8, ptr %6, align 1
  %9 = getelementptr inbounds %struct.mt312_state, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 1, ptr %15, align 4
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  %18 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %5, i32 0, i32 1
  store i16 %17, ptr %18, align 4
  %19 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %5, i32 0, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %5, i32 0, i32 1, i32 3
  store ptr %2, ptr %20, align 4
  %21 = trunc i32 %3 to i16
  %22 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %5, i32 0, i32 1, i32 2
  store i16 %21, ptr %22, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %5, i32 noundef 2) #10
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mt312_read, i32 noundef %24) #11
  br label %45

28:                                               ; preds = %4
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = and i32 %1, 127
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %32) #11
  %34 = icmp eq i32 %3, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %35, %31
  %36 = phi i32 [ %41, %35 ], [ 0, %31 ]
  %37 = getelementptr i8, ptr %2, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %39) #11
  %41 = add nuw i32 %36, 1
  %42 = icmp eq i32 %41, %3
  br i1 %42, label %43, label %35

43:                                               ; preds = %35, %31
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %45

45:                                               ; preds = %43, %28, %26
  %46 = phi i32 [ -121, %26 ], [ 0, %43 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret i32 %46
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mt312_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_initfe(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [2 x i8], align 2
  %11 = alloca [8 x i8], align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i16 0, ptr %10, align 2, !annotation !8
  %14 = getelementptr inbounds %struct.mt312_state, ptr %13, i32 0, i32 5
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 6
  %17 = select i1 %16, i8 -120, i8 -116
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 %17, ptr %9, align 1
  %18 = call fastcc i32 @mt312_write(ptr noundef %13, i32 noundef 127, ptr noundef nonnull %9, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %75, label %20

20:                                               ; preds = %1
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 32212200) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 -128, ptr %8, align 1
  %22 = call fastcc i32 @mt312_write(ptr noundef %13, i32 noundef 21, ptr noundef nonnull %8, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %75, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  store i64 4328722964, ptr %11, align 8
  %25 = call fastcc i32 @mt312_write(ptr noundef %13, i32 noundef 86, ptr noundef nonnull %11, i32 noundef 8)
  %26 = icmp slt i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  br i1 %26, label %75, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.mt312_state, ptr %13, i32 0, i32 3
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 5
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 -128, ptr %7, align 1
  %32 = call fastcc i32 @mt312_write(ptr noundef %13, i32 noundef 20, ptr noundef nonnull %7, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %75, label %34

34:                                               ; preds = %31
  store i8 -128, ptr %10, align 2
  %35 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 -80, ptr %35, align 1
  %36 = call fastcc i32 @mt312_write(ptr noundef %13, i32 noundef 84, ptr noundef nonnull %10, i32 noundef 2)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %75, label %38

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1
  %39 = call fastcc i32 @mt312_write(ptr noundef %13, i32 noundef 84, ptr noundef nonnull %6, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %75, label %41

41:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1
  %42 = call fastcc i32 @mt312_write(ptr noundef %13, i32 noundef 85, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %75, label %44

44:                                               ; preds = %41, %27
  %45 = getelementptr inbounds %struct.mt312_state, ptr %13, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = load i8, ptr %14, align 4
  %48 = zext i8 %47 to i32
  %49 = shl i32 %46, 1
  %50 = mul i32 %49, %48
  %51 = add i32 %50, 500000
  %52 = udiv i32 %51, 1000000
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %10, align 2
  %54 = add i32 %46, 44000
  %55 = udiv i32 %54, 88000
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  store i8 %56, ptr %57, align 1
  %58 = call fastcc i32 @mt312_write(ptr noundef %13, i32 noundef 34, ptr noundef nonnull %10, i32 noundef 2)
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 50, ptr %4, align 1
  %61 = call fastcc i32 @mt312_write(ptr noundef %13, i32 noundef 49, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %60
  %64 = load i8, ptr %28, align 4
  %65 = icmp eq i8 %64, 5
  %66 = select i1 %65, i8 51, i8 83
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %66, ptr %3, align 1
  %67 = call fastcc i32 @mt312_write(ptr noundef %13, i32 noundef 96, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  store i8 -116, ptr %10, align 2
  store i8 -104, ptr %57, align 1
  %70 = call fastcc i32 @mt312_write(ptr noundef %13, i32 noundef 51, ptr noundef nonnull %10, i32 noundef 2)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 105, ptr %2, align 1
  %73 = call fastcc i32 @mt312_write(ptr noundef %13, i32 noundef 57, ptr noundef nonnull %2, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %74 = tail call i32 @llvm.smin.i32(i32 %73, i32 0)
  br label %75

75:                                               ; preds = %72, %69, %63, %60, %44, %41, %38, %34, %31, %24, %20, %1
  %76 = phi i32 [ %25, %24 ], [ %18, %1 ], [ %22, %20 ], [ %32, %31 ], [ %36, %34 ], [ %39, %38 ], [ %42, %41 ], [ %58, %44 ], [ %61, %60 ], [ %67, %63 ], [ %70, %69 ], [ %74, %72 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 -128, ptr %5, align 1
  %9 = call fastcc i32 @mt312_write(ptr noundef %8, i32 noundef 21, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.mt312_state, ptr %8, i32 0, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 5
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  %16 = call fastcc i32 @mt312_write(ptr noundef %8, i32 noundef 20, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 13, ptr %3, align 1
  %19 = call fastcc i32 @mt312_write(ptr noundef %8, i32 noundef 84, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18, %11
  %22 = call fastcc i32 @mt312_read(ptr noundef %8, i32 noundef 127, ptr noundef nonnull %6, i32 noundef 1) #10
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr %6, align 1
  %26 = and i8 %25, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 %26, ptr %2, align 1
  %27 = call fastcc i32 @mt312_write(ptr noundef %8, i32 noundef 127, ptr noundef nonnull %2, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %28 = call i32 @llvm.smin.i32(i32 %27, i32 0)
  br label %29

29:                                               ; preds = %24, %21, %18, %15, %1
  %30 = phi i32 [ %9, %1 ], [ %16, %15 ], [ %19, %18 ], [ %22, %21 ], [ %28, %24 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_set_frontend(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [5 x i8], align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, i8 0, i32 5, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %5, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.mt312_set_frontend, i32 noundef %11) #11
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, ptr %5, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = udiv i32 %16, 1000
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %102, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = udiv i32 %21, 1000
  %23 = icmp ugt i32 %14, %22
  br i1 %23, label %102, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, 1
  br i1 %27, label %102, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %102, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %30, %36
  br i1 %37, label %102, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 9
  br i1 %41, label %102, label %42

42:                                               ; preds = %38
  switch i32 %40, label %43 [
    i32 4, label %102
    i32 8, label %102
  ]

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.mt312_state, ptr %7, i32 0, i32 3
  %45 = load i8, ptr %44, align 4
  switch i8 %45, label %102 [
    i8 1, label %46
    i8 3, label %64
    i8 5, label %64
  ]

46:                                               ; preds = %43
  %47 = call fastcc i32 @mt312_read(ptr noundef %7, i32 noundef 127, ptr noundef nonnull %4, i32 noundef 1) #10
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %102, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr %29, align 4
  %51 = icmp ugt i32 %50, 29999999
  %52 = getelementptr inbounds %struct.mt312_state, ptr %7, i32 0, i32 5
  %53 = load i8, ptr %52, align 4
  br i1 %51, label %54, label %59

54:                                               ; preds = %49
  %55 = icmp eq i8 %53, 6
  br i1 %55, label %56, label %64

56:                                               ; preds = %54
  store i8 9, ptr %52, align 4
  %57 = call i32 @mt312_initfe(ptr noundef %0)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %102, label %64

59:                                               ; preds = %49
  %60 = icmp eq i8 %53, 9
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  store i8 6, ptr %52, align 4
  %62 = call i32 @mt312_initfe(ptr noundef %0)
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %102, label %64

64:                                               ; preds = %61, %59, %56, %54, %43, %43
  %65 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = call i32 %66(ptr noundef %0) #10
  %70 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = call i32 %71(ptr noundef %0, i32 noundef 0) #10
  br label %75

75:                                               ; preds = %73, %68, %64
  %76 = load i32, ptr %29, align 4
  %77 = shl i32 %76, 2
  %78 = add i32 %77, 7812
  %79 = udiv i32 %78, 15625
  %80 = lshr i32 %79, 8
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 63
  store i8 %82, ptr %3, align 1
  %83 = trunc i32 %79 to i8
  %84 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 1
  store i8 %83, ptr %84, align 1
  %85 = load i32, ptr %25, align 4
  %86 = getelementptr [3 x i8], ptr @__const.mt312_set_frontend.inv_tab, i32 0, i32 %85
  %87 = load i8, ptr %86, align 1
  %88 = load i32, ptr %39, align 4
  %89 = getelementptr [10 x i8], ptr @__const.mt312_set_frontend.fec_tab, i32 0, i32 %88
  %90 = load i8, ptr %89, align 1
  %91 = or i8 %90, %87
  %92 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 2
  store i8 %91, ptr %92, align 1
  %93 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 3
  %94 = icmp ult i32 %76, 10000000
  %95 = select i1 %94, i8 68, i8 64
  store i8 %95, ptr %93, align 1
  %96 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 4
  store i8 1, ptr %96, align 1
  %97 = call fastcc i32 @mt312_write(ptr noundef %7, i32 noundef 23, ptr noundef nonnull %3, i32 noundef 5)
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 64, ptr %2, align 1
  %100 = call fastcc i32 @mt312_write(ptr noundef %7, i32 noundef 21, ptr noundef nonnull %2, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %101 = call i32 @llvm.smin.i32(i32 %100, i32 0)
  br label %102

102:                                              ; preds = %99, %75, %61, %56, %46, %43, %42, %42, %38, %34, %28, %24, %19, %13
  %103 = phi i32 [ -22, %19 ], [ -22, %13 ], [ -22, %24 ], [ -22, %34 ], [ -22, %28 ], [ -22, %38 ], [ -22, %42 ], [ -22, %42 ], [ %47, %46 ], [ %57, %56 ], [ %62, %61 ], [ -22, %43 ], [ %97, %75 ], [ %101, %99 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #10
  ret i32 %103
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mt312_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 50, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x i8], align 2
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1, !annotation !8
  %12 = call fastcc i32 @mt312_read(ptr noundef %10, i32 noundef 25, ptr noundef nonnull %8, i32 noundef 1) #10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load i8, ptr %8, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = lshr i32 %16, 6
  %21 = and i32 %20, 1
  store i32 %21, ptr %11, align 4
  br label %23

22:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  br label %101

23:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 0, ptr %7, align 2, !annotation !8
  %24 = call fastcc i32 @mt312_read(ptr noundef %10, i32 noundef 23, ptr noundef nonnull %6, i32 noundef 1) #10
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %87, label %26

26:                                               ; preds = %23
  %27 = load i8, ptr %6, align 1
  %28 = icmp sgt i8 %27, -1
  br i1 %28, label %52, label %29

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 3, ptr %5, align 1
  %30 = call fastcc i32 @mt312_write(ptr noundef %10, i32 noundef 103, ptr noundef nonnull %5, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %87, label %32

32:                                               ; preds = %29
  %33 = call fastcc i32 @mt312_read(ptr noundef %10, i32 noundef 123, ptr noundef nonnull %7, i32 noundef 2) #10
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %87, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr @debug, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %89, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = load i8, ptr %7, align 2
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = zext i8 %40 to i32
  %45 = or i32 %43, %44
  %46 = icmp eq i32 %45, 0
  %47 = mul nuw nsw i32 %45, 15625
  %48 = add nuw nsw i32 %47, 2
  %49 = lshr i32 %48, 2
  %50 = select i1 %46, i32 0, i32 %49
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %50) #11
  br label %89

52:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 5, ptr %4, align 1
  %53 = call fastcc i32 @mt312_write(ptr noundef %10, i32 noundef 103, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %52
  %56 = call fastcc i32 @mt312_read(ptr noundef %10, i32 noundef 123, ptr noundef nonnull %7, i32 noundef 2) #10
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %87, label %58

58:                                               ; preds = %55
  %59 = load i8, ptr %7, align 2
  %60 = and i8 %59, -32
  %61 = call fastcc i32 @mt312_read(ptr noundef %10, i32 noundef 116, ptr noundef nonnull %7, i32 noundef 2) #10
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr @debug, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %89, label %66

66:                                               ; preds = %63
  %67 = load i8, ptr %7, align 2
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 8
  %70 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %69, %72
  %74 = zext i8 %60 to i32
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %73, i32 noundef %74) #11
  %76 = load i32, ptr @debug, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.mt312_state, ptr %10, i32 0, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = shl i32 %80, 13
  %82 = add nuw nsw i32 %73, 8192
  %83 = udiv i32 %81, %82
  %84 = shl nuw nsw i32 %83, 1
  %85 = sub nsw i32 %84, %74
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %85) #11
  br label %89

87:                                               ; preds = %58, %55, %52, %32, %29, %23
  %88 = phi i32 [ %61, %58 ], [ %56, %55 ], [ %53, %52 ], [ %33, %32 ], [ %30, %29 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  br label %101

89:                                               ; preds = %78, %66, %63, %38, %35
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %90 = call fastcc i32 @mt312_read(ptr noundef %10, i32 noundef 6, ptr noundef nonnull %3, i32 noundef 1) #10
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  %94 = load i8, ptr %3, align 1
  %95 = lshr i8 %94, 4
  %96 = and i8 %95, 7
  %97 = zext i8 %96 to i32
  %98 = getelementptr [8 x i32], ptr @__const.mt312_get_code_rate.fec_tab, i32 0, i32 %97
  %99 = load i32, ptr %98, align 4
  store i32 %99, ptr %93, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %101

100:                                              ; preds = %89
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %101

101:                                              ; preds = %100, %92, %87, %22
  %102 = phi i32 [ %12, %22 ], [ %88, %87 ], [ %90, %100 ], [ 0, %92 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  store i32 0, ptr %1, align 4
  %6 = call fastcc i32 @mt312_read(ptr noundef %5, i32 noundef 4, ptr noundef nonnull %3, i32 noundef 3)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %53, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr %3, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %13, i32 noundef %16, i32 noundef %19) #11
  br label %21

21:                                               ; preds = %11, %8
  %22 = load i8, ptr %3, align 1
  %23 = icmp ult i8 %22, 64
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %1, align 4
  %26 = or i32 %25, 1
  store i32 %26, ptr %1, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = and i8 %22, 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %1, align 4
  %32 = or i32 %31, 2
  store i32 %32, ptr %1, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %1, align 4
  %40 = or i32 %39, 4
  store i32 %40, ptr %1, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = and i8 %35, 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %1, align 4
  %46 = or i32 %45, 8
  store i32 %46, ptr %1, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = and i8 %22, 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %1, align 4
  %52 = or i32 %51, 16
  store i32 %52, ptr %1, align 4
  br label %53

53:                                               ; preds = %50, %47, %2
  %54 = phi i32 [ %6, %2 ], [ 0, %50 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %6 = call fastcc i32 @mt312_read(ptr noundef %5, i32 noundef 14, ptr noundef nonnull %3, i32 noundef 3)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %15, %11
  %17 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = shl nuw nsw i32 %20, 6
  store i32 %21, ptr %1, align 4
  br label %22

22:                                               ; preds = %8, %2
  %23 = phi i32 [ 0, %8 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %6 = call fastcc i32 @mt312_read(ptr noundef %5, i32 noundef 108, ptr noundef nonnull %3, i32 noundef 3)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 6
  %12 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = lshr i32 %14, 2
  %16 = or i32 %15, %11
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  store i16 %17, ptr %1, align 2
  %20 = load i32, ptr @debug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %8
  %23 = shl i32 %14, 30
  %24 = zext i8 %19 to i32
  %25 = shl nuw nsw i32 %24, 22
  %26 = or i32 %25, %23
  %27 = ashr exact i32 %26, 22
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %16, i32 noundef %27) #11
  br label %29

29:                                               ; preds = %22, %8, %2
  %30 = phi i32 [ %6, %2 ], [ 0, %22 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 0, ptr %3, align 2, !annotation !8
  %6 = call fastcc i32 @mt312_read(ptr noundef %5, i32 noundef 9, ptr noundef nonnull %3, i32 noundef 2)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 2
  %10 = and i8 %9, 127
  %11 = zext i8 %10 to i16
  %12 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i16
  %15 = mul i16 %11, -512
  %16 = mul nsw i16 %14, -2
  %17 = add nsw i16 %16, -1
  %18 = add i16 %17, %15
  store i16 %18, ptr %1, align 2
  br label %19

19:                                               ; preds = %8, %2
  %20 = phi i32 [ 0, %8 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 0, ptr %3, align 2, !annotation !8
  %6 = call fastcc i32 @mt312_read(ptr noundef %5, i32 noundef 17, ptr noundef nonnull %3, i32 noundef 2)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 2
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 8
  %12 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %11, %14
  store i32 %15, ptr %1, align 4
  br label %16

16:                                               ; preds = %8, %2
  %17 = phi i32 [ 0, %8 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_send_master_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = add i8 %9, -7
  %11 = icmp ult i8 %10, -6
  br i1 %11, label %40, label %12

12:                                               ; preds = %2
  %13 = call fastcc i32 @mt312_read(ptr noundef %7, i32 noundef 22, ptr noundef nonnull %5, i32 noundef 1) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %12
  %16 = load i8, ptr %8, align 1
  %17 = zext i8 %16 to i32
  %18 = call fastcc i32 @mt312_write(ptr noundef %7, i32 noundef 164, ptr noundef %1, i32 noundef %17)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %15
  %21 = load i8, ptr %5, align 1
  %22 = and i8 %21, 64
  %23 = load i8, ptr %8, align 1
  %24 = shl i8 %23, 3
  %25 = add i8 %24, -8
  %26 = or i8 %22, %25
  %27 = or i8 %26, 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 %27, ptr %4, align 1
  %28 = call fastcc i32 @mt312_write(ptr noundef %7, i32 noundef 22, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %20
  call void @msleep(i32 noundef 100) #10
  %31 = load i8, ptr %1, align 1
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i8, ptr %5, align 1
  %36 = and i8 %35, 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %36, ptr %3, align 1
  %37 = call fastcc i32 @mt312_write(ptr noundef %7, i32 noundef 22, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %30
  br label %40

40:                                               ; preds = %39, %34, %20, %15, %12, %2
  %41 = phi i32 [ 0, %39 ], [ -22, %2 ], [ %13, %12 ], [ %18, %15 ], [ %28, %20 ], [ %37, %34 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %7 = icmp ugt i32 %1, 1
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = call fastcc i32 @mt312_read(ptr noundef %6, i32 noundef 22, ptr noundef nonnull %4, i32 noundef 1) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr %4, align 1
  %13 = and i8 %12, 64
  %14 = getelementptr [2 x i8], ptr @__const.mt312_send_burst.mini_tab, i32 0, i32 %1
  %15 = load i8, ptr %14, align 1
  %16 = or i8 %13, %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %16, ptr %3, align 1
  %17 = call fastcc i32 @mt312_write(ptr noundef %6, i32 noundef 22, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %18 = call i32 @llvm.smin.i32(i32 %17, i32 0)
  br label %19

19:                                               ; preds = %11, %8, %2
  %20 = phi i32 [ -22, %2 ], [ %9, %8 ], [ %18, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %7 = icmp ugt i32 %1, 1
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = call fastcc i32 @mt312_read(ptr noundef %6, i32 noundef 22, ptr noundef nonnull %4, i32 noundef 1) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr %4, align 1
  %13 = and i8 %12, 64
  %14 = getelementptr [2 x i8], ptr @__const.mt312_set_tone.tone_tab, i32 0, i32 %1
  %15 = load i8, ptr %14, align 1
  %16 = or i8 %13, %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %16, ptr %3, align 1
  %17 = call fastcc i32 @mt312_write(ptr noundef %6, i32 noundef 22, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %18 = call i32 @llvm.smin.i32(i32 %17, i32 0)
  br label %19

19:                                               ; preds = %11, %8, %2
  %20 = phi i32 [ -22, %2 ], [ %9, %8 ], [ %18, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = icmp ugt i32 %1, 2
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr [3 x i8], ptr @__const.mt312_set_voltage.volt_tab, i32 0, i32 %1
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.mt312_state, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mt312_config, ptr %11, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  %16 = xor i8 %9, 64
  %17 = select i1 %15, i8 %9, i8 %16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %17, ptr %3, align 1
  %18 = call fastcc i32 @mt312_write(ptr noundef %7, i32 noundef 22, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %19

19:                                               ; preds = %5, %2
  %20 = phi i32 [ %18, %5 ], [ -22, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt312_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  %7 = getelementptr inbounds %struct.mt312_state, ptr %6, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 5
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = call fastcc i32 @mt312_read(ptr noundef %6, i32 noundef 20, ptr noundef nonnull %4, i32 noundef 1) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = load i8, ptr %4, align 1
  %15 = and i8 %14, -128
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i8 [ 0, %2 ], [ %15, %13 ]
  %18 = icmp eq i32 %1, 0
  %19 = select i1 %18, i8 0, i8 64
  %20 = or i8 %17, %19
  store i8 %20, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %20, ptr %3, align 1
  %21 = call fastcc i32 @mt312_write(ptr noundef %6, i32 noundef 20, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %22

22:                                               ; preds = %16, %10
  %23 = phi i32 [ %11, %10 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mt312_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [64 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %7 = getelementptr inbounds i8, ptr %5, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %7, i8 0, i32 63, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %8 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = add i32 %3, 1
  %10 = icmp ugt i32 %9, 64
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %3) #11
  br label %49

13:                                               ; preds = %4
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = and i32 %1, 127
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %17) #11
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %16
  %21 = phi i32 [ %26, %20 ], [ 0, %16 ]
  %22 = getelementptr i8, ptr %2, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %24) #11
  %26 = add nuw i32 %21, 1
  %27 = icmp eq i32 %26, %3
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %16
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %30

30:                                               ; preds = %28, %13
  %31 = trunc i32 %1 to i8
  store i8 %31, ptr %5, align 1
  %32 = getelementptr inbounds [64 x i8], ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %2, i32 %3, i1 false)
  %33 = getelementptr inbounds %struct.mt312_state, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %6, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %38, align 4
  %39 = trunc i32 %9 to i16
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 %39, ptr %40, align 4
  %41 = load ptr, ptr %0, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %6, i32 noundef 1) #10
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %49, label %44

44:                                               ; preds = %30
  %45 = load i32, ptr @debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.mt312_write, i32 noundef %42) #11
  br label %49

49:                                               ; preds = %47, %44, %30, %11
  %50 = phi i32 [ -22, %11 ], [ -121, %47 ], [ -121, %44 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
