; ModuleID = '/llk/IR/drivers/media/dvb-frontends/zl10353.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/zl10353.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zl10353_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22zl10353_attach\22\09\09\09\09\09"
module asm "__kstrtabns_zl10353_attach:\09\09\09\09\09"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.zl10353_state = type { ptr, %struct.dvb_frontend, %struct.zl10353_config, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@zl10353_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Zarlink ZL10353 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @zl10353_release, ptr null, ptr @zl10353_init, ptr @zl10353_sleep, ptr null, ptr null, ptr @zl10353_write, ptr null, ptr null, ptr @zl10353_set_parameters, ptr @zl10353_get_tune_settings, ptr @zl10353_get_parameters, ptr @zl10353_read_status, ptr @zl10353_read_ber, ptr @zl10353_read_signal_strength, ptr @zl10353_read_snr, ptr @zl10353_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zl10353_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__param_str_debug_regs = internal constant [11 x i8] c"debug_regs\00", align 1
@debug_regs = internal global i32 0, align 4
@__param_debug_regs = internal constant %struct.kernel_param { ptr @__param_str_debug_regs, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug_regs } }, section "__param", align 4
@__UNIQUE_ID_debug_regstype251 = internal constant [24 x i8] c"parmtype=debug_regs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_regs252 = internal constant [67 x i8] c"parm=debug_regs:Turn on/off frontend register dumps (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [53 x i8] c"description=Zarlink ZL10353 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [20 x i8] c"author=Chris Pascoe\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_zl10353_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_zl10353_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_zl10353_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zl10353_attach to i32), ptr @__kstrtab_zl10353_attach, ptr @__kstrtabns_zl10353_attach }, section "___ksymtab+zl10353_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: readreg error (reg=%d, ret==%i)\0A\00", align 1
@__func__.zl10353_read_register = private unnamed_addr constant [22 x i8] c"zl10353_read_register\00", align 1
@__const.zl10353_init.zl10353_reset_attach = private unnamed_addr constant [6 x i8] c"P\03dF\15\0F", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\017%02x:\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\01c %02x\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\01c --\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"zl10353: write to reg %x failed (err = %d)!\0A\00", align 1
@__const.zl10353_set_parameters.pllbuf = private unnamed_addr constant [6 x i8] c"g\00\00\00\00\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"\017zl10353: %s: bw %d, adc_clock %d => 0x%x\0A\00", align 1
@__func__.zl10353_calc_nominal_rate = private unnamed_addr constant [26 x i8] c"zl10353_calc_nominal_rate\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"\017zl10353: %s: if2 %d, ife %d, adc_clock %d => %d / 0x%x\0A\00", align 1
@__func__.zl10353_calc_input_freq = private unnamed_addr constant [24 x i8] c"zl10353_calc_input_freq\00", align 1
@zl10353_get_parameters.tps_fec_to_api = internal unnamed_addr constant [8 x i8] c"\01\02\03\05\07\09\09\09", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debug_regs252, ptr @__UNIQUE_ID_debug_regstype251, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_zl10353_attach, ptr @__param_debug, ptr @__param_debug_regs], section "llvm.metadata"
@switch.table.zl10353_set_parameters = private unnamed_addr constant [9 x i8] c"\00\80\00\80\80\80\00\80\00", align 1
@switch.table.zl10353_set_parameters.8 = private unnamed_addr constant [9 x i8] c"\00\00\01\00\01\00\02\00\00", align 1
@switch.table.zl10353_get_parameters = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @zl10353_attach(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1080) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  store ptr %1, ptr %7, align 8
  %10 = getelementptr inbounds %struct.zl10353_state, ptr %7, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %10, ptr noundef align 4 dereferenceable(24) %0, i32 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 127, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = load i8, ptr %10, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 1, ptr %11, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %19, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #10
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %24, label %22

22:                                               ; preds = %9
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 127, i32 noundef %20) #11
  br label %27

24:                                               ; preds = %9
  %25 = load i8, ptr %4, align 1
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %20, %22 ], [ %26, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  switch i32 %28, label %33 [
    i32 25, label %29
    i32 24, label %29
    i32 20, label %29
  ]

29:                                               ; preds = %27, %27, %27
  %30 = getelementptr inbounds %struct.zl10353_state, ptr %7, i32 0, i32 1
  %31 = getelementptr inbounds %struct.zl10353_state, ptr %7, i32 0, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %31, ptr noundef nonnull align 4 dereferenceable(544) @zl10353_ops, i32 544, i1 false)
  %32 = getelementptr inbounds %struct.zl10353_state, ptr %7, i32 0, i32 1, i32 3
  store ptr %7, ptr %32, align 4
  br label %34

33:                                               ; preds = %27, %2
  call void @kfree(ptr noundef %7) #10
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi ptr [ null, %33 ], [ %30, %29 ]
  ret ptr %35
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

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zl10353_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10353_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [6 x i8], align 1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %10, ptr noundef nonnull align 1 dereferenceable(6) @__const.zl10353_init.zl10353_reset_attach, i32 6, i1 false)
  %13 = load i32, ptr @debug_regs, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call fastcc void @zl10353_dump_regs(ptr noundef %0)
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr inbounds %struct.zl10353_state, ptr %12, i32 0, i32 2, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 2
  store i8 68, ptr %21, align 1
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ 68, %20 ], [ 100, %16 ]
  %24 = getelementptr inbounds %struct.zl10353_state, ptr %12, i32 0, i32 2, i32 6
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 3
  store i8 %25, ptr %28, align 1
  br label %29

29:                                               ; preds = %27, %22
  %30 = getelementptr inbounds %struct.zl10353_state, ptr %12, i32 0, i32 2, i32 7
  %31 = load i8, ptr %30, align 2
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds [6 x i8], ptr %10, i32 0, i32 4
  store i8 %31, ptr %34, align 1
  br label %35

35:                                               ; preds = %33, %29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 80, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %36 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %36, i8 0, i32 16, i1 false) #10, !annotation !8
  %37 = getelementptr inbounds %struct.zl10353_state, ptr %12, i32 0, i32 2
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %9, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %40, align 2
  store i16 1, ptr %36, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  store i16 %39, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %45, align 4
  %46 = load ptr, ptr %12, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %9, i32 noundef 2) #10
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %51, label %49

49:                                               ; preds = %35
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 80, i32 noundef %47) #11
  br label %54

51:                                               ; preds = %35
  %52 = load i8, ptr %8, align 1
  %53 = zext i8 %52 to i32
  br label %54

54:                                               ; preds = %51, %49
  %55 = phi i32 [ %47, %49 ], [ %53, %51 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 81, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %58 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %58, i8 0, i32 16, i1 false) #10, !annotation !8
  %59 = load i8, ptr %37, align 4
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %6, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %61, align 2
  store i16 1, ptr %58, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %60, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %66, align 4
  %67 = load ptr, ptr %12, align 4
  %68 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %6, i32 noundef 2) #10
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %72, label %70

70:                                               ; preds = %57
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 81, i32 noundef %68) #11
  br label %75

72:                                               ; preds = %57
  %73 = load i8, ptr %5, align 1
  %74 = zext i8 %73 to i32
  br label %75

75:                                               ; preds = %72, %70
  %76 = phi i32 [ %68, %70 ], [ %74, %72 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %77 = icmp eq i32 %76, %23
  br i1 %77, label %109, label %78

78:                                               ; preds = %75, %54
  %79 = getelementptr inbounds i8, ptr %2, i32 1
  %80 = getelementptr inbounds i8, ptr %3, i32 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  br label %83

83:                                               ; preds = %102, %78
  %84 = phi i32 [ 0, %78 ], [ %89, %102 ]
  %85 = icmp eq i32 %84, 5
  br i1 %85, label %105, label %86

86:                                               ; preds = %83
  %87 = trunc i32 %84 to i8
  %88 = add i8 %87, 80
  %89 = add nuw nsw i32 %84, 1
  %90 = getelementptr i8, ptr %10, i32 %89
  %91 = load i8, ptr %90, align 1
  %92 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 %88, ptr %2, align 2
  store i8 %91, ptr %79, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %80, align 4, !annotation !8
  %93 = getelementptr inbounds %struct.zl10353_state, ptr %92, i32 0, i32 2
  %94 = load i8, ptr %93, align 4
  %95 = zext i8 %94 to i16
  store i16 %95, ptr %3, align 4
  store i16 0, ptr %81, align 2
  store ptr %2, ptr %82, align 4
  %96 = load ptr, ptr %92, align 4
  %97 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %3, i32 noundef 1) #10
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %102, label %99

99:                                               ; preds = %86
  %100 = zext i8 %88 to i32
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %100, i32 noundef %97) #11
  br label %102

102:                                              ; preds = %99, %86
  %103 = phi i32 [ %97, %99 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %83, label %105

105:                                              ; preds = %102, %83
  %106 = load i32, ptr @debug_regs, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  call fastcc void @zl10353_dump_regs(ptr noundef %0)
  br label %109

109:                                              ; preds = %108, %105, %75
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10353_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %2, i32 1
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 80, ptr %2, align 2
  store i8 12, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %6, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.zl10353_state, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %3, align 4
  store i16 0, ptr %7, align 2
  store ptr %2, ptr %8, align 4
  %13 = load ptr, ptr %9, align 4
  %14 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %3, i32 noundef 1) #10
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %20

17:                                               ; preds = %1
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 80, i32 noundef %14) #11
  %19 = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br i1 %19, label %20, label %31

20:                                               ; preds = %17, %16
  %21 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 81, ptr %2, align 2
  store i8 68, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %6, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.zl10353_state, ptr %21, i32 0, i32 2
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %3, align 4
  store i16 0, ptr %7, align 2
  store ptr %2, ptr %8, align 4
  %25 = load ptr, ptr %21, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %3, i32 noundef 1) #10
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %31

29:                                               ; preds = %20
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 81, i32 noundef %26) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %31

31:                                               ; preds = %29, %28, %17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10353_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = add i32 %2, -1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %12 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  br label %13

13:                                               ; preds = %33, %3
  %14 = phi i32 [ 0, %3 ], [ %20, %33 ]
  %15 = icmp eq i32 %14, %12
  br i1 %15, label %36, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr %1, align 1
  %18 = trunc i32 %14 to i8
  %19 = add i8 %17, %18
  %20 = add nuw i32 %14, 1
  %21 = getelementptr i8, ptr %1, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 %19, ptr %4, align 2
  store i8 %22, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  store i32 2, ptr %9, align 4, !annotation !8
  %24 = getelementptr inbounds %struct.zl10353_state, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %5, align 4
  store i16 0, ptr %10, align 2
  store ptr %4, ptr %11, align 4
  %27 = load ptr, ptr %23, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %5, i32 noundef 1) #10
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %16
  %31 = zext i8 %19 to i32
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %31, i32 noundef %28) #11
  br label %33

33:                                               ; preds = %30, %16
  %34 = phi i32 [ %28, %30 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %13, label %36

36:                                               ; preds = %33, %13
  %37 = phi i32 [ %34, %33 ], [ 0, %13 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10353_set_parameters(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
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
  %42 = alloca [2 x i8], align 2
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [2 x i8], align 2
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca [2 x i8], align 2
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [2 x i8], align 2
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca [6 x i8], align 1
  %51 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %50) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %50, ptr noundef nonnull align 1 dereferenceable(6) @__const.zl10353_set_parameters.pllbuf, i32 6, i1 false)
  %54 = load i32, ptr %51, align 4
  %55 = getelementptr inbounds %struct.zl10353_state, ptr %53, i32 0, i32 5
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #10
  store i8 85, ptr %48, align 2
  %57 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 -128, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #10
  %58 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 2, ptr %58, align 4, !annotation !8
  %59 = getelementptr inbounds %struct.zl10353_state, ptr %56, i32 0, i32 2
  %60 = load i8, ptr %59, align 4
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %49, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %62, align 2
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %63, align 4
  %64 = load ptr, ptr %56, align 4
  %65 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %49, i32 noundef 1) #10
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %69, label %67

67:                                               ; preds = %1
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 85, i32 noundef %65) #11
  br label %69

69:                                               ; preds = %67, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #10
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 42949600) #10
  %71 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #10
  store i8 -22, ptr %46, align 2
  %72 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 1, ptr %72, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #10
  %73 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 2, ptr %73, align 4, !annotation !8
  %74 = getelementptr inbounds %struct.zl10353_state, ptr %71, i32 0, i32 2
  %75 = load i8, ptr %74, align 4
  %76 = zext i8 %75 to i16
  store i16 %76, ptr %47, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %77, align 2
  %78 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %78, align 4
  %79 = load ptr, ptr %71, align 4
  %80 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %47, i32 noundef 1) #10
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %84, label %82

82:                                               ; preds = %69
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 234, i32 noundef %80) #11
  br label %84

84:                                               ; preds = %82, %69
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #10
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %85(i32 noundef 42949600) #10
  %86 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #10
  store i8 -22, ptr %44, align 2
  %87 = getelementptr inbounds i8, ptr %44, i32 1
  store i8 0, ptr %87, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #10
  %88 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 2, ptr %88, align 4, !annotation !8
  %89 = getelementptr inbounds %struct.zl10353_state, ptr %86, i32 0, i32 2
  %90 = load i8, ptr %89, align 4
  %91 = zext i8 %90 to i16
  store i16 %91, ptr %45, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %92, align 2
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %93, align 4
  %94 = load ptr, ptr %86, align 4
  %95 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %45, i32 noundef 1) #10
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %99, label %97

97:                                               ; preds = %84
  %98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 234, i32 noundef %95) #11
  br label %99

99:                                               ; preds = %97, %84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #10
  %100 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #10
  store i8 86, ptr %42, align 2
  %101 = getelementptr inbounds i8, ptr %42, i32 1
  store i8 40, ptr %101, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #10
  %102 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 2, ptr %102, align 4, !annotation !8
  %103 = getelementptr inbounds %struct.zl10353_state, ptr %100, i32 0, i32 2
  %104 = load i8, ptr %103, align 4
  %105 = zext i8 %104 to i16
  store i16 %105, ptr %43, align 4
  %106 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %106, align 2
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %107, align 4
  %108 = load ptr, ptr %100, align 4
  %109 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %43, i32 noundef 1) #10
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %113, label %111

111:                                              ; preds = %99
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 86, i32 noundef %109) #11
  br label %113

113:                                              ; preds = %111, %99
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #10
  %114 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = icmp ne i32 %115, 2
  %117 = zext i1 %116 to i8
  %118 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 4
  %121 = or i8 %117, 2
  %122 = select i1 %120, i8 %117, i8 %121
  %123 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #10
  store i8 94, ptr %40, align 2
  %124 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 %122, ptr %124, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #10
  %125 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 2, ptr %125, align 4, !annotation !8
  %126 = getelementptr inbounds %struct.zl10353_state, ptr %123, i32 0, i32 2
  %127 = load i8, ptr %126, align 4
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %41, align 4
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %129, align 2
  %130 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %130, align 4
  %131 = load ptr, ptr %123, align 4
  %132 = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %41, i32 noundef 1) #10
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %136, label %134

134:                                              ; preds = %113
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 94, i32 noundef %132) #11
  br label %136

136:                                              ; preds = %134, %113
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #10
  %137 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %138 = load i32, ptr %137, align 4
  switch i32 %138, label %225 [
    i32 6000000, label %139
    i32 7000000, label %182
    i32 8000000, label %226
  ]

139:                                              ; preds = %136
  %140 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #10
  store i8 92, ptr %38, align 2
  %141 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 -105, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  %142 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 2, ptr %142, align 4, !annotation !8
  %143 = getelementptr inbounds %struct.zl10353_state, ptr %140, i32 0, i32 2
  %144 = load i8, ptr %143, align 4
  %145 = zext i8 %144 to i16
  store i16 %145, ptr %39, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %146, align 2
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %147, align 4
  %148 = load ptr, ptr %140, align 4
  %149 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %39, i32 noundef 1) #10
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %153, label %151

151:                                              ; preds = %139
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 92, i32 noundef %149) #11
  br label %153

153:                                              ; preds = %151, %139
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #10
  %154 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #10
  store i8 100, ptr %36, align 2
  %155 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 52, ptr %155, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %156 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 2, ptr %156, align 4, !annotation !8
  %157 = getelementptr inbounds %struct.zl10353_state, ptr %154, i32 0, i32 2
  %158 = load i8, ptr %157, align 4
  %159 = zext i8 %158 to i16
  store i16 %159, ptr %37, align 4
  %160 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %160, align 2
  %161 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %161, align 4
  %162 = load ptr, ptr %154, align 4
  %163 = call i32 @i2c_transfer(ptr noundef %162, ptr noundef nonnull %37, i32 noundef 1) #10
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %167, label %165

165:                                              ; preds = %153
  %166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 100, i32 noundef %163) #11
  br label %167

167:                                              ; preds = %165, %153
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #10
  %168 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #10
  store i8 -52, ptr %34, align 2
  %169 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 -35, ptr %169, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  %170 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 2, ptr %170, align 4, !annotation !8
  %171 = getelementptr inbounds %struct.zl10353_state, ptr %168, i32 0, i32 2
  %172 = load i8, ptr %171, align 4
  %173 = zext i8 %172 to i16
  store i16 %173, ptr %35, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %174, align 2
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %175, align 4
  %176 = load ptr, ptr %168, align 4
  %177 = call i32 @i2c_transfer(ptr noundef %176, ptr noundef nonnull %35, i32 noundef 1) #10
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %181, label %179

179:                                              ; preds = %167
  %180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 204, i32 noundef %177) #11
  br label %181

181:                                              ; preds = %179, %167
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #10
  br label %269

182:                                              ; preds = %136
  %183 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #10
  store i8 92, ptr %32, align 2
  %184 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 -122, ptr %184, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  %185 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 2, ptr %185, align 4, !annotation !8
  %186 = getelementptr inbounds %struct.zl10353_state, ptr %183, i32 0, i32 2
  %187 = load i8, ptr %186, align 4
  %188 = zext i8 %187 to i16
  store i16 %188, ptr %33, align 4
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %189, align 2
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %190, align 4
  %191 = load ptr, ptr %183, align 4
  %192 = call i32 @i2c_transfer(ptr noundef %191, ptr noundef nonnull %33, i32 noundef 1) #10
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %196, label %194

194:                                              ; preds = %182
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 92, i32 noundef %192) #11
  br label %196

196:                                              ; preds = %194, %182
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #10
  %197 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #10
  store i8 100, ptr %30, align 2
  %198 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 53, ptr %198, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  %199 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 2, ptr %199, align 4, !annotation !8
  %200 = getelementptr inbounds %struct.zl10353_state, ptr %197, i32 0, i32 2
  %201 = load i8, ptr %200, align 4
  %202 = zext i8 %201 to i16
  store i16 %202, ptr %31, align 4
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %203, align 2
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %204, align 4
  %205 = load ptr, ptr %197, align 4
  %206 = call i32 @i2c_transfer(ptr noundef %205, ptr noundef nonnull %31, i32 noundef 1) #10
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %210, label %208

208:                                              ; preds = %196
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 100, i32 noundef %206) #11
  br label %210

210:                                              ; preds = %208, %196
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #10
  %211 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #10
  store i8 -52, ptr %28, align 2
  %212 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 115, ptr %212, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  %213 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 2, ptr %213, align 4, !annotation !8
  %214 = getelementptr inbounds %struct.zl10353_state, ptr %211, i32 0, i32 2
  %215 = load i8, ptr %214, align 4
  %216 = zext i8 %215 to i16
  store i16 %216, ptr %29, align 4
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %217, align 2
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %218, align 4
  %219 = load ptr, ptr %211, align 4
  %220 = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %29, i32 noundef 1) #10
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %224, label %222

222:                                              ; preds = %210
  %223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 204, i32 noundef %220) #11
  br label %224

224:                                              ; preds = %222, %210
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #10
  br label %269

225:                                              ; preds = %136
  store i32 8000000, ptr %137, align 4
  br label %226

226:                                              ; preds = %225, %136
  %227 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #10
  store i8 92, ptr %26, align 2
  %228 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 117, ptr %228, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %229 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %229, align 4, !annotation !8
  %230 = getelementptr inbounds %struct.zl10353_state, ptr %227, i32 0, i32 2
  %231 = load i8, ptr %230, align 4
  %232 = zext i8 %231 to i16
  store i16 %232, ptr %27, align 4
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %233, align 2
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %234, align 4
  %235 = load ptr, ptr %227, align 4
  %236 = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %27, i32 noundef 1) #10
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %240, label %238

238:                                              ; preds = %226
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 92, i32 noundef %236) #11
  br label %240

240:                                              ; preds = %238, %226
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #10
  %241 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #10
  store i8 100, ptr %24, align 2
  %242 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 54, ptr %242, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %243 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 2, ptr %243, align 4, !annotation !8
  %244 = getelementptr inbounds %struct.zl10353_state, ptr %241, i32 0, i32 2
  %245 = load i8, ptr %244, align 4
  %246 = zext i8 %245 to i16
  store i16 %246, ptr %25, align 4
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %247, align 2
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %248, align 4
  %249 = load ptr, ptr %241, align 4
  %250 = call i32 @i2c_transfer(ptr noundef %249, ptr noundef nonnull %25, i32 noundef 1) #10
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %254, label %252

252:                                              ; preds = %240
  %253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 100, i32 noundef %250) #11
  br label %254

254:                                              ; preds = %252, %240
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #10
  %255 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #10
  store i8 -52, ptr %22, align 2
  %256 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 115, ptr %256, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %257 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %257, align 4, !annotation !8
  %258 = getelementptr inbounds %struct.zl10353_state, ptr %255, i32 0, i32 2
  %259 = load i8, ptr %258, align 4
  %260 = zext i8 %259 to i16
  store i16 %260, ptr %23, align 4
  %261 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %261, align 2
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %262, align 4
  %263 = load ptr, ptr %255, align 4
  %264 = call i32 @i2c_transfer(ptr noundef %263, ptr noundef nonnull %23, i32 noundef 1) #10
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %268, label %266

266:                                              ; preds = %254
  %267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 204, i32 noundef %264) #11
  br label %268

268:                                              ; preds = %266, %254
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #10
  br label %269

269:                                              ; preds = %268, %224, %181
  %270 = load i32, ptr %137, align 4
  %271 = load ptr, ptr %52, align 4
  %272 = udiv i32 %270, 1000000
  %273 = getelementptr inbounds %struct.zl10353_state, ptr %271, i32 0, i32 2, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = icmp eq i32 %274, 0
  %276 = select i1 %275, i32 450560, i32 %274
  %277 = and i32 %272, 255
  %278 = zext i32 %277 to i64
  %279 = mul nuw nsw i64 %278, 1497965625
  %280 = lshr i32 %276, 1
  %281 = zext i32 %280 to i64
  %282 = add nuw nsw i64 %279, %281
  %283 = icmp ult i64 %282, 4294967296
  br i1 %283, label %284, label %290, !prof !9

284:                                              ; preds = %269
  %285 = trunc i64 %282 to i32
  %286 = udiv i32 %285, %276
  %287 = trunc i32 %286 to i8
  %288 = lshr i32 %286, 8
  %289 = trunc i32 %288 to i8
  br label %297

290:                                              ; preds = %269
  %291 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %276, i64 %282) #12, !srcloc !10
  %292 = extractvalue { i64, i64 } %291, 1
  %293 = trunc i64 %292 to i32
  %294 = trunc i64 %292 to i8
  %295 = lshr i64 %292, 8
  %296 = trunc i64 %295 to i8
  br label %297

297:                                              ; preds = %290, %284
  %298 = phi i8 [ %287, %284 ], [ %294, %290 ]
  %299 = phi i8 [ %289, %284 ], [ %296, %290 ]
  %300 = phi i32 [ %286, %284 ], [ %293, %290 ]
  %301 = load i32, ptr @debug, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %307, label %303

303:                                              ; preds = %297
  %304 = and i32 %300, 65535
  %305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.zl10353_calc_nominal_rate, i32 noundef %277, i32 noundef %276, i32 noundef %304) #11
  %306 = load ptr, ptr %52, align 4
  br label %307

307:                                              ; preds = %303, %297
  %308 = phi ptr [ %271, %297 ], [ %306, %303 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #10
  store i8 101, ptr %20, align 2
  %309 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 %299, ptr %309, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %310 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %310, align 4, !annotation !8
  %311 = getelementptr inbounds %struct.zl10353_state, ptr %308, i32 0, i32 2
  %312 = load i8, ptr %311, align 4
  %313 = zext i8 %312 to i16
  store i16 %313, ptr %21, align 4
  %314 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %314, align 2
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %315, align 4
  %316 = load ptr, ptr %308, align 4
  %317 = call i32 @i2c_transfer(ptr noundef %316, ptr noundef nonnull %21, i32 noundef 1) #10
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %321, label %319

319:                                              ; preds = %307
  %320 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 101, i32 noundef %317) #11
  br label %321

321:                                              ; preds = %319, %307
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #10
  %322 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #10
  store i8 102, ptr %18, align 2
  %323 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 %298, ptr %323, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %324 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %324, align 4, !annotation !8
  %325 = getelementptr inbounds %struct.zl10353_state, ptr %322, i32 0, i32 2
  %326 = load i8, ptr %325, align 4
  %327 = zext i8 %326 to i16
  store i16 %327, ptr %19, align 4
  %328 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %328, align 2
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %329, align 4
  %330 = load ptr, ptr %322, align 4
  %331 = call i32 @i2c_transfer(ptr noundef %330, ptr noundef nonnull %19, i32 noundef 1) #10
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %335, label %333

333:                                              ; preds = %321
  %334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 102, i32 noundef %331) #11
  br label %335

335:                                              ; preds = %333, %321
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  %336 = load i32, ptr %137, align 4
  %337 = getelementptr inbounds %struct.zl10353_state, ptr %53, i32 0, i32 3
  store i32 %336, ptr %337, align 4
  %338 = load ptr, ptr %52, align 4
  %339 = getelementptr inbounds %struct.zl10353_state, ptr %338, i32 0, i32 2, i32 1
  %340 = load i32, ptr %339, align 4
  %341 = icmp eq i32 %340, 0
  %342 = select i1 %341, i32 450560, i32 %340
  %343 = getelementptr inbounds %struct.zl10353_state, ptr %338, i32 0, i32 2, i32 2
  %344 = load i32, ptr %343, align 4
  %345 = icmp eq i32 %344, 0
  %346 = select i1 %345, i32 361667, i32 %344
  %347 = shl i32 %346, 1
  %348 = icmp ult i32 %342, %347
  br i1 %348, label %351, label %349

349:                                              ; preds = %335
  %350 = lshr i32 %342, 1
  br label %357

351:                                              ; preds = %335
  %352 = urem i32 %346, %342
  %353 = sub i32 %342, %352
  %354 = lshr i32 %342, 1
  %355 = icmp ugt i32 %353, %354
  %356 = select i1 %355, i32 %352, i32 %353
  br label %357

357:                                              ; preds = %351, %349
  %358 = phi i32 [ %350, %349 ], [ %354, %351 ]
  %359 = phi i32 [ %346, %349 ], [ %356, %351 ]
  %360 = sext i32 %359 to i64
  %361 = shl nsw i64 %360, 16
  %362 = zext i32 %358 to i64
  %363 = add nsw i64 %361, %362
  %364 = icmp ult i64 %363, 4294967296
  br i1 %364, label %365, label %369, !prof !9

365:                                              ; preds = %357
  %366 = trunc i64 %363 to i32
  %367 = udiv i32 %366, %342
  %368 = trunc i32 %367 to i16
  br label %374

369:                                              ; preds = %357
  %370 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %342, i64 %363) #12, !srcloc !10
  %371 = extractvalue { i64, i64 } %370, 1
  %372 = trunc i64 %371 to i16
  %373 = trunc i64 %371 to i32
  br label %374

374:                                              ; preds = %369, %365
  %375 = phi i16 [ %368, %365 ], [ %372, %369 ]
  %376 = phi i32 [ %367, %365 ], [ %373, %369 ]
  %377 = sub i16 0, %375
  %378 = load i32, ptr @debug, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %385, label %380

380:                                              ; preds = %374
  %381 = sub i32 0, %376
  %382 = zext i16 %377 to i32
  %383 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.zl10353_calc_input_freq, i32 noundef %346, i32 noundef %359, i32 noundef %342, i32 noundef %381, i32 noundef %382) #11
  %384 = load ptr, ptr %52, align 4
  br label %385

385:                                              ; preds = %380, %374
  %386 = phi ptr [ %338, %374 ], [ %384, %380 ]
  %387 = lshr i16 %377, 8
  %388 = trunc i16 %387 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #10
  store i8 108, ptr %16, align 2
  %389 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 %388, ptr %389, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %390 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %390, align 4, !annotation !8
  %391 = getelementptr inbounds %struct.zl10353_state, ptr %386, i32 0, i32 2
  %392 = load i8, ptr %391, align 4
  %393 = zext i8 %392 to i16
  store i16 %393, ptr %17, align 4
  %394 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %394, align 2
  %395 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %395, align 4
  %396 = load ptr, ptr %386, align 4
  %397 = call i32 @i2c_transfer(ptr noundef %396, ptr noundef nonnull %17, i32 noundef 1) #10
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %401, label %399

399:                                              ; preds = %385
  %400 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef %397) #11
  br label %401

401:                                              ; preds = %399, %385
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  %402 = trunc i16 %377 to i8
  %403 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #10
  store i8 109, ptr %14, align 2
  %404 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 %402, ptr %404, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %405 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %405, align 4, !annotation !8
  %406 = getelementptr inbounds %struct.zl10353_state, ptr %403, i32 0, i32 2
  %407 = load i8, ptr %406, align 4
  %408 = zext i8 %407 to i16
  store i16 %408, ptr %15, align 4
  %409 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %409, align 2
  %410 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %410, align 4
  %411 = load ptr, ptr %403, align 4
  %412 = call i32 @i2c_transfer(ptr noundef %411, ptr noundef nonnull %15, i32 noundef 1) #10
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %416, label %414

414:                                              ; preds = %401
  %415 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 109, i32 noundef %412) #11
  br label %416

416:                                              ; preds = %414, %401
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #10
  %417 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  %418 = load i32, ptr %417, align 4
  %419 = add i32 %418, -1
  %420 = icmp ult i32 %419, 9
  br i1 %420, label %421, label %612

421:                                              ; preds = %416
  %422 = trunc i32 %419 to i16
  %423 = lshr i16 343, %422
  %424 = and i16 %423, 1
  %425 = icmp eq i16 %424, 0
  br i1 %425, label %612, label %426

426:                                              ; preds = %421
  %427 = getelementptr inbounds [9 x i8], ptr @switch.table.zl10353_set_parameters, i32 0, i32 %419
  %428 = load i8, ptr %427, align 1
  %429 = getelementptr inbounds [9 x i8], ptr @switch.table.zl10353_set_parameters.8, i32 0, i32 %419
  %430 = load i8, ptr %429, align 1
  %431 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 12
  %432 = load i32, ptr %431, align 4
  switch i32 %432, label %612 [
    i32 2, label %433
    i32 3, label %435
    i32 5, label %437
    i32 7, label %439
    i32 1, label %444
    i32 9, label %444
    i32 0, label %441
  ]

433:                                              ; preds = %426
  %434 = or i8 %428, 16
  br label %444

435:                                              ; preds = %426
  %436 = or i8 %428, 32
  br label %444

437:                                              ; preds = %426
  %438 = or i8 %428, 48
  br label %444

439:                                              ; preds = %426
  %440 = or i8 %428, 64
  br label %444

441:                                              ; preds = %426
  %442 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  %443 = load i32, ptr %442, align 4
  switch i32 %443, label %612 [
    i32 4, label %444
    i32 0, label %444
  ]

444:                                              ; preds = %441, %441, %439, %437, %435, %433, %426, %426
  %445 = phi i8 [ %428, %441 ], [ %428, %426 ], [ %428, %426 ], [ %440, %439 ], [ %438, %437 ], [ %436, %435 ], [ %434, %433 ], [ %428, %441 ]
  %446 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %447 = load i32, ptr %446, align 4
  switch i32 %447, label %612 [
    i32 0, label %452
    i32 6, label %448
    i32 1, label %448
    i32 3, label %450
  ]

448:                                              ; preds = %444, %444
  %449 = or i8 %430, 32
  br label %452

450:                                              ; preds = %444
  %451 = or i8 %430, 64
  br label %452

452:                                              ; preds = %450, %448, %444
  %453 = phi i8 [ %451, %450 ], [ %449, %448 ], [ %430, %444 ]
  %454 = load i32, ptr %114, align 4
  switch i32 %454, label %612 [
    i32 0, label %457
    i32 2, label %457
    i32 1, label %455
  ]

455:                                              ; preds = %452
  %456 = or i8 %445, 1
  br label %457

457:                                              ; preds = %455, %452, %452
  %458 = phi i8 [ %456, %455 ], [ %445, %452 ], [ %445, %452 ]
  %459 = load i32, ptr %118, align 4
  switch i32 %459, label %612 [
    i32 0, label %466
    i32 4, label %466
    i32 1, label %460
    i32 2, label %462
    i32 3, label %464
  ]

460:                                              ; preds = %457
  %461 = or i8 %458, 4
  br label %466

462:                                              ; preds = %457
  %463 = or i8 %458, 8
  br label %466

464:                                              ; preds = %457
  %465 = or i8 %458, 12
  br label %466

466:                                              ; preds = %464, %462, %460, %457, %457
  %467 = phi i8 [ %465, %464 ], [ %463, %462 ], [ %461, %460 ], [ %458, %457 ], [ %458, %457 ]
  %468 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  %469 = load i32, ptr %468, align 4
  switch i32 %469, label %612 [
    i32 4, label %476
    i32 0, label %476
    i32 1, label %470
    i32 2, label %472
    i32 3, label %474
  ]

470:                                              ; preds = %466
  %471 = or i8 %453, 4
  br label %476

472:                                              ; preds = %466
  %473 = or i8 %453, 8
  br label %476

474:                                              ; preds = %466
  %475 = or i8 %453, 12
  br label %476

476:                                              ; preds = %474, %472, %470, %466, %466
  %477 = phi i8 [ %475, %474 ], [ %473, %472 ], [ %471, %470 ], [ %453, %466 ], [ %453, %466 ]
  %478 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i8 110, ptr %12, align 2
  %479 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %477, ptr %479, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %480 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %480, align 4, !annotation !8
  %481 = getelementptr inbounds %struct.zl10353_state, ptr %478, i32 0, i32 2
  %482 = load i8, ptr %481, align 4
  %483 = zext i8 %482 to i16
  store i16 %483, ptr %13, align 4
  %484 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %484, align 2
  %485 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %485, align 4
  %486 = load ptr, ptr %478, align 4
  %487 = call i32 @i2c_transfer(ptr noundef %486, ptr noundef nonnull %13, i32 noundef 1) #10
  %488 = icmp eq i32 %487, 1
  br i1 %488, label %491, label %489

489:                                              ; preds = %476
  %490 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 110, i32 noundef %487) #11
  br label %491

491:                                              ; preds = %489, %476
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  %492 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i8 111, ptr %10, align 2
  %493 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 %467, ptr %493, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %494 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %494, align 4, !annotation !8
  %495 = getelementptr inbounds %struct.zl10353_state, ptr %492, i32 0, i32 2
  %496 = load i8, ptr %495, align 4
  %497 = zext i8 %496 to i16
  store i16 %497, ptr %11, align 4
  %498 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %498, align 2
  %499 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %499, align 4
  %500 = load ptr, ptr %492, align 4
  %501 = call i32 @i2c_transfer(ptr noundef %500, ptr noundef nonnull %11, i32 noundef 1) #10
  %502 = icmp eq i32 %501, 1
  br i1 %502, label %505, label %503

503:                                              ; preds = %491
  %504 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 111, i32 noundef %501) #11
  br label %505

505:                                              ; preds = %503, %491
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  %506 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %507 = load ptr, ptr %506, align 4
  %508 = icmp eq ptr %507, null
  br i1 %508, label %511, label %509

509:                                              ; preds = %505
  %510 = call i32 %507(ptr noundef %0, i32 noundef 0) #10
  br label %511

511:                                              ; preds = %509, %505
  %512 = getelementptr inbounds %struct.zl10353_state, ptr %53, i32 0, i32 2, i32 3
  %513 = load i32, ptr %512, align 4
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %525, label %515

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %517 = load ptr, ptr %516, align 4
  %518 = icmp eq ptr %517, null
  br i1 %518, label %561, label %519

519:                                              ; preds = %515
  %520 = call i32 %517(ptr noundef %0) #10
  %521 = load ptr, ptr %506, align 4
  %522 = icmp eq ptr %521, null
  br i1 %522, label %561, label %523

523:                                              ; preds = %519
  %524 = call i32 %521(ptr noundef %0, i32 noundef 0) #10
  br label %561

525:                                              ; preds = %511
  %526 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 15
  %527 = load ptr, ptr %526, align 4
  %528 = icmp eq ptr %527, null
  br i1 %528, label %561, label %529

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, ptr %50, i32 1
  %531 = call i32 %527(ptr noundef %0, ptr noundef %530, i32 noundef 5) #10
  %532 = load i8, ptr %530, align 1
  %533 = shl i8 %532, 1
  store i8 %533, ptr %530, align 1
  %534 = getelementptr inbounds i8, ptr %8, i32 1
  %535 = getelementptr inbounds i8, ptr %9, i32 4
  %536 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %537 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  br label %538

538:                                              ; preds = %558, %529
  %539 = phi i32 [ 0, %529 ], [ %545, %558 ]
  %540 = icmp eq i32 %539, 5
  br i1 %540, label %561, label %541

541:                                              ; preds = %538
  %542 = load i8, ptr %50, align 1
  %543 = trunc i32 %539 to i8
  %544 = add i8 %542, %543
  %545 = add nuw nsw i32 %539, 1
  %546 = getelementptr i8, ptr %50, i32 %545
  %547 = load i8, ptr %546, align 1
  %548 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 %544, ptr %8, align 2
  store i8 %547, ptr %534, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  store i32 2, ptr %535, align 4, !annotation !8
  %549 = getelementptr inbounds %struct.zl10353_state, ptr %548, i32 0, i32 2
  %550 = load i8, ptr %549, align 4
  %551 = zext i8 %550 to i16
  store i16 %551, ptr %9, align 4
  store i16 0, ptr %536, align 2
  store ptr %8, ptr %537, align 4
  %552 = load ptr, ptr %548, align 4
  %553 = call i32 @i2c_transfer(ptr noundef %552, ptr noundef nonnull %9, i32 noundef 1) #10
  %554 = icmp eq i32 %553, 1
  br i1 %554, label %558, label %555

555:                                              ; preds = %541
  %556 = zext i8 %544 to i32
  %557 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %556, i32 noundef %553) #11
  br label %558

558:                                              ; preds = %555, %541
  %559 = phi i32 [ %553, %555 ], [ 0, %541 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %538, label %561

561:                                              ; preds = %558, %538, %525, %523, %519, %515
  %562 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 95, ptr %6, align 2
  %563 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 19, ptr %563, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %564 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %564, align 4, !annotation !8
  %565 = getelementptr inbounds %struct.zl10353_state, ptr %562, i32 0, i32 2
  %566 = load i8, ptr %565, align 4
  %567 = zext i8 %566 to i16
  store i16 %567, ptr %7, align 4
  %568 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %568, align 2
  %569 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %569, align 4
  %570 = load ptr, ptr %562, align 4
  %571 = call i32 @i2c_transfer(ptr noundef %570, ptr noundef nonnull %7, i32 noundef 1) #10
  %572 = icmp eq i32 %571, 1
  br i1 %572, label %575, label %573

573:                                              ; preds = %561
  %574 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 95, i32 noundef %571) #11
  br label %575

575:                                              ; preds = %573, %561
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  %576 = load i32, ptr %512, align 4
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %582

578:                                              ; preds = %575
  %579 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 15
  %580 = load ptr, ptr %579, align 4
  %581 = icmp eq ptr %580, null
  br i1 %581, label %582, label %597

582:                                              ; preds = %578, %575
  %583 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 113, ptr %4, align 2
  %584 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 1, ptr %584, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %585 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %585, align 4, !annotation !8
  %586 = getelementptr inbounds %struct.zl10353_state, ptr %583, i32 0, i32 2
  %587 = load i8, ptr %586, align 4
  %588 = zext i8 %587 to i16
  store i16 %588, ptr %5, align 4
  %589 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %589, align 2
  %590 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %590, align 4
  %591 = load ptr, ptr %583, align 4
  %592 = call i32 @i2c_transfer(ptr noundef %591, ptr noundef nonnull %5, i32 noundef 1) #10
  %593 = icmp eq i32 %592, 1
  br i1 %593, label %596, label %594

594:                                              ; preds = %582
  %595 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 113, i32 noundef %592) #11
  br label %596

596:                                              ; preds = %594, %582
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  br label %612

597:                                              ; preds = %578
  %598 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 112, ptr %2, align 2
  %599 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 1, ptr %599, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %600 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %600, align 4, !annotation !8
  %601 = getelementptr inbounds %struct.zl10353_state, ptr %598, i32 0, i32 2
  %602 = load i8, ptr %601, align 4
  %603 = zext i8 %602 to i16
  store i16 %603, ptr %3, align 4
  %604 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %604, align 2
  %605 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %605, align 4
  %606 = load ptr, ptr %598, align 4
  %607 = call i32 @i2c_transfer(ptr noundef %606, ptr noundef nonnull %3, i32 noundef 1) #10
  %608 = icmp eq i32 %607, 1
  br i1 %608, label %611, label %609

609:                                              ; preds = %597
  %610 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 112, i32 noundef %607) #11
  br label %611

611:                                              ; preds = %609, %597
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %612

612:                                              ; preds = %611, %596, %466, %457, %452, %444, %441, %426, %421, %416
  %613 = phi i32 [ -22, %416 ], [ -22, %441 ], [ -22, %426 ], [ -22, %444 ], [ -22, %452 ], [ -22, %457 ], [ -22, %466 ], [ 0, %611 ], [ 0, %596 ], [ -22, %421 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %50) #10
  ret i32 %613
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @zl10353_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 1000, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10353_get_parameters(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [1 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 6, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %17 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #10, !annotation !8
  %18 = getelementptr inbounds %struct.zl10353_state, ptr %16, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %14, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %21, align 2
  store i16 1, ptr %17, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  store i16 %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %26, align 4
  %27 = load ptr, ptr %16, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %14, i32 noundef 2) #10
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 6, i32 noundef %28) #11
  br label %35

32:                                               ; preds = %2
  %33 = load i8, ptr %13, align 1
  %34 = zext i8 %33 to i32
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %28, %30 ], [ %34, %32 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 9, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %37 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %37, i8 0, i32 16, i1 false) #10, !annotation !8
  %38 = load i8, ptr %18, align 4
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %11, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %40, align 2
  store i16 1, ptr %37, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %39, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %45, align 4
  %46 = load ptr, ptr %16, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %11, i32 noundef 2) #10
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %51, label %49

49:                                               ; preds = %35
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 9, i32 noundef %47) #11
  br label %54

51:                                               ; preds = %35
  %52 = load i8, ptr %10, align 1
  %53 = zext i8 %52 to i32
  br label %54

54:                                               ; preds = %51, %49
  %55 = phi i32 [ %47, %49 ], [ %53, %51 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %56 = icmp slt i32 %36, 0
  %57 = icmp slt i32 %55, 0
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %142, label %59

59:                                               ; preds = %54
  %60 = and i32 %36, 32
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %55, 16
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %142, label %65

65:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 29, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %66 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %66, i8 0, i32 16, i1 false) #10, !annotation !8
  %67 = load i8, ptr %18, align 4
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %8, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %69, align 2
  store i16 1, ptr %66, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %70, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %68, ptr %71, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %73, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %74, align 4
  %75 = load ptr, ptr %16, align 4
  %76 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %8, i32 noundef 2) #10
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %80, label %78

78:                                               ; preds = %65
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 29, i32 noundef %76) #11
  br label %83

80:                                               ; preds = %65
  %81 = load i8, ptr %7, align 1
  %82 = zext i8 %81 to i32
  br label %83

83:                                               ; preds = %80, %78
  %84 = phi i32 [ %76, %78 ], [ %82, %80 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %85 = shl i32 %84, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 30, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %86 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %86, i8 0, i32 16, i1 false) #10, !annotation !8
  %87 = load i8, ptr %18, align 4
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %5, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %89, align 2
  store i16 1, ptr %86, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %90, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %88, ptr %91, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %92, align 2
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %93, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %94, align 4
  %95 = load ptr, ptr %16, align 4
  %96 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %5, i32 noundef 2) #10
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %100, label %98

98:                                               ; preds = %83
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 30, i32 noundef %96) #11
  br label %103

100:                                              ; preds = %83
  %101 = load i8, ptr %4, align 1
  %102 = zext i8 %101 to i32
  br label %103

103:                                              ; preds = %100, %98
  %104 = phi i32 [ %96, %98 ], [ %102, %100 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %105 = or i32 %104, %85
  %106 = lshr i32 %105, 7
  %107 = and i32 %106, 7
  %108 = getelementptr [8 x i8], ptr @zl10353_get_parameters.tps_fec_to_api, i32 0, i32 %107
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %110, ptr %111, align 4
  %112 = lshr i32 %104, 4
  %113 = and i32 %112, 7
  %114 = getelementptr [8 x i8], ptr @zl10353_get_parameters.tps_fec_to_api, i32 0, i32 %113
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %116, ptr %117, align 4
  %118 = lshr i32 %105, 13
  %119 = and i32 %118, 3
  %120 = icmp eq i32 %119, 3
  br i1 %120, label %124, label %121

121:                                              ; preds = %103
  %122 = getelementptr inbounds [3 x i32], ptr @switch.table.zl10353_get_parameters, i32 0, i32 %119
  %123 = load i32, ptr %122, align 4
  br label %124

124:                                              ; preds = %121, %103
  %125 = phi i32 [ %123, %121 ], [ 6, %103 ]
  %126 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %125, ptr %126, align 4
  %127 = and i32 %104, 1
  %128 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %127, ptr %128, align 4
  %129 = lshr i32 %104, 2
  %130 = and i32 %129, 3
  %131 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %130, ptr %131, align 4
  %132 = lshr i32 %105, 10
  %133 = and i32 %132, 7
  %134 = call i32 @llvm.umin.i32(i32 %133, i32 4)
  %135 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.zl10353_state, ptr %16, i32 0, i32 5
  %137 = load i32, ptr %136, align 4
  store i32 %137, ptr %1, align 4
  %138 = getelementptr inbounds %struct.zl10353_state, ptr %16, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 2, ptr %141, align 4
  br label %142

142:                                              ; preds = %124, %59, %54
  %143 = phi i32 [ 0, %124 ], [ -121, %54 ], [ -22, %59 ]
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10353_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 6, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %14 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = getelementptr inbounds %struct.zl10353_state, ptr %13, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %11, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %18, align 2
  store i16 1, ptr %14, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %17, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %23, align 4
  %24 = load ptr, ptr %13, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %11, i32 noundef 2) #10
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i8, ptr %10, align 1
  %29 = zext i8 %28 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  br label %33

30:                                               ; preds = %2
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 6, i32 noundef %25) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %32 = icmp slt i32 %25, 0
  br i1 %32, label %93, label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %29, %27 ], [ %25, %30 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 7, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %35 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %35, i8 0, i32 16, i1 false) #10, !annotation !8
  %36 = load i8, ptr %15, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %8, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %38, align 2
  store i16 1, ptr %35, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %37, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %43, align 4
  %44 = load ptr, ptr %13, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %8, i32 noundef 2) #10
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load i8, ptr %7, align 1
  %49 = zext i8 %48 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  br label %53

50:                                               ; preds = %33
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 7, i32 noundef %45) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %52 = icmp slt i32 %45, 0
  br i1 %52, label %93, label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %45, %50 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 8, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %55 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %55, i8 0, i32 16, i1 false) #10, !annotation !8
  %56 = load i8, ptr %15, align 4
  %57 = zext i8 %56 to i16
  store i16 %57, ptr %5, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %58, align 2
  store i16 1, ptr %55, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %59, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %57, ptr %60, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %63, align 4
  %64 = load ptr, ptr %13, align 4
  %65 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %5, i32 noundef 2) #10
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %70

67:                                               ; preds = %53
  %68 = load i8, ptr %4, align 1
  %69 = zext i8 %68 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %73

70:                                               ; preds = %53
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 8, i32 noundef %65) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %72 = icmp slt i32 %65, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %70, %67
  %74 = phi i32 [ %69, %67 ], [ %65, %70 ]
  %75 = lshr i32 %34, 1
  %76 = and i32 %75, 2
  %77 = shl nuw i32 %34, 1
  %78 = and i32 %77, 4
  %79 = or i32 %78, %76
  %80 = lshr i32 %34, 1
  %81 = and i32 %80, 16
  %82 = or i32 %81, %79
  %83 = lshr i32 %54, 1
  %84 = and i32 %83, 8
  %85 = or i32 %84, %82
  %86 = lshr i32 %74, 6
  %87 = and i32 %86, 1
  %88 = or i32 %87, %85
  store i32 %88, ptr %1, align 4
  %89 = or i32 %84, %79
  %90 = icmp eq i32 %89, 14
  br i1 %90, label %93, label %91

91:                                               ; preds = %73
  %92 = and i32 %88, 15
  store i32 %92, ptr %1, align 4
  br label %93

93:                                               ; preds = %91, %73, %70, %50, %30
  %94 = phi i32 [ -121, %30 ], [ -121, %50 ], [ -121, %70 ], [ 0, %91 ], [ 0, %73 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10353_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [1 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 17, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %14 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = getelementptr inbounds %struct.zl10353_state, ptr %13, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %11, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %18, align 2
  store i16 1, ptr %14, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %17, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %23, align 4
  %24 = load ptr, ptr %13, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %11, i32 noundef 2) #10
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 17, i32 noundef %25) #11
  br label %32

29:                                               ; preds = %2
  %30 = load i8, ptr %10, align 1
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %25, %27 ], [ %31, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 18, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %34 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %34, i8 0, i32 16, i1 false) #10, !annotation !8
  %35 = load i8, ptr %15, align 4
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %8, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %37, align 2
  store i16 1, ptr %34, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %36, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %42, align 4
  %43 = load ptr, ptr %13, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %8, i32 noundef 2) #10
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %48, label %46

46:                                               ; preds = %32
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 18, i32 noundef %44) #11
  br label %51

48:                                               ; preds = %32
  %49 = load i8, ptr %7, align 1
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %48, %46
  %52 = phi i32 [ %44, %46 ], [ %50, %48 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 19, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %53 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %53, i8 0, i32 16, i1 false) #10, !annotation !8
  %54 = load i8, ptr %15, align 4
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %5, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %56, align 2
  store i16 1, ptr %53, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %55, ptr %58, align 4
  %59 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %59, align 2
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %61, align 4
  %62 = load ptr, ptr %13, align 4
  %63 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %5, i32 noundef 2) #10
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %67, label %65

65:                                               ; preds = %51
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 19, i32 noundef %63) #11
  br label %70

67:                                               ; preds = %51
  %68 = load i8, ptr %4, align 1
  %69 = zext i8 %68 to i32
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi i32 [ %63, %65 ], [ %69, %67 ]
  %72 = shl i32 %33, 16
  %73 = shl i32 %52, 8
  %74 = or i32 %73, %72
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %75 = or i32 %74, %71
  store i32 %75, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10353_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 10, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = getelementptr inbounds %struct.zl10353_state, ptr %10, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %8, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %15, align 2
  store i16 1, ptr %11, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %14, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %20, align 4
  %21 = load ptr, ptr %10, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %8, i32 noundef 2) #10
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 10, i32 noundef %22) #11
  br label %29

26:                                               ; preds = %2
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i32 [ %22, %24 ], [ %28, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 11, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %31 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %31, i8 0, i32 16, i1 false) #10, !annotation !8
  %32 = load i8, ptr %12, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %5, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %34, align 2
  store i16 1, ptr %31, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %33, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %39, align 4
  %40 = load ptr, ptr %10, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %5, i32 noundef 2) #10
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %45, label %43

43:                                               ; preds = %29
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 11, i32 noundef %41) #11
  br label %48

45:                                               ; preds = %29
  %46 = load i8, ptr %4, align 1
  %47 = zext i8 %46 to i32
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %41, %43 ], [ %47, %45 ]
  %50 = shl i32 %30, 10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %51 = shl i32 %49, 2
  %52 = or i32 %51, %50
  %53 = trunc i32 %52 to i16
  %54 = xor i16 %53, -4
  store i16 %54, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10353_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @debug_regs, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call fastcc void @zl10353_dump_regs(ptr noundef %0)
  br label %11

11:                                               ; preds = %10, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 16, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 16, i1 false) #10, !annotation !8
  %13 = getelementptr inbounds %struct.zl10353_state, ptr %7, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %12, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %21, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 2) #10
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %11
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 16, i32 noundef %23) #11
  br label %30

27:                                               ; preds = %11
  %28 = load i8, ptr %4, align 1
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %23, %25 ], [ %29, %27 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %32 = and i32 %31, 255
  %33 = mul nuw nsw i32 %32, 10
  %34 = lshr i32 %33, 3
  %35 = trunc i32 %34 to i16
  store i16 %35, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10353_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 20, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = getelementptr inbounds %struct.zl10353_state, ptr %10, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %8, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %15, align 2
  store i16 1, ptr %11, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %14, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %20, align 4
  %21 = load ptr, ptr %10, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %8, i32 noundef 2) #10
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 20, i32 noundef %22) #11
  br label %29

26:                                               ; preds = %2
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i32 [ %22, %24 ], [ %28, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 21, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %31 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %31, i8 0, i32 16, i1 false) #10, !annotation !8
  %32 = load i8, ptr %12, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %5, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %34, align 2
  store i16 1, ptr %31, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %33, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %39, align 4
  %40 = load ptr, ptr %10, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %5, i32 noundef 2) #10
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %45, label %43

43:                                               ; preds = %29
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 21, i32 noundef %41) #11
  br label %48

45:                                               ; preds = %29
  %46 = load i8, ptr %4, align 1
  %47 = zext i8 %46 to i32
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %41, %43 ], [ %47, %45 ]
  %50 = shl i32 %30, 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %51 = or i32 %49, %50
  %52 = getelementptr inbounds %struct.zl10353_state, ptr %10, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %51
  store i32 %54, ptr %52, align 4
  store i32 %54, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zl10353_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zl10353_state, ptr %6, i32 0, i32 2, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = icmp eq i32 %1, 0
  %13 = select i1 %12, i8 10, i8 26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 98, ptr %3, align 2
  %14 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %13, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %15 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.zl10353_state, ptr %6, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %4, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %20, align 4
  %21 = load ptr, ptr %6, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %4, i32 noundef 1) #10
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %26, label %24

24:                                               ; preds = %11
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 98, i32 noundef %22) #11
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi i32 [ %22, %24 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i32 [ %27, %26 ], [ 0, %2 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @zl10353_dump_regs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  %8 = getelementptr inbounds %struct.zl10353_state, ptr %6, i32 0, i32 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #10, !annotation !8
  %16 = load i8, ptr %8, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %4, align 4
  store i16 0, ptr %9, align 2
  store i16 1, ptr %7, align 4
  store ptr %2, ptr %10, align 4
  store i16 %17, ptr %11, align 4
  store i16 1, ptr %12, align 2
  store i16 1, ptr %13, align 4
  store ptr %3, ptr %14, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %4, i32 noundef 2) #10
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef 0, i32 noundef %19) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %23 = icmp sgt i32 %19, -1
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %33

26:                                               ; preds = %1
  %27 = load i8, ptr %3, align 1
  %28 = zext i8 %27 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i32 [ %28, %26 ], [ %19, %21 ]
  %31 = and i32 %30, 255
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %31) #11
  br label %33

33:                                               ; preds = %29, %24
  br label %34

34:                                               ; preds = %60, %33
  %35 = phi i32 [ %62, %60 ], [ 1, %33 ]
  %36 = and i32 %35, 15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %35) #11
  br label %41

41:                                               ; preds = %38, %34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  %42 = trunc i32 %35 to i8
  store i8 %42, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 16, i1 false) #10, !annotation !8
  %43 = load i8, ptr %8, align 4
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %4, align 4
  store i16 0, ptr %9, align 2
  store i16 1, ptr %7, align 4
  store ptr %2, ptr %10, align 4
  store i16 %44, ptr %11, align 4
  store i16 1, ptr %12, align 2
  store i16 1, ptr %13, align 4
  store ptr %3, ptr %14, align 4
  %45 = load ptr, ptr %6, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %4, i32 noundef 2) #10
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i8, ptr %3, align 1
  %50 = zext i8 %49 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  br label %54

51:                                               ; preds = %41
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.zl10353_read_register, i32 noundef %35, i32 noundef %46) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %53 = icmp sgt i32 %46, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51, %48
  %55 = phi i32 [ %50, %48 ], [ %46, %51 ]
  %56 = and i32 %55, 255
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %56) #11
  br label %60

58:                                               ; preds = %51
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %60

60:                                               ; preds = %58, %54
  %61 = icmp eq i32 %35, 255
  %62 = add nuw nsw i32 %35, 1
  br i1 %61, label %63, label %34, !llvm.loop !11

63:                                               ; preds = %60
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148339340, i64 2148339620, i64 2148339954, i64 2148340288}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.peeled.count", i32 1}
