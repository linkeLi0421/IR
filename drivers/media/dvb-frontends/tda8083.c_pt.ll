; ModuleID = '/llk/IR/drivers/media/dvb-frontends/tda8083.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda8083.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda8083_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda8083_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda8083_attach:\09\09\09\09\09"
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
%struct.tda8083_state = type { ptr, ptr, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@tda8083_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA8083 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 920000000, i32 -2094967296, i32 125000, i32 0, i32 12000000, i32 30000000, i32 0, i32 -2147481601 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @tda8083_release, ptr null, ptr @tda8083_init, ptr @tda8083_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda8083_set_frontend, ptr null, ptr @tda8083_get_frontend, ptr @tda8083_read_status, ptr @tda8083_read_ber, ptr @tda8083_read_signal_strength, ptr @tda8083_read_snr, ptr @tda8083_read_ucblocks, ptr null, ptr @tda8083_send_diseqc_msg, ptr null, ptr @tda8083_diseqc_send_burst, ptr @tda8083_diseqc_set_tone, ptr @tda8083_diseqc_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [46 x i8] c"description=Philips TDA8083 DVB-S Demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [39 x i8] c"author=Ralph Metzler, Holger Waechtler\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__kstrtab_tda8083_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda8083_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda8083_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda8083_attach to i32), ptr @__kstrtab_tda8083_attach, ptr @__kstrtabns_tda8083_attach }, section "___ksymtab+tda8083_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [52 x i8] c"\017tda8083: %s: readreg error (reg %02x, ret == %i)\0A\00", align 1
@__func__.tda8083_readregs = private unnamed_addr constant [17 x i8] c"tda8083_readregs\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\017tda8083: %s: writereg error (reg %02x, ret == %i)\0A\00", align 1
@__func__.tda8083_writereg = private unnamed_addr constant [17 x i8] c"tda8083_writereg\00", align 1
@tda8083_init_tab = internal unnamed_addr constant <{ [36 x i8], [8 x i8] }> <{ [36 x i8] c"\04\00Jy\04\00\FF\EAHBy`pR\9A\10\0E\10\F2\A7\93\0B\05\C8\9D\00B\80\00`@\00\00u\00\E0", [8 x i8] zeroinitializer }>, align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\017tda8083: tda8083: ratio == %08x\0A\00", align 1
@tda8083_get_fec.fec_tab = internal unnamed_addr constant [8 x i32] [i32 8, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_tda8083_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda8083_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1048) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tda8083_state, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %1, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %11 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = load i8, ptr %0, align 1
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 1, ptr %11, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %19, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2) #9
  %21 = icmp ne i32 %20, 2
  %22 = load i32, ptr @debug, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %29

25:                                               ; preds = %9
  %26 = load i8, ptr %3, align 1
  %27 = zext i8 %26 to i32
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda8083_readregs, i32 noundef %27, i32 noundef %20) #10
  br label %29

29:                                               ; preds = %25, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %30 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %31 = icmp eq i8 %30, 5
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.tda8083_state, ptr %7, i32 0, i32 2
  %34 = getelementptr inbounds %struct.tda8083_state, ptr %7, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %34, ptr noundef nonnull align 4 dereferenceable(544) @tda8083_ops, i32 544, i1 false)
  %35 = getelementptr inbounds %struct.tda8083_state, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %35, align 8
  br label %37

36:                                               ; preds = %29, %2
  call void @kfree(ptr noundef %7) #9
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi ptr [ null, %36 ], [ %33, %32 ]
  ret ptr %38
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
define internal void @tda8083_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %6, i32 1
  %11 = getelementptr inbounds i8, ptr %7, i32 4
  %12 = getelementptr inbounds %struct.tda8083_state, ptr %9, i32 0, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  br label %15

15:                                               ; preds = %31, %1
  %16 = phi i32 [ 0, %1 ], [ %32, %31 ]
  %17 = trunc i32 %16 to i8
  %18 = getelementptr [44 x i8], ptr @tda8083_init_tab, i32 0, i32 %16
  %19 = load i8, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 %17, ptr %6, align 2
  store i8 %19, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  store i32 0, ptr %11, align 4, !annotation !8
  %20 = load ptr, ptr %12, align 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %7, align 4
  store i16 0, ptr %13, align 2
  store i16 2, ptr %11, align 4
  store ptr %6, ptr %14, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %7, i32 noundef 1) #9
  %25 = icmp ne i32 %24, 1
  %26 = load i32, ptr @debug, align 4
  %27 = icmp ne i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef %16, i32 noundef %24) #10
  br label %31

31:                                               ; preds = %29, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %32 = add nuw nsw i32 %16, 1
  %33 = icmp eq i32 %32, 44
  br i1 %33, label %34, label %15

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 0, ptr %4, align 2
  %35 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 60, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %36 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %36, align 4, !annotation !8
  %37 = load ptr, ptr %12, align 4
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %5, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %41, align 4
  %42 = load ptr, ptr %9, align 4
  %43 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %5, i32 noundef 1) #9
  %44 = icmp ne i32 %43, 1
  %45 = load i32, ptr @debug, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %43) #10
  br label %50

50:                                               ; preds = %48, %34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 0, ptr %2, align 2
  %51 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 4, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %52 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %52, align 4, !annotation !8
  %53 = load ptr, ptr %12, align 4
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %3, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %57, align 4
  %58 = load ptr, ptr %9, align 4
  %59 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %3, i32 noundef 1) #9
  %60 = icmp ne i32 %59, 1
  %61 = load i32, ptr @debug, align 4
  %62 = icmp ne i32 %61, 0
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %59) #10
  br label %66

66:                                               ; preds = %64, %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 0, ptr %2, align 2
  %6 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.tda8083_state, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %3, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %13, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %3, i32 noundef 1) #9
  %16 = icmp ne i32 %15, 1
  %17 = load i32, ptr @debug, align 4
  %18 = icmp ne i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %15) #10
  br label %22

22:                                               ; preds = %20, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_set_frontend(ptr noundef %0) #0 {
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
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %1
  %28 = tail call i32 %25(ptr noundef %0) #9
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 %30(ptr noundef %0, i32 noundef 0) #9
  br label %34

34:                                               ; preds = %32, %27, %1
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 9
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #9
  store i8 7, ptr %20, align 2
  %39 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 -1, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  %40 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %40, align 4, !annotation !8
  %41 = getelementptr inbounds %struct.tda8083_state, ptr %23, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %21, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %46, align 4
  %47 = load ptr, ptr %23, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %21, i32 noundef 1) #9
  %49 = icmp ne i32 %48, 1
  %50 = load i32, ptr @debug, align 4
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 7, i32 noundef %48) #10
  br label %55

55:                                               ; preds = %53, %38
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #9
  br label %80

56:                                               ; preds = %34
  %57 = add i32 %36, -1
  %58 = icmp ult i32 %57, 8
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = sub nuw nsw i32 8, %36
  %61 = shl nuw nsw i32 1, %60
  %62 = trunc i32 %61 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #9
  store i8 7, ptr %18, align 2
  %63 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 %62, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  %64 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %64, align 4, !annotation !8
  %65 = getelementptr inbounds %struct.tda8083_state, ptr %23, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %19, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %69, align 2
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %70, align 4
  %71 = load ptr, ptr %23, align 4
  %72 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %19, i32 noundef 1) #9
  %73 = icmp ne i32 %72, 1
  %74 = load i32, ptr @debug, align 4
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %79

77:                                               ; preds = %59
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 7, i32 noundef %72) #10
  br label %79

79:                                               ; preds = %77, %59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #9
  br label %80

80:                                               ; preds = %79, %56, %55
  %81 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %82 = load i32, ptr %81, align 4
  %83 = call i32 @llvm.umin.i32(i32 %82, i32 32000000) #9
  %84 = call i32 @llvm.umax.i32(i32 %83, i32 500000) #9
  %85 = freeze i32 %84
  %86 = udiv i32 2048000000, %85
  %87 = mul i32 %86, %85
  %88 = sub i32 2048000000, %87
  %89 = shl i32 %88, 8
  %90 = shl nuw nsw i32 %86, 8
  %91 = freeze i32 %84
  %92 = udiv i32 %89, %91
  %93 = add nuw nsw i32 %92, %90
  %94 = mul i32 %92, %91
  %95 = sub i32 %89, %94
  %96 = shl i32 %95, 8
  %97 = shl nuw nsw i32 %93, 8
  %98 = udiv i32 %96, %84
  %99 = add nuw nsw i32 %97, %98
  %100 = load i32, ptr @debug, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %80
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %99) #10
  br label %104

104:                                              ; preds = %102, %80
  %105 = icmp ult i32 %84, 16000000
  %106 = icmp ult i32 %84, 24000000
  %107 = select i1 %106, i8 2, i8 0
  %108 = select i1 %105, i8 3, i8 %107
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  store i8 5, ptr %16, align 2
  %109 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 %108, ptr %109, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %110 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %110, align 4, !annotation !8
  %111 = getelementptr inbounds %struct.tda8083_state, ptr %23, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %17, align 4
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %115, align 2
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %116, align 4
  %117 = load ptr, ptr %23, align 4
  %118 = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %17, i32 noundef 1) #9
  %119 = icmp ne i32 %118, 1
  %120 = load i32, ptr @debug, align 4
  %121 = icmp ne i32 %120, 0
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %123, label %125

123:                                              ; preds = %104
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 5, i32 noundef %118) #10
  br label %125

125:                                              ; preds = %123, %104
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  %126 = lshr i32 %99, 16
  %127 = trunc i32 %126 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 2, ptr %14, align 2
  %128 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 %127, ptr %128, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %129 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %129, align 4, !annotation !8
  %130 = load ptr, ptr %111, align 4
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %15, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %133, align 2
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %134, align 4
  %135 = load ptr, ptr %23, align 4
  %136 = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %15, i32 noundef 1) #9
  %137 = icmp ne i32 %136, 1
  %138 = load i32, ptr @debug, align 4
  %139 = icmp ne i32 %138, 0
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %141, label %143

141:                                              ; preds = %125
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 2, i32 noundef %136) #10
  br label %143

143:                                              ; preds = %141, %125
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  %144 = lshr i32 %99, 8
  %145 = trunc i32 %144 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i8 3, ptr %12, align 2
  %146 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %145, ptr %146, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %147 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %147, align 4, !annotation !8
  %148 = load ptr, ptr %111, align 4
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i16
  store i16 %150, ptr %13, align 4
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %151, align 2
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %152, align 4
  %153 = load ptr, ptr %23, align 4
  %154 = call i32 @i2c_transfer(ptr noundef %153, ptr noundef nonnull %13, i32 noundef 1) #9
  %155 = icmp ne i32 %154, 1
  %156 = load i32, ptr @debug, align 4
  %157 = icmp ne i32 %156, 0
  %158 = select i1 %155, i1 %157, i1 false
  br i1 %158, label %159, label %161

159:                                              ; preds = %143
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 3, i32 noundef %154) #10
  br label %161

161:                                              ; preds = %159, %143
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  %162 = trunc i32 %99 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  store i8 4, ptr %10, align 2
  %163 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 %162, ptr %163, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %164 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %164, align 4, !annotation !8
  %165 = load ptr, ptr %111, align 4
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i16
  store i16 %167, ptr %11, align 4
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %168, align 2
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %169, align 4
  %170 = load ptr, ptr %23, align 4
  %171 = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %11, i32 noundef 1) #9
  %172 = icmp ne i32 %171, 1
  %173 = load i32, ptr @debug, align 4
  %174 = icmp ne i32 %173, 0
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %176, label %178

176:                                              ; preds = %161
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 4, i32 noundef %171) #10
  br label %178

178:                                              ; preds = %176, %161
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 0, ptr %8, align 2
  %179 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 60, ptr %179, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %180 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %180, align 4, !annotation !8
  %181 = load ptr, ptr %111, align 4
  %182 = load i8, ptr %181, align 1
  %183 = zext i8 %182 to i16
  store i16 %183, ptr %9, align 4
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %184, align 2
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %185, align 4
  %186 = load ptr, ptr %23, align 4
  %187 = call i32 @i2c_transfer(ptr noundef %186, ptr noundef nonnull %9, i32 noundef 1) #9
  %188 = icmp ne i32 %187, 1
  %189 = load i32, ptr @debug, align 4
  %190 = icmp ne i32 %189, 0
  %191 = select i1 %188, i1 %190, i1 false
  br i1 %191, label %192, label %194

192:                                              ; preds = %178
  %193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %187) #10
  br label %194

194:                                              ; preds = %192, %178
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 0, ptr %6, align 2
  %195 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 4, ptr %195, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %196 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %196, align 4, !annotation !8
  %197 = load ptr, ptr %111, align 4
  %198 = load i8, ptr %197, align 1
  %199 = zext i8 %198 to i16
  store i16 %199, ptr %7, align 4
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %200, align 2
  %201 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %201, align 4
  %202 = load ptr, ptr %23, align 4
  %203 = call i32 @i2c_transfer(ptr noundef %202, ptr noundef nonnull %7, i32 noundef 1) #9
  %204 = icmp ne i32 %203, 1
  %205 = load i32, ptr @debug, align 4
  %206 = icmp ne i32 %205, 0
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %208, label %210

208:                                              ; preds = %194
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %203) #10
  br label %210

210:                                              ; preds = %208, %194
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 0, ptr %4, align 2
  %211 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 60, ptr %211, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %212 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %212, align 4, !annotation !8
  %213 = load ptr, ptr %111, align 4
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i16
  store i16 %215, ptr %5, align 4
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %216, align 2
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %217, align 4
  %218 = load ptr, ptr %23, align 4
  %219 = call i32 @i2c_transfer(ptr noundef %218, ptr noundef nonnull %5, i32 noundef 1) #9
  %220 = icmp ne i32 %219, 1
  %221 = load i32, ptr @debug, align 4
  %222 = icmp ne i32 %221, 0
  %223 = select i1 %220, i1 %222, i1 false
  br i1 %223, label %224, label %226

224:                                              ; preds = %210
  %225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %219) #10
  br label %226

226:                                              ; preds = %224, %210
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 0, ptr %2, align 2
  %227 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 4, ptr %227, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %228 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %228, align 4, !annotation !8
  %229 = load ptr, ptr %111, align 4
  %230 = load i8, ptr %229, align 1
  %231 = zext i8 %230 to i16
  store i16 %231, ptr %3, align 4
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %232, align 2
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %233, align 4
  %234 = load ptr, ptr %23, align 4
  %235 = call i32 @i2c_transfer(ptr noundef %234, ptr noundef nonnull %3, i32 noundef 1) #9
  %236 = icmp ne i32 %235, 1
  %237 = load i32, ptr @debug, align 4
  %238 = icmp ne i32 %237, 0
  %239 = select i1 %236, i1 %238, i1 false
  br i1 %239, label %240, label %242

240:                                              ; preds = %226
  %241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %235) #10
  br label %242

242:                                              ; preds = %240, %226
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 14, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %11 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = getelementptr inbounds %struct.tda8083_state, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %7, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %11, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %19 = load i8, ptr %13, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %8, ptr %23, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %7, i32 noundef 2) #9
  %26 = icmp ne i32 %25, 2
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i8, ptr %6, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda8083_readregs, i32 noundef %32, i32 noundef %25) #10
  br label %34

34:                                               ; preds = %30, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %35 = load i8, ptr %8, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  %36 = lshr i8 %35, 7
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %37, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 14, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %39 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %39, i8 0, i32 16, i1 false) #9, !annotation !8
  %40 = load ptr, ptr %12, align 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %4, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %43, align 2
  store i16 1, ptr %39, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %46 = load i8, ptr %40, align 1
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %48, align 2
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %50, align 4
  %51 = load ptr, ptr %10, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %4, i32 noundef 2) #9
  %53 = icmp ne i32 %52, 2
  %54 = load i32, ptr @debug, align 4
  %55 = icmp ne i32 %54, 0
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %61

57:                                               ; preds = %34
  %58 = load i8, ptr %3, align 1
  %59 = zext i8 %58 to i32
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda8083_readregs, i32 noundef %59, i32 noundef %52) #10
  br label %61

61:                                               ; preds = %57, %34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %62 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %63 = and i8 %62, 7
  %64 = zext i8 %63 to i32
  %65 = getelementptr [8 x i32], ptr @tda8083_get_fec.fec_tab, i32 0, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %66, ptr %67, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 1, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %11 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #9, !annotation !8
  %12 = getelementptr inbounds %struct.tda8083_state, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %7, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %11, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %19 = load i8, ptr %13, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %8, ptr %23, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %7, i32 noundef 2) #9
  %26 = icmp ne i32 %25, 2
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i8, ptr %6, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda8083_readregs, i32 noundef %32, i32 noundef %25) #10
  br label %34

34:                                               ; preds = %30, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %35 = load i8, ptr %8, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 2, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %36 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %36, i8 0, i32 16, i1 false) #9, !annotation !8
  %37 = load ptr, ptr %12, align 4
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %4, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %40, align 2
  store i16 1, ptr %36, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %43 = load i8, ptr %37, align 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %47, align 4
  %48 = load ptr, ptr %10, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %4, i32 noundef 2) #9
  %50 = icmp ne i32 %49, 2
  %51 = load i32, ptr @debug, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %58

54:                                               ; preds = %34
  %55 = load i8, ptr %3, align 1
  %56 = zext i8 %55 to i32
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda8083_readregs, i32 noundef %56, i32 noundef %49) #10
  br label %58

58:                                               ; preds = %54, %34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %59 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %60 = icmp ult i8 %35, -11
  %61 = zext i1 %60 to i32
  %62 = zext i8 %59 to i32
  %63 = shl nuw nsw i32 %62, 1
  %64 = and i32 %63, 2
  %65 = or i32 %64, %61
  %66 = shl nuw nsw i32 %62, 1
  %67 = and i32 %66, 4
  %68 = or i32 %67, %65
  %69 = lshr i32 %62, 1
  %70 = and i32 %69, 8
  %71 = or i32 %70, %68
  %72 = and i32 %62, 32
  %73 = or i32 %72, %71
  %74 = and i32 %62, 31
  %75 = icmp eq i32 %74, 31
  %76 = or i32 %73, 16
  %77 = select i1 %75, i32 %76, i32 %73
  store i32 %77, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 11, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.tda8083_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %16 = load i8, ptr %10, align 1
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %4, i32 noundef 2) #9
  %23 = icmp ne i32 %22, 2
  %24 = load i32, ptr @debug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i8, ptr %3, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda8083_readregs, i32 noundef %29, i32 noundef %22) #10
  br label %31

31:                                               ; preds = %27, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br i1 %23, label %46, label %32

32:                                               ; preds = %31
  %33 = load i8, ptr %5, align 1
  %34 = and i8 %33, 31
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = or i32 %36, %40
  %42 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %41, %44
  store i32 %45, ptr %1, align 4
  br label %46

46:                                               ; preds = %32, %31
  %47 = phi i32 [ 0, %32 ], [ -1, %31 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.tda8083_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %16 = load i8, ptr %10, align 1
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %4, i32 noundef 2) #9
  %23 = icmp ne i32 %22, 2
  %24 = load i32, ptr @debug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i8, ptr %3, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda8083_readregs, i32 noundef %29, i32 noundef %22) #10
  br label %31

31:                                               ; preds = %27, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %32 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %33 = xor i8 %32, -1
  %34 = zext i8 %33 to i16
  %35 = mul nuw i16 %34, 257
  store i16 %35, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 8, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.tda8083_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %16 = load i8, ptr %10, align 1
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %4, i32 noundef 2) #9
  %23 = icmp ne i32 %22, 2
  %24 = load i32, ptr @debug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i8, ptr %3, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda8083_readregs, i32 noundef %29, i32 noundef %22) #10
  br label %31

31:                                               ; preds = %27, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %32 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %34, %33
  %36 = trunc i32 %35 to i16
  store i16 %36, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 15, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #9, !annotation !8
  %9 = getelementptr inbounds %struct.tda8083_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %16 = load i8, ptr %10, align 1
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %20, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %4, i32 noundef 2) #9
  %23 = icmp ne i32 %22, 2
  %24 = load i32, ptr @debug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i8, ptr %3, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda8083_readregs, i32 noundef %29, i32 noundef %22) #10
  br label %31

31:                                               ; preds = %27, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %32 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %33 = zext i8 %32 to i32
  %34 = icmp eq i8 %32, -1
  %35 = select i1 %34, i32 -1, i32 %33
  store i32 %35, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = add i8 %12, -3
  %14 = or i8 %13, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 41, ptr %7, align 2
  %15 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %14, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %16 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %16, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.tda8083_state, ptr %10, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %8, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %22, align 4
  %23 = load ptr, ptr %10, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %8, i32 noundef 1) #9
  %25 = icmp ne i32 %24, 1
  %26 = load i32, ptr @debug, align 4
  %27 = icmp ne i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 41, i32 noundef %24) #10
  br label %31

31:                                               ; preds = %29, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  %32 = load i8, ptr %11, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %5, i32 1
  %36 = getelementptr inbounds i8, ptr %6, i32 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  br label %39

39:                                               ; preds = %57, %34
  %40 = phi i32 [ 0, %34 ], [ %58, %57 ]
  %41 = trunc i32 %40 to i8
  %42 = add i8 %41, 35
  %43 = getelementptr [6 x i8], ptr %1, i32 0, i32 %40
  %44 = load i8, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 %42, ptr %5, align 2
  store i8 %44, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  store i32 0, ptr %36, align 4, !annotation !8
  %45 = load ptr, ptr %17, align 4
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %6, align 4
  store i16 0, ptr %37, align 2
  store i16 2, ptr %36, align 4
  store ptr %5, ptr %38, align 4
  %48 = load ptr, ptr %10, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %6, i32 noundef 1) #9
  %50 = icmp ne i32 %49, 1
  %51 = load i32, ptr @debug, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = zext i8 %42 to i32
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef %55, i32 noundef %49) #10
  br label %57

57:                                               ; preds = %54, %39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  %58 = add nuw nsw i32 %40, 1
  %59 = load i8, ptr %11, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %39, label %62

62:                                               ; preds = %57
  %63 = add i8 %59, -3
  %64 = or i8 %63, 12
  br label %65

65:                                               ; preds = %62, %31
  %66 = phi i8 [ -3, %31 ], [ %64, %62 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 41, ptr %3, align 2
  %67 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %66, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %68 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %68, align 4, !annotation !8
  %69 = load ptr, ptr %17, align 4
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %4, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %73, align 4
  %74 = load ptr, ptr %10, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %4, i32 noundef 1) #9
  %76 = icmp ne i32 %75, 1
  %77 = load i32, ptr @debug, align 4
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 41, i32 noundef %75) #10
  br label %82

82:                                               ; preds = %80, %65
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  call fastcc void @tda8083_wait_diseqc_fifo(ptr noundef %10)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_diseqc_send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  switch i32 %1, label %50 [
    i32 0, label %13
    i32 1, label %31
  ]

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  store i8 41, ptr %9, align 2
  %14 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 20, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  %15 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.tda8083_state, ptr %12, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %10, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %21, align 4
  %22 = load ptr, ptr %12, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %10, i32 noundef 1) #9
  %24 = icmp ne i32 %23, 1
  %25 = load i32, ptr @debug, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 41, i32 noundef %23) #10
  br label %30

30:                                               ; preds = %28, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  br label %49

31:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 41, ptr %7, align 2
  %32 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 28, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %33 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %33, align 4, !annotation !8
  %34 = getelementptr inbounds %struct.tda8083_state, ptr %12, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %8, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %39, align 4
  %40 = load ptr, ptr %12, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %8, i32 noundef 1) #9
  %42 = icmp ne i32 %41, 1
  %43 = load i32, ptr @debug, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 41, i32 noundef %41) #10
  br label %48

48:                                               ; preds = %46, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  br label %49

49:                                               ; preds = %48, %30
  call fastcc void @tda8083_wait_diseqc_fifo(ptr noundef %12) #9
  br label %50

50:                                               ; preds = %49, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 0, ptr %5, align 2
  %51 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 60, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %52 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %52, align 4, !annotation !8
  %53 = getelementptr inbounds %struct.tda8083_state, ptr %12, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %6, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %58, align 4
  %59 = load ptr, ptr %12, align 4
  %60 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %6, i32 noundef 1) #9
  %61 = icmp ne i32 %60, 1
  %62 = load i32, ptr @debug, align 4
  %63 = icmp ne i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %60) #10
  br label %67

67:                                               ; preds = %65, %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 0, ptr %3, align 2
  %68 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 4, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %69 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %69, align 4, !annotation !8
  %70 = load ptr, ptr %53, align 4
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %4, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %73, align 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %74, align 4
  %75 = load ptr, ptr %12, align 4
  %76 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %4, i32 noundef 1) #9
  %77 = icmp ne i32 %76, 1
  %78 = load i32, ptr @debug, align 4
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %76) #10
  br label %83

83:                                               ; preds = %81, %67
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_diseqc_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #9
  store i8 38, ptr %11, align 2
  %15 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 -15, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  %16 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %16, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.tda8083_state, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %12, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %22, align 4
  %23 = load ptr, ptr %14, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %12, i32 noundef 1) #9
  %25 = icmp ne i32 %24, 1
  %26 = load i32, ptr @debug, align 4
  %27 = icmp ne i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 38, i32 noundef %24) #10
  br label %31

31:                                               ; preds = %29, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #9
  switch i32 %1, label %66 [
    i32 1, label %32
    i32 0, label %49
  ]

32:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  store i8 41, ptr %9, align 2
  %33 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 0, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  %34 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %34, align 4, !annotation !8
  %35 = load ptr, ptr %17, align 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %10, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %39, align 4
  %40 = load ptr, ptr %14, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %10, i32 noundef 1) #9
  %42 = icmp ne i32 %41, 1
  %43 = load i32, ptr @debug, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 41, i32 noundef %41) #10
  br label %48

48:                                               ; preds = %46, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  br label %66

49:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 41, ptr %7, align 2
  %50 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 -128, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %51 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %51, align 4, !annotation !8
  %52 = load ptr, ptr %17, align 4
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %8, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %55, align 2
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %56, align 4
  %57 = load ptr, ptr %14, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %8, i32 noundef 1) #9
  %59 = icmp ne i32 %58, 1
  %60 = load i32, ptr @debug, align 4
  %61 = icmp ne i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 41, i32 noundef %58) #10
  br label %65

65:                                               ; preds = %63, %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  br label %66

66:                                               ; preds = %65, %48, %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 0, ptr %5, align 2
  %67 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 60, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %68 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %68, align 4, !annotation !8
  %69 = load ptr, ptr %17, align 4
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %6, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %73, align 4
  %74 = load ptr, ptr %14, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %6, i32 noundef 1) #9
  %76 = icmp ne i32 %75, 1
  %77 = load i32, ptr @debug, align 4
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %75) #10
  br label %82

82:                                               ; preds = %80, %66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 0, ptr %3, align 2
  %83 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 4, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %84 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %84, align 4, !annotation !8
  %85 = load ptr, ptr %17, align 4
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %4, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %88, align 2
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %89, align 4
  %90 = load ptr, ptr %14, align 4
  %91 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %4, i32 noundef 1) #9
  %92 = icmp ne i32 %91, 1
  %93 = load i32, ptr @debug, align 4
  %94 = icmp ne i32 %93, 0
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %91) #10
  br label %98

98:                                               ; preds = %96, %82
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8083_diseqc_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  switch i32 %1, label %49 [
    i32 0, label %13
    i32 1, label %31
  ]

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  store i8 32, ptr %9, align 2
  %14 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  %15 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.tda8083_state, ptr %12, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %10, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %21, align 4
  %22 = load ptr, ptr %12, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %10, i32 noundef 1) #9
  %24 = icmp ne i32 %23, 1
  %25 = load i32, ptr @debug, align 4
  %26 = icmp ne i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 32, i32 noundef %23) #10
  br label %30

30:                                               ; preds = %28, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  br label %49

31:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 32, ptr %7, align 2
  %32 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 17, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %33 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %33, align 4, !annotation !8
  %34 = getelementptr inbounds %struct.tda8083_state, ptr %12, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %8, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %39, align 4
  %40 = load ptr, ptr %12, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %8, i32 noundef 1) #9
  %42 = icmp ne i32 %41, 1
  %43 = load i32, ptr @debug, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 32, i32 noundef %41) #10
  br label %48

48:                                               ; preds = %46, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  br label %49

49:                                               ; preds = %48, %30, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 0, ptr %5, align 2
  %50 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 60, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %51 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %51, align 4, !annotation !8
  %52 = getelementptr inbounds %struct.tda8083_state, ptr %12, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %6, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %57, align 4
  %58 = load ptr, ptr %12, align 4
  %59 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %6, i32 noundef 1) #9
  %60 = icmp ne i32 %59, 1
  %61 = load i32, ptr @debug, align 4
  %62 = icmp ne i32 %61, 0
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %59) #10
  br label %66

66:                                               ; preds = %64, %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 0, ptr %3, align 2
  %67 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 4, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %68 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %68, align 4, !annotation !8
  %69 = load ptr, ptr %52, align 4
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i16
  store i16 %71, ptr %4, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %72, align 2
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %73, align 4
  %74 = load ptr, ptr %12, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %4, i32 noundef 1) #9
  %76 = icmp ne i32 %75, 1
  %77 = load i32, ptr @debug, align 4
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.tda8083_writereg, i32 noundef 0, i32 noundef %75) #10
  br label %82

82:                                               ; preds = %80, %66
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda8083_wait_diseqc_fifo(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca i8, align 1
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = sub i32 %6, %5
  %8 = icmp ult i32 %7, 100
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i32 4
  %11 = getelementptr inbounds %struct.tda8083_state, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  br label %18

18:                                               ; preds = %37, %9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 2, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 16, i1 false) #9, !annotation !8
  %19 = load ptr, ptr %11, align 4
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %3, align 4
  store i16 0, ptr %12, align 2
  store i16 1, ptr %10, align 4
  store ptr %2, ptr %13, align 4
  %22 = load i8, ptr %19, align 1
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %14, align 4
  store i16 1, ptr %15, align 2
  store i16 1, ptr %16, align 4
  store ptr %4, ptr %17, align 4
  %24 = load ptr, ptr %0, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %3, i32 noundef 2) #9
  %26 = icmp ne i32 %25, 2
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i8, ptr %2, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda8083_readregs, i32 noundef %32, i32 noundef %25) #10
  br label %34

34:                                               ; preds = %30, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  %35 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %36 = icmp sgt i8 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  call void @msleep(i32 noundef 50) #9
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = sub i32 %38, %5
  %40 = icmp ult i32 %39, 100
  br i1 %40, label %18, label %41

41:                                               ; preds = %37, %34, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
