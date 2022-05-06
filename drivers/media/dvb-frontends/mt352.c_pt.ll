; ModuleID = '/llk/IR/drivers/media/dvb-frontends/mt352.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mt352.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt352_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt352_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt352_attach:\09\09\09\09\09"
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mt352_state = type { ptr, %struct.dvb_frontend, %struct.mt352_config }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@mt352_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Zarlink MT352 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @mt352_release, ptr null, ptr @mt352_init, ptr @mt352_sleep, ptr null, ptr null, ptr @_mt352_write, ptr null, ptr null, ptr @mt352_set_parameters, ptr @mt352_get_tune_settings, ptr @mt352_get_parameters, ptr @mt352_read_status, ptr @mt352_read_ber, ptr @mt352_read_signal_strength, ptr @mt352_read_snr, ptr @mt352_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [51 x i8] c"description=Zarlink MT352 DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [54 x i8] c"author=Holger Waechtler, Daniel Mack, Antonio Mancuso\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_mt352_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt352_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt352_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt352_attach to i32), ptr @__kstrtab_mt352_attach, ptr @__kstrtabns_mt352_attach }, section "___ksymtab+mt352_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: readreg error (reg=%d, ret==%i)\0A\00", align 1
@__func__.mt352_read_register = private unnamed_addr constant [20 x i8] c"mt352_read_register\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\017mt352: %s: hello\0A\00", align 1
@__func__.mt352_init = private unnamed_addr constant [11 x i8] c"mt352_init\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"mt352_write() to reg %x failed (err = %d)!\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\017mt352: %s: bw %d, adc_clock %d => 0x%x\0A\00", align 1
@__func__.mt352_calc_nominal_rate = private unnamed_addr constant [24 x i8] c"mt352_calc_nominal_rate\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"\017mt352: %s: if2 %d, ife %d, adc_clock %d => %d / 0x%x\0A\00", align 1
@__func__.mt352_calc_input_freq = private unnamed_addr constant [22 x i8] c"mt352_calc_input_freq\00", align 1
@mt352_get_parameters.tps_fec_to_api = internal unnamed_addr constant [8 x i8] c"\01\02\03\05\07\09\09\09", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_mt352_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.mt352_set_parameters = private unnamed_addr constant [9 x i32] [i32 0, i32 128, i32 256, i32 128, i32 384, i32 128, i32 512, i32 128, i32 0], align 4
@switch.table.mt352_get_parameters = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mt352_attach(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1064) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  store ptr %1, ptr %7, align 8
  %10 = getelementptr inbounds %struct.mt352_state, ptr %7, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %10, ptr noundef align 4 dereferenceable(20) %0, i32 20, i1 false)
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
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 127, i32 noundef %20) #11
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
  %29 = icmp eq i32 %28, 19
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.mt352_state, ptr %7, i32 0, i32 1
  %32 = getelementptr inbounds %struct.mt352_state, ptr %7, i32 0, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %32, ptr noundef nonnull align 4 dereferenceable(544) @mt352_ops, i32 544, i1 false)
  %33 = getelementptr inbounds %struct.mt352_state, ptr %7, i32 0, i32 1, i32 3
  store ptr %7, ptr %33, align 4
  br label %35

34:                                               ; preds = %27, %2
  call void @kfree(ptr noundef %7) #10
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi ptr [ null, %34 ], [ %31, %30 ]
  ret ptr %36
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
define internal void @mt352_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt352_init(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mt352_init) #11
  br label %16

16:                                               ; preds = %14, %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 -119, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  %17 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #10, !annotation !8
  %18 = getelementptr inbounds %struct.mt352_state, ptr %11, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %9, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %21, align 2
  store i16 1, ptr %17, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  store i16 %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %8, ptr %26, align 4
  %27 = load ptr, ptr %11, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %9, i32 noundef 2) #10
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %32, label %30

30:                                               ; preds = %16
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 137, i32 noundef %28) #11
  br label %35

32:                                               ; preds = %16
  %33 = load i8, ptr %8, align 1
  %34 = zext i8 %33 to i32
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %28, %30 ], [ %34, %32 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %37 = and i32 %36, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 -118, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %40 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %40, i8 0, i32 16, i1 false) #10, !annotation !8
  %41 = load i8, ptr %18, align 4
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %6, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %43, align 2
  store i16 1, ptr %40, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %42, ptr %45, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %48, align 4
  %49 = load ptr, ptr %11, align 4
  %50 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %6, i32 noundef 2) #10
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %54, label %52

52:                                               ; preds = %39
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 138, i32 noundef %50) #11
  br label %57

54:                                               ; preds = %39
  %55 = load i8, ptr %5, align 1
  %56 = zext i8 %55 to i32
  br label %57

57:                                               ; preds = %54, %52
  %58 = phi i32 [ %50, %52 ], [ %56, %54 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %59 = and i32 %58, 32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %57, %35
  %62 = getelementptr inbounds i8, ptr %2, i32 1
  %63 = getelementptr inbounds i8, ptr %3, i32 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %66 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 80, ptr %2, align 2
  store i8 -64, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %63, align 4, !annotation !8
  %67 = getelementptr inbounds %struct.mt352_state, ptr %66, i32 0, i32 2
  %68 = load i8, ptr %67, align 4
  %69 = zext i8 %68 to i16
  store i16 %69, ptr %3, align 4
  store i16 0, ptr %64, align 2
  store ptr %2, ptr %65, align 4
  %70 = load ptr, ptr %66, align 4
  %71 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %3, i32 noundef 1) #10
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %76

74:                                               ; preds = %61
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 80, i32 noundef %71) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %76

76:                                               ; preds = %74, %73
  %77 = getelementptr inbounds %struct.mt352_state, ptr %11, i32 0, i32 2, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef %0) #10
  br label %80

80:                                               ; preds = %76, %57
  %81 = phi i32 [ %79, %76 ], [ 0, %57 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt352_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %2, i32 1
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 -119, ptr %2, align 2
  store i8 32, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %6, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.mt352_state, ptr %9, i32 0, i32 2
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
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 137, i32 noundef %14) #11
  %19 = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br i1 %19, label %20, label %31

20:                                               ; preds = %17, %16
  %21 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 -118, ptr %2, align 2
  store i8 8, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %6, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.mt352_state, ptr %21, i32 0, i32 2
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
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 138, i32 noundef %26) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %31

31:                                               ; preds = %29, %28, %17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_mt352_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  %24 = getelementptr inbounds %struct.mt352_state, ptr %23, i32 0, i32 2
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
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %31, i32 noundef %28) #11
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
define internal i32 @mt352_set_parameters(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [13 x i8], align 1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %10) #10
  %13 = getelementptr inbounds i8, ptr %10, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %13, i8 0, i32 5, i1 false), !annotation !8
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  %17 = icmp ult i32 %16, 9
  br i1 %17, label %18, label %243

18:                                               ; preds = %1
  %19 = trunc i32 %16 to i16
  %20 = lshr i16 343, %19
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %243, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds [9 x i32], ptr @switch.table.mt352_set_parameters, i32 0, i32 %16
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 12
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %243 [
    i32 2, label %28
    i32 3, label %30
    i32 5, label %32
    i32 7, label %34
    i32 1, label %39
    i32 9, label %39
    i32 0, label %36
  ]

28:                                               ; preds = %23
  %29 = or i32 %25, 16
  br label %39

30:                                               ; preds = %23
  %31 = or i32 %25, 32
  br label %39

32:                                               ; preds = %23
  %33 = or i32 %25, 48
  br label %39

34:                                               ; preds = %23
  %35 = or i32 %25, 64
  br label %39

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  %38 = load i32, ptr %37, align 4
  switch i32 %38, label %243 [
    i32 4, label %39
    i32 0, label %39
  ]

39:                                               ; preds = %36, %36, %34, %32, %30, %28, %23, %23
  %40 = phi i32 [ %25, %36 ], [ %25, %23 ], [ %25, %23 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %25, %36 ]
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %42 = load i32, ptr %41, align 4
  switch i32 %42, label %243 [
    i32 0, label %47
    i32 6, label %43
    i32 1, label %43
    i32 3, label %45
  ]

43:                                               ; preds = %39, %39
  %44 = or i32 %40, 8192
  br label %47

45:                                               ; preds = %39
  %46 = or i32 %40, 16384
  br label %47

47:                                               ; preds = %45, %43, %39
  %48 = phi i32 [ %46, %45 ], [ %44, %43 ], [ %40, %39 ]
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  %50 = load i32, ptr %49, align 4
  switch i32 %50, label %243 [
    i32 0, label %53
    i32 2, label %53
    i32 1, label %51
  ]

51:                                               ; preds = %47
  %52 = or i32 %48, 1
  br label %53

53:                                               ; preds = %51, %47, %47
  %54 = phi i32 [ %52, %51 ], [ %48, %47 ], [ %48, %47 ]
  %55 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  %56 = load i32, ptr %55, align 4
  switch i32 %56, label %243 [
    i32 0, label %63
    i32 4, label %63
    i32 1, label %57
    i32 2, label %59
    i32 3, label %61
  ]

57:                                               ; preds = %53
  %58 = or i32 %54, 4
  br label %63

59:                                               ; preds = %53
  %60 = or i32 %54, 8
  br label %63

61:                                               ; preds = %53
  %62 = or i32 %54, 12
  br label %63

63:                                               ; preds = %61, %59, %57, %53, %53
  %64 = phi i32 [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], [ %54, %53 ], [ %54, %53 ]
  %65 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  %66 = load i32, ptr %65, align 4
  switch i32 %66, label %243 [
    i32 4, label %73
    i32 0, label %73
    i32 1, label %67
    i32 2, label %69
    i32 3, label %71
  ]

67:                                               ; preds = %63
  %68 = or i32 %64, 1024
  br label %73

69:                                               ; preds = %63
  %70 = or i32 %64, 2048
  br label %73

71:                                               ; preds = %63
  %72 = or i32 %64, 3072
  br label %73

73:                                               ; preds = %71, %69, %67, %63, %63
  %74 = phi i32 [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], [ %64, %63 ], [ %64, %63 ]
  store i8 81, ptr %10, align 1
  %75 = lshr i32 %74, 8
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds [13 x i8], ptr %10, i32 0, i32 1
  store i8 %76, ptr %77, align 1
  %78 = trunc i32 %74 to i8
  %79 = getelementptr inbounds [13 x i8], ptr %10, i32 0, i32 2
  store i8 %78, ptr %79, align 1
  %80 = getelementptr inbounds [13 x i8], ptr %10, i32 0, i32 3
  store i8 80, ptr %80, align 1
  %81 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds i8, ptr %10, i32 4
  %84 = icmp eq i32 %82, 7000000
  %85 = select i1 %84, i32 7, i32 8
  %86 = icmp eq i32 %82, 6000000
  %87 = select i1 %86, i32 6, i32 %85
  %88 = getelementptr inbounds %struct.mt352_state, ptr %12, i32 0, i32 2, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 20480, i32 %89
  %92 = shl nuw nsw i32 %87, 22
  %93 = udiv i32 %92, 56
  %94 = mul nuw nsw i32 %93, 1000
  %95 = udiv i32 %94, %91
  %96 = load i32, ptr @debug, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %73
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mt352_calc_nominal_rate, i32 noundef %87, i32 noundef %91, i32 noundef %95) #11
  %100 = load i32, ptr %88, align 4
  br label %101

101:                                              ; preds = %98, %73
  %102 = phi i32 [ %89, %73 ], [ %100, %98 ]
  %103 = lshr i32 %95, 8
  %104 = trunc i32 %103 to i8
  store i8 %104, ptr %83, align 1
  %105 = trunc i32 %95 to i8
  %106 = getelementptr inbounds i8, ptr %10, i32 5
  store i8 %105, ptr %106, align 1
  %107 = getelementptr inbounds i8, ptr %10, i32 6
  %108 = icmp eq i32 %102, 0
  %109 = select i1 %108, i32 20480, i32 %102
  %110 = getelementptr inbounds %struct.mt352_state, ptr %12, i32 0, i32 2, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 36167, i32 %111
  %114 = shl i32 %113, 1
  %115 = icmp slt i32 %109, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %101
  %117 = srem i32 %113, %109
  %118 = sub i32 %109, %117
  %119 = sdiv i32 %109, 2
  %120 = icmp sgt i32 %118, %119
  %121 = select i1 %120, i32 %117, i32 %118
  br label %122

122:                                              ; preds = %116, %101
  %123 = phi i32 [ %113, %101 ], [ %121, %116 ]
  %124 = mul i32 %123, -16374
  %125 = sdiv i32 %124, %109
  %126 = load i32, ptr @debug, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = and i32 %125, 16383
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mt352_calc_input_freq, i32 noundef %113, i32 noundef %123, i32 noundef %109, i32 noundef %125, i32 noundef %129) #11
  br label %131

131:                                              ; preds = %128, %122
  %132 = lshr i32 %125, 8
  %133 = trunc i32 %132 to i8
  store i8 %133, ptr %107, align 1
  %134 = trunc i32 %125 to i8
  %135 = getelementptr inbounds i8, ptr %10, i32 7
  store i8 %134, ptr %135, align 1
  %136 = getelementptr inbounds %struct.mt352_state, ptr %12, i32 0, i32 2, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %192, label %139

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %150, label %143

143:                                              ; preds = %139
  %144 = tail call i32 %141(ptr noundef %0) #10
  %145 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %143
  %149 = tail call i32 %146(ptr noundef %0, i32 noundef 0) #10
  br label %150

150:                                              ; preds = %148, %143, %139
  %151 = getelementptr inbounds i8, ptr %8, i32 1
  %152 = getelementptr inbounds i8, ptr %9, i32 4
  %153 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  br label %155

155:                                              ; preds = %174, %150
  %156 = phi i32 [ 0, %150 ], [ %161, %174 ]
  %157 = icmp eq i32 %156, 7
  br i1 %157, label %177, label %158

158:                                              ; preds = %155
  %159 = trunc i32 %156 to i8
  %160 = add i8 %159, 81
  %161 = add nuw nsw i32 %156, 1
  %162 = getelementptr i8, ptr %10, i32 %161
  %163 = load i8, ptr %162, align 1
  %164 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 %160, ptr %8, align 2
  store i8 %163, ptr %151, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  store i32 2, ptr %152, align 4, !annotation !8
  %165 = getelementptr inbounds %struct.mt352_state, ptr %164, i32 0, i32 2
  %166 = load i8, ptr %165, align 4
  %167 = zext i8 %166 to i16
  store i16 %167, ptr %9, align 4
  store i16 0, ptr %153, align 2
  store ptr %8, ptr %154, align 4
  %168 = load ptr, ptr %164, align 4
  %169 = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %9, i32 noundef 1) #10
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %174, label %171

171:                                              ; preds = %158
  %172 = zext i8 %160 to i32
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %172, i32 noundef %169) #11
  br label %174

174:                                              ; preds = %171, %158
  %175 = phi i32 [ %169, %171 ], [ 0, %158 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %155, label %177

177:                                              ; preds = %174, %155
  %178 = getelementptr inbounds i8, ptr %6, i32 1
  %179 = getelementptr inbounds i8, ptr %7, i32 4
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %182 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 94, ptr %6, align 2
  store i8 1, ptr %178, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  store i32 2, ptr %179, align 4, !annotation !8
  %183 = getelementptr inbounds %struct.mt352_state, ptr %182, i32 0, i32 2
  %184 = load i8, ptr %183, align 4
  %185 = zext i8 %184 to i16
  store i16 %185, ptr %7, align 4
  store i16 0, ptr %180, align 2
  store ptr %6, ptr %181, align 4
  %186 = load ptr, ptr %182, align 4
  %187 = call i32 @i2c_transfer(ptr noundef %186, ptr noundef nonnull %7, i32 noundef 1) #10
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %190

189:                                              ; preds = %177
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  br label %243

190:                                              ; preds = %177
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 94, i32 noundef %187) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  br label %243

192:                                              ; preds = %131
  %193 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 15
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %243, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds i8, ptr %10, i32 8
  %198 = call i32 %194(ptr noundef %0, ptr noundef %197, i32 noundef 5) #10
  %199 = load i8, ptr %197, align 1
  %200 = shl i8 %199, 1
  store i8 %200, ptr %197, align 1
  %201 = getelementptr inbounds i8, ptr %4, i32 1
  %202 = getelementptr inbounds i8, ptr %5, i32 4
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  br label %205

205:                                              ; preds = %225, %196
  %206 = phi i32 [ 0, %196 ], [ %212, %225 ]
  %207 = icmp eq i32 %206, 12
  br i1 %207, label %228, label %208

208:                                              ; preds = %205
  %209 = load i8, ptr %10, align 1
  %210 = trunc i32 %206 to i8
  %211 = add i8 %209, %210
  %212 = add nuw nsw i32 %206, 1
  %213 = getelementptr i8, ptr %10, i32 %212
  %214 = load i8, ptr %213, align 1
  %215 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 %211, ptr %4, align 2
  store i8 %214, ptr %201, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  store i32 2, ptr %202, align 4, !annotation !8
  %216 = getelementptr inbounds %struct.mt352_state, ptr %215, i32 0, i32 2
  %217 = load i8, ptr %216, align 4
  %218 = zext i8 %217 to i16
  store i16 %218, ptr %5, align 4
  store i16 0, ptr %203, align 2
  store ptr %4, ptr %204, align 4
  %219 = load ptr, ptr %215, align 4
  %220 = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %5, i32 noundef 1) #10
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %225, label %222

222:                                              ; preds = %208
  %223 = zext i8 %211 to i32
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %223, i32 noundef %220) #11
  br label %225

225:                                              ; preds = %222, %208
  %226 = phi i32 [ %220, %222 ], [ 0, %208 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %205, label %228

228:                                              ; preds = %225, %205
  %229 = getelementptr inbounds i8, ptr %2, i32 1
  %230 = getelementptr inbounds i8, ptr %3, i32 4
  %231 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %233 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 93, ptr %2, align 2
  store i8 1, ptr %229, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  store i32 2, ptr %230, align 4, !annotation !8
  %234 = getelementptr inbounds %struct.mt352_state, ptr %233, i32 0, i32 2
  %235 = load i8, ptr %234, align 4
  %236 = zext i8 %235 to i16
  store i16 %236, ptr %3, align 4
  store i16 0, ptr %231, align 2
  store ptr %2, ptr %232, align 4
  %237 = load ptr, ptr %233, align 4
  %238 = call i32 @i2c_transfer(ptr noundef %237, ptr noundef nonnull %3, i32 noundef 1) #10
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %241

240:                                              ; preds = %228
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %243

241:                                              ; preds = %228
  %242 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 93, i32 noundef %238) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %243

243:                                              ; preds = %241, %240, %192, %190, %189, %63, %53, %47, %39, %36, %23, %18, %1
  %244 = phi i32 [ -22, %1 ], [ -22, %36 ], [ -22, %23 ], [ -22, %39 ], [ -22, %47 ], [ -22, %53 ], [ -22, %63 ], [ 0, %192 ], [ 0, %240 ], [ 0, %241 ], [ 0, %189 ], [ 0, %190 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %10) #10
  ret i32 %244
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mt352_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 800, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt352_get_parameters(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #0 {
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
  %15 = alloca [1 x i8], align 1
  %16 = alloca [1 x i8], align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = alloca [1 x i8], align 1
  %19 = alloca [1 x i8], align 1
  %20 = alloca [2 x %struct.i2c_msg], align 4
  %21 = alloca [1 x i8], align 1
  %22 = alloca [1 x i8], align 1
  %23 = alloca [2 x %struct.i2c_msg], align 4
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #10
  store i8 0, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #10
  store i8 0, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #10
  %26 = getelementptr inbounds i8, ptr %23, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %26, i8 0, i32 16, i1 false) #10, !annotation !8
  %27 = getelementptr inbounds %struct.mt352_state, ptr %25, i32 0, i32 2
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %23, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %30, align 2
  store i16 1, ptr %26, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %21, ptr %31, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1
  store i16 %29, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 1
  store i16 1, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 2
  store i16 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 1, i32 3
  store ptr %22, ptr %35, align 4
  %36 = load ptr, ptr %25, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %23, i32 noundef 2) #10
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %41, label %39

39:                                               ; preds = %2
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 0, i32 noundef %37) #11
  br label %44

41:                                               ; preds = %2
  %42 = load i8, ptr %22, align 1
  %43 = zext i8 %42 to i32
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %37, %39 ], [ %43, %41 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #10
  %46 = and i32 %45, 192
  %47 = icmp eq i32 %46, 192
  br i1 %47, label %48, label %212

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  store i8 30, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #10
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #10
  %49 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %49, i8 0, i32 16, i1 false) #10, !annotation !8
  %50 = load i8, ptr %27, align 4
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %20, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %52, align 2
  store i16 1, ptr %49, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %18, ptr %53, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  store i16 %51, ptr %54, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %55, align 2
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %19, ptr %57, align 4
  %58 = load ptr, ptr %25, align 4
  %59 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %20, i32 noundef 2) #10
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %63, label %61

61:                                               ; preds = %48
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 30, i32 noundef %59) #11
  br label %66

63:                                               ; preds = %48
  %64 = load i8, ptr %19, align 1
  %65 = zext i8 %64 to i32
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i32 [ %59, %61 ], [ %65, %63 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  %68 = shl i32 %67, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #10
  store i8 31, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #10
  store i8 0, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #10
  %69 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %69, i8 0, i32 16, i1 false) #10, !annotation !8
  %70 = load i8, ptr %27, align 4
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %17, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %72, align 2
  store i16 1, ptr %69, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %73, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  store i16 %71, ptr %74, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %75, align 2
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %77, align 4
  %78 = load ptr, ptr %25, align 4
  %79 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %17, i32 noundef 2) #10
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %83, label %81

81:                                               ; preds = %66
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 31, i32 noundef %79) #11
  br label %86

83:                                               ; preds = %66
  %84 = load i8, ptr %16, align 1
  %85 = zext i8 %84 to i32
  br label %86

86:                                               ; preds = %83, %81
  %87 = phi i32 [ %79, %81 ], [ %85, %83 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #10
  %88 = or i32 %87, %68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 89, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  %89 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %89, i8 0, i32 16, i1 false) #10, !annotation !8
  %90 = load i8, ptr %27, align 4
  %91 = zext i8 %90 to i16
  store i16 %91, ptr %14, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %92, align 2
  store i16 1, ptr %89, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %12, ptr %93, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  store i16 %91, ptr %94, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %95, align 2
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %96, align 4
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %13, ptr %97, align 4
  %98 = load ptr, ptr %25, align 4
  %99 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %14, i32 noundef 2) #10
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %103, label %101

101:                                              ; preds = %86
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 89, i32 noundef %99) #11
  br label %106

103:                                              ; preds = %86
  %104 = load i8, ptr %13, align 1
  %105 = zext i8 %104 to i32
  br label %106

106:                                              ; preds = %103, %101
  %107 = phi i32 [ %99, %101 ], [ %105, %103 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  %108 = shl i32 %107, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 90, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %109 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %109, i8 0, i32 16, i1 false) #10, !annotation !8
  %110 = load i8, ptr %27, align 4
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %11, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %112, align 2
  store i16 1, ptr %109, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %9, ptr %113, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %111, ptr %114, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %115, align 2
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %116, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %117, align 4
  %118 = load ptr, ptr %25, align 4
  %119 = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %11, i32 noundef 2) #10
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %123, label %121

121:                                              ; preds = %106
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 90, i32 noundef %119) #11
  br label %126

123:                                              ; preds = %106
  %124 = load i8, ptr %10, align 1
  %125 = zext i8 %124 to i32
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi i32 [ %119, %121 ], [ %125, %123 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %128 = or i32 %127, %108
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 84, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %129 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %129, i8 0, i32 16, i1 false) #10, !annotation !8
  %130 = load i8, ptr %27, align 4
  %131 = zext i8 %130 to i16
  store i16 %131, ptr %8, align 4
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %132, align 2
  store i16 1, ptr %129, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %133, align 4
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %131, ptr %134, align 4
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %135, align 2
  %136 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %136, align 4
  %137 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %137, align 4
  %138 = load ptr, ptr %25, align 4
  %139 = call i32 @i2c_transfer(ptr noundef %138, ptr noundef nonnull %8, i32 noundef 2) #10
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %143, label %141

141:                                              ; preds = %126
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 84, i32 noundef %139) #11
  br label %146

143:                                              ; preds = %126
  %144 = load i8, ptr %7, align 1
  %145 = zext i8 %144 to i32
  br label %146

146:                                              ; preds = %143, %141
  %147 = phi i32 [ %139, %141 ], [ %145, %143 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %148 = lshr i32 %88, 7
  %149 = and i32 %148, 7
  %150 = getelementptr [8 x i8], ptr @mt352_get_parameters.tps_fec_to_api, i32 0, i32 %149
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %152, ptr %153, align 4
  %154 = lshr i32 %87, 4
  %155 = and i32 %154, 7
  %156 = getelementptr [8 x i8], ptr @mt352_get_parameters.tps_fec_to_api, i32 0, i32 %155
  %157 = load i8, ptr %156, align 1
  %158 = zext i8 %157 to i32
  %159 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %158, ptr %159, align 4
  %160 = lshr i32 %88, 13
  %161 = and i32 %160, 3
  %162 = icmp eq i32 %161, 3
  br i1 %162, label %166, label %163

163:                                              ; preds = %146
  %164 = getelementptr inbounds [3 x i32], ptr @switch.table.mt352_get_parameters, i32 0, i32 %161
  %165 = load i32, ptr %164, align 4
  br label %166

166:                                              ; preds = %163, %146
  %167 = phi i32 [ %165, %163 ], [ 6, %146 ]
  %168 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %167, ptr %168, align 4
  %169 = and i32 %87, 1
  %170 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %169, ptr %170, align 4
  %171 = lshr i32 %87, 2
  %172 = and i32 %171, 3
  %173 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %172, ptr %173, align 4
  %174 = lshr i32 %88, 10
  %175 = and i32 %174, 7
  %176 = call i32 @llvm.umin.i32(i32 %175, i32 4)
  %177 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %176, ptr %177, align 4
  %178 = and i32 %128, 65535
  %179 = mul nuw nsw i32 %178, 500
  %180 = add nsw i32 %179, -108500
  %181 = sdiv i32 %180, 3
  %182 = mul i32 %181, 1000
  store i32 %182, ptr %1, align 4
  %183 = trunc i32 %147 to i8
  %184 = icmp eq i8 %183, 100
  %185 = select i1 %184, i32 7000000, i32 6000000
  %186 = icmp eq i8 %183, 114
  %187 = select i1 %186, i32 8000000, i32 %185
  %188 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  store i32 %187, ptr %188, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 2, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %189 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %189, i8 0, i32 16, i1 false) #10, !annotation !8
  %190 = load i8, ptr %27, align 4
  %191 = zext i8 %190 to i16
  store i16 %191, ptr %5, align 4
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %192, align 2
  store i16 1, ptr %189, align 4
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %193, align 4
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %191, ptr %194, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %195, align 2
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %196, align 4
  %197 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %197, align 4
  %198 = load ptr, ptr %25, align 4
  %199 = call i32 @i2c_transfer(ptr noundef %198, ptr noundef nonnull %5, i32 noundef 2) #10
  %200 = icmp eq i32 %199, 2
  br i1 %200, label %203, label %201

201:                                              ; preds = %166
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 2, i32 noundef %199) #11
  br label %206

203:                                              ; preds = %166
  %204 = load i8, ptr %4, align 1
  %205 = zext i8 %204 to i32
  br label %206

206:                                              ; preds = %203, %201
  %207 = phi i32 [ %199, %201 ], [ %205, %203 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %208 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  %209 = lshr i32 %207, 1
  %210 = and i32 %209, 1
  %211 = xor i32 %210, 1
  store i32 %211, ptr %208, align 4
  br label %212

212:                                              ; preds = %206, %44
  %213 = phi i32 [ -22, %44 ], [ 0, %206 ]
  ret i32 %213
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt352_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
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
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %14 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = getelementptr inbounds %struct.mt352_state, ptr %13, i32 0, i32 2
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
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 0, i32 noundef %25) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %32 = icmp slt i32 %25, 0
  br i1 %32, label %93, label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %29, %27 ], [ %25, %30 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 1, ptr %6, align 1
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
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 1, i32 noundef %45) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %52 = icmp slt i32 %45, 0
  br i1 %52, label %93, label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ %49, %47 ], [ %45, %50 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 3, ptr %3, align 1
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
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 3, i32 noundef %65) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %72 = icmp slt i32 %65, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %70, %67
  %74 = phi i32 [ %69, %67 ], [ %65, %70 ]
  %75 = lshr i32 %34, 3
  %76 = and i32 %75, 2
  %77 = shl nuw i32 %34, 1
  %78 = and i32 %77, 4
  %79 = or i32 %78, %76
  %80 = lshr i32 %34, 1
  %81 = and i32 %80, 16
  %82 = or i32 %81, %79
  %83 = shl i32 %54, 2
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
define internal i32 @mt352_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
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
  store i8 13, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  %14 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = getelementptr inbounds %struct.mt352_state, ptr %13, i32 0, i32 2
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
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 13, i32 noundef %25) #11
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
  store i8 14, ptr %6, align 1
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
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 14, i32 noundef %44) #11
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
  store i8 15, ptr %3, align 1
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
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 15, i32 noundef %63) #11
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
define internal i32 @mt352_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
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
  %12 = getelementptr inbounds %struct.mt352_state, ptr %10, i32 0, i32 2
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
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 20, i32 noundef %22) #11
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
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 21, i32 noundef %41) #11
  br label %48

45:                                               ; preds = %29
  %46 = load i8, ptr %4, align 1
  %47 = zext i8 %46 to i32
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %41, %43 ], [ %47, %45 ]
  %50 = shl i32 %30, 12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %51 = shl i32 %49, 4
  %52 = or i32 %51, %50
  %53 = trunc i32 %52 to i16
  %54 = xor i16 %53, -1
  store i16 %54, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt352_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 9, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.mt352_state, ptr %7, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %12, align 2
  store i16 1, ptr %8, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %11, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %17, align 4
  %18 = load ptr, ptr %7, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %5, i32 noundef 2) #10
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 9, i32 noundef %19) #11
  br label %26

23:                                               ; preds = %2
  %24 = load i8, ptr %4, align 1
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ %19, %21 ], [ %25, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %28 = trunc i32 %27 to i16
  %29 = and i16 %28, 255
  %30 = mul nuw i16 %29, 257
  store i16 %30, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt352_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 16, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = getelementptr inbounds %struct.mt352_state, ptr %10, i32 0, i32 2
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
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 16, i32 noundef %22) #11
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
  store i8 17, ptr %3, align 1
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
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt352_read_register, i32 noundef 17, i32 noundef %41) #11
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
  store i32 %51, ptr %1, align 4
  ret i32 0
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
