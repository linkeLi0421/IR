; ModuleID = '/llk/IR/drivers/media/dvb-frontends/lgs8gl5.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lgs8gl5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lgs8gl5_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lgs8gl5_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lgs8gl5_attach:\09\09\09\09\09"
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.lgs8gl5_state = type { ptr, ptr, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"\017lgs8gl5: %s\0A\00", align 1
@__func__.lgs8gl5_attach = private unnamed_addr constant [15 x i8] c"lgs8gl5_attach\00", align 1
@lgs8gl5_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Legend Silicon LGS-8GL5 DMB-TH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 474000000, i32 858000000, i32 10000, i32 0, i32 0, i32 0, i32 0, i32 1075789312 }, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr null, ptr @lgs8gl5_release, ptr null, ptr @lgs8gl5_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgs8gl5_set_frontend, ptr @lgs8gl5_get_tune_settings, ptr @lgs8gl5_get_frontend, ptr @lgs8gl5_read_status, ptr @lgs8gl5_read_ber, ptr @lgs8gl5_read_signal_strength, ptr @lgs8gl5_read_snr, ptr @lgs8gl5_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_lgs8gl5_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lgs8gl5_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lgs8gl5_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lgs8gl5_attach to i32), ptr @__kstrtab_lgs8gl5_attach, ptr @__kstrtabns_lgs8gl5_attach }, section "___ksymtab+lgs8gl5_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [62 x i8] c"description=Legend Silicon LGS-8GL5 DMB-TH Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [19 x i8] c"author=Timothy Lee\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.lgs8gl5_init = private unnamed_addr constant [13 x i8] c"lgs8gl5_init\00", align 1
@__func__.lgs8gl5_soft_reset = private unnamed_addr constant [19 x i8] c"lgs8gl5_soft_reset\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"\017lgs8gl5: %s: error (reg=0x%02x, val=0x%02x, ret=%i)\0A\00", align 1
@__func__.lgs8gl5_write_reg = private unnamed_addr constant [18 x i8] c"lgs8gl5_write_reg\00", align 1
@__func__.lgs8gl5_set_frontend = private unnamed_addr constant [21 x i8] c"lgs8gl5_set_frontend\00", align 1
@__func__.lgs8gl5_start_demod = private unnamed_addr constant [20 x i8] c"lgs8gl5_start_demod\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\017lgs8gl5: Wait for carrier[%d] 0x%02X\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\017lgs8gl5: Wait for lock[%d] 0x%02X\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_lgs8gl5_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lgs8gl5_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lgs8gl5_attach) #8
  br label %10

10:                                               ; preds = %8, %2
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 1048) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.lgs8gl5_state, ptr %12, i32 0, i32 1
  store ptr %0, ptr %15, align 4
  store ptr %1, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 2, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %16 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %16, i8 0, i32 16, i1 false) #10, !annotation !8
  %17 = load i8, ptr %0, align 1
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 1, ptr %16, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %18, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %24, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #10
  %26 = icmp eq i32 %25, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.lgs8gl5_state, ptr %12, i32 0, i32 2
  %29 = getelementptr inbounds %struct.lgs8gl5_state, ptr %12, i32 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %29, ptr noundef nonnull align 4 dereferenceable(544) @lgs8gl5_ops, i32 544, i1 false)
  %30 = getelementptr inbounds %struct.lgs8gl5_state, ptr %12, i32 0, i32 2, i32 3
  store ptr %12, ptr %30, align 8
  br label %32

31:                                               ; preds = %14, %10
  call void @kfree(ptr noundef %12) #10
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi ptr [ null, %31 ], [ %28, %27 ]
  ret ptr %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lgs8gl5_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gl5_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [1 x i8], align 1
  %11 = alloca [1 x i8], align 1
  %12 = alloca [2 x i8], align 2
  %13 = alloca [3 x %struct.i2c_msg], align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lgs8gl5_init) #8
  br label %20

20:                                               ; preds = %18, %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 -62, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i8 -62, ptr %12, align 2
  %21 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 40, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %13) #10
  %22 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %22, i8 0, i32 28, i1 false) #10, !annotation !8
  %23 = getelementptr inbounds %struct.lgs8gl5_state, ptr %15, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i16
  %27 = add nuw nsw i16 %26, 2
  store i16 %27, ptr %13, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %28, align 2
  store i16 1, ptr %22, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %10, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %31 = load i8, ptr %24, align 1
  %32 = zext i8 %31 to i16
  %33 = add nuw nsw i16 %32, 2
  store i16 %33, ptr %30, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %11, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 2
  %38 = load i8, ptr %24, align 1
  %39 = zext i8 %38 to i16
  %40 = add nuw nsw i16 %39, 2
  store i16 %40, ptr %37, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 2, i32 2
  store i16 2, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 2, i32 3
  store ptr %12, ptr %42, align 4
  %43 = load ptr, ptr %15, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %13, i32 noundef 3) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call fastcc void @lgs8gl5_soft_reset(ptr noundef %15)
  call fastcc void @lgs8gl5_update_reg(ptr noundef %15, i8 noundef zeroext 7, i8 noundef zeroext 16)
  call fastcc void @lgs8gl5_update_reg(ptr noundef %15, i8 noundef zeroext 7, i8 noundef zeroext 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 9, ptr %8, align 2
  %45 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 14, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %46 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %46, align 4, !annotation !8
  %47 = load ptr, ptr %23, align 4
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %9, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %51, align 4
  %52 = load ptr, ptr %15, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %9, i32 noundef 1) #10
  %54 = icmp ne i32 %53, 1
  %55 = load i32, ptr @debug, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %60

58:                                               ; preds = %20
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gl5_write_reg, i32 noundef 9, i32 noundef 14, i32 noundef %53) #8
  br label %60

60:                                               ; preds = %58, %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 10, ptr %6, align 2
  %61 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 -27, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %62 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %62, align 4, !annotation !8
  %63 = load ptr, ptr %23, align 4
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %7, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %66, align 2
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %67, align 4
  %68 = load ptr, ptr %15, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %7, i32 noundef 1) #10
  %70 = icmp ne i32 %69, 1
  %71 = load i32, ptr @debug, align 4
  %72 = icmp ne i32 %71, 0
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %76

74:                                               ; preds = %60
  %75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gl5_write_reg, i32 noundef 10, i32 noundef 229, i32 noundef %69) #8
  br label %76

76:                                               ; preds = %74, %60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 11, ptr %4, align 2
  %77 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 53, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %78 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %78, align 4, !annotation !8
  %79 = load ptr, ptr %23, align 4
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i16
  store i16 %81, ptr %5, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %82, align 2
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %83, align 4
  %84 = load ptr, ptr %15, align 4
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %5, i32 noundef 1) #10
  %86 = icmp ne i32 %85, 1
  %87 = load i32, ptr @debug, align 4
  %88 = icmp ne i32 %87, 0
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %92

90:                                               ; preds = %76
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gl5_write_reg, i32 noundef 11, i32 noundef 53, i32 noundef %85) #8
  br label %92

92:                                               ; preds = %90, %76
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 12, ptr %2, align 2
  %93 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 48, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %94 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %94, align 4, !annotation !8
  %95 = load ptr, ptr %23, align 4
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i16
  store i16 %97, ptr %3, align 4
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %98, align 2
  %99 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %99, align 4
  %100 = load ptr, ptr %15, align 4
  %101 = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %3, i32 noundef 1) #10
  %102 = icmp ne i32 %101, 1
  %103 = load i32, ptr @debug, align 4
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %102, i1 %104, i1 false
  br i1 %105, label %106, label %108

106:                                              ; preds = %92
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gl5_write_reg, i32 noundef 12, i32 noundef 48, i32 noundef %101) #8
  br label %108

108:                                              ; preds = %106, %92
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gl5_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [1 x i8], align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [1 x i8], align 1
  %11 = alloca [1 x i8], align 1
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = alloca [1 x i8], align 1
  %14 = alloca [1 x i8], align 1
  %15 = alloca [2 x i8], align 2
  %16 = alloca [3 x %struct.i2c_msg], align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [1 x i8], align 1
  %26 = alloca [1 x i8], align 1
  %27 = alloca [2 x i8], align 2
  %28 = alloca [3 x %struct.i2c_msg], align 4
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr @debug, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %1
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lgs8gl5_set_frontend) #8
  br label %35

35:                                               ; preds = %33, %1
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 8000000
  br i1 %38, label %39, label %265

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = tail call i32 %41(ptr noundef %0) #10
  %45 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = tail call i32 %46(ptr noundef %0, i32 noundef 0) #10
  br label %50

50:                                               ; preds = %48, %43, %39
  %51 = load i32, ptr @debug, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lgs8gl5_start_demod) #8
  br label %55

55:                                               ; preds = %53, %50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #10
  store i8 -62, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #10
  store i8 0, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #10
  store i8 -62, ptr %27, align 2
  %56 = getelementptr inbounds i8, ptr %27, i32 1
  store i8 40, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %28) #10
  %57 = getelementptr inbounds i8, ptr %28, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %57, i8 0, i32 28, i1 false) #10, !annotation !8
  %58 = getelementptr inbounds %struct.lgs8gl5_state, ptr %30, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i16
  %62 = add nuw nsw i16 %61, 2
  store i16 %62, ptr %28, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %63, align 2
  store i16 1, ptr %57, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %25, ptr %64, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1
  %66 = load i8, ptr %59, align 1
  %67 = zext i8 %66 to i16
  %68 = add nuw nsw i16 %67, 2
  store i16 %68, ptr %65, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 1
  store i16 1, ptr %69, align 2
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 2
  store i16 1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 3
  store ptr %26, ptr %71, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 2
  %73 = load i8, ptr %59, align 1
  %74 = zext i8 %73 to i16
  %75 = add nuw nsw i16 %74, 2
  store i16 %75, ptr %72, align 4
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 2, i32 2
  store i16 2, ptr %76, align 4
  %77 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 2, i32 3
  store ptr %27, ptr %77, align 4
  %78 = load ptr, ptr %30, align 4
  %79 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %28, i32 noundef 3) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #10
  call fastcc void @lgs8gl5_soft_reset(ptr noundef %30) #10
  call fastcc void @lgs8gl5_update_reg(ptr noundef %30, i8 noundef zeroext 7, i8 noundef zeroext 16) #10
  call fastcc void @lgs8gl5_update_reg(ptr noundef %30, i8 noundef zeroext 7, i8 noundef zeroext 16) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #10
  store i8 9, ptr %23, align 2
  %80 = getelementptr inbounds i8, ptr %23, i32 1
  store i8 14, ptr %80, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #10
  %81 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 2, ptr %81, align 4, !annotation !8
  %82 = load ptr, ptr %58, align 4
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i16
  store i16 %84, ptr %24, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %85, align 2
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %86, align 4
  %87 = load ptr, ptr %30, align 4
  %88 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %24, i32 noundef 1) #10
  %89 = icmp ne i32 %88, 1
  %90 = load i32, ptr @debug, align 4
  %91 = icmp ne i32 %90, 0
  %92 = select i1 %89, i1 %91, i1 false
  br i1 %92, label %93, label %95

93:                                               ; preds = %55
  %94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gl5_write_reg, i32 noundef 9, i32 noundef 14, i32 noundef %88) #8
  br label %95

95:                                               ; preds = %93, %55
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #10
  store i8 10, ptr %21, align 2
  %96 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 -27, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  %97 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %97, align 4, !annotation !8
  %98 = load ptr, ptr %58, align 4
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %22, align 4
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %101, align 2
  %102 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %102, align 4
  %103 = load ptr, ptr %30, align 4
  %104 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %22, i32 noundef 1) #10
  %105 = icmp ne i32 %104, 1
  %106 = load i32, ptr @debug, align 4
  %107 = icmp ne i32 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %111

109:                                              ; preds = %95
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gl5_write_reg, i32 noundef 10, i32 noundef 229, i32 noundef %104) #8
  br label %111

111:                                              ; preds = %109, %95
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #10
  store i8 11, ptr %19, align 2
  %112 = getelementptr inbounds i8, ptr %19, i32 1
  store i8 53, ptr %112, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #10
  %113 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 2, ptr %113, align 4, !annotation !8
  %114 = load ptr, ptr %58, align 4
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %20, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %117, align 2
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %118, align 4
  %119 = load ptr, ptr %30, align 4
  %120 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %20, i32 noundef 1) #10
  %121 = icmp ne i32 %120, 1
  %122 = load i32, ptr @debug, align 4
  %123 = icmp ne i32 %122, 0
  %124 = select i1 %121, i1 %123, i1 false
  br i1 %124, label %125, label %127

125:                                              ; preds = %111
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gl5_write_reg, i32 noundef 11, i32 noundef 53, i32 noundef %120) #8
  br label %127

127:                                              ; preds = %125, %111
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #10
  store i8 12, ptr %17, align 2
  %128 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 48, ptr %128, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  %129 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 2, ptr %129, align 4, !annotation !8
  %130 = load ptr, ptr %58, align 4
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %18, align 4
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %133, align 2
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %134, align 4
  %135 = load ptr, ptr %30, align 4
  %136 = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %18, i32 noundef 1) #10
  %137 = icmp ne i32 %136, 1
  %138 = load i32, ptr @debug, align 4
  %139 = icmp ne i32 %138, 0
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %141, label %143

141:                                              ; preds = %127
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gl5_write_reg, i32 noundef 12, i32 noundef 48, i32 noundef %136) #8
  br label %143

143:                                              ; preds = %141, %127
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #10
  call fastcc void @lgs8gl5_update_reg(ptr noundef %30, i8 noundef zeroext 3, i8 noundef zeroext 0) #10
  call fastcc void @lgs8gl5_update_reg(ptr noundef %30, i8 noundef zeroext 126, i8 noundef zeroext 1) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 -59, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #10
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #10
  store i8 -59, ptr %15, align 2
  %144 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 0, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %16) #10
  %145 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %145, i8 0, i32 28, i1 false) #10, !annotation !8
  %146 = load ptr, ptr %58, align 4
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i16
  %149 = add nuw nsw i16 %148, 2
  store i16 %149, ptr %16, align 4
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %150, align 2
  store i16 1, ptr %145, align 4
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %13, ptr %151, align 4
  %152 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  %153 = load i8, ptr %146, align 1
  %154 = zext i8 %153 to i16
  %155 = add nuw nsw i16 %154, 2
  store i16 %155, ptr %152, align 4
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %156, align 2
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 1, ptr %157, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr %14, ptr %158, align 4
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 2
  %160 = load i8, ptr %146, align 1
  %161 = zext i8 %160 to i16
  %162 = add nuw nsw i16 %161, 2
  store i16 %162, ptr %159, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 2, i32 2
  store i16 2, ptr %163, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 2, i32 3
  store ptr %15, ptr %164, align 4
  %165 = load ptr, ptr %30, align 4
  %166 = call i32 @i2c_transfer(ptr noundef %165, ptr noundef nonnull %16, i32 noundef 3) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call fastcc void @lgs8gl5_update_reg(ptr noundef %30, i8 noundef zeroext 4, i8 noundef zeroext 2) #10
  call fastcc void @lgs8gl5_update_reg(ptr noundef %30, i8 noundef zeroext 55, i8 noundef zeroext 1) #10
  call fastcc void @lgs8gl5_soft_reset(ptr noundef %30) #10
  %167 = getelementptr inbounds i8, ptr %12, i32 4
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  br label %174

174:                                              ; preds = %195, %143
  %175 = phi i32 [ 0, %143 ], [ %196, %195 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 75, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %167, i8 0, i32 16, i1 false) #10, !annotation !8
  %176 = load ptr, ptr %58, align 4
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i16
  store i16 %178, ptr %12, align 4
  store i16 0, ptr %168, align 2
  store i16 1, ptr %167, align 4
  store ptr %10, ptr %169, align 4
  %179 = load i8, ptr %176, align 1
  %180 = zext i8 %179 to i16
  store i16 %180, ptr %170, align 4
  store i16 1, ptr %171, align 2
  store i16 1, ptr %172, align 4
  store ptr %11, ptr %173, align 4
  %181 = load ptr, ptr %30, align 4
  %182 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %12, i32 noundef 2) #10
  %183 = icmp eq i32 %182, 2
  %184 = load i8, ptr %11, align 1
  %185 = zext i8 %184 to i32
  %186 = select i1 %183, i32 %185, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %187 = load i32, ptr @debug, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %174
  %190 = and i32 %186, 255
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %175, i32 noundef %190) #8
  br label %192

192:                                              ; preds = %189, %174
  %193 = and i32 %186, 128
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  call void @msleep(i32 noundef 4) #10
  %196 = add nuw nsw i32 %175, 1
  %197 = icmp eq i32 %196, 10
  br i1 %197, label %265, label %174

198:                                              ; preds = %192
  %199 = getelementptr inbounds i8, ptr %9, i32 4
  %200 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %201 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  %202 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  br label %206

206:                                              ; preds = %227, %198
  %207 = phi i32 [ 0, %198 ], [ %228, %227 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 -92, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %199, i8 0, i32 16, i1 false) #10, !annotation !8
  %208 = load ptr, ptr %58, align 4
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i16
  store i16 %210, ptr %9, align 4
  store i16 0, ptr %200, align 2
  store i16 1, ptr %199, align 4
  store ptr %7, ptr %201, align 4
  %211 = load i8, ptr %208, align 1
  %212 = zext i8 %211 to i16
  store i16 %212, ptr %202, align 4
  store i16 1, ptr %203, align 2
  store i16 1, ptr %204, align 4
  store ptr %8, ptr %205, align 4
  %213 = load ptr, ptr %30, align 4
  %214 = call i32 @i2c_transfer(ptr noundef %213, ptr noundef nonnull %9, i32 noundef 2) #10
  %215 = icmp eq i32 %214, 2
  %216 = load i8, ptr %8, align 1
  %217 = zext i8 %216 to i32
  %218 = select i1 %215, i32 %217, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  %219 = load i32, ptr @debug, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %206
  %222 = and i32 %218, 255
  %223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %207, i32 noundef %222) #8
  br label %224

224:                                              ; preds = %221, %206
  %225 = and i32 %218, 1
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  call void @msleep(i32 noundef 12) #10
  %228 = add nuw nsw i32 %207, 1
  %229 = icmp eq i32 %228, 20
  br i1 %229, label %265, label %206

230:                                              ; preds = %224
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 -94, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %231 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %231, i8 0, i32 16, i1 false) #10, !annotation !8
  %232 = load ptr, ptr %58, align 4
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i16
  store i16 %234, ptr %6, align 4
  %235 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %235, align 2
  store i16 1, ptr %231, align 4
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %236, align 4
  %237 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %238 = load i8, ptr %232, align 1
  %239 = zext i8 %238 to i16
  store i16 %239, ptr %237, align 4
  %240 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %240, align 2
  %241 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %241, align 4
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %242, align 4
  %243 = load ptr, ptr %30, align 4
  %244 = call i32 @i2c_transfer(ptr noundef %243, ptr noundef nonnull %6, i32 noundef 2) #10
  %245 = icmp eq i32 %244, 2
  %246 = load i8, ptr %5, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %247 = select i1 %245, i8 %246, i8 -5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 125, ptr %2, align 2
  %248 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %247, ptr %248, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %249 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %249, align 4, !annotation !8
  %250 = load ptr, ptr %58, align 4
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i16
  store i16 %252, ptr %3, align 4
  %253 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %253, align 2
  %254 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %254, align 4
  %255 = load ptr, ptr %30, align 4
  %256 = call i32 @i2c_transfer(ptr noundef %255, ptr noundef nonnull %3, i32 noundef 1) #10
  %257 = icmp ne i32 %256, 1
  %258 = load i32, ptr @debug, align 4
  %259 = icmp ne i32 %258, 0
  %260 = select i1 %257, i1 %259, i1 false
  br i1 %260, label %261, label %264

261:                                              ; preds = %230
  %262 = zext i8 %247 to i32
  %263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gl5_write_reg, i32 noundef 125, i32 noundef %262, i32 noundef %256) #8
  br label %264

264:                                              ; preds = %261, %230
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  call fastcc void @lgs8gl5_soft_reset(ptr noundef %30) #10
  br label %265

265:                                              ; preds = %264, %227, %195, %35
  %266 = phi i32 [ -22, %35 ], [ 0, %264 ], [ 0, %227 ], [ 0, %195 ]
  ret i32 %266
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lgs8gl5_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 240, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gl5_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 124, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.lgs8gl5_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 1
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
  %24 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %25 = lshr i8 %24, 7
  %26 = zext i8 %25 to i32
  %27 = select i1 %23, i32 %26, i32 1
  %28 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 7, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 3, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 7
  store i32 8000000, ptr %35, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gl5_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 75, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %11 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #10, !annotation !8
  %12 = getelementptr inbounds %struct.lgs8gl5_state, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %8, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %16, align 2
  store i16 1, ptr %11, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %19 = load i8, ptr %13, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %23, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %8, i32 noundef 2) #10
  %26 = icmp eq i32 %25, 2
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  %29 = select i1 %26, i32 %28, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 -92, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %30 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %30, i8 0, i32 16, i1 false) #10, !annotation !8
  %31 = load ptr, ptr %12, align 4
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %5, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %34, align 2
  store i16 1, ptr %30, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %37 = load i8, ptr %31, align 1
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %39, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %41, align 4
  %42 = load ptr, ptr %10, align 4
  %43 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %5, i32 noundef 2) #10
  %44 = icmp eq i32 %43, 2
  %45 = load i8, ptr %4, align 1
  %46 = zext i8 %45 to i32
  %47 = select i1 %44, i32 %46, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %48 = and i32 %29, 127
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = lshr i32 %29, 6
  %52 = and i32 %51, 2
  %53 = or i32 %52, %50
  %54 = shl nsw i32 %47, 1
  %55 = and i32 %54, 8
  %56 = or i32 %55, %53
  %57 = shl nsw i32 %47, 4
  %58 = and i32 %57, 16
  %59 = or i32 %58, %56
  store i32 %59, ptr %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lgs8gl5_read_ber(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gl5_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 75, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.lgs8gl5_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 1
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
  %24 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %25 = zext i8 %24 to i16
  %26 = shl nuw i16 %25, 8
  %27 = and i16 %26, 32512
  %28 = select i1 %23, i16 %27, i16 31488
  store i16 %28, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gl5_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 75, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #10, !annotation !8
  %9 = getelementptr inbounds %struct.lgs8gl5_state, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %13, align 2
  store i16 1, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %16 = load i8, ptr %10, align 1
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
  %24 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %25 = zext i8 %24 to i16
  %26 = shl nuw i16 %25, 8
  %27 = and i16 %26, 32512
  %28 = select i1 %23, i16 %27, i16 31488
  store i16 %28, ptr %1, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lgs8gl5_read_ucblocks(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lgs8gl5_soft_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lgs8gl5_soft_reset) #8
  br label %13

13:                                               ; preds = %11, %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %14 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #10, !annotation !8
  %15 = getelementptr inbounds %struct.lgs8gl5_state, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %8, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 1, ptr %14, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %22 = load i8, ptr %16, align 1
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %26, align 4
  %27 = load ptr, ptr %0, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %8, i32 noundef 2) #10
  %29 = icmp eq i32 %28, 2
  %30 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %31 = select i1 %29, i8 %30, i8 -5
  %32 = and i8 %31, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 2, ptr %4, align 2
  %33 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %32, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %34 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %34, align 4, !annotation !8
  %35 = load ptr, ptr %15, align 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %5, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %39, align 4
  %40 = load ptr, ptr %0, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %5, i32 noundef 1) #10
  %42 = icmp ne i32 %41, 1
  %43 = load i32, ptr @debug, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %49

46:                                               ; preds = %13
  %47 = zext i8 %32 to i32
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gl5_write_reg, i32 noundef 2, i32 noundef %47, i32 noundef %41) #8
  br label %49

49:                                               ; preds = %46, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  %50 = or i8 %31, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 2, ptr %2, align 2
  %51 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %50, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %52 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %52, align 4, !annotation !8
  %53 = load ptr, ptr %15, align 4
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %3, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %57, align 4
  %58 = load ptr, ptr %0, align 4
  %59 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %3, i32 noundef 1) #10
  %60 = icmp ne i32 %59, 1
  %61 = load i32, ptr @debug, align 4
  %62 = icmp ne i32 %61, 0
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = zext i8 %50 to i32
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gl5_write_reg, i32 noundef 2, i32 noundef %65, i32 noundef %59) #8
  br label %67

67:                                               ; preds = %64, %49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  call void @msleep(i32 noundef 5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lgs8gl5_update_reg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 %1, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  %9 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 16, i1 false) #10, !annotation !8
  %10 = getelementptr inbounds %struct.lgs8gl5_state, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %8, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 1, ptr %9, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %17 = load i8, ptr %11, align 1
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %21, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %8, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 %1, ptr %4, align 2
  %24 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %2, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %25 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %25, align 4, !annotation !8
  %26 = load ptr, ptr %10, align 4
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %5, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %30, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %5, i32 noundef 1) #10
  %33 = icmp ne i32 %32, 1
  %34 = load i32, ptr @debug, align 4
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = zext i8 %1 to i32
  %39 = zext i8 %2 to i32
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gl5_write_reg, i32 noundef %38, i32 noundef %39, i32 noundef %32) #8
  br label %41

41:                                               ; preds = %37, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
